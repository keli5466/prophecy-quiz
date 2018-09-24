Cookie = require 'js-cookie'
if window.location.href == 'www.prophecywines.com' 
	window.location.href = '/?quiz' unless Cookies.get 'phy_age_gate'