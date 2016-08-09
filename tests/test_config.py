import unittest
import config;


class ConfigTest(unittest.TestCase):

	def setUp(self):
		pass

	def testIpConflict(self):
		configInfo = {'test1': {}, 'test2': {}}
		configData = {'test1': {'ip': 2}, 'test2': {'ip': 2}}
		conf = {'test1': {}, 'test2': {}}
		self.assertRaises(Exception, config.genIp, configInfo, configData, conf)

	def testSimpleIp(self):
		configInfo = {'test1': {}, 'test2': {}}
		configData = {'test1': {}, 'test2': {}}
		conf = {'test1': {}, 'test2': {}}
		config.genIp(configInfo, configData, conf)
		self.assertNotEqual(conf['test1'], conf['test2'], 'ip is equal')
		self.assertIn('ip', conf['test1'], 'ip is not filled in config data')
		self.assertIn('ip', conf['test2'], 'ip is not filled in config data')

	def testComplexIp(self):
		configInfo = {'test1': {}, 'test2': {}, 'test3': {}, 'test4': {}}
		configData = {'test1': {'ip': 1}, 'test2': {}, 'test3': {'ip': 3}, 'test4': {}}
		conf = {'test1': {}, 'test2': {}, 'test3': {}, 'test4': {}}
		config.genIp(configInfo, configData, conf)
		self.assertNotEqual(conf['test1'], conf['test2'], 'ip is equal')
		self.assertNotEqual(conf['test1'], conf['test3'], 'ip is equal')
		self.assertNotEqual(conf['test1'], conf['test4'], 'ip is equal')
		self.assertNotEqual(conf['test2'], conf['test3'], 'ip is equal')
		self.assertNotEqual(conf['test2'], conf['test4'], 'ip is equal')
		self.assertNotEqual(conf['test3'], conf['test4'], 'ip is equal')

		configInfo = {'test1': {}, 'test2': {}, 'test3': {}, 'test4': {}}
		configData = {'test1': {'ip': 1}, 'test2': {}, 'test3': {'ip': 2}, 'test4': {}}
		conf = {'test1': {}, 'test2': {}, 'test3': {}, 'test4': {}}
		config.genIp(configInfo, configData, conf)
		self.assertNotEqual(conf['test1'], conf['test2'], 'ip is equal')
		self.assertNotEqual(conf['test1'], conf['test3'], 'ip is equal')
		self.assertNotEqual(conf['test1'], conf['test4'], 'ip is equal')
		self.assertNotEqual(conf['test2'], conf['test3'], 'ip is equal')
		self.assertNotEqual(conf['test2'], conf['test4'], 'ip is equal')
		self.assertNotEqual(conf['test3'], conf['test4'], 'ip is equal')

	def testAssignIp(self):
		configInfo = {'test1': {}}
		configData = {'test1': {'ip': 1}}
		conf = {'test1': {}}
		config.genIp(configInfo, configData, conf)
		self.assertTrue(conf['test1']['ip'].endswith(str(configData['test1']['ip'])), "Ip not set")

	def testMinIp(self):
		self.assertEqual(config.minIp([1, 2, 3]), 4)
		self.assertEqual(config.minIp([1, 3]), 2)

	def testAskForConfig(self):
		pass

if __name__ == '__main__':
	unittest.main()
