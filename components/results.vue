<!--
The layout header
-->

<template lang='pug'>

.results-wrapper
	.results
		#result-image
		.result-content
			.result-headline.grand-font
				span {{type}} Prophecy Reveals:
				#result-type
			#result-wine.bold
			#result-copy
			.cta
				p.bold Fulfill your prophecy!
				a.btn#cta(href='' target='_blank') BUY NOW

	.moveDown.grand-font(@click='moveDown')
		span Explore our other varieties
		.icon-chevron-down


</template>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<script lang='coffee'>
import $ from 'jquery'

export default

	props: ['type']

	components:
		'slickC': require '~/components/slick'

	mounted: ->
		@checkSize()
		$(window).resize @checkSize
	data:->
		move: false

	methods:
		# moves headline for mobile
		moveDown:->
			console.log('hello')
			$el = $('.active').next('div').addClass('active').trigger('init');
			$('html, body').animate({
				scrollTop: $(".slick").offset().top
			}, 700);
		checkSize: ->
			if window.innerWidth < 768
				$('#result-image').insertAfter('#result-type')
			else
				$('#result-image').insertBefore('.result-content')
</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus' scoped>
.results-wrapper
	display none
	&.active
		display block
.moveDown
	display flex
	flex-direction column
	text-align center
	position relative
	width 62%
	max-width 440px
	margin 5% auto 5px
	font-size rem(25px)
	justify-content center
	span
		padding-bottom 10px
		transition transform 400ms ease

	&:hover
		cursor pointer
		span
			transform translateY(-6px)
		.icon-chevron-down
			opacity 0.8
			transition opacity 400ms ease
			&:before
				transition transform 400ms ease
				transform translateY(3px)

	&:active
		opacity 1
	.icon-chevron-down
		background #0e5854
		width 50px
		color white
		font-size rem(40px)
		margin 0 auto
		text-align center
		&:before
			transform translateY(0px)
			display block
			transition transform 400ms ease
	&:after
	&:before
		position absolute
		background-size contain
		height 1rem
		top 50%
		width 2rem
		display inline-block
		vertical-align middle
		background-repeat no-repeat

	&:after
		content ''
		background-image url('~/assets/img/side-design.png')
		left 99%

	&:before
		content ''
		background-image url('~/assets/img/side-design.png')
		transform scaleX(-1)
		right 99%


.results
	display flex
	align-items center
	justify-content space-between

	@media (max-width tablet)
		flex-direction column
		#result-image
		.result-content
			width 90%

		#result-image
			margin rem(30px) auto rem(10px)

#result-image
	width 45%

.result-content
	width 55%
	text-align center

@keyframes bouncedown
	from
		transform translateY(0)
	to
		transform translateY(3px)
>>>
	img
		width 90%
	p
		margin rem(20px) auto
		line-height 1.5

.result-headline
	font-size sm-font
	&:after
		content ''
		background black
		width 70%
		height 1px
		display block
		margin rem(30px) auto rem(40px)

#result-type
	font-size rem(40px)

.btn
	margin-top rem(20px)
	max-width 90%



</style>
