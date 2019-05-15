<template>
    <v-content>
        <v-container fluid fill-height>
            <v-layout align-center justify-center>
                <v-flex xs12 sm8 md4>
                    <v-card class="elevation-12">
                        <v-toolbar dark color="green accent-2">
                        </v-toolbar>
                        <v-card-text>
                            <v-form>
                                <v-text-field prepend-icon="person" name="id" label="id" type="text" color="green accent-2" v-model="id"></v-text-field>
                                <v-text-field id="password" prepend-icon="lock" name="password" label="Password" type="password" color="green accent-2" v-model="pw"></v-text-field>
                            </v-form>
                        </v-card-text>
                        <v-card-actions>
                            <v-spacer></v-spacer>
                            <v-btn dark color="green accent-2" v-on:click="login">Log in</v-btn>
                            <v-btn dark color="green accent-3" v-on:click="showSignUpModal">Sign up</v-btn>
                        </v-card-actions>
                    </v-card>
                </v-flex>
                <signUpModal v-if="signUpShow" v-bind:signUpModalOpen="signUpShow" v-on:closeSignUpModal="closeSignUpModal" v-on:succeedSignUp="succeedSignUp"></signUpModal>
            </v-layout>
        </v-container>
    </v-content>
</template>
<script>
import axios from 'axios'
import signUpModal from './SignUpModal.vue'
export default {
    components: {
        'signUpModal': signUpModal
    },
    data: () => ({
        loginSuccess: false,
        signUpShow: false,
        id: "",
        pw: ""
    }),
    methods: {
        login() {
            if (this.id == "admin" && this.pw == "admin") {
                this.loginSuccess = true;
                if (this.loginSuccess == true)
                    this.$emit('loginSuccess', "admin")
            } else if (this.id == "" && this.pw == "") {
                alert("아이디와 패스워드를 입력해주세요!");
            } else {
                axios.post('./php/login.php', { "id": this.id, "pw": this.pw })
                    .then(response => {
                        if (response.data == "starterror")
                            alert("로그인 실패!");
                        else {
                            this.loginSuccess = true;
                            if (this.loginSuccess == true)
                                this.$emit('loginSuccess', response.data);
                        }
                    })
                    .catch(error => {
                        if (error) {
                            alert("로그인 실패!");
                        }
                    });
            }
        },
        closeSignUpModal() {
            this.signUpShow = false;
        },
        showSignUpModal() {
            this.signUpShow = true;
        },
        succeedSignUp(userData) {
            console.log("Login.vue signUp userData:", userData);
            this.loginSuccess = true;
            if (this.loginSucess == true)
                this.$emit('signUpSuccess', userData);
        }
    }
}
</script>