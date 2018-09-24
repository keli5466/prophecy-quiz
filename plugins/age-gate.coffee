Cookie = require 'js-cookie'
window.location.href = '/?quiz' unless Cookies.get 'phy_age_gate'