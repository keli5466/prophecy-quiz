<!--
Homepage
-->

<template lang='pug'>

.question
	.headline-question.grand-font {{ headline }}
	.question-grid.two-item(v-if='grid')
		.quiz-answer(@click='$emit("click", true)')
			img(:src="'/questions/'+ imgA")
			span {{a}}
		.quiz-answer(@click='$emit("click", false)')
			img(:src="'/questions/'+ imgB")
			span {{b}}

	.question-grid(v-else)
		button.quiz-answer(@click='quiz' data-answer="a" type="button")
			img(:src="'/questions/'+ imgA")
			span {{a}}
		button.quiz-answer(@click='quiz' data-answer="b" type="button")
			img(:src="'/questions/'+ imgB")
			span {{b}}
		button.quiz-answer(@click='quiz' data-answer="c" type="button")
			img(:src="'/questions/'+ imgC")
			span {{c}}
		button.quiz-answer(@click='quiz' data-answer="d" type="button")
			img(:src="'/questions/'+ imgD")
			span {{d}}
		button.quiz-answer(@click='quiz' data-answer="e" type="button")
			img(:src="'/questions/'+ imgE")
			span {{e}}
		button.quiz-answer(@click='quiz' data-answer="f" type="button")
			img(:src="'/questions/'+ imgF")
			span {{f}}

</template>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<script lang='coffee'>
import $ from 'jquery'
import orderBy from 'lodash/orderBy'
import toPairs from 'lodash/toPairs'
import grading from './grading'

answers =
	'a': 0
	'b': 0
	'c': 0
	'd': 0
	'e': 0
	'f': 0

# Store the first question they answered
firstQ = null

export default
# 	components:
	props: ['headline','a','b','c','d','e','f','grid','imgA','imgB','imgC','imgD','imgE','imgF']

# 	watch:
	methods:

		quiz: (e)->

				self = e.currentTarget
				answer = $(self).data('answer');
				# store first question as the tie breaker
				firstQ = answer unless firstQ
				answers[answer]++
				console.log('votes',answers)
				results = @getMostAnswered()
				i = 0
				while i < grading.length
					if results == grading[i].score
						quiztype = grading[i].quiztype
						resultImg = '<img src=\'' + grading[i].image + '\'/>'
						resultCopy = grading[i].copy
						resultCopyOTHER = grading[i].copyOther
						resultWine = grading[i].wine
						resultHref = grading[i].href
						document.getElementById('result-type').innerHTML = quiztype

						document.getElementById('result-wine').innerHTML = resultWine
						document.getElementById('result-image').innerHTML = resultImg
						document.getElementById("cta").href =  resultHref;
						# CHANGES COPY FOR OTHER vs. ME
						if window.location.pathname == '/2'
							document.getElementById('result-copy').innerHTML = resultCopyOTHER
						else
							document.getElementById('result-copy').innerHTML = resultCopy
					i++
				# Moves active class to show the questions
				$('.active').removeClass('active').next('div').addClass('active');
				@moveArrow()

		moveArrow: ->
			# Moves the progressbar
			$('.current').removeClass('current').next('.step').addClass('current');


		getMostAnswered: ->

			# Sort the answers and get the winner
			ordered = orderBy toPairs(answers), (([key, votes]) -> votes), 'desc'
			[winner, votes] = ordered[0]
			# If the winner only as one vote, use their first choice
			if votes == 1 then firstQ else winner

</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus' scoped>
// .homepage
// 	background light-yellow
.question
	display none
	text-align center
	&.active
		display block

// Main quesiton than animated in
.headline-question
	font-size m-font
	text-transform uppercase
	&:after
		content ''
		background black
		display block
		transform translateX(-50%)
		margin rem(40px) auto
		width 40%
		height 1px
		opacity 0


// Grid wrapper
.question-grid
	display flex
	flex-wrap wrap
	margin 0 auto
	opacity 0
	justify-content center
	max-width 600px
	// Grid with only two items
	&.two-item
		justify-content space-between
		.quiz-answer
			width 40%
			height 100%
			max-width rem(360px)
			max-height rem(500px)
			&:first-child
				margin-right auto
			&:last-child
				margin-left auto

// grid item/question block
.quiz-answer
	-webkit-appearance none
	border none
	margin 1%
	padding 0
	color black
	outline none
	max-width rem(180px)
	width 100%
	height 100%
	@media (min-width mobile)
		img
			transition transform 1s smooth-in
		&:hover
			cursor pointer
			img
				transform scale(1.05)

	span
		margin rem(20px) auto
		display block
		text-transform uppercase
		line-height normal


.active
	.headline-question:after
		animation moveline 600ms ease forwards 100ms
	.question-grid
		animation move 500ms ease-in-out forwards

// Line animation
@keyframes move
	to
		opacity 1
@keyframes moveline
	to
		transform translateX(0)
		opacity 1
</style>
