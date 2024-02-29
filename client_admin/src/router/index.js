import Vue from 'vue';
import VueRouter from 'vue-router';
import index from '../views/index.vue';
import login from '../views/login.vue';
import forgot from '../views/forgot.vue';
import register from '../views/register.vue';
Vue.use(VueRouter)

const routes = [
	// 主页
	{
		path: '/',
		name: 'index',
		component: index,
		meta: {
			index: 0,
			title: '首页'
		}
	},

	// 登录
	{
		path: '/login',
		name: 'login',
		component: login,
		meta: {
			index: 0,
			title: '登录'
		}
	},
	// 注册
	{
		path: '/register',
		name: 'register',
		component: register,
		meta: {
			index: 0,
			title: '注册'
		}
	},

	// 忘记密码
	{
		path: '/forgot',
		name: "forgot",
		component: forgot,
		meta: {
			index: 0,
			title: '忘记密码'
		}
	},

	// 修改密码
	{
		path: '/user/password',
		name: "password",
		component: () => import("../views/user/password.vue"),
		meta: {
			index: 0,
			title: '修改密码'
		}
	},

	// 视频播放页
	{
		path: "/media/video",
		name: "video",
		component: () => import('../views/media/video.vue'),
		meta: {
			index: 0,
			title: "视频"
		}
	},

	// 音频播放页
	{
		path: "/media/audio",
		name: "audio",
		component: () => import('../views/media/audio.vue'),
		meta: {
			index: 0,
			title: "音频"
		}
	},
	// 普通用户路由
	{
		path: '/ordinary_users/table',
		name: 'ordinary_users_table',
		component: () => import('../views/ordinary_users/table.vue')
	},
	{
		path: '/ordinary_users/view',
		name: 'ordinary_users_view',
		component: () => import('../views/ordinary_users/view.vue')
	},
	// 赛项信息路由
	{
		path: '/event_information/table',
		name: 'event_information_table',
		component: () => import('../views/event_information/table.vue')
	},
	{
		path: '/event_information/view',
		name: 'event_information_view',
		component: () => import('../views/event_information/view.vue')
	},
	// 赛项申报路由
	{
		path: '/event_declaration/table',
		name: 'event_declaration_table',
		component: () => import('../views/event_declaration/table.vue')
	},
	{
		path: '/event_declaration/view',
		name: 'event_declaration_view',
		component: () => import('../views/event_declaration/view.vue')
	},
	// 赛项报名路由
	{
		path: '/event_registration/table',
		name: 'event_registration_table',
		component: () => import('../views/event_registration/table.vue')
	},
	{
		path: '/event_registration/view',
		name: 'event_registration_view',
		component: () => import('../views/event_registration/view.vue')
	},
	// 赛项成果路由
	{
		path: '/event_results/table',
		name: 'event_results_table',
		component: () => import('../views/event_results/table.vue')
	},
	{
		path: '/event_results/view',
		name: 'event_results_view',
		component: () => import('../views/event_results/view.vue')
	},
	// 赛项成绩信息路由
	{
		path: '/event_performance_information/table',
		name: 'event_performance_information_table',
		component: () => import('../views/event_performance_information/table.vue')
	},
	{
		path: '/event_performance_information/view',
		name: 'event_performance_information_view',
		component: () => import('../views/event_performance_information/view.vue')
	},

	// 用户路由
	{
		path: '/user/table',
		name: 'user_table',
		component: () => import('../views/user/table.vue'),
		meta: {
			index: 0,
			title: '用户列表'
		}
	},
	{
		path: '/user/view',
		name: 'user_view',
		component: () => import('../views/user/view.vue'),
		meta: {
			index: 0,
			title: '用户详情'
		}
	},
	{
		path: '/user/info',
		name: 'user_info',
		component: () => import('../views/user/info.vue'),
		meta: {
			index: 0,
			title: '个人信息'
		}
	},
	// 用户组路由
	{
		path: '/user_group/table',
		name: 'user_group_table',
		component: () => import('../views/user_group/table.vue'),
		meta: {
			index: 0,
			title: '用户组列表'
		}
	},
	{
		path: '/user_group/view',
		name: 'user_group_view',
		component: () => import('../views/user_group/view.vue'),
		meta: {
			index: 0,
			title: '用户组详情'
		}
	}
]

const router = new VueRouter({
	mode: 'history',
	base: process.env.BASE_URL,
	routes
})

router.beforeEach((to, from, next) => {
	let token = to.query.token;
	if (token){
		$.db.set("token",token,120);
	}
	next();
})

router.afterEach((to, from, next) => {
	let title = "学科竞赛管理系统-admin";
	document.title = title;
})

export default router
