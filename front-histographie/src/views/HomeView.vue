<template>
  <div class="home">
    <div class="container" >

      <MyList :categories="categories" :thematics="thematics" :quizz="quizz" />
    </div>
  </div>
</template>

<script>
import MyList from "@/components/MyList.vue";
export default {
  name: "HomeView",
  components: {
    MyList,
  },
  data() {
    return {
      categories:  [],
      thematics: [],
      quizz: [],
      
    }
  },
  mounted() {
    this.axios.get("http://localhost:3000/").then((response) => {
        this.categories = response.data;
    });
  
    this.axios.get("http://localhost:3000/thematics/").then((response) => {
      return (this.thematics = response.data);
    });
    // this.axios.get("http://localhost:3000/quizz").then((response) => {
    //   return (this.quizz = response.data);
    // });
  },
};
</script>