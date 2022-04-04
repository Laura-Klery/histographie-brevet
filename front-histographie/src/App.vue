<template>
  <div class="app">
    <main-header></main-header>
    <router-view />
    <main-footer></main-footer>
  </div>
</template>
<script>
export default {
  name: "App",
};
</script>
<style>
@import url('https://fonts.googleapis.com/css2?family=Bitter&family=Lexend+Exa&display=swap');

:root{
  --background-main : #5e1d25;
  --primary-color:#9B313D;
  --border-color: #7C2731;
  --police-color-primary:#f8f4f4; 
  --police-color-secondary:#000; 
  --color-success: #007A00;
  --color-danger: #CC0000;
}


*,
*::before,
*::after {
  box-sizing: border-box;
}

body {
  background-color: var(--background-main);
  color: var(--police-color-primary);
  font-family: "Lexend Exa", sans-serif;
  margin: 0;
}

.container {
  max-width: 1024px;
  margin: 0 auto;
  padding: 1.5rem;
}


a {
  color: var(--police-color-primary);
  text-decoration: none;
}

li{
  list-style-type: none;
}
</style>
