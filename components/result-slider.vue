<!--
The layout header
-->

<template lang='pug'>


.products
	.product-headline.grand-font
		span {{wineType}}
		.product-type {{ headline }}
	.product-prophecy.fade
		.product-image
			img(:src="'/results/'+ img")
		.product-content
			.product-wine.bold {{ taste }}
			.product-copy(v-html='copy') {{ copy }}
			.cta
				p.bold Fulfill your prophecy!
				a.btn(href='http://www.prophecywines.com/#purchase' target='_blank') Buy Now

</template>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<script lang='coffee'>
import $ from 'jquery'

export default
	props: ['headline','img','taste','copy','buy','wineType',]
	mounted: ->
		@checkSize()
		$(window).resize @checkSize

	methods:
		# moves headline for mobile
		checkSize: ->
			if window.innerWidth < 768
				$('#result-image').insertAfter('#result-type')
			else
				$('#result-image').insertBefore('.result-content')
</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus' scoped>

.product-prophecy
	display flex
	align-items center
	justify-content space-between

	@media (max-width tablet)
		flex-direction column
		.product-image
		.product-content
			width 90%

		.product-image
			margin rem(30px) auto rem(10px)


.product-content
	width 50%
	text-align left
.product-image
	width 50%

>>>
	img
		width 90%
	.product-wine
	p
		margin rem(20px) auto
		line-height 1.5
	.product-copy
		line-height 1.5

	.product-headline
		font-size sm-font
		text-align center
		margin-bottom rem(10px)
		&:after
			content ''
			background black
			width 70%
			height 1px
			display block
			margin rem(30px) auto rem(40px)

	.product-type
		font-size rem(40px)

	.btn
		margin-top rem(20px)
		max-width 90%



</style>
