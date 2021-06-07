import Vue from 'vue'
import Router from 'vue-router'

Vue.use(Router)

/* Layout */
import Layout from '@/layout'

/**
 * Note: sub-menu only appear when route children.length >= 1
 * Detail see: https://panjiachen.github.io/vue-element-admin-site/guide/essentials/router-and-nav.html
 *
 * hidden: true                   if set true, item will not show in the sidebar(default is false)
 * alwaysShow: true               if set true, will always show the root menu
 *                                if not set alwaysShow, when item has more than one children route,
 *                                it will becomes nested mode, otherwise not show the root menu
 * redirect: noRedirect           if set noRedirect will no redirect in the breadcrumb
 * name:'router-name'             the name is used by <keep-alive> (must set!!!)
 * meta : {
    roles: ['admin','editor']    control the page roles (you can set multiple roles)
    title: 'title'               the name show in sidebar and breadcrumb (recommend set)
    icon: 'svg-name'/'el-icon-x' the icon show in the sidebar
    breadcrumb: false            if set false, the item will hidden in breadcrumb(default is true)
    activeMenu: '/example/list'  if set path, the sidebar will highlight the path you set
  }
 */

/**
 * constantRoutes
 * a base page that does not have permission requirements
 * all roles can be accessed
 */
export const constantRoutes = [
  {
    path: '/login',
    component: () => import('@/views/login/index'),
    hidden: true
  },

  {
    path: '/404',
    component: () => import('@/views/404'),
    hidden: true
  },
  {
    path: '/',
    component: Layout,
    redirect: '/dashboard',
    children: [{
      path: 'dashboard',
      name: 'Dashboard',
      component: () => import('@/views/dashboard/index'),
      meta: { title: '信息展示', icon: 'dashboard' }
    }]
  },
  {
    path: '/news',
    component: Layout,
    redirect: '/news/show',
    name: 'show',
    meta: {
      title: '工程信息',
      icon: 'nested'
    },
    children: [
      {
        path: 'show',
        component: () => import('@/views/news/show'),
        name: 'article',
        meta: { title: '信息列表', icon: 'table' }
      },
      {
        path: 'edit',
        component: () => import('@/views/news/editnews'),
        name: 'edit',
        meta: { title: '信息发布', icon: 'edit' }
      }
    ]
  },
  {
    path: '/todo',
    component: Layout,
    redirect: '/todo/todoedit',
    name: 'Todo',
    meta: { title: '日程管理', icon: 'el-icon-s-flag' },
    children: [
      {
        path: 'todoshow',
        name: 'todoshow',
        component: () => import('@/views/todo/todoshow'),
        meta: { title: '日程浏览', icon: 'table' }
      },
      {
        path: 'todoedit',
        name: 'todoedit',
        component: () => import('@/views/todo/todoedit'),
        meta: { title: '日程编辑', icon: 'tree' }
      }
    ]
  },

  {
    path: '/check',
    component: Layout,
    redirect: '/check/stuff',
    name: 'Check',
    meta: {
      title: '签收管理',
      icon: 'el-icon-folder-checked'
    },
    children: [
      {
        path: 'stuff',
        component: () => import('@/views/check/stuff'), // Parent router-view
        name: 'Stuff',
        meta: { title: '材料签收', icon: 'el-icon-tickets' }
      },
      {
        path: 'count',
        component: () => import('@/views/check/count'),
        name: 'Count',
        meta: { title: '计量签收', icon: 'el-icon-pie-chart' }
      }
    ]
  },

  {
    path: '/form',
    component: Layout,
    children: [
      {
        path: 'index',
        name: 'Form',
        component: () => import('@/views/form/index'),
        meta: { title: '晴雨表', icon: 'el-icon-sunny' }
      }
    ]
  },

  {
    path: 'external-link',
    component: Layout,
    children: [
      {
        path: 'http://cqjx.ahjkjt.net/Admin/AdminLogin.aspx',
        meta: { title: '链接', icon: 'link' }
      }
    ]
  },

  // 404 page must be placed at the end !!!
  { path: '*', redirect: '/404', hidden: true }
]

const createRouter = () => new Router({
  // mode: 'history', // require service support
  scrollBehavior: () => ({ y: 0 }),
  routes: constantRoutes
})

const router = createRouter()

// Detail see: https://github.com/vuejs/vue-router/issues/1234#issuecomment-357941465
export function resetRouter() {
  const newRouter = createRouter()
  router.matcher = newRouter.matcher // reset router
}

export default router
