<!--

-->

<template lang='pug'>

//- h1 Page 2
.quiz
	//- First Question
	question.active(headline="What's your favorite way to spend time with a friend?" a='Going on a walk or hike' b='Shopping and spa date' c='Planning your side gig' d='Two words: road trip' e='Lounging and reading celebrity magazines' f='A double date' imgA='q1_a.jpg' imgB='q1_b.jpg' imgC='q1_c.jpg' imgD='q1_d.jpg' imgF='q1_f.jpg' imgE='q1_e.jpg')

	//- Second
	question(headline="What's your inner superpower?" imgA='q2_a.jpg' imgB='q2_b.jpg' imgC='q2_c.jpg' imgD='q2_d.jpg' imgF='q2_f.jpg' imgE='q2_e.jpg')

	//- Third
	question(headline="If someone offered you an all-expenses paid trip for a week, where would you go?" a='New Zealand' b='South of France' c='California Coast' d='California Mountains' e='Italy' f='Pacific Northwest' imgA='q3_a.jpg' imgB='q3_b.jpg' imgC='q3_c.jpg' imgD='q3_d.jpg' imgF='q3_f.jpg' imgE='q3_e.jpg')

	//- Fourth
	question(headline="Which would you wallpaper your room with?" imgA='q4_a.jpg' imgB='q4_b.jpg' imgC='q4_c.jpg' imgD='q4_d.jpg' imgF='q4_f.jpg' imgE='q4_e.jpg')

	//- Fifth
	question(headline="What's your ideal dinner?" a='Mediterranean olive oil pasta' b='Goat cheese salad with stone fruit' c='Garlic-butter steak and mushrooms' d='Balsamic berry vinaigrette salad' e='Prosciutto-wrapped scallops' f='Grilled vegetable kabobs' imgA='q5_a.jpg' imgB='q5_b.jpg' imgC='q5_c.jpg' imgD='q5_d.jpg' imgF='q5_f.jpg' imgE='q5_e.jpg')


	results(type='Your')
	slickC


</template>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<script lang='coffee'>

export default
	components:
		'question': require '~/components/question'
		'results': require '~/components/results'
		'slickC': require '~/components/slick'

</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus' scoped>




</style>
