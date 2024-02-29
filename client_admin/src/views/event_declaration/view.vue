<template>
	<el-main class="bg">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">
			<el-col v-if="user_group === '管理员' || $check_field('get','declarant') || $check_field('add','declarant') || $check_field('set','declarant')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="申报人" prop="declarant">
						<div v-if="user_group !== '管理员'">
							{{ get_user_session_declarant(form['declarant']) }}
							<!--<el-input id="business_name" v-model="form['declarant']" placeholder="请输入申报人"-->
							<!--v-if="user_group === '管理员' || (form['event_declaration_id'] && $check_field('set','declarant')) || (!form['event_declaration_id'] && $check_field('add','declarant'))" :disabled="disabledObj['declarant_isDisabled']"></el-input>-->
							<!--<div v-else-if="$check_field('get','declarant')">{{form['declarant']}}</div>-->
							<el-select v-if="user_group === '管理员' || (form['event_declaration_id'] && $check_field('set','declarant')) || (!form['event_declaration_id'] && $check_field('add','declarant'))" id="declarant" v-model="form['declarant']" :disabled="disabledObj['declarant_isDisabled']">
								<el-option v-for="o in list_user_declarant" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
							<el-select v-else-if="$check_field('get','declarant')" id="declarant" v-model="form['declarant']" :disabled="true">
								<el-option v-for="o in list_user_declarant" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
						</div>
						<el-select v-else id="declarant" v-model="form['declarant']" :disabled="disabledObj['declarant_isDisabled']">
							<el-option v-for="o in list_user_declarant" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','event_name') || $check_field('add','event_name') || $check_field('set','event_name')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="赛项名称" prop="event_name">
					<el-input id="event_name" v-model="form['event_name']" placeholder="请输入赛项名称"
							  v-if="user_group === '管理员' || (form['event_declaration_id'] && $check_field('set','event_name')) || (!form['event_declaration_id'] && $check_field('add','event_name'))" :disabled="disabledObj['event_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','event_name')">{{form['event_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','event_type') || $check_field('add','event_type') || $check_field('set','event_type')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="赛项类型" prop="event_type">
					<el-input id="event_type" v-model="form['event_type']" placeholder="请输入赛项类型"
							  v-if="user_group === '管理员' || (form['event_declaration_id'] && $check_field('set','event_type')) || (!form['event_declaration_id'] && $check_field('add','event_type'))" :disabled="disabledObj['event_type_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','event_type')">{{form['event_type']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','number_of_participants') || $check_field('add','number_of_participants') || $check_field('set','number_of_participants')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="参与人数" prop="number_of_participants">
					<el-input id="number_of_participants" v-model="form['number_of_participants']" placeholder="请输入参与人数"
							  v-if="user_group === '管理员' || (form['event_declaration_id'] && $check_field('set','number_of_participants')) || (!form['event_declaration_id'] && $check_field('add','number_of_participants'))" :disabled="disabledObj['number_of_participants_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','number_of_participants')">{{form['number_of_participants']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','event_date') || $check_field('add','event_date') || $check_field('set','event_date')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="赛项日期" prop="event_date">
					<el-date-picker :disabled="disabledObj['event_date_isDisabled']" v-if="user_group === '管理员' || (form['event_declaration_id'] && $check_field('set','event_date')) || (!form['event_declaration_id'] && $check_field('add','event_date'))" id="event_date"
						v-model="form['event_date']" type="date" placeholder="选择日期">
					</el-date-picker>
					<div v-else-if="$check_field('get','event_date')">{{form['event_date']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','contact_information_of_the_applicant') || $check_field('add','contact_information_of_the_applicant') || $check_field('set','contact_information_of_the_applicant')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="申报人联系方式" prop="contact_information_of_the_applicant">
					<el-input id="contact_information_of_the_applicant" v-model="form['contact_information_of_the_applicant']" placeholder="请输入申报人联系方式"
							  v-if="user_group === '管理员' || (form['event_declaration_id'] && $check_field('set','contact_information_of_the_applicant')) || (!form['event_declaration_id'] && $check_field('add','contact_information_of_the_applicant'))" :disabled="disabledObj['contact_information_of_the_applicant_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','contact_information_of_the_applicant')">{{form['contact_information_of_the_applicant']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','event_introduction') || $check_field('add','event_introduction') || $check_field('set','event_introduction')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="赛项介绍" prop="event_introduction">
					<el-input type="textarea" id="event_introduction" v-model="form['event_introduction']" placeholder="请输入赛项介绍"
						v-if="user_group === '管理员' || (form['event_declaration_id'] && $check_field('set','event_introduction')) || (!form['event_declaration_id'] && $check_field('add','event_introduction'))" :disabled="disabledObj['event_introduction_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','event_introduction')">{{form['event_introduction']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','event_rules') || $check_field('add','event_rules') || $check_field('set','event_rules')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="赛项规则" prop="event_rules">
					<el-input type="textarea" id="event_rules" v-model="form['event_rules']" placeholder="请输入赛项规则"
						v-if="user_group === '管理员' || (form['event_declaration_id'] && $check_field('set','event_rules')) || (!form['event_declaration_id'] && $check_field('add','event_rules'))" :disabled="disabledObj['event_rules_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','event_rules')">{{form['event_rules']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','participation_conditions') || $check_field('add','participation_conditions') || $check_field('set','participation_conditions')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="参与条件" prop="participation_conditions">
					<el-input type="textarea" id="participation_conditions" v-model="form['participation_conditions']" placeholder="请输入参与条件"
						v-if="user_group === '管理员' || (form['event_declaration_id'] && $check_field('set','participation_conditions')) || (!form['event_declaration_id'] && $check_field('add','participation_conditions'))" :disabled="disabledObj['participation_conditions_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','participation_conditions')">{{form['participation_conditions']}}</div>
				</el-form-item>
			</el-col>
			<el-col :xs="24" :sm="12" :lg="8">
				<el-form-item label="审核状态" prop="examine_state">
					<el-select id="examine_state" v-model="form['examine_state']"
						v-if="user_group === '管理员' || (form['examine_state'] && $check_examine()) || (!form['examine_state'] && $check_examine())">
						<el-option key="未审核" label="未审核" value="未审核"></el-option>
						<el-option key="已通过" label="已通过" value="已通过"></el-option>
						<el-option key="未通过" label="未通过" value="未通过"></el-option>
					</el-select>
					<div v-else-if="$check_field('get','examine_state')">{{form["examine_state"]}}</div>
				</el-form-item>
			</el-col>
			<el-col :xs="24" :sm="12" :lg="8">
				<el-form-item label="审核回复" prop="examine_reply">
					<el-input id="examine_reply" v-model="form['examine_reply']" placeholder="请输入审核回复"
						v-if="user_group === '管理员' || (form['examine_reply'] && $check_examine()) || (!form['examine_reply'] && $check_examine())"></el-input>
					<div v-else-if="$check_field('get','examine_reply')">{{form["examine_reply"]}}</div>
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
				field: "event_declaration_id",
				url_add: "~/api/event_declaration/add?",
				url_set: "~/api/event_declaration/set?",
				url_get_obj: "~/api/event_declaration/get_obj?",
				url_upload: "~/api/event_declaration/upload?",

				query: {
					"event_declaration_id": 0,
				},

				form: {
					"declarant": 0, // 申报人
					"event_name":'', // 赛项名称
					"event_type":'', // 赛项类型
					"number_of_participants":'', // 参与人数
					"event_date":'', // 赛项日期
					"contact_information_of_the_applicant":'', // 申报人联系方式
					"event_introduction":'', // 赛项介绍
					"event_rules":'', // 赛项规则
					"participation_conditions":'', // 参与条件
					"examine_state": "未审核",
					"examine_reply": "",
					"event_declaration_id": 0, // ID

				},
				disabledObj:{
					"declarant_isDisabled": false,
					"event_name_isDisabled": false,
					"event_type_isDisabled": false,
					"number_of_participants_isDisabled": false,
					"event_date_isDisabled": false,
					"contact_information_of_the_applicant_isDisabled": false,
					"event_introduction_isDisabled": false,
					"event_rules_isDisabled": false,
					"participation_conditions_isDisabled": false,
				},
				// 用户列表
				list_user_declarant: [],
				// 用户组
				group_user_declarant: "",

			}
		},
		methods: {
			/**
			 * 获取普通用户用户列表
			 */
			async get_list_user_declarant() {
                // if(this.user_group !== "管理员" && this.form["declarant"] === 0) {
                //     this.form["declarant"] = this.user.user_id;
                // }
                var json = await this.$get("~/api/user/get_list?user_group=普通用户");
                if(json.result && json.result.list){
                    this.list_user_declarant = json.result.list;
                }
                else if(json.error){
                    console.error(json.error);
                }
			},
			/**
			 * 获取普通用户用户组
			 */
			async get_group_user_declarant() {
				this.form["declarant"] = this.user.user_id;
				var json = await this.$get("~/api/user_group/get_obj?name=普通用户");
				if(json.result && json.result.obj){
					this.group_user_declarant = json.result.obj;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
			get_user_session_declarant(id){
				var _this = this;
				var user_id = {"user_id":id}
				var url = "~/api/"+_this.group_user_declarant.source_table+"/get_obj?"
				this.$get(url, user_id, function(res) {
					if (res.result && res.result.obj) {
						var arr = []
						for (let key in res.result.obj) {
							arr.push(key)
						}
						var arrForm = []
						for (let key in _this.form) {
							arrForm.push(key)
						}
						for (var i=0;i<arr.length;i++){
							for (var j=0;j<arrForm.length;j++){
								if (arr[i]===arrForm[j]){
									if (arr[i]!=="declarant") {
										_this.form[arrForm[j]] = res.result.obj[arr[i]]
										_this.disabledObj[arrForm[j] + '_isDisabled'] = true
										break;
									}else {
										_this.disabledObj[arrForm[j] + '_isDisabled'] = true
									}
								}
							}
						}
					}
				});
			},
			get_user_declarant(id){
				var obj = this.list_user_declarant.getObj({"user_id":id});
				var ret = "";
				if(obj){
					if(obj.nickname){
						ret = obj.nickname;}
					else{
						ret = obj.username;
					}
				}
				return ret;
			},

			/**
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
				/**
				* 请求列表前
				* @param {Object} param
				*/
				var user_group = this.user.user_group;
				if (user_group !== "管理员") {
					switch (user_group) {
						case "申报人":
							if(param["declarant"] > 0){
								param["declarant"] = this.user.user_id;
							}
							break;
					}
				}
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
					bl = this.$check_action('/event_declaration/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/event_declaration/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/event_declaration/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/event_declaration/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/event_declaration/view','get');
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
			this.get_list_user_declarant();
			this.get_group_user_declarant();
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
