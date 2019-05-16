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
        userData: {
            name: "",
            profile: "",
            grade: "",
            item: {},
            chartData: {
                날짜: "",
                점수: "",
                newUser: true
            }
        },
        levelTestShow: false,
        // levelTestTestBtnShow:true
    }),
    methods: {
        loginSuccess(userData) {
            if (userData == "admin") {
                console.log("app.vue login User Data:", userData);
                this.loginWindow = false;
                setTimeout(() => this.mainWindow = true, 1000);
            } else {
                this.userData = userData;
                this.loginWindow = false;
                setTimeout(() => this.mainWindow = true, 1000);
            }
        },
        signUpSuccess(userData) {
            console.log("app.vue signUp User Data", userData);
            this.loginWindow = false;
            this.userData = userData;
            this.startLevelTest();
        },
        startLevelTest() {
            this.loginWindow = false;
            this.levelTestShow = true;
        },
        // levelTestTest(){
        //     this.levelTestTestBtnShow = false;
        //     this.loginWindow = false;
        //     this.levelTestShow = true;
        // },
        successNameSet(userName, userScore) {
            let today = new Date();
            this.levelTestShow = false;
            this.loginWindow = false;
            this.userData.name = userName;
            this.userData.chartData.날짜 = today;
            this.userData.chartData.점수 = userScore;
            setTimeout(() => this.mainWindow = true, 1000);
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