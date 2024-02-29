<template>
	<el-main class="bg">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">
			<el-col v-if="user_group === '管理员' || $check_field('get','event_name') || $check_field('add','event_name') || $check_field('set','event_name')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="赛项名称" prop="event_name">
					<el-input id="event_name" v-model="form['event_name']" placeholder="请输入赛项名称"
							  v-if="user_group === '管理员' || (form['event_information_id'] && $check_field('set','event_name')) || (!form['event_information_id'] && $check_field('add','event_name'))" :disabled="disabledObj['event_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','event_name')">{{form['event_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','event_type') || $check_field('add','event_type') || $check_field('set','event_type')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="赛项类型" prop="event_type">
					<el-input id="event_type" v-model="form['event_type']" placeholder="请输入赛项类型"
							  v-if="user_group === '管理员' || (form['event_information_id'] && $check_field('set','event_type')) || (!form['event_information_id'] && $check_field('add','event_type'))" :disabled="disabledObj['event_type_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','event_type')">{{form['event_type']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','number_of_participants') || $check_field('add','number_of_participants') || $check_field('set','number_of_participants')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="参与人数" prop="number_of_participants">
					<el-input id="number_of_participants" v-model="form['number_of_participants']" placeholder="请输入参与人数"
							  v-if="user_group === '管理员' || (form['event_information_id'] && $check_field('set','number_of_participants')) || (!form['event_information_id'] && $check_field('add','number_of_participants'))" :disabled="disabledObj['number_of_participants_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','number_of_participants')">{{form['number_of_participants']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','event_date') || $check_field('add','event_date') || $check_field('set','event_date')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="赛项日期" prop="event_date">
					<el-date-picker :disabled="disabledObj['event_date_isDisabled']" v-if="user_group === '管理员' || (form['event_information_id'] && $check_field('set','event_date')) || (!form['event_information_id'] && $check_field('add','event_date'))" id="event_date"
						v-model="form['event_date']" type="date" placeholder="选择日期">
					</el-date-picker>
					<div v-else-if="$check_field('get','event_date')">{{form['event_date']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','event_introduction') || $check_field('add','event_introduction') || $check_field('set','event_introduction')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="赛项介绍" prop="event_introduction">
					<el-input type="textarea" id="event_introduction" v-model="form['event_introduction']" placeholder="请输入赛项介绍"
						v-if="user_group === '管理员' || (form['event_information_id'] && $check_field('set','event_introduction')) || (!form['event_information_id'] && $check_field('add','event_introduction'))" :disabled="disabledObj['event_introduction_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','event_introduction')">{{form['event_introduction']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','event_rules') || $check_field('add','event_rules') || $check_field('set','event_rules')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="赛项规则" prop="event_rules">
					<el-input type="textarea" id="event_rules" v-model="form['event_rules']" placeholder="请输入赛项规则"
						v-if="user_group === '管理员' || (form['event_information_id'] && $check_field('set','event_rules')) || (!form['event_information_id'] && $check_field('add','event_rules'))" :disabled="disabledObj['event_rules_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','event_rules')">{{form['event_rules']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','participation_conditions') || $check_field('add','participation_conditions') || $check_field('set','participation_conditions')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="参与条件" prop="participation_conditions">
					<el-input type="textarea" id="participation_conditions" v-model="form['participation_conditions']" placeholder="请输入参与条件"
						v-if="user_group === '管理员' || (form['event_information_id'] && $check_field('set','participation_conditions')) || (!form['event_information_id'] && $check_field('add','participation_conditions'))" :disabled="disabledObj['participation_conditions_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','participation_conditions')">{{form['participation_conditions']}}</div>
				</el-form-item>
			</el-col>
			<el-col :xs="24" :sm="12" :lg="8">
				<el-form-item>
					<el-button type="primary" @click="submit()">提交</el-button>
					<el-button @click="cancel()">取消</el-button>
				</el-form-item>
			</el-col>

		</el-form>
	</el-main>
</template>

<script>
	import mixin from "@/mixins/page.js";

	export default {
		mixins: [mixin],
		data() {
			return {
				field: "event_information_id",
				url_add: "~/api/event_information/add?",
				url_set: "~/api/event_information/set?",
				url_get_obj: "~/api/event_information/get_obj?",
				url_upload: "~/api/event_information/upload?",

				query: {
					"event_information_id": 0,
				},

				form: {
					"event_name":'', // 赛项名称
					"event_type":'', // 赛项类型
					"number_of_participants":'', // 参与人数
					"event_date":'', // 赛项日期
					"event_introduction":'', // 赛项介绍
					"event_rules":'', // 赛项规则
					"participation_conditions":'', // 参与条件
					"event_information_id": 0, // ID

				},
				disabledObj:{
					"event_name_isDisabled": false,
					"event_type_isDisabled": false,
					"number_of_participants_isDisabled": false,
					"event_date_isDisabled": false,
					"event_introduction_isDisabled": false,
					"event_rules_isDisabled": false,
					"participation_conditions_isDisabled": false,
				},

			}
		},
		methods: {

			/**
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
				if(this.form && form){
					Object.keys(this.form).forEach(key => {
						Object.keys(form).forEach(dbKey => {
							// if(dbKey === "charging_standard"){
							// 	this.form['charging_rules'] = form[dbKey];
							// 	this.disabledObj['charging_rules_isDisabled'] = true;
							// };
							if(key === dbKey){
								this.disabledObj[key+'_isDisabled'] = true;
							}
						})
					})
				}
        if (this.form["event_date"].indexOf("-")===-1){
          this.form["event_date"] = this.$toTime(parseInt(this.form["event_date"]),"yyyy-MM-dd")
        }
				$.db.del("form");
				return param;
			},

			/**
			 * 获取对象之后
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json, func){
				if(parseInt(this.form["event_date"]) > 9999){
					this.form["event_date"] = this.$toTime(parseInt(this.form["event_date"]),"yyyy-MM-dd")
				}

			},

			is_view(){
				var bl = this.user_group == "管理员";

				if(!bl){
					bl = this.$check_action('/event_information/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/event_information/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/event_information/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/event_information/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/event_information/view','get');
					console.log(bl ? "你有视图查询权限视作有查询权限" : "你没有视图查询权限");
				}

				console.log(bl ? "具有当前页面的查看权，请注意这不代表你有字段的查看权" : "无权查看当前页，请注意即便有字段查询权限没有页面查询权限也不行");

				return bl;
			},
			/**
			 * 上传文件
			 * @param {Object} param
			 */
			uploadimg(param) {
				this.uploadFile(param.file, "avatar");
			},

		},
		created() {
		}
	}
</script>

<style>
	.avatar-uploader .el-upload {
		border: 1px dashed #d9d9d9;
		border-radius: 6px;
		cursor: pointer;
		position: relative;
		overflow: hidden;
	}

	.avatar-uploader .el-upload:hover {
		border-color: #409EFF;
	}

	.avatar-uploader-icon {
		font-size: 28px;
		color: #8c939d;
		width: 178px;
		height: 178px;
		line-height: 178px;
		text-align: center;
	}

	.avatar {
		width: 178px;
		height: 178px;
		display: block;
	}
</style>
