<template>
    <div>
        <div class="mapContainer">
            <div class="mapParentItem" v-for="n in 3" :key="n">
                <div class="mapChildItem" v-for="m in 3" :key="m"></div>
            </div>
        </div>
    </div>
</template>
<script>
export default {

}
</script>
<style scoped>
.mapContainer {
    position: relative;
    top: 100px;
    left: 400px;
    display: flex;
    border: 1px solid gray;
    height: 400px;
    width: 400px;
    transform: rotateX(50deg) rotate(45deg) ;
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