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
                                <v-text-field prepend-icon="person" name="login" label="Login" type="text" color="green accent-2"></v-text-field>
                                <v-text-field id="password" prepend-icon="lock" name="password" label="Password" type="password" color="green accent-2"></v-text-field>
                            </v-form>
                        </v-card-text>
                        <v-card-actions>
                            <v-spacer></v-spacer>
                            <v-btn dark color="green accent-2" v-on:click="loginTest">Log in</v-btn>
                            <v-btn dark color="green accent-3" v-on:click="showSignUpModal">Sign up</v-btn>
                        </v-card-actions>
                    </v-card>
                </v-flex>
                <signUpModal 
                    v-if="signUpShow" 
                    v-bind:signUpModalOpen="signUpShow" 
                    v-on:closeSignUpModal="closeSignUpModal"
                    v-on:succeedSignUp="succeedSignUp"
                ></signUpModal>
            </v-layout>
        </v-container>
    </v-content>
</template>
<script>
import signUpModal from './SignUpModal.vue'
export default {
    components: {
        'signUpModal': signUpModal
    },
    data: () => ({
        loginSuccess: false,
        signUpShow: false
    }),
    methods: {
        loginTest() {
            this.loginSuccess = true;
            if (this.loginSuccess == true)
                this.$emit('loginSuccess');
        },
        closeSignUpModal() {
            this.signUpShow = false;
        },
        showSignUpModal() {
            this.signUpShow = true;
        },
        succeedSignUp(){
            this.$emit('loginSuccess');
        }
    }
}
</script>