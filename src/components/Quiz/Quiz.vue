<template>
    <div>
        <div class="quizInfo" v-if="infoShow">
            <p class="display-3">퀴즈를 시작합니다.</p>
            <p class="body-2">총 10문제가 주어지며, 정답을 빨리 맞출수록 고득점을 받습니다.</p>
            <v-btn v-on:click="runQuiz">Start</v-btn>
        </div>
        <div class="quizTemplate" v-if="quizShow">
            <v-progress-circular class="timer" :rotate="-90" :size="100" :width="15" :value="timerValue" color="green accent-2">
                {{ timerValue }}
            </v-progress-circular>
            <div class="questionAndAnswer">
                <div class="questionBox">
                    <p class="question display-1">{{questionFront}}
                        <v-btn outline disabled></v-btn>
                        {{questionEnd}}</p>
                </div>
                <div class="answerBox">
                    <v-btn outline v-on:click="answerCheck(0)" v-bind:disabled="done">{{choice0}}</v-btn>
                    <v-btn outline v-on:click="answerCheck(1)" v-bind:disabled="done">{{choice1}}</v-btn>
                </div>
            </div>
            <div class="answerAlertArea">
                <v-alert :value="rightAnswerFlag" type="success" transition="scale-transition">
                    정답입니다.
                </v-alert>
                <v-alert :value="wrongAnswerFlag" type="error" transition="scale-transition">
                    틀렸습니다.
                </v-alert>
            </div>
        </div>
        <div class="resultPage" v-if="resultShow">
            당신의 점수는 {{totalScore}} 입니다.
        </div>
    </div>
</template>
<script>
import axios from 'axios'
export default {
    data() {
        return {
            allQuestionsNumber: 3,
            interval: {},
            timerValue: 100,
            infoShow: true,
            quizShow: false,
            questionFront: "",
            questionEnd: "",
            choice0: "",
            choice1: "",
            answerNum: 0,
            quizCounter: 0,
            rightAnswerFlag: false,
            wrongAnswerFlag: false,
            done: false,
            totalScore: 785,
            resultShow: false
        }
    },
    beforeDestroy() {
        clearInterval(this.interval)
    },
    mounted() {
        this.interval = setInterval(() => {
            if (this.timerValue === 0) {
                return (this.timerValue = 100)
            }
            this.timerValue -= 10
        }, 1000)
    },
    methods: {
        runQuiz() {
            this.infoShow = false;
            this.quizShow = true;
            this.loadQuiz();
        },
        loadQuiz() {
            axios.get('/me/quiz/set1')
                .then(response => {
                    this.questionFront = response.data[this.quizCounter].questionFront;
                    this.questionEnd = response.data[this.quizCounter].questionEnd;
                    this.answerNum = response.data[this.quizCounter].answerNum;
                    this.choice0 = response.data[this.quizCounter].choice0;
                    this.choice1 = response.data[this.quizCounter].choice1;
                });
        },
        answerCheck(userChoicedAnswer) {
            if (userChoicedAnswer == this.answerNum) {
                this.rightAnswerFlag = true;
                this.done = true;
                this.goNextOrShowResult();
            } else {
                this.wrongAnswerFlag = true;
                this.done = true;
                this.goNextOrShowResult();
            }
        },
        toNext() {
            this.done = false,
                this.rightAnswerFlag = false,
                this.wrongAnswerFlag = false,
                this.quizCounter++;
            this.loadQuiz();
        },
        goNextOrShowResult() {
            if (this.allQuestionsNumber != (this.quizCounter)) {
                setTimeout(() => this.toNext(), 1000);
            } else {
                this.showResultPage();
            }
        },
        showResultPage() {
            this.quizShow = false;
            this.resultShow = true;
            this.allDataReset();
        },
        allDataReset() {
            this.questionFront = "";
            this.questionEnd = "";
            this.choice0 = "";
            this.choice1 = "";
            this.answerNum = 0;
            this.quizCounter = 0;
            this.rightAnswerFlag = false;
            this.wrongAnswerFlag = false;
            this.done = false;
        }
    }
}
</script>
<style scoped>
.quizInfo {
    text-align: center;
    position: relative;
    top: 200px;
}

.questionAndAnswer {
    position: relative;
    padding: 100px;
    top: 20px;
}

.answerBox {
    margin-top: 60px;
}

.timer {
    position: relative;
    top: 50px;
    left: 1080px;
}
</style>