<template>
    <div class="container">
        <div class="card">
            <div class="card-header">
                <h1>Resultados</h1>
            </div>
            <div class="card-body">
                <table class="table">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>Documento</th>
                            <th>Nombres y Apellidos</th>
                            <th>Edad</th>
                            <th>Genero</th>
                            <th>EPS</th>
                            <th>Colesterol Total</th>
                            <th>HDL</th>
                            <th>LDL</th>
                            <th>Trigliceridos</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="paciente in pacientes" v-bind:key="paciente.id">
                            <td scope="row">{{ paciente.id}}</td>
                            <td>{{ paciente.doc}}</td>
                            <td>{{ paciente.name}} {{paciente.lastname }}</td>
                            <td>{{ paciente.edad}}</td>
                            <td>{{ paciente.genero}}</td>
                            <td>{{ paciente.eps}}</td>
                            <td>{{ paciente.cholt}} mg/dl</td>
                            <td>{{ paciente.hdl}} mg/dl</td>
                            <td>{{ paciente.ldl}} mg/dl</td>
                            <td>{{ paciente.trig}} mg/dl</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div> 
    <div class="container">
        <div class="card">
            <div class="card-header">
                <h1>Rangos Normales</h1>
            </div>
            <div class="card-body">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Colesterol Total</th>
                            <th>HDL</th>
                            <th>LDL</th>
                            <th>Trigliceridos</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>&lt; 200 mg/dl</td>
                            <td>40-60 mg/dl</td>
                            <td>&lt; 100 mg/dl</td>
                            <td>&lt; 150 mg/dl</td>
                        </tr>
                    </tbody>
                </table>
                <div class="text-center mt-4">
                    <router-link :to="{ name: 'listar' }" class="btn btn-secondary btn-lg ms-2">Volver a Lista</router-link>
                    <router-link :to="{ name: 'consultar' }" class="btn btn-secondary btn-lg ms-2">Consultar otro paciente</router-link>
                </div>
            </div>
            <div class="card-footer text-muted">
                Ingeniería de software 2024-2
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            pacientes: []
        }
    },
    created:function(){
        this.obtenerPacienteID()
    },
    methods:{
        obtenerPacienteID(){
            fetch('http://localhost/api/?resultado='+this.$route.params.id)
            .then(response => response.json())
            .then((data)=>{
                console.log(data)
                this.pacientes = [];
                if(typeof data[0].success === 'undefined'){
                    this.pacientes = data
                }
            })
            .catch(console.log)
        }
    }
    
}
</script>