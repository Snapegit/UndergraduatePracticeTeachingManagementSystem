	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import xiaowaishixun from '@/views/xiaowaishixun/list'
	import shixunbaogao from '@/views/shixunbaogao/list'
	import xuesheng from '@/views/xuesheng/list'
	import richenganpai from '@/views/richenganpai/list'
	import shixundanwei from '@/views/shixundanwei/list'
	import jiaoshi from '@/views/jiaoshi/list'
	import xiaoneishixun from '@/views/xiaoneishixun/list'
	import users from '@/views/users/list'
	import xueshengpingjia from '@/views/xueshengpingjia/list'
	import zizhushenqing from '@/views/zizhushenqing/list'
	import shixunjianding from '@/views/shixunjianding/list'
	import shixunchengji from '@/views/shixunchengji/list'
	import shixunxiangmu from '@/views/shixunxiangmu/list'
	import xiaowaishixunchengji from '@/views/xiaowaishixunchengji/list'
	import jiaoshiRegister from '@/views/jiaoshi/register'
	import jiaoshiCenter from '@/views/jiaoshi/center'
	import xueshengRegister from '@/views/xuesheng/register'
	import xueshengCenter from '@/views/xuesheng/center'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/jiaoshiCenter',
			name: '教师个人中心',
			component: jiaoshiCenter
		}
		,{
			path: '/xueshengCenter',
			name: '学生个人中心',
			component: xueshengCenter
		}
		,{
			path: '/xiaowaishixun',
			name: '校外实训',
			component: xiaowaishixun
		}
		,{
			path: '/shixunbaogao',
			name: '实训报告',
			component: shixunbaogao
		}
		,{
			path: '/xuesheng',
			name: '学生',
			component: xuesheng
		}
		,{
			path: '/richenganpai',
			name: '日程安排',
			component: richenganpai
		}
		,{
			path: '/shixundanwei',
			name: '实训单位',
			component: shixundanwei
		}
		,{
			path: '/jiaoshi',
			name: '教师',
			component: jiaoshi
		}
		,{
			path: '/xiaoneishixun',
			name: '校内实训',
			component: xiaoneishixun
		}
		,{
			path: '/users',
			name: '管理员',
			component: users
		}
		,{
			path: '/xueshengpingjia',
			name: '学生评价',
			component: xueshengpingjia
		}
		,{
			path: '/zizhushenqing',
			name: '自主申请',
			component: zizhushenqing
		}
		,{
			path: '/shixunjianding',
			name: '实训鉴定',
			component: shixunjianding
		}
		,{
			path: '/shixunchengji',
			name: '实训成绩',
			component: shixunchengji
		}
		,{
			path: '/shixunxiangmu',
			name: '实训项目',
			component: shixunxiangmu
		}
		,{
			path: '/xiaowaishixunchengji',
			name: '校外实训成绩',
			component: xiaowaishixunchengji
		}
		]
	},
	{
		path: '/jiaoshiRegister',
		name: '教师注册',
		component: jiaoshiRegister
	},
	{
		path: '/xueshengRegister',
		name: '学生注册',
		component: xueshengRegister
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
