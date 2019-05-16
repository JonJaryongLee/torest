<template>
    <v-dialog v-model="propsdata" persistent max-width="400px">
        <v-card>
            <v-card-title>
                <span class="headline">정말 로그아웃 하시겠습니까?</span>
            </v-card-title>
            <v-card-actions>
                <v-spacer></v-spacer>
                <v-btn color="red" flat @click.native="onLogout">예</v-btn>
                <v-btn color="blue darken-1" flat v-on:click="close">아니오</v-btn>
            </v-card-actions>
        </v-card>
    </v-dialog>
</template>
<script type="text/javascript" scoped>
export default {
    props: ['propsdata'],
    methods: {
        // 로그아웃합니다. 임시로, 구글로 다이렉트됩니다. 
        onLogout() {
            window.location.href = "https://www.google.co.kr/";
        },

        //창을 닫습니다.
        close() {
            this.$emit('closeLogoutModal')
        }
    }
}
</script>
<style type="text/css" scoped>
</style>