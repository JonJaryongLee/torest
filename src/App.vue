<template>
    <v-app id="inspire">
<!--         <v-btn v-on:click="levelTestTest" v-if="levelTestTestBtnShow">go level test</v-btn> -->
        <mainContents v-if="mainWindow" v-bind:userData="userData"></mainContents>
        <div class="loginArea" v-if="loginWindow">
            <div class="loginModalArea">
                <login v-on:loginSuccess="loginSuccess" v-on:signUpSuccess="signUpSuccess"></login>
            </div>
        </div>
        <levelTest v-if="levelTestShow" v-on:successNameSet="successNameSet"></levelTest>
    </v-app>
</template>
<script>
import axios from 'axios'
import login from './components/UserLoginout/Login.vue'
import mainContents from './components/Main.vue'
import levelTest from './components/LevelTest/LevelTest.vue'
export default {
    created() {
        setTimeout(() => this.loginWindow = true, 1000);
    },
    components: {
        'login': login,
        'mainContents': mainContents,
        'levelTest': levelTest
    },
    data: () => ({
        loginWindow: false,
        mainWindow: false,
        levelTestShow: false,
        userData: {}
        // levelTestTestBtnShow: true
    }),
    methods: {
        loginSuccess(userData) {
            if (userData == "admin") {
                this.loginWindow = false;
                setTimeout(() => this.mainWindow = true, 1000);
            } else {
                this.userData = userData;
                this.loginWindow = false;
                setTimeout(() => this.mainWindow = true, 1000);
            }
        },
        signUpSuccess(userData) {
            this.loginWindow = false;
            this.userData = userData;
            this.startLevelTest();
        },
        startLevelTest() {
            this.loginWindow = false;
            this.levelTestShow = true;
        },
        // levelTestTest() {
        //     this.levelTestTestBtnShow = false;
        //     this.loginWindow = false;
        //     this.levelTestShow = true;
        // },
        successNameSet() {
            this.levelTestShow = false;
            this.loginWindow = false;
            axios.get('/php/userData.php')
                .then(response=>{
                    this.userData = response.data;
                    setTimeout(() => this.mainWindow = true, 1000);
                })
        }
    }
}
</script>
<style>
::-webkit-scrollbar {
    display: none;
}

.loginArea {
    /* The image used */
    background-image: url("/img/background.jpg");
    /*추후 경로 수정해주세요*/

    /* Full height */
    height: 100%;

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}

.loginModalArea {
    position: relative;
    top: 200px;
}
</style>