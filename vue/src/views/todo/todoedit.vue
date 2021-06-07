<template>
  <div class="schedule">
    <el-form ref="form" :model="form" label-width="100px">
      <el-form-item label="日程标题" prop="rtitle">
        <el-input class="title" v-model="form.rtitle"></el-input>
      </el-form-item>
      <el-form-item label="工作内容" prop="rbody">
        <el-input class="body" type="textarea" :rows="8" placeholder="请输入内容" v-model="form.rbody"></el-input>
      </el-form-item>
      <el-form-item label="日程时间">
        <el-col :span="8" class="left">
          <el-date-picker type="date" placeholder="开始日期" v-model="form.rstart" style="width: 100%;"></el-date-picker>
        </el-col>
        <el-col :span="8" class="right">
          <el-date-picker type="date" placeholder="结束日期" v-model="form.rend" style="width: 100%;"></el-date-picker>
        </el-col>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" @click="onSubmit" class="dol">创建</el-button>
        <el-button type="info" @click="clean(form)" class="dor">清空</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'todoedit',
  data() {
    return {
      form: {
        rtitle: '',
        rbody: '',
        rstart: '',
        rend: ''
      }
    }
  },
  methods: {
    onSubmit() {
      const _this = this
      axios.post("http://localhost:8081/schedule/add",this.form).then(resp=>{
        this.$message('添加成功');
      })
    },
    clean(form){
      this.$refs[form].resetFields();
    }
  }
}
</script>

<style scoped>
.schedule {
  width: 900px;
  height: 800px;
  position: absolute;
  left: 20%;
  top: 50px;
}

.title {
  width: 600px;
}

.body {
  width: 600px;
}

.left {

}

.right {
  margin-left: 70px;
}

.dol {
  width: 270px;
}

.dor {
  width: 270px;
  margin-left: 70px;
}

.clean {
  width: 173px;
  margin-left: 50px;
}
</style>
