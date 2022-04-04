<template>
  <div class="main-header">
      <div class="logo">
          <img class="logo" src="../assets/logo.svg" alt="logo">
      </div>
      <div class="name"><p>Histographie brevet</p></div>
      <div class="buttons"></div>
  </div>
</template>

<script>
export default {
  name: "MainHeader"

}
</script>

<style scoped>
  .main-header{
    padding: 2rem;
  }
  .main-header .name {
    font-family: 'Bitter', serif;
    font-size: 24px;
  }
  .main-header .name p {
    margin: 0;
    text-transform: capitalize;
  }

  .main-header .logo {
    width: 70px;
  }

@media all and (min-width: 768px) {
  
  .main-header{
    display: grid;
    grid-template-columns: 1fr 1fr 1fr;
    gap: 1.5rem;
    padding: 2rem;
  }

  .main-header .name {
    font-size: 36px;
  }
}
</style>