<!--

-->

<template lang='pug'>

//- h1 Page 2
.quiz
	//- First Question
	question.active(headline="What's your favorite way to spend time with a friend?" a='Going on a walk or hike' b='Shopping and spa date' c='Planning your side gig' d='Two words: road trip' e='Lounging and reading celebrity magazines' f='A double date' imgA='Q1_A.jpg' imgB='Q1_B.jpg' imgC='Q1_C.jpg' imgD='Q1_D.jpg' imgF='Q1_F.jpg' imgE='Q1_E.jpg')

	//- Second
	question(headline="What's your inner superpower?" imgA='Q2_A.jpg' imgB='Q2_B.jpg' imgC='Q2_C.jpg' imgD='Q2_D.jpg' imgF='Q2_F.jpg' imgE='Q2_E.jpg')

	//- Third
	question(headline="If someone offered you an all-expenses paid trip for a week, where would you go?" a='New Zealand' b='South of France' c='California Coast' d='California Mountains' e='Italy' f='Pacific Northwest' imgA='Q3_A.jpg' imgB='Q3_B.jpg' imgC='Q3_C.jpg' imgD='Q3_D.jpg' imgF='Q3_F.jpg' imgE='Q3_E.jpg')

	//- Fourth
	question(headline="Which would you wallpaper your room with?" imgA='Q4_A.jpg' imgB='Q4_B.jpg' imgC='Q4_C.jpg' imgD='Q4_D.jpg' imgF='Q4_F.jpg' imgE='Q4_E.jpg')

	//- Fifth
	question(headline="What's your ideal dinner?" a='Mediterranean olive oil pasta' b='Goat cheese salad with stone fruit' c='Garlic-butter steak and mushrooms' d='Balsamic berry vinaigrette salad' e='Prosciutto-wrapped scallops' f='Grilled vegetable kabobs' imgA='Q5_A.jpg' imgB='Q5_B.jpg' imgC='Q5_C.jpg' imgD='Q5_D.jpg' imgF='Q5_F.jpg' imgE='Q5_E.jpg')


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
