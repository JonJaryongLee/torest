<template>
    <div>
        <div class="quizInfo" v-if="infoShow">
            <p class="display-3">퀴즈를 시작합니다.</p>
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
            <div class="solutionArea" v-if="wrongAnswerFlag">
                {{solution}}
            </div>
            <div class="answerAlertArea">
                <v-alert :value="rightAnswerFlag" type="success" transition="scale-transition">
                    정답입니다.
                </v-alert>
                <v-alert :value="wrongAnswerFlag" type="error" transition="scale-transition">
                    틀렸습니다. 
                    <div class="nextBtnArea">
                        <v-btn v-on:click="goNextOrShowResult">다음</v-btn>
                    </div>
                </v-alert>
            </div>
        </div>
        <div class="resultPage display-1" v-if="resultShow">
            당신의 예상점수는 {{totalScore}}점입니다.
            <v-btn class="retryBtn" color="success" v-on:click="runQuiz">다시 하기</v-btn>
        </div>
    </div>
</template>
<script>
import axios from 'axios'
export default {
    data() {
        return {
            allQuestionsNumber: 10,
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
            solution: "",
            answerNum: 0,
            quizCounter: 0,
            rightAnswerFlag: false,
            wrongAnswerFlag: false,
            done: false,
            totalScore: 785,
            resultShow: false
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
                    this.solution = response.data[0].solution;
                    console.log(this.answerNum);
                });
        },
        answerCheck(userChoicedAnswer) {
            if (userChoicedAnswer == this.answerNum) {
                this.rightAnswerFlag = true;
            } else {
                this.wrongAnswerFlag = true;
            }
            this.done = true;
            clearInterval(this.interval);
            if (this.rightAnswerFlag) {
                if (this.allQuestionsNumber != (this.quizCounter + 1)) {
                    setTimeout(() => this.toNext(), 1000);
                } else {
                    setTimeout(() => this.showResultPage(), 1500);
                }
            }
        },
        goNextOrShowResult() {
            if (this.allQuestionsNumber != (this.quizCounter + 1)) {
                this.toNext();
            } else {
                this.showResultPage();
            }
        },
        toNext() {
            this.done = false,
                this.rightAnswerFlag = false,
                this.wrongAnswerFlag = false,
                this.quizCounter++;
            this.loadQuiz();
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
            this.choice2 = "";
            this.choice3 = "";
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
    color: #00C853;
}

.questionAndAnswer {
    position: relative;
    padding: 100px;
    top: 20px;
}

.answerBox {
    margin-top: 60px;
}

.solutionArea{
    position: relative;
    bottom:60px;
    border: 1px solid black;
    padding: 20px;
    margin-left: 100px;
    height: 100px;
    width: 1080px;
}

.answerAlertArea{
    position: relative;
    margin-left:100px;
    margin-right:55px;
    top:-60px;
}

.nextBtnArea{
    position: absolute;
    top:0px;
    left:980px;
}

.timer {
    position: relative;
    top: 50px;
    left: 1080px;
}

.resultPage {
    position: relative;
    top: 260px;
    text-align: center;
    color: #00C853;
}

.retryBtn {
    display: block;
    position: relative;
    top: 30px;
    left: 550px;
}
</style>