<template>
    <div class="container mt-5">
      <div class="text-end mb-3">
        <img src="../assets/logo.png" alt="Logo" class="img-fluid" style="max-width: 150px;">
      </div>
      <div class="card">
        <div class="card-header text-center bg-primary text-white">
          <h4>Busqueda de resultados</h4>
        </div>
        <div class="card-body">
          <form @submit.prevent="buscarPaciente">
            <div class="mb-3">
              <label for="documento" class="form-label text-white bg-primary text-center d-block card-header">Documento de identidad:</label>
              <input type="number" class="form-control text-center" id="documento" v-model="paciente.doc" placeholder="Ingrese el documento a buscar">
            </div>
              <!-- Botones -->
            <div class="text-center mt-4">
              <button type="submit" class="btn btn-primary btn-lg">Consultar</button>
            </div>
          </form>
        </div>
        <div class="card-footer text-muted text-center">
          @Ingeniería de Software 2024-2
        </div>
      </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            paciente: {}
        };
    },
    methods: {
    buscarPaciente() {
            /*redirect to resultado view*/
            this.$router.push({ name: 'resultado', params: { id: this.paciente.doc } });
        }
    }
};
</script>

<style scoped>
.card {
    background-color: #f8f9fa; /* Color de fondo claro para el card */
}
.bg-info {
    background-color: #cce5ff !important; /* Azul más claro para el fondo de las etiquetas */
}
.card-header {
  background-color: #2D3E50 !important; /* Cambia el color del header */
}
.img-fluid {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
</style>