<template>
    <div>
        <div class="wordRememberingIntro" v-if="wordRememberingIntroShow">
            <p class="display-1">You are going to see 10 words and solve the word test.</p>
            <v-btn class="wordRememberingStartBtn" color="success" v-on:click="wordRememberingStart">start</v-btn>
        </div>
        <div class="wordRemembering" v-if="wordRememberingShow">
            <p class="display-2">{{wordName}}</p>
            <p>{{wordPrononciation}}</p>
            <p>{{wordMeaning}}</p>
            <img class="wordImg" :src="wordImg" height="150" width="150" alt="error">
            <v-btn class="wordNextBtn" v-on:click="nextWord" color="success">next</v-btn>
        </div>
        <div class="wordTest" v-if="wordTestShow">
            <div class="rightOrWrongContainer">
                <div class="rightOrWrongItem" v-for="rightOrWrongBoxNum in 10" :key="rightOrWrongBoxNum" ref="rightOrWrongBoxNum">
                    <div class="rightItemImgArea">
                        <img src="/img/icon/checked.png" alt="rightIcon" v-if="rights[rightOrWrongBoxNum-1]" height="37px">
                    </div>
                    <img src="/img/icon/cancel.png" alt="wrongIcon" v-if="wrongs[rightOrWrongBoxNum-1]" height="36px">
                </div>
            </div>
            <div class="wordTestContainer">
                <div class="itemContainer" v-for="(wordMeaningFromList,answerNum) in wordMeaningList" :key="wordMeaningFromList">
                    <div class="wordMeaningInTestContainer">
                        {{wordMeaningFromList}}
                    </div>
                    <div class="userAnswerBox">
                        <input class="userAnswer" v-model="userAnswer[answerNum]" ref="userAnswer" type="text" v-bind:disabl="inputDisableFlag">
                    </div>
                </div>
                <v-btn class="wordTestSubmitBtn" color="success" v-if="submitBtnShow" v-on:click="wordSubmit">submit</v-btn>
                <v-btn class="keepDoingWordTestBtn" color="success" v-if="restartBtnShow" v-on:click="restart">계속 단어 외우기</v-btn>
            </div>
        </div>
    </div>
</template>
<script>
import axios from 'axios'
export default {
    data: () => ({
        wordRememberingIntroShow: true,
        wordRememberingShow: false,
        wordTestShow: false,
        submitBtnShow: true,
        restartBtnShow: false,
        wordNameList: [],
        wordName: "",
        wordMeaningList: [],
        wordMeaning: "",
        wordPrononciationList: [],
        wordPrononciation: "",
        wordImgList: [],
        wordImg: "",
        wordCounter: 0,
        totalWordNum: 10,
        rights: [],
        wrongs: [],
        inputDisableFlag: false,
        userAnswer: []
    }),
    methods: {
        wordRememberingStart() {
            this.wordRememberingIntroShow = false;
            this.wordRememberingShow = true;
            this.loadWord();
        },
        loadWord() {
            axios.get('/php/words.php')
                .then(response => {
                    for (let i = 0; i < response.data.length; i++) {
                        this.wordNameList.push(response.data[i].wordName);
                        this.wordMeaningList.push(response.data[i].wordMeaning)
                        this.wordPrononciationList.push(response.data[i].wordPrononciation);
                        this.wordImgList.push(response.data[i].wordImg);
                        if (i == 0) {
                            this.wordName = this.wordNameList[0];
                            this.wordMeaning = this.wordMeaningList[0];
                            this.wordPrononciation = this.wordPrononciationList[0];
                            this.wordImg = this.wordImgList[0];
                        }
                    }
                })
        },
        nextWord() {
            this.wordCounter++;
            if (this.wordCounter == this.totalWordNum) {
                this.wordRememberingShow = false;
                this.wordTestShow = true;
                this.wordTestTest();
            } else {
                this.wordName = this.wordNameList[this.wordCounter];
                this.wordMeaning = this.wordMeaningList[this.wordCounter];
                this.wordPrononciation = this.wordPrononciationList[this.wordCounter];
                this.wordImg = this.wordImgList[this.wordCounter];
            }
        },
        wordTestTest() {
            console.log(this.wordNameList);
        },
        wordSubmit() {
            for (let i = 0; i < this.totalWordNum; i++) {
                if (this.userAnswer[i] != this.wordNameList[i]) {
                    this.wrongs[i] = true;
                    this.userAnswer[i] = this.wordNameList[i];
                    this.$refs.userAnswer[i].style.color = "red";
                } else {
                    this.rights[i] = true
                }
            }
            this.inputDisableFlag = true;
            this.submitBtnShow = false;
            this.restartBtnShow = true;
            this.$emit('upgradeMyForest');
        },
        restart() {
            this.resetAllData();
        },
        resetAllData() {
            this.wordRememberingShow = false;
            this.wordTestShow = false;
            this.wordRememberingIntroShow = true;
            this.submitBtnShow = true;
            this.restartBtnShow = false;
            this.wordNameList = [];
            this.wordName = "";
            this.wordMeaningList = [];
            this.wordMeaning = "";
            this.wordPrononciationList = [];
            this.wordPrononciation = "";
            this.wordImgList = [];
            this.wordImg = "";
            this.wordCounter = 0;
            this.totalWordNum = 10;
            this.rights = [];
            this.wrongs = [];
            this.inputDisableFlag = false;
            this.userAnswer = []
        }
    }
}
</script>
<style scoped>
.wordRememberingIntro {
    text-align: center;
    position: relative;
    top: 250px;
    color: #00C853;
}

.wordRememberingStartBtn {
    margin: 20px;
}

.wordRemembering {
    border: 2px solid #69F0AE;
    border-radius: 20px;
    width: 400px;
    height: 450px;
    position: relative;
    text-align: center;
    padding-top: 50px;
    top: 100px;
    left: 400px;
}

.wordImg {
    display: block;
    position: relative;
    left: 120px;
}

.wordNextBtn {
    text-align: center;
    margin: 30px;
}

.rightOrWrongContainer {
    display: inline-block;
    position: relative;
    top: 25px;
    width: 70px;
    height: 500px;
}

.wordTest {
    position: relative;
    top: 20px;
    left: 250px;
}

.rightOrWrongItem {
    height: 50px;
}

.rightItemImgArea {
    position: relative;
    bottom: 2px;
    right: 1px;
}

.wordTestContainer {
    position: absolute;
    top: 10px;
    left: 70px;
    height: 540px;
    width: 600px;
    display: flex;
    flex-direction: column;
}

.itemContainer {
    flex-grow: 1;
}

.wordMeaningInTestContainer {
    position: relative;
    top: 25px;
}

.userAnswerBox {
    position: absolute;
    left: 400px;
    display: inline;
    height: 30px;
    width: 180px;
    border: 2px solid gray;
    border-radius: 20px;
    background-color: white;
}

.userAnswer {
    position: relative;
    top: 2px;
    left: 6px;
    outline: none;
}

.wordTestSubmitBtn {
    position: relative;
    top: 40px;
    right: 10px;
}

.keepDoingWordTestBtn {
    position: relative;
    top: 40px;
    right: 10px;
}
</style>