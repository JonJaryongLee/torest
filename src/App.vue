<template>
    <v-app id="inspire">
        <mainContents v-if="mainWindow"></mainContents>
        <transition name="loginTransition">
            <login v-on:loginSuccess="loginSuccess" v-if="loginWindow"></login>
        </transition>
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
.loginTransition-enter,
.loginTransition-leave-to{
    opacity: 0;
}
</style>