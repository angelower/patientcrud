<template>
    <div class="container mt-5">
      <div class="text-end mb-3">
        <img src="../assets/logo.png" alt="Logo" class="img-fluid" style="max-width: 150px;">
      </div>
      <div class="card">
        <div class="card-header text-center bg-primary text-white">
          <h4>Formulario de Registro de Paciente</h4>
        </div>
        <div class="card-body">
          <form @submit.prevent="actualizarPaciente">
            <div class="mb-3">
              <label for="documento" class="form-label text-white bg-primary text-center d-block">Documento de identidad:</label>
              <input type="number" class="form-control text-center" id="documento" v-model="paciente.doc" placeholder="Ingrese el documento">
            </div>
            <div class="mb-3">
              <label for="nombre" class="form-label text-white bg-primary text-center d-block">Nombre:</label>
              <input type="text" class="form-control text-center" id="nombre" v-model="paciente.name" placeholder="Ingrese el nombre">
            </div>
            <div class="mb-3">
              <label for="apellido" class="form-label text-white bg-primary text-center d-block">Apellido:</label>
              <input type="text" class="form-control text-center" id="apellido" v-model="paciente.lastname" placeholder="Ingrese el apellido">
            </div>
            <div class="mb-3">
              <label for="edad" class="form-label text-white bg-primary text-center d-block">Edad:</label>
              <input type="number" class="form-control text-center" id="edad" v-model="paciente.edad" placeholder="Ingrese la edad">
            </div>
            <div class="mb-3">
              <label for="genero" class="form-label text-white bg-primary text-center d-block">Seleccionar género:</label>
              <select class="form-select" id="genero" v-model="paciente.genero">
                <option selected>Seleccionar género</option>
                <option value="Masculino">Masculino</option>
                <option value="Femenino">Femenino</option>
              </select>
            </div>
            <div class="mb-3">
              <label for="eps" class="form-label text-white bg-primary text-center d-block">Seleccionar EPS:</label>
              <select class="form-select" id="eps" v-model="paciente.eps">
                <option selected>Seleccionar EPS</option>
                <option value="Sanitas">Sanitas</option>
                <option value="Nueva EPS">Nueva EPS</option>
                <option value="Coosalud">Sura</option>
                <option value="Comfama">SaludTotal</option>
                <option value="SaludCoop">Compensar</option>
              </select>
            </div>
            <div class="mb-3">
              <label for="cholesterol" class="form-label text-white bg-primary text-center d-block">Colesterol total - CHOLT:</label>
              <input type="number" step="0.01" class="form-control text-center" id="cholesterol" v-model="paciente.cholt" placeholder="Ingrese el colesterol total">
            </div>
            <div class="mb-3">
              <label for="hdl" class="form-label text-white bg-primary text-center d-block">Lipoproteínas de Alta Densidad – HDL:</label>
              <input type="number" step="0.01" class="form-control text-center" id="hdl" v-model="paciente.hdl" placeholder="Ingrese HDL">
            </div>
            <div class="mb-3">
              <label for="ldl" class="form-label text-white bg-primary text-center d-block">Lipoproteínas de Baja Densidad – LDL:</label>
              <input type="number" step="0.01" class="form-control text-center" id="ldl" v-model="paciente.ldl" placeholder="Ingrese LDL">
            </div>
            <div class="mb-3">
              <label for="trig" class="form-label text-white bg-primary text-center d-block">Triglicéridos - TRIG:</label>
              <input type="number" step="0.01" class="form-control text-center" id="trig" v-model="paciente.trig" placeholder="Ingrese triglicéridos">
            </div>
            <!-- Botones -->
            <div class="text-center mt-4">
              <button type="submit" class="btn btn-primary btn-lg">Actualizar</button>
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
        }
    },
    created:function(){
        this.obtenerPacienteID()
    },
    methods:{
        obtenerPacienteID(){
            fetch('http://localhost/api/?consultar='+this.$route.params.id)
            .then(response=>response.json())
            .then((data)=>{
                console.log(data)
                this.paciente=data[0]
                })
                .catch(console.log)
        },
        actualizarPaciente(){
            console.log(this.paciente)
            let datosPaciente={
                id:this.$route.params.id,
                doc: this.paciente.doc,
                name: this.paciente.name,
                lastname: this.paciente.lastname,
                edad: this.paciente.edad,
                genero: this.paciente.genero,
                eps: this.paciente.eps,
                cholt: this.paciente.cholt,
                hdl: this.paciente.hdl,
                ldl: this.paciente.ldl,
                trig: this.paciente.trig
            }
            fetch('http://localhost/api/?actualizar=1',{
                method: 'POST',
                body:JSON.stringify(datosPaciente)
            })
            .then(response=>response.text())
            .then((data)=>{
                console.log(data)
                window.location.href='../listar'
                })
        }
    }
    
}
</script>