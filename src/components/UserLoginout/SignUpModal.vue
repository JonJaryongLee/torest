<template>
    <v-dialog v-model="signUpModalOpen" persistent max-width="500px">
        <v-card>
            <v-card-title>
                <span class="headline">Sign Up</span>
            </v-card-title>
            <v-card-text>
                <v-container grid-list-md>
                    <v-layout wrap>
                        <v-flex xs12>
                            <v-form v-model="valid">
                                <v-text-field v-model="id" label="ID" :rules="[idRules.required, idRules.min]" counter></v-text-field>
                                <v-text-field v-model="password" type='password' :rules="[pwRules.required, pwRules.min]" name="input-10-1" label="Pass Word" counter></v-text-field>
                            </v-form>
                        </v-flex>
                    </v-layout>
                </v-container>
            </v-card-text>
            <v-card-actions>
                <v-spacer></v-spacer>
                <v-btn color="blue darken-1" flat v-on:click="close">Close</v-btn>
                <v-btn color="blue darken-1" flat v-on:click="signUpRequest">Sign Up</v-btn>
            </v-card-actions>
        </v-card>
    </v-dialog>
</template>
<script type="text/javascript" scoped>
import axios from 'axios'
export default {
    props: ['signUpModalOpen'],
    data: () => ({
        valid: false,
        id: '',
        password: '',
        idRules: {
            required: value => !!value || '아이디가 필요합니다.',
            min: v => v.length >= 3 || '최소 3자 이상이 필요합니다.'
        },
        pwRules: {
            required: value => !!value || '패스워드가 필요합니다.',
            min: v => v.length >= 8 || '최소 8자 이상이 필요합니다.'
        }
    }),
    methods: {
        close() {
            this.$emit('closeSignUpModal');
        },
        signUpRequest() {
            if (this.valid == true) {
                axios.post('./php/signUp.php', { "id": this.id, "pw": this.pw })
                    .then(response => {
                        console.log("reveived Data at SignUpModal.vue:", response.data);
                        this.$emit('succeedSignUp', response.data);
                    })
                    .catch(error => {
                        if (error) {
                            alert("회원가입 실패!");
                        }
                    })

            }
        }
    }
}
</script>
<style type="text/css" scoped>
</style>