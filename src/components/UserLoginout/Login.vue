<template>
    <v-content>
        <v-container fluid fill-height>
            <v-layout align-center justify-center>
                <v-flex xs12 sm8 md4>
                    <v-card class="elevation-12">
                        <v-toolbar dark color="green accent-2">
                            <v-toolbar-title>Torest</v-toolbar-title>
                        </v-toolbar>
                        <v-card-text>
                            <v-form>
                                <v-text-field prepend-icon="person" name="login" label="Login" type="text" color="green accent-2"></v-text-field>
                                <v-text-field id="password" prepend-icon="lock" name="password" label="Password" type="password" color="green accent-2"></v-text-field>
                            </v-form>
                        </v-card-text>
                        <v-card-actions>
                            <v-spacer></v-spacer>
                            <v-btn dark color="green accent-2" v-on:click="loginTest">Login</v-btn>
                        </v-card-actions>
                    </v-card>
                </v-flex>
            </v-layout>
        </v-container>
    </v-content>
</template>

<script>
  export default {
    data:() => ({
      loginSuccess:false
    }),
    methods:{
      loginTest(){
        this.loginSuccess=true;
        if(this.loginSuccess==true)
          this.$emit('loginSuccess');
      }
    }
  }
</script>