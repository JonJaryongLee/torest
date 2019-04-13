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
                <div class="itemContainer">
                    {{wordMeaningList[0]}} <input class="userAnswer" v-model="userAnswer0" type="text">
                </div>
                <div class="itemContainer">
                    {{wordMeaningList[1]}} <input class="userAnswer" v-model="userAnswer1" type="text">
                </div>
                <div class="itemContainer">
                    {{wordMeaningList[2]}} <input class="userAnswer" v-model="userAnswer2" type="text">
                </div>
                <div class="itemContainer">
                    {{wordMeaningList[3]}} <input class="userAnswer" v-model="userAnswer3" type="text">
                </div>
                <div class="itemContainer">
                    {{wordMeaningList[4]}} <input class="userAnswer" v-model="userAnswer4" type="text">
                </div>
                <div class="itemContainer">
                    {{wordMeaningList[5]}} <input class="userAnswer" v-model="userAnswer5" type="text">
                </div>
                <div class="itemContainer">
                    {{wordMeaningList[6]}} <input class="userAnswer" v-model="userAnswer6" type="text">
                </div>
                <div class="itemContainer">
                    {{wordMeaningList[7]}} <input class="userAnswer" v-model="userAnswer7" type="text">
                </div>
                <div class="itemContainer">
                    {{wordMeaningList[8]}} <input class="userAnswer" v-model="userAnswer8" type="text">
                </div>
                <div class="itemContainer">
                    {{wordMeaningList[9]}} <input class="userAnswer" v-model="userAnswer9" type="text">
                </div>
                <button v-on:click="wordSubmit">submit</button>
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
        wordNum: "",
        wordName: "",
        wordPrononciation: "",
        wordMeaning: "",
        wordImg: "",
        wordCounter: 0,
        wordNameList: [],
        wordMeaningList: [],
        userAnswer0: "",
        userAnswer1: "",
        userAnswer2: "",
        userAnswer3: "",
        userAnswer4: "",
        userAnswer5: "",
        userAnswer6: "",
        userAnswer7: "",
        userAnswer8: "",
        userAnswer9: "",
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
                    this.wordNum = response.data[this.wordCounter].wordNum;
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
            //작성해야함
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