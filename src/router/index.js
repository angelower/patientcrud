import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import ListarView from '../views/ListarView.vue'
import CrearView from '../views/CrearView.vue'
import EditarView from '../views/EditarView.vue'
import ResultadoView from '../views/ResultadoView.vue'
import ConsultarView from '../views/ConsultarView.vue'

const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },{
    path: '/listar',
    name: 'listar',
    component: ListarView
  },
  {
    path: '/crear',
    name: 'crear',
    component: CrearView
  },
  {
    path: '/editar/:id',
    name: 'editar',
    component: EditarView
  },
  {
    path: '/resultado/:id',
    name: 'resultado',
    component: ResultadoView
  },
  {
    path: '/consultar',
    name: 'consultar',
    component: ConsultarView
  },
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
