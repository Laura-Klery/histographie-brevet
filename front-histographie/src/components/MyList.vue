<template>
  <div class="my-list">
    <div class="list-item" v-for="category in categories" :key="category.id">
      <div class="item-name">
        <h2 class="item-h2">
          {{ category.name }}
        </h2>
      </div>

      <div class="item-body" >
        <div v-for="thematic in getThematicsByCategory(category)" :key="thematic.id">
          <a :href="/quizz/" >
            {{ thematic.name }}
          </a>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  name: "MyList",
  props: {
    categories: Array,
    thematics: Array,
    quizz: Array,
  },
  methods: {
    getThematicsByCategory(category){
        return this.thematics.filter(thematic => thematic.categories_id == category.id);
    },
  },
};
</script>

<style>
.my-list {
  display: grid;
  grid-template-columns: 1fr;
  gap: 2rem;
}
.list-item {
  background-color: var(--primary-color);
  border: 2px solid var(--border-color);
  box-shadow: 8px 8px rgba(124, 39, 49, 0.3);
}
.item-name {
  background-color: var(--border-color);
  padding: 15px;
  text-align: center;
}
.item-h2 {
  font-size: 18px;
  color: var(--police-color-secondary);
  margin: 0;
}
.item-body {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  gap: 1rem;
  padding: 2rem 2rem 5rem;
}
@media all and (min-width: 768px) {
  .my-list {
    grid-template-columns: repeat(2, 1fr);
    gap: 5rem;
  }
  .item-h2 {
    font-size: 20px;
  }
}
</style>