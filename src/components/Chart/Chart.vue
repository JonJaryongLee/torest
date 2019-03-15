<template>
  <div id="chartContainer">
    <line-chart :data="chartData"></line-chart>
  </div>
</template>

<script>
  export default{
    data: () => ({
      chartData: [["5/20", 630], ["5/21", 650], ["5/22", 730], ["5/23", 850], ["5/24", 890], ["5/25", 950], ["5/26", 990]]
    })
  }
</script>

<style scoped>
	#chartContainer{
		position: relative;
		top:100px;
		padding-left:100px;
		padding-right:100px;
	}
</style>