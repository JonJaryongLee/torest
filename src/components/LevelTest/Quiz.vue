<template>
    <div>
        <div class="quizInfo" v-if="infoShow">
            <p class="display-3">레벨테스트를 시작합니다.</p>
            <p class="body-2">총 10문제가 주어지며, 정답을 빨리 맞출수록 고득점을 받습니다.</p>
            <v-btn color="success" v-on:click="runQuiz">Start</v-btn>
        </div>
        <div class="quizTemplate" v-if="quizShow">
            <v-progress-circular class="timer" :rotate="-90" :size="100" :width="15" :value="timerValue" color="green accent-2">
                {{ timerValue/10 }}
            </v-progress-circular>
            <div class="questionAndAnswer">
                <div class="questionBox">
                    <p class="question display-1">{{questionFront}}
                        <v-btn outline disabled></v-btn>
                        {{questionEnd}}</p>
                </div>
                <div class="answerBox">
                    <v-btn outline v-on:click="answerCheck('A')" v-bind:disabled="done">{{choice0}}</v-btn>
                    <v-btn outline v-on:click="answerCheck('B')" v-bind:disabled="done">{{choice1}}</v-btn>
                    <v-btn outline v-on:click="answerCheck('C')" v-bind:disabled="done">{{choice2}}</v-btn>
                    <v-btn outline v-on:click="answerCheck('D')" v-bind:disabled="done">{{choice3}}</v-btn>
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
            <div class="resultImgContainer">
                <img src="/img/levelTest/levelTestResult.jpg" alt="levelTestImg" height="600px">
                <div class="scoreContainer display-4">
                    {{totalScore}}
                </div>
            </div>
            <v-btn class="runSetupBtn" color="success" v-on:click="runSetup">이름 정하기</v-btn>
        </div>
        <nameSet v-if="nameSetShow" v-bind:nameSetShow="nameSetShow" v-on:closeNameSet="closeNameSet" v-on:successNameSet="successNameSet"></nameSet>
    </div>
</template>
<script>
import axios from 'axios'
import nameSet from './NameSet.vue'
export default {
    components: {
        'nameSet': nameSet
    },
    data() {
        return {
            allQuestionsNumber: 1,
            interval: {},
            timerValue: 100,
            infoShow: true,
            quizShow: false,
            questionFront: "",
            questionEnd: "",
            choice0: "",
            choice1: "",
            choice2: "",
            choice3: "",
            answerNum: 0,
            quizCounter: 0,
            rightAnswerFlag: false,
            wrongAnswerFlag: false,
            done: false,
            totalScore: 0,
            resultShow: false,
            nameSetShow: false,
            userGrade: ""
        }
    },
    methods: {
        runQuiz() {
            this.infoShow = false;
            this.quizShow = true;
            this.loadQuiz();
        },
        timerReset() {
            this.timerValue = 100;
            this.interval = setInterval(() => {
                this.timerValue -= 10;
                if (this.timerValue == 0)
                    clearInterval(this.interval);
            }, 1000);
        },
        loadQuiz() {
            this.timerReset();
            axios.get('/php/random.php') // 추후 수정 
                .then(response => {
                    this.questionFront = response.data[0].questionFront;
                    this.questionEnd = response.data[0].questionEnd;
                    this.answerNum = response.data[0].answerNum;
                    this.choice0 = response.data[0].choice0;
                    this.choice1 = response.data[0].choice1;
                    this.choice2 = response.data[0].choice2;
                    this.choice3 = response.data[0].choice3;
                });
        },
        answerCheck(userChoicedAnswer) {
            if (userChoicedAnswer == this.answerNum) {
                this.rightAnswerFlag = true;
                if (this.timerValue > 80) {
                    this.totalScore += 99;
                    console.log(this.totalScore);
                } else if (this.timerValue > 60) {
                    this.totalScore += parseInt(99 * 0.7);
                    console.log(this.totalScore);
                } else if (this.timerValue > 40) {
                    this.totalScore += parseInt(99 * 0.5);
                    console.log(this.totalScore);
                } else {
                    this.totalScore += parseInt(99 * 0.2);
                    console.log(this.totalScore);
                }
            } else {
                this.wrongAnswerFlag = true;
            }
            this.done = true;
            this.goNextOrShowResult();
            clearInterval(this.interval);
        },
        toNext() {
            this.done = false;
            this.rightAnswerFlag = false;
            this.wrongAnswerFlag = false;
            this.quizCounter++;
            this.loadQuiz();
        },
        goNextOrShowResult() {
            if (this.allQuestionsNumber != (this.quizCounter + 1)) {
                setTimeout(() => this.toNext(), 1000);
            } else {
                setTimeout(() => this.showResultPage(), 1500);
            }
        },
        showResultPage() {
            if (this.totalScore > 800) {
                this.userGrade = "상";
                console.log(this.userGrade);
            } else if (this.totalScore > 600) {
                this.userGrade = "중";
                console.log(this.userGrade);
            } else {
                this.userGrade = "하";
                console.log(this.userGrade);
            }
            axios.post('/php/todayScoreUpdate.php', { "score": this.totalScore, "userGrade": this.userGrade })
                .then(response => {
                    console.log(response.data);
                });
            this.quizShow = false;
            this.resultShow = true;
            this.allDataReset();
        },
        allDataReset() {
            this.questionFront = "";
            this.questionEnd = "";
            this.choice0 = "";
            this.choice1 = "";
            this.choice2 = "";
            this.choice3 = "";
            this.answerNum = 0;
            this.quizCounter = 0;
            this.rightAnswerFlag = false;
            this.wrongAnswerFlag = false;
            this.done = false;
        },
        runSetup() {
            this.nameSetShow = true;
        },
        closeNameSet() {
            this.nameSetShow = false;
        },
        successNameSet() {
            this.$emit('successNameSet');
        }
    }
}
</script>
<style scoped>
.quizTemplate {
    position: relative;
    top: 100px;
    left: 150px;
}

.quizInfo {
    text-align: center;
    position: relative;
    top: 200px;
    color: #00C853;
}

.questionBox {
    width: 1080px;
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

.answerAlertArea {
    position: relative;
    top: 0px;
    left: 100px;
    height: 100px;
    width: 1090px;
    display: inline-block;
}

.resultPage {
    position: relative;
    text-align: center;
    color: #00C853;
}

.runSetupBtn {
    display: block;
    position: relative;
    bottom: 100px;
    left: 715px;
}

.resultImgContainer {
    position: relative;
    bottom: 0px;
    left: 0px;
}

.scoreContainer {
    color: #D4E157;
    position: relative;
    bottom: 400px;
    left: 10px;
}
</style>