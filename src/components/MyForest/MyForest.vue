<template>
    <div>
        <v-menu offset-x>
            <template v-slot:activator="{ on }">
                <div class="mapContainer">
                    <div class="mapParentItem" v-for="n in 3" :key="n" ref="mapParentItem">
                        <div class="mapChildItem" v-for="m in 3" :key="m" ref="mapChildItem" v-on="on" v-on:click="setLocation(n,m)">
                            <div class="imgOfMap">
                                <img v-bind:src="imgCircumstance" v-if="imgCircumstance" alt="errer" height=70>
                            </div>
                        </div>
                    </div>
                </div>
            </template>
            <v-list>
                <v-list-tile v-for="(userItem, itemIndex) in userItems" :key="itemIndex" v-on:click="putIn(userItem)">
                    <v-list-tile-title>{{userItem}}</v-list-tile-title>
                </v-list-tile>
            </v-list>
        </v-menu>
    </div>
</template>
<script>
export default {
    data: () => ({
        imgCircumstance: "",
        userItems: [
            'pear',
            'persimmon',
            'pine'
        ],
        selectedLocation: []
    }),
    methods: {
        setLocation(n, m) {
            this.selectedLocation = [n, m];
        },
        putIn(userItemName) {
            this.imgCircumstance = "/Jony/itemImg/" + userItemName + ".jpg";

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