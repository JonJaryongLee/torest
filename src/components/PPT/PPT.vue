<template>
    <v-carousel height="645px" :cycle='false' light>
        <v-carousel-item class="pptContainer" v-for="n in pageNum" :key="n">
            <img v-bind:src="imgSrc[n-1]" alt="noPPT" height="590px">
        </v-carousel-item>
    </v-carousel>
</template>
<script type="text/javascript">
export default {
    data() {
        return {
            pageNum: 12, // ppt 페이지를 바꿔주세요
            imgSrc: []
        }
    },
    created(){
        for (let i=1; i<=this.pageNum; i++) {
            this.imgSrc.push("img/ppt/"+ i +".JPG");
        }
    }
}
</script>
<style type="text/css" scoped>
.pptContainer{
    position: relative;
    left:95px;
}
</style>