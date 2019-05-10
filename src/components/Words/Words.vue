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
            <img class="wordImg" :src="wordImg" height="150" width="150">
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
                        <input class="userAnswer" v-model="userAnswer[answerNum]" ref="userAnswer" type="text" v-bind:disabled="inputDisableFlag">
                    </div>
                </div>
                <v-btn class="wordTestSubmitBtn" color="success" v-if="submitBtnShow" v-on:click="wordSubmit">submit</v-btn>
                <v-btn class="keepDoingWordTestBtn" color="success" v-if="nextBtnShow" v-on:click="keepStudy">계속 단어 외우기</v-btn>
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
        wordName: "",
        wordPrononciation: "",
        wordMeaning: "",
        wordImg: "",
        wordCounter: 0,
        wordNameList: [],
        wordMeaningList: [],
        userAnswer: [],
        inputDisableFlag: false,
        record: 0,
        submitBtnShow: true,
        nextBtnShow: false,
        rights: [],
        wrongs: []
    }),
    methods: {
        wordRememberingStart() {
            this.wordRememberingIntroShow = false;
            this.wordRememberingShow = true;
            this.loadWord();
        },
        loadWord() {
            axios.get('/php/words.php') // 추후 수정
                .then(response => {
                    this.wordName = response.data[this.wordCounter].wordName;
                    this.wordPrononciation = response.data[this.wordCounter].wordPrononciation;
                    this.wordMeaning = response.data[this.wordCounter].wordMeaning;
                    this.wordImg = response.data[this.wordCounter].wordImg;
                });
        },
        loadAllWords() {
            axios.get('/php/words.php') // 추후 수정
                .then(response => {
                    for (let i = 0; i < response.data.length; i++) {
                        this.wordNameList.push(response.data[i].wordName);
                        this.wordMeaningList.push(response.data[i].wordMeaning);
                    }
                })
        },
        nextWord() {
            this.wordCounter++;

            //10개의 단어를 보면 시험을 실시합니다.
            if (this.wordCounter == 10) {
                this.wordRememberingShow = false;
                this.wordTestShow = true;
                this.wordTest();
            }
            this.loadWord();
        },
        wordTest() {
            this.loadAllWords();
            console.log(this.wordNameList);
        },
        wordSubmit() {
            for (let i = 0; i < 10; i++) {
                if (this.userAnswer[i] != this.wordNameList[i]) {
                    this.wrongs[i] = true;
                    this.userAnswer[i] = this.wordNameList[i];
                    this.$refs.userAnswer[i].style.color = "red";
                } else {
                    this.rights[i] = true;
                    this.record++; // 하나 맞출때마다 점수가 올라갑니다.
                }
            }
            this.inputDisableFlag = true;
            this.submitBtnShow = false;
            this.nextBtnShow = true;
            //this.record를 상위컴포넌트로 보내는 코드를 추가해야 합니다!!
        },
        keepStudy() {
            this.resetAllData();
            this.wordTestShow = false;
            this.wordRememberingIntroShow = true;
        },
        resetAllData() {
            this.wordCounter = 0;
            this.wordNameList = [];
            this.wordMeaningList = [];
            this.userAnswer = [];
            this.record = 0;
            this.submitBtnShow = true;
            this.nextBtnShow = false;
            this.inputDisableFlag = false;
            this.rights = [];
            this.wrongs = [];
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

.wordTestSubmitBtn{
    position: relative;
    top:40px;
    right:10px;
}

.keepDoingWordTestBtn{
    position: relative;
    top:40px;
    right:10px;
}
</style>