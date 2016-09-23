from jinja2 import Environment, FileSystemLoader, Template
from abc import ABC, abstractmethod
import shutil
import os


class AbstractGenerator(ABC):
    def __init__(self, base, dest):
        self.base = base
        self.dest = dest

    @abstractmethod
    def generate(self, config, base, dest):
        pass

    def copy(self):
        if os.path.exists(self.dest):
            shutil.rmtree(self.dest)
        pattern = shutil.ignore_patterns('template', 'template/*', 'Generator.py', '__pycache__', 'meta.yml')
        shutil.copytree(self.base, self.dest, ignore=pattern)

    def generate_template(self,filename, writeType, data):
        env = Environment(loader=FileSystemLoader(self.base + 'template'))
        template = env.get_template(filename)
        out = template.render(data)
        with open(self.dest + filename, writeType, encoding="utf8") as fh:
            fh.write(out)
