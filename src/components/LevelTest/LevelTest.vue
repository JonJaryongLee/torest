<template>
    <div class="levelTestContainer">
        <div class="levelTestMain" v-if="levelTestMainShow">
            <img src="/img/levelTest/levelTestMain.jpg" alt="levelTestMain" height="700px">
            <div class="startBtnContainer">
                <v-btn v-on:click="start">start</v-btn>
            </div>
        </div>
        <quiz v-if="quizShow" v-on:successNameSet="successNameSet"></quiz>
    </div>
</template>
<script>
import quiz from './Quiz.vue'
export default {
    components: {
        'quiz': quiz
    },
    data: () => ({
        levelTestMainShow: true,
        quizShow: false
    }),
    methods: {
        start() {
            this.levelTestMainShow = false;
            this.quizShow = true;
        },
        successNameSet() {
            this.$emit('successNameSet');
        }
    }
}
</script>
<style scoped>
.levelTestContainer {
    /* The image used */
    background-image: url("/img/levelTest/background.png");

    /* Full height */
    height: 100%;

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}

.levelTestMain {
    position: absolute;
    top: 0px;
    left: 300px;
}

.startBtnContainer {
    position: absolute;
    top: 500px;
    left: 430px;
}
</style>