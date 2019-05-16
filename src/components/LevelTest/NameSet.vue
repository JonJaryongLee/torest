<template>
    <v-dialog v-model="nameSetShow" persistent max-width="500px">
        <v-card>
            <v-card-text>
                <v-container grid-list-md>
                    <v-layout wrap>
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
import axios from 'axios';
export default {
    props: ['nameSetShow'],
    data: () => ({
        uploadUserName: ""
    }),
    methods: {
        close() {
            this.$emit('closeNameSet');
        },
        onSave() {
            if (this.uploadUserName == "test") {
                this.$emit('successNameSet', "test");
            } else {
                axios.post('./php/setName.php', { "name": this.uploadUserName })
                    .then(response => {
                        if (response.data == "success") {
                            this.$emit('successNameSet', this.response.data);
                        } else {
                            alert("알 수 없는 오류 발생");
                        }
                    })
                    .catch(error => {
                        if (error) {
                            alert("알 수 없는 오류 발생");
                        }
                    });
            }
        }
    }
}
</script>
<style type="text/css" scoped>
</style>