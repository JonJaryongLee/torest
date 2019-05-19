<template>
    <div>
        <v-navigation-drawer fixed app>
            <v-list dense>
                <v-avatar id="avatar" :size=150 color="grey lighten-4">
                    <img v-bind:src="profilePicture" alt="avatar">
                </v-avatar>
                <p class="userName display-1">{{userName}}</p>
                <v-list-tile @click="myForest">
                    <v-list-tile-action>
                        <v-icon>home</v-icon>
                    </v-list-tile-action>
                    <v-list-tile-content>
                        <v-list-tile-title>나의 숲</v-list-tile-title>
                    </v-list-tile-content>
                </v-list-tile>
                <v-list-tile @click="words">
                    <v-list-tile-action>
                        <v-icon>assignment</v-icon>
                    </v-list-tile-action>
                    <v-list-tile-content>
                        <v-list-tile-title>단어 암기</v-list-tile-title>
                    </v-list-tile-content>
                </v-list-tile>
                <v-list-tile @click="quiz">
                    <v-list-tile-action>
                        <v-icon>class</v-icon>
                    </v-list-tile-action>
                    <v-list-tile-content>
                        <v-list-tile-title>문제 풀기</v-list-tile-title>
                    </v-list-tile-content>
                </v-list-tile>
                <v-list-tile @click="chart">
                    <v-list-tile-action>
                        <v-icon>timeline</v-icon>
                    </v-list-tile-action>
                    <v-list-tile-content>
                        <v-list-tile-title>통계</v-list-tile-title>
                    </v-list-tile-content>
                </v-list-tile>
                <v-list-tile color="red" @click="logout">
                    <v-list-tile-action>
                        <v-icon color="red">undo</v-icon>
                    </v-list-tile-action>
                    <v-list-tile-content>
                        <v-list-tile-title>로그아웃</v-list-tile-title>
                    </v-list-tile-content>
                </v-list-tile>
                <v-list-tile color="blue" @click="presentation">
                    <v-list-tile-action>
                        <v-icon color="blue">record_voice_over</v-icon>
                    </v-list-tile-action>
                    <v-list-tile-content>
                        <v-list-tile-title>발표 PPT</v-list-tile-title>
                    </v-list-tile-content>
                </v-list-tile>
            </v-list>
            <!-- 유저체인지에서 유저 이름 대신 아이디로 써주세요. -->
            <div class="userChangeBtnContainer">
                <v-btn v-on:click="userChange('jony8112')">jony</v-btn>
                <v-btn v-on:click="userChange('sujin11')">sujin</v-btn>
                <v-btn v-on:click="userChange('torest')">토익의 숲</v-btn>
            </div>
        </v-navigation-drawer>
        <!-- 로그아웃창 -->
        <logoutDialog v-if="logoutShow" v-bind:propsdata="logoutShow" v-on:closeLogoutModal="closeLogoutModal"></logoutDialog>
        <v-toolbar color="green accent-2" dark fixed app>
            <v-toolbar-title>{{selectedMode}}</v-toolbar-title>
        </v-toolbar>
        <!-- 사용자가 선택한 영역 -->
        <div class="userSelectedWindow">
            <!-- 나의 숲 -->
            <myForest v-if="myForestShow" v-bind:userItem="userItem" v-on:itemChange="itemChange"></myForest>
            <!-- 단어 암기 -->
            <words v-if="wordsShow" v-on:upgradeMyForest="upgradeMyForest"></words>
            <!-- 토익문제풀기 -->
            <quiz v-if="quizShow" v-bind:userGrade="userGrade" v-on:upgradeMyForest="upgradeMyForest" v-on:initUserData="initUserData"></quiz>
            <!-- 차트 -->
            <chart v-if="chartShow" v-bind:userChart="userChart"></chart>
            <!-- ppt -->
            <presentation v-if="presentationShow"></presentation>
        </div>
        <v-footer color="green accent-2" app>
            <span class="white--text">&copy; 2019 토익의 숲</span>
        </v-footer>
    </div>
</template>
<script>
import axios from 'axios'
import logoutDialog from './UserLoginout/Logout.vue'
import chart from './Chart/Chart.vue'
import quiz from './Quiz/Quiz.vue'
import myForest from './MyForest/MyForest.vue'
import presentation from './PPT/PPT.vue'
import words from './Words/Words.vue'
export default {
    data: () => ({
        userName: "Sophie",
        profilePicture: "",
        userGrade: "",
        userItem: {},
        userChart: {},
        myForestShow: false,
        wordsShow: false,
        quizShow: false,
        chartShow: false,
        logoutShow: false,
        presentationShow: true,
        selectedMode: "PPT"
    }),
    components: {
        'logoutDialog': logoutDialog,
        'chart': chart,
        'quiz': quiz,
        'myForest': myForest,
        'presentation': presentation,
        'words': words
    },
    props: {
        source: String,
        userData: Object
    },
    created() {
        this.userName = this.userData.name;
        this.profilePicture = this.userData.profile;
        this.userGrade = this.userData.grade;
        this.userItem = this.userData.item;
        this.userChart = this.userData.chartData;
    },
    methods: {
        shutdown() {
            this.myForestShow = false;
            this.wordsShow = false;
            this.quizShow = false;
            this.chartShow = false;
            this.presentationShow = false;
        },
        logout() {
            this.logoutShow = true;
        },
        myForest() {
            this.shutdown();
            this.myForestShow = true;
            this.selectedMode = "나의 숲";
        },
        words() {
            this.shutdown();
            this.wordsShow = true;
            this.selectedMode = "단어 암기"
        },
        quiz() {
            this.shutdown();
            this.quizShow = true;
            this.selectedMode = "문제 풀기";
        },
        chart() {
            this.shutdown();
            this.chartShow = true;
            this.selectedMode = "통계";
        },
        closeLogoutModal() {
            this.logoutShow = false;
        },
        presentation() {
            this.shutdown();
            this.presentationShow = true;
            this.selectedMode = "PPT";
        },
        itemChange(changedItemData) {
            this.userItem = changedItemData;
        },
        userChange(changedUserName) {
            axios.post('/php/userChange.php', { id: changedUserName })
                .then(response => {
                    this.userName = response.data.name;
                    this.profilePicture = response.data.profile;
                    this.userGrade = response.data.grade;
                    this.userItem = response.data.item;
                    this.userChart = response.data.chartData;
                })
                .catch(error => {
                    if (error) {
                        alert("유저변경 실패!");
                    }
                });
        },
        upgradeMyForest() {
            axios.post('./php/upgradeMyForest.php')
                .then(response => {
                    this.userData = response.data.item;
                })
        },
        initUserData(){
            this.$emit('initUserData');
        }
    }
}
</script>
<style>
#avatar {
    position: relative;
    left: 80px;
    top: 40px;
    margin-bottom: 70px;
}

.userSelectedWindow {
    padding-top: 70px;
    padding-left: 300px;
    height: 720px;
}

.userName {
    text-align: center;
}

.userChangeBtnContainer {
    padding: 40px;
}
</style>