<template>
    <v-carousel height="645px" :cycle='false' light>
        <v-carousel-item>
            <page1 class="pptPages"></page1>
        </v-carousel-item>
        <v-carousel-item>
            <page2 class="pptPages"></page2>
        </v-carousel-item>
        <v-carousel-item>
            <page3 class="pptPages"></page3>
        </v-carousel-item>
        <v-carousel-item>
            <page4 class="pptPages"></page4>
        </v-carousel-item>
        <v-carousel-item>
            <page5 class="pptPages"></page5>
        </v-carousel-item>
        <v-carousel-item>
            <page6 class="pptPages"></page6>
        </v-carousel-item>
    </v-carousel>
</template>
<script type="text/javascript">
import page1 from "./Pages/Page1.vue"
import page2 from "./Pages/Page2.vue"
import page3 from "./Pages/Page3.vue"
import page4 from "./Pages/Page4.vue"
import page5 from "./Pages/Page5.vue"
import page6 from "./Pages/Page6.vue"
export default {
    components: {
        'page1': page1,
        'page2': page2,
        'page3': page3,
        'page4': page4,
        'page5': page5,
        'page6': page6
    },
    data() {
        return {

        }
    }
}
</script>
<style type="text/css" scoped>
.pptPages{
    padding:150px;
    font-size:1.6rem;
}
</style>