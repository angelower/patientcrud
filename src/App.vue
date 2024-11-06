<template>
<div class="container">
  <nav class="navbar navbar-expand-lg navbar-light">
  <!-- <a class="navbar-brand" href="#">GRUPO SPAM</a> -->

  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="nav nav-pills">
      <li class="nav-item">
        <router-link to="/" class="nav-link">GRUPO SPAM</router-link>
      </li>
      <li class="nav-item">
        <router-link to="/Listar" class="nav-link" >Listar pacientes</router-link>
      </li>
      <li class="nav-item">
        <router-link to="/Crear" class="nav-link" >Crear nuevo activo</router-link>
      </li>
      <li class="nav-item">
        <router-link to="/consultar" class="nav-link" >Consultar Resultados</router-link>
      </li>
    </ul>
  </div>
</nav>
</div>
  <router-view/>
</template>
<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

nav {
  padding: 90px;
}

nav a {
  text-decoration: none;
  padding: 10px 20px;
  color: #000; /* Color de texto por defecto */
  background-color: transparent; /* Fondo transparente por defecto */
  transition: background-color 0.3s, color 0.3s; /* Suave transición al activar */

}

nav a.router-link-exact-active {
  color: #42b983;
  background-color: #42b983;
}

.nav-link.router-link-exact-active {
    background-color: #2c3e50; /* Color de fondo para el enlace activo */
    color: white; /* Color del texto cuando está activo */
    border-radius: .25rem; /* Bordes redondeados como en Bootstrap */
    transition: background-color 0.3s, color 0.3s; /* Transición suave */
}

.nav-link {
    transition: background-color 0.3s, color 0.3s; /* Transición para cuando cambia a activo */
}
</style>
