Cookie = require 'js-cookie'
if window.location.href in ['www.prophecywines.com', 'prophecy.test']
	window.location.href = '/?quiz' unless Cookies.get 'phy_age_gate'