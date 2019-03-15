<template>
    <v-dialog v-model="SettingsModalOpen" persistent max-width="500px">
        <v-card>
            <v-card-title>
                <span class="headline">프로필 설정</span>
            </v-card-title>
            <v-card-text>
                <v-container grid-list-md>
                    <v-layout wrap>
                        <v-flex xs12 class="text-xs-center text-sm-center text-md-center text-lg-center">
                            <img :src="imageUrl" height="150" v-if="imageUrl">
                            <v-text-field label="Select Image" @click='pickFile' v-model='imageName' prepend-icon='attach_file'></v-text-field>
                            <input
                                    type="file"
                                    style="display: none"
                            >
                        </v-flex>
                        <v-flex xs12>
                            <v-text-field v-model="uploadUserName" label="이름"></v-text-field>
                        </v-flex>
                    </v-layout>
                </v-container>
            </v-card-text>
            <v-card-actions>
                <v-spacer></v-spacer>
                <v-btn color="blue darken-1" flat v-on:click="close">Close</v-btn>
                <v-btn color="blue darken-1" flat v-on:click="onSave">Save</v-btn>
            </v-card-actions>
        </v-card>
    </v-dialog>
</template>

<script type="text/javascript" scoped>
    export default {
        props: ['SettingsModalOpen'], 
        data: () => ({
            imageName:"",
            imageUrl:"",
            uploadUserName:""
        }),
        methods: {
            pickFile(){
                // 파일을 집는 함수
            },
            close(){
                this.$emit('closeSettingsModal');
            },
            onSave(){
                //사용자 정보 변경 서버에 요청
                //최종적으로 창을 종료
                this.$emit('closeSettingsModal');
            }
        }
    }
</script>

<style type="text/css" scoped>

</style>