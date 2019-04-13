<template>
    <div>
        <div class="wordRememberingIntro" v-if="wordRememberingIntroShow">
            <p>열 개의 단어가 주어집니다. 이후 시험이 치러집니다.</p>
            <button v-on:click="wordRememberingStart">시작하기</button>
        </div>
        <div class="wordRemembering" v-if="wordRememberingShow">
            <p>{{wordName}}</p>
            <p>{{wordPrononciation}}</p>
            <p>{{wordMeaning}}</p>
            <img :src="wordImg" height="42" width="42">
            <button v-on:click="nextWord">다음</button>
        </div>
        <div class="wordTest" v-if="wordTestShow">
            <div class="wordTestContainer">
                <div class="itemContainer" v-for="(wordMeaningFromList,answerNum) in wordMeaningList" :key="wordMeaningFromList">
                    {{wordMeaningFromList}} <input class="userAnswer" v-model="userAnswer[answerNum]" type="text" v-bind:disabled="inputDisableFlag">
                </div>
                <button v-if="submitBtnShow" v-on:click="wordSubmit">submit</button>
                <button v-if="nextBtnShow" v-on:click="keepStudy">계속 단어 외우기</button>
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
        nextBtnShow: false
    }),
    methods: {
        wordRememberingStart() {
            this.wordRememberingIntroShow = false;
            this.wordRememberingShow = true;
            this.loadWord();
        },
        loadWord() {
            axios.get('/me/words/level1') // 추후 수정
                .then(response => {
                    this.wordName = response.data[this.wordCounter].wordName;
                    this.wordPrononciation = response.data[this.wordCounter].wordPrononciation;
                    this.wordMeaning = response.data[this.wordCounter].wordMeaning;
                    this.wordImg = response.data[this.wordCounter].wordImg;
                });
        },
        loadAllWords() {
            axios.get('/me/words/level1') // 추후 수정
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
            if (this.wordCounter == 3) {
                this.wordRememberingShow = false;
                this.wordTestShow = true;
                this.wordTest();
            }
            this.loadWord();
        },
        wordTest() {
            this.loadAllWords();
        },
        wordSubmit() {
            for (let i = 0; i < 10; i++) {
                if (this.userAnswer[i] != this.wordNameList[i])
                    this.userAnswer[i] = this.wordNameList[i];
                else
                    this.record++; // 하나 맞출때마다 점수가 올라갑니다.
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
            this.nextBtnShow= false;
            this.inputDisableFlag = false;
        }
    }
}
</script>
<style scoped>
.wordTestContainer {
    height: 500px;
    width: 600px;
    display: flex;
    flex-direction: column;
}

.itemContainer {
    border: 1px solid black;
    flex-grow: 1;
}

.userAnswer {
    border: 1px solid red;
    position: absolute;
    left: 700px;
}
</style>