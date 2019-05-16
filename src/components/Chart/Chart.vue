<template>
    <div id="chartContainer">
        <line-chart :data="chartData"></line-chart>
    </div>
</template>
<script>
export default {
    props: ['userChart'],
    created() {
        if (this.userChart.newUser == true) {
            this.chartData.push([this.userChart.날짜, this.userChart.점수]);
        } else {
            for (let i = 0; i < this.userChart.length; i++) {
                this.chartData.push([this.userChart[i].날짜, this.userChart[i].점수])
            }
        }
    },
    data: () => ({
        chartData: []
    })
}
</script>
<style scoped>
#chartContainer {
    position: relative;
    top: 100px;
    padding-left: 100px;
    padding-right: 100px;
}
</style>