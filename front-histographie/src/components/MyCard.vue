<template>
  <div class="my-card">
      <div v-for="thematic in thematics" :key="thematic.id">
          <h1>{{thematic.name}}</h1>
          <div class="card-item">
          <div  v-for="quiz in quizz" :key="quiz.id">
              <div v-if="thematic.id == quiz.thematics_id"> 
              <h1>{{quiz.question}}</h1>
          <p v-for="p in JSON.parse(quiz.proposals)" :key="p.id">{{p}}</p>
          </div>
          </div>
      </div>
      </div>
  </div>
</template>

<script>
export default {
    name: "MyCard",
    props:{
        quizz : Array, 
        thematics : Array, 
        
    }
}
</script>

<style>

</style>