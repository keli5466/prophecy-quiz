<!--
The layout header
-->

<template lang='pug'>

.slick
	slick.slide-nav1(ref='slick1'
		:options='slickOptions')
		.slide
			img.product-img(src='products/A_bottle.png')
		.slide
			img.product-img(src='products/C_bottle.png')
		.slide
			img.product-img(src='products/B_bottle.png')
		.slide
			img.product-img(src='products/D_bottle.png')
		.slide
			img.product-img(src='products/E_bottle.png')
		.slide
			img.product-img(src='products/F_bottle.png')

	slick.slide-nav2(ref='slick2'
		:options='slickOptions2')
		result-slider.slick-slide(wineType='Marlborough Sauvignon Blanc' headline="THE HIGH PRIESTESS" img='HIGH_PRIESTESS.jpg' taste='SAUVIGNON BLANC |  Grapefruit, Citrus, Pineapple' copy='The High Priestess inspires creativity wherever she goes, helping us craft an expressive wine full of tropical aromas. Her flowing robes represent delicate layers, peeling back to reveal even deeper flavors, a captivating style of winemaking and a staple of the Marlborough region.<br><br> Gift your hostess with a bottle of Sauvignon Blanc during appetizer hour, or enjoy a glass while reflecting on the world around you.' buy='http://www.prophecywines.com/#sauvignon-blanc')

		result-slider.slick-slide(wineType='California Cabernet Sauvignon' headline="THE EMPEROR" img='EMPEROR.jpg' taste='CABERNET SAUVIGNON  |  Blackberry, Plum, Oaky notes of graham cracker' copy='Come experience the king of wines - a bold ruler with a passion and energy for life that lights up any chamber. Pour a glass and let rich flavor, deep color, and full experiences abound. The Emperor’s crimson robes represent the expressive dark fruit flavors of blackberry, plum, and raspberry found in this California Cabernet. <br><br>Enjoy this wine while holding court, or pair it with a celebratory dinner.' buy='http://www.prophecywines.com/#cabernet-sauvignon')

		result-slider.slick-slide(wineType='French Rosé' headline="THE GODDESS OF FORTUNE" img='GODDESS_OF_FORTUNE.jpg' taste='ROSÉ  |  Strawberries, Raspberries, Hint of peach' copy='The Goddess of Fortune appears clearly amidst billowy clouds, calling to mind the cool, crisp style of a French Rosé. Her delicate pink garment alludes to the soft but powerful flavor of strawberries and raspberries, and her flowing peach locks hint at a tinge of stone fruit.<br><br> This rosé gets along with any kind of plate or person imaginable, and will bring plenty of prosperity to your next weekend brunch or outdoor party.' buy='http://www.prophecywines.com/#french-rose')


		result-slider.slick-slide(wineType='California Pinot Noir'  headline="THE TRAVELER" img='TRAVELER.jpg' taste='PINOT NOIR  |  Toasted oak, Ripe raspberry, Brown spice' copy='The Traveler’s feisty spirit mimics the vibrant fruit from premiere California vineyards, used to make the finest of red wines. His ornate red clothing represents a plush, elegant taste - in wine and fashion. He delights all whom he greets along the way, and can’t help but draw a crowd.<br><br> This Pinot Noir delights the senses, and charms guests at dinner parties and date nights alike.' buy='http://www.prophecywines.com/#pinot-noir')

		result-slider.slick-slide(wineType='delle Venezie Pinot Grigio' headline="THE STAR" img='STAR.jpg' taste='PINOT GRIGIO  |  Light citrus, Tropical fruit, Mineral' copy='Twinkling lights up above call to mind the high altitudes of Italy’s delle Venezie region, where this wine’s grapes wait to devote their gifts to a bottle that pairs well with just about any meal. The flowing water at her feet represents the cool, refreshing characteristics of this Pinot Grigio.<br><br>We recommend pouring a glass when they want to slow things down and experience a little bit of heavenly rejuvenation.' buy='http://www.prophecywines.com/#pinot-grigio')

		result-slider.slick-slide(wineType='Red Blend' headline="THE LOVERS" img='LOVERS.jpg' taste='RED BLEND  |  Red fruit, Spice, Vanilla' copy='The lovers’ clasped hands show commitment to one another…and the harmonious blend of Washington and California fruits. Deep crimson sunset hues and fruiting trees emphasize passionate flavors like dark cherry, raspberry, and blackberry.<br><br> This wine is best shared with someone you care about — think romantic, starry-eyed evening. So pop open a bottle and get ready to fall in love.' buy='http://www.prophecywines.com/#red-blend')



</template>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<script lang='coffee'>
import $ from 'jquery'
import Slick from 'vue-slick'
export default
# 	computed:

	components:
		'result-slider': require '~/components/result-slider'
# 	props: []
	data: ->
		slickOptions: {
			slidesToShow: 3,
			infinite: true,
			accessibility: true,
			adaptiveHeight: false,
			arrows: true,
			dots: true,
			centerPadding: '30px',
			centerMode: true,
			focusOnSelect: true,
			variableWidth: true,
			slidesToScroll: 1,
			edgeFriction: 0.30,
			swipe: true,
			asNavFor: '.slide-nav2'

			}
		slickOptions2: {
			slidesToShow: 1
			infinite: true,
			accessibility: true,
			adaptiveHeight: false,
			arrows:false,
			fade: true,
			cssEase: 'linear',
			draggable:false,
			asNavFor: '.slide-nav1'

			}

	# Listen for the init event which we use to reinit slick once this view
	# is visible
	mounted: -> $(@$el).one 'init', =>
		setTimeout =>
			console.log('hello')
			@$refs.slick1.reSlick()
			@$refs.slick2.reSlick()
		, 0
	destroyed: -> $(@$el).off()

</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus' scoped>
.slick
	display none
	&.active
		display block

.slide-nav1
	margin 15% auto rem(30px)

.product-img
	max-width 30% !important
	margin 0 auto

// removes border
:focus
	outline none

>>>
// Top caro
	.slide-nav1
		.slick-slide
			text-align center
			display flex
			justify-content center
			> div
				display flex
				justify-content center
			img
				opacity 0.5
			&:hover
				cursor pointer

		.slick-center
			img
				transition opacity 300ms ease
				opacity 1 !important
	// Bottom Caro
	.slide-nav2
		.fade
			opacity 0
		.slick-active
			.fade
				transition opacity 400ms ease 500ms
				opacity 1
	.slick-dots
		margin-bottom 8px
	@media (max-width tablet)
		.slick-next
			right 0
		.slick-prev
			left 0
	.slick-arrow:before
		color #0e5854
		font-size rem(30px)

</style>
