<template>
  <div class="quizz">
    <div class="container">
        <MyCard :quizz="quizz"  :thematics="thematics"/>
    </div>
  </div>
</template>

<script>
import MyCard from "@/components/MyCard.vue";

export default {
  name: "QuizzView",
  components:{
    MyCard
  },
  data() {
    return {
      quizz: [],
      thematics: [],
    }
  },

  mounted() {

    this.axios.get("http://localhost:3000/quizz").then((response) => {
      return (this.quizz = response.data);
    });

    this.axios.get("http://localhost:3000/thematics").then((response) => {
      return (this.thematics = response.data);
    });
  },
};
</script>
