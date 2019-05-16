<template>
    <div class="myForestContainer">
        <div class="landContainer">
            <img src="/img/land.png" height="520px" alt="land">
        </div>
        <v-menu offset-x>
            <template v-slot:activator="{ on }">
                <div class="mapContainer">
                    <div class="mapParentItem" v-for="n in 3" :key="n" ref="mapParentItem">
                        <div class="mapChildItem" v-for="m in 3" :key="m" ref="mapChildItem" v-on="on" v-on:click="setSelectedLocation(m,n)">
                            <div class="imgOfMap">
                                <img ref="mapImg" v-bind:src="locationURL[locationCheck(m,n)]" v-if="locationURL" alt="errer" height=60>
                            </div>
                        </div>
                    </div>
                </div>
            </template>
            <v-list>
                <v-list-tile v-for="(userItem, itemIndex) in userItems" :key="itemIndex" v-on:click="itemChange(userItem)">
                    <v-list-tile-title>{{userItem}}</v-list-tile-title>
                </v-list-tile>
            </v-list>
        </v-menu>
        <div class="destroyBtn">
            <v-btn color="error" v-on:click="destroy">destroy</v-btn>
        </div>
    </div>
</template>
<script>
import axios from 'axios'
export default {
    props: ['userItem'],
    data: () => ({
        userItems: [],
        attachedItems: [],
        locationURL: [],
        selectedLocation: -1
    }),
    mounted() {
        this.mapInit(this.userItem);
    },
    methods: {
        nameURL(itemLocation) {
            let urlName;
            urlName = "/img/item/" + itemLocation; // 추후 수정해야
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
        setSelectedLocation(m, n) {
            let result = this.locationCheck(m, n);
            this.selectedLocation = result;
        },
        itemChange(selectedItem) {
            axios.post('./php/itemChange.php', { "selectedItem": selectedItem, "location": this.selectedLocation })
                .then(response => {
                    this.$emit('itemChange', response.data.item);
                    this.mapInit(response.data.item);
                })
        },
        mapInit(userItem) {
            this.userItems = [];
            this.attachedItems = [];
            for (let i = userItem.length - 1; i >= 0; i--) {
                if (userItem[i].location == -1) {
                    this.userItems.push(userItem[i].itemName);
                } else {
                    this.attachedItems[userItem[i].location] = userItem[i].itemLocation;
                }
            }
            for (let i = this.$refs.mapChildItem.length - 1; i >= 0; i--) {
                if (!this.attachedItems[i]) {
                    this.attachedItems[i] = "sprout/sproutSmall.png"
                }
            }
            for (let i = this.$refs.mapChildItem.length - 1; i >= 0; i--) {
                if (this.attachedItems[i]) {
                    let urlName = this.nameURL(this.attachedItems[i]);
                    this.locationURL[i] = urlName;
                }
            }
        },
        destroy() {
            axios.post('./php/destroy.php')
                .then(response => {
                    this.$emit('itemChange', response.data.item);
                    this.mapInit(response.data.item);
                })
        }
    }
}
</script>
<style scoped>
.myForestContainer {
    /* The image used */
    background-image: url("/img/backgroundOfForest.png");

    /*추후 경로 수정해주세요*/

    /* Full height */
    height: 100%;

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}

.landContainer {
    position: absolute;
    top: 190px;
    left: 630px;
}

.mapChildItem:hover {
    background-color: #C8E6C9;
}

.mapContainer {
    /*border: 1px solid red;*/
    position: relative;
    top: 115px;
    left: 400px;
    display: flex;
    height: 380px;
    width: 380px;
    transform: rotateX(62deg) rotate(45deg);
}

.imgOfMap {
    position: relative;
    left: 20px;
    transform: rotate(-45deg) scale(1, 2);
}

.mapParentItem {
    display: flex;
    flex-direction: column;
    flex-grow: 1;
}

.mapChildItem {
    /*border:1px solid gray;*/
    flex-grow: 1;
}

.destroyBtn {
    position: relative;
    top: 200px;
    left: 1100px;
}
</style>