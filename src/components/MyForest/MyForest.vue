<template>
    <div>
        <v-menu offset-x>
            <template v-slot:activator="{ on }">
                <div class="mapContainer">
                    <div class="mapParentItem" v-for="n in 3" :key="n" ref="mapParentItem">
                        <div class="mapChildItem" v-for="m in 3" :key="m" ref="mapChildItem" v-on="on" v-on:click="setSelectedLocation(m,n)">
                            <div class="imgOfMap">
                                <img ref="mapImg" v-bind:src="locationURL[locationCheck(m,n)]" v-if="locationURL" alt="errer" height=70>
                            </div>
                        </div>
                    </div>
                </div>
            </template>
            <v-list>
                <v-list-tile v-for="(userItem, itemIndex) in userItems" :key="itemIndex">
                    <v-list-tile-title>{{userItem}}</v-list-tile-title>
                </v-list-tile>
            </v-list>
        </v-menu>
    </div>
</template>
<script>
import axios from 'axios'
export default {
    data: () => ({
        userItems: [],
        attachedItems: [],
        locationURL: []
    }),
    created() {
        axios.get('me/profile') // 추후 수정
            .then(response => {
                for (let i = response.data.item.length - 1; i >= 0; i--) {
                    if (response.data.item[i].location == -1) {
                        this.userItems.push(response.data.item[i].itemName);
                    } else {
                        this.attachedItems[response.data.item[i].location] = response.data.item[i].itemName;
                    }
                }
                for (let i = this.$refs.mapChildItem.length - 1; i >= 0; i--) {
                    if (!this.attachedItems[i]) {
                        this.attachedItems[i] = "soil"
                    }
                }
                for (let i = this.$refs.mapChildItem.length - 1; i >= 0; i--) {
                    if (this.attachedItems[i]) {
                        let urlName = this.nameURL(this.attachedItems[i]);
                        this.locationURL[i] = urlName;
                    }
                }
            });
    },
    methods: {
        nameURL(itemName) {
            let urlName;
            urlName = "/Jony/itemImg/" + itemName + ".jpg"; // 추후 수정해야
            return urlName;
        },
        locationCheck(m, n) {
            if (m == 1) {
                if (n == 1)
                    return 0;
                else if (n == 2)
                    return 1;
                else
                    return 2;
            } else if (m == 2) {
                if (n == 1)
                    return 3;
                else if (n == 2)
                    return 4;
                else
                    return 5;
            } else {
                if (n == 1)
                    return 6;
                else if (n == 2)
                    return 7;
                else
                    return 8;
            }
        },
        setSelectedLocation(m,n){
            let result = this.locationCheck(m,n);
            console.log(result);
        }
    }
}
</script>
<style scoped>
.mapChildItem:hover {
    background-color: #C8E6C9;
}

.mapContainer {
    position: relative;
    top: 100px;
    left: 400px;
    display: flex;
    border: 1px solid gray;
    height: 400px;
    width: 400px;
    transform: rotateX(50deg) rotate(45deg);
}

.imgOfMap {
    transform: rotateX(0deg) rotate(-45deg);
}

.mapParentItem {
    border: 1px solid red;
    display: flex;
    flex-direction: column;
    flex-grow: 1;
}

.mapChildItem {
    border: 1px solid blue;
    flex-grow: 1;
}
</style>