<template>
  <div class="container mt-5">
    <div class="text-end mb-3">
      <img src="../assets/logo.png" alt="Logo" class="img-fluid" style="max-width: 150px;">
    </div>
    <div class="card">
      <div class="card-header text-center text-white">
        <h4 class="form-title">Formulario Registro de activos</h4>
      </div>
      <div class="card-body">
        <form @submit.prevent="agregarPaciente">
          <!-- Nombre -->
          <div class="row mb-3 justify-content-center align-items-center">
            <label for="nombre" class="col-form-label">Nombre activo:</label>
            <div class="col-auto">
              <input type="text" class="form-control text-center" id="nombre" v-model="paciente.doc" placeholder="Ingrese el nombre" style="width: 300px;">
            </div>
          </div>
          <!-- Marca -->
          <div class="row mb-3 justify-content-center align-items-center">
            <label for="marca" class="col-form-label">Marca:</label>
            <div class="col-auto">
              <input type="text" class="form-control text-center" id="marca" v-model="paciente.name" placeholder="Ingrese la marca" style="width: 300px;">
            </div>
          </div>
          <!-- Modelo -->
          <div class="row mb-3 justify-content-center align-items-center">
            <label for="modelo" class="col-form-label">Modelo:</label>
            <div class="col-auto">
              <input type="text" class="form-control text-center" id="Modelo" v-model="paciente.lastname" placeholder="Ingrese el Modelo" style="width: 300px;">
            </div>
          </div>
          <!-- serial -->
          <div class="row mb-3 justify-content-center align-items-center">
            <label for="serial" class="col-form-label">Serial:</label>
            <div class="col-auto">
              <input type="text" class="form-control text-center" id="serial" v-model="paciente.edad" placeholder="Ingrese el serial" style="width: 300px;">
            </div>
          </div>
          <!-- Area perteneciente -->
          <div class="row mb-3 justify-content-center align-items-center">
            <label for="area" class="col-form-label">Seleccionar área:</label>
            <div class="col-auto">
              <select class="form-select" id="area" v-model="paciente.genero" style="width: 300px;">
                <option selected>Seleccionar área</option>
                <option value="Masculino">área Biomédica</option>
                <option value="Femenino">área de Infraestructura</option>
                <option value="Otro">área de Sistemas</option>
              </select>
            </div>
          </div>
          <!-- Responsable -->
          <div class="row mb-3 justify-content-center align-items-center">
            <label for="responsable" class="col-form-label">Responsable:</label>
            <div class="col-auto">
              <select class="form-select" id="eps" v-model="paciente.eps" style="width: 300px;">
                <option selected>Seleccionar responsable</option>
                <option value="Sanitas">Juan Felipe Lopez</option>
                <option value="Nueva EPS">Mateo Oyuela</option>
                <option value="Coosalud">Juan Jose Alzate</option>
                <option value="Comfama">Fabio velez</option>
                <option value="SaludCoop">Angelower</option>
              </select>
            </div>
          </div>
          <!-- Foto equipo -->
          <div class="row mb-3 justify-content-center align-items-center">
            <label for="cholesterolImage" class="col-form-label">Foto del equipo</label>
            <div class="col-auto">
              <input 
                type="file" 
                class="form-control text-center" 
                id="cholesterolImage" 
                accept="image/*" 
                @change="procesarImagen" 
                style="width: 300px;">
            </div>
          </div>
          <!-- Botones -->
          <div class="text-center mt-4">
            <button type="submit" class="btn btn-primary btn-lg">Guardar</button>
            <router-link :to="{ name: 'listar' }" class="btn btn-secondary btn-lg ms-2">Cancelar</router-link>
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
    agregarPaciente() {
      console.log(this.paciente);
      let datosPaciente = {
        id: null,
        doc: this.paciente.doc  ,
        name: this.paciente.name,
        lastname: this.paciente.lastname,
        edad: this.paciente.edad,
        genero: this.paciente.genero,
        eps: this.paciente.eps,
        cholt: this.paciente.choltImagen
      };
      fetch('http://localhost/api/?insertar=1', {
        method: 'POST',
        body: JSON.stringify(datosPaciente),
        mode: 'no-cors'
      })
      .then(response => response.text())
      .then((data) => {
        console.log(data);
        window.location.href = 'listar';
      })
      .catch((error) => {
        console.error('Error:', error);
      });
    },
    procesarImagen(e) {
      const file = e.target.files[0];
      if (file){
        const reader = new FileReader();
        reader.onload = (e) =>{
          this.paciente.choltImagen = e.target.result;
        };
        reader.readAsDataURL(file);
      }
    }
  }
};
</script>

<style scoped>
/* Modificar el color del título específicamente */
.card-header {
  background-color: #2D3E50 !important; /* Cambia el color del header */
}

/* Centrar la imagen */
.img-fluid {
  display: block;
  margin-left: auto;
  margin-right: auto;
}

/* Estilo para las etiquetas */
label {
  background-color: #2D3E50;
  color: white;
  text-align: center;
  width: 150px; /* Ancho reducido para las etiquetas */
}

/* Estilo para el tamaño y la alineación de los inputs y selects */
.form-control, .form-select {
  width: 300px; /* Mantiene el ancho de los campos */
  text-align: center; /* Centra el texto dentro de los campos */
}

/* Estilo para centrar las filas */
.row {
  display: flex;
  justify-content: center;
  align-items: center;
}

/* Estilo para el botón de guardar */
.btn-primary {
  background-color: #007bff; /* Color del botón de guardar */
  border-color: #007bff; /* Color del borde del botón */
}

/* Estilo para el botón de cancelar */
.btn-secondary {
  background-color: #6c757d; /* Color del botón de cancelar */
  border-color: #6c757d; /* Color del borde del botón */
}

/* Estilo para el título del formulario */
.form-title {
  width: 300px;
  margin: auto;
}
</style>