# Load .env vars
require('dotenv').config() if require('fs').existsSync '.env'

# Config object
module.exports =

	# HTML head
	head:
		title: 'prophecy-quiz'
		meta: [
			{ charset: 'utf-8'}
			{ name: 'viewport', content: 'width=device-width, initial-scale=1' }
			{ 'http-equiv': 'X-UA-Compatible', content: 'IE=edge' }
			{ name: 'msapplication-tap-highlight', content:'no' }
		]
		link: [
			{ rel: 'icon', 	type: 'image/x-icon', href: '/favicon.ico' }
		]
	# Global styles
	css: [
		'normalize.css'
		'~/assets/app.styl'
		'~/node_modules/slick-carousel/slick/slick.css'
	]
	router: {
		base: process.env.NODE_ENV === 'dev' ? '/' : '/quiz/'
	},
	plugins: [
		'~/plugins/slick'

	]

	# Nuxt modules
	modules: [
		'blamo'
	]
