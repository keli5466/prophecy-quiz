<!--
Homepage
-->

<template lang='pug'>
.wrapper
	.intro.active
		.intro-logo
			img.divider(src='~/assets/img/tagline-divider.png')
			h1.grand-font Discover Your
			img.logo(src='~/assets/img/logo.png')
			img.divider(src='~/assets/img/tagline-divider.png')
		.intro-copy
			p Come take our quiz to find an ideal match within our collection of world-renowned wines. Search out the perfect gift to bring someone you know, or find just the right bottle to treat yourself with.
			p Either way, you’ll end up with a deeper insight about the human spirit and maybe even a new favorite bottle of wine.
		.take-quiz
			a.btn(@click='makeActive') TAKE THE QUIZ

	question(
		ref='firstQ'
		grid='true'
		@click='test'
		headline="Are you trying to find the perfect wine for you, or someone else?" a='Me' imgA='FOR_ME.jpg' b='Someone else' imgB='FOR_SOMEONE_ELSE.jpg')

	.for-me(v-if='choosePerson === true')
		me
	.someone-else(v-if='choosePerson === false')
		someoneElse



</template>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<script lang='coffee'>

import $ from 'jquery'
export default
	components:
		'question': require '~/components/question'
		'me': require '~/components/me'
		'someoneElse': require '~/components/someone'
	data: ->
		# active: false
		firstQuestion: @.$refs.firstQ
		choosePerson: null
	methods:
		test: (value) ->

			@choosePerson = value
			@makeActive()

		makeActive: ->
			$('.active').removeClass('active').next('div').addClass('active');
			@moveProgress()
			$('.startOver').addClass('show');

		moveProgress: ->
			$('.current').removeClass('current').next('.step').addClass('current');


</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus' scoped>


.intro
	text-align center
	max-width 500px
	display none
	&.active
		display block
	@media (min-width mobile)
		margin-top 5%
		margin-h auto

h1
	font-size rem(38px)
	line-height 1
	font-weight 300
	@media (max-width mobile)
		font-size rem(30px)

// adds space between logo h1 and divider
.divider
	width 70%
	&:first-child
		margin-bottom rem(20px)
	&:last-child
		margin-top rem(10px)

.intro-copy
	margin 12% auto
	line-height 1.7
	p
		padding 0
		font-size 18px
		margin 0
		&:first-of-type
			margin-bottom rem(25px)

#choosePerson
	opacity 0

.active
	#choosePerson
		opacity 1
		transition opacity 600ms ease 700ms



</style>
