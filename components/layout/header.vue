<!--
The layout header
-->

<template lang='pug'>


.progress-bar
	ul
		li.step.current
		li.step
		li.step
		li.step
		li.step
		li.step
		li.step
		li.step
	span.startOver.btn(@click='startOver')
		| Start Over

</template>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<script lang='coffee'>
export default
	methods:
		startOver: ->
			location.reload()
</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus' scoped>
// #274868
.startOver
	opacity 0
	position absolute
	top -10px
	left 120%
	display inline-block
	white-space nowrap
	font-size rem(14px)
	padding rem(10px) rem(15px)
	&.show
		transition opacity 1s ease
		opacity 1
		&:hover
			opacity 0.7
	@media (max-width mobile)
		white-space normal
		padding rem(5px) rem(10px)
		text-align center

.progress-bar
	width 50%
	margin 0 auto spacing
	position relative
	&:after
	&:before
		position absolute
		background-size contain
		height 1rem
		width 2rem
		display inline-block
		vertical-align middle
		top 43%
		@media (max-width mobile)
			top 40%
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

ul
	padding 0 rem(5px)
	margin 0
	display flex
	list-style-type none
	justify-content center
	position relative
	&:before
		content ''
		width 100%
		height 1px
		background black
		position absolute
		center()
	li
		background light-yellow
		height 1rem
		z-index 1
		width 1rem
		border black 1px solid
		border-radius 100%
		&:not(:first-of-type)
			margin-left auto
		transition all 700ms smooth-in

		@media (max-width mobile)
			height 8px
			width 8px

		&.current
			background black
			opacity 1



</style>
