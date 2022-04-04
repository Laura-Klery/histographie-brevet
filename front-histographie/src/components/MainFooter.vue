<template>
  <div class="main-footer">
        <p>&copy; Histographie Brevet. Tous les droits sont réservés.</p>
        <p>Mentions légales</p>
  </div>
</template>

<script>
export default {
  name: "MainFooter"
}
</script>

<style scoped>
.main-footer{
  padding: 1rem;
}
.main-footer p{
  text-align: center;
  font-size: 13px;
}

@media all and (min-width: 768px){
  .main-footer p{
  font-size: 16px;
}
}


</style>