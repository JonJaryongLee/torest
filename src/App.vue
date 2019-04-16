<template>
    <v-app id="inspire">
        <mainContents v-if="mainWindow"></mainContents>
        <div class="loginArea">
            <div class="loginModalArea">
                <login v-on:loginSuccess="loginSuccess" v-if="loginWindow"></login>
            </div>
        </div>
    </v-app>
</template>
<script>
import login from './components/UserLoginout/Login.vue'
import mainContents from './components/Main.vue'
export default {
    created() {
        setTimeout(() => this.loginWindow = true, 1000);
    },
    components: {
        'login': login,
        'mainContents': mainContents
    },
    data: () => ({
        loginWindow: false,
        mainWindow: false
    }),
    methods: {
        loginSuccess() {
            this.loginWindow = false;
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
    background-image: url("background.jpg");
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