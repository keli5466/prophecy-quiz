<!--
Default layout
-->

<template lang='pug'>

.default-layout

	layout-header

	nuxt.quiz-wrapper

</template>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<script lang='coffee'>

export default
	components:
		'layout-header': require '~/components/layout/header'

</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus' scoped>

.default-layout
	background light-yellow
	min-height 100vh
	padding rem(50px) 10%
	display flex
	flex-direction column
	@media (max-width mobile)
		padding 20px


.quiz-wrapper
	margin 0 auto auto
	max-width desktop
	width 100%

</style>
