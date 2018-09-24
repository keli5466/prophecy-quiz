Cookies = require 'js-cookie'
if window.location.hostname in ['www.prophecywines.com', 'prophecy.test']
	window.location.href = '/?quiz' unless Cookies.get 'phy_age_gate'