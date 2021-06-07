<template>
  <div class="todo">
    <el-table :data="tableData" style="width: 1300px" class="todotable">
      <el-table-column prop="rtitle" label="标题" width="200"></el-table-column>
      <el-table-column prop="rbody" label="内容" width="350"></el-table-column>
      <el-table-column prop="rstart" label="开始日期" width="150"></el-table-column>
      <el-table-column prop="rend" label="结束日期" width="150"></el-table-column>
      <el-table-column prop="progress" label="完成进度" width="250">
        <template slot-scope="scope">
          <el-progress :text-inside="true" :stroke-width="26" :percentage="scope.row.progress" status="success"
          ></el-progress>
        </template>
      </el-table-column>
      <el-table-column fixed="right" label="日程管理" width="200">
        <template slot-scope="scope">
          <el-button @click="handleClick(scope.row)" type="text" size="small">修改进度</el-button>
          <el-button @click="dschesule(scope.row)" type="text" size="small">删除日程</el-button>
        </template>
      </el-table-column>
    </el-table>
    <el-dialog title="日程修改" :visible.sync="dialogFormVisible">
      <el-form :model="form">
        <el-form-item label="日程标题" :label-width="formLabelWidth">
          <el-input v-model="form.rtitle" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="工作内容" :label-width="formLabelWidth">
          <el-input class="body" type="textarea" :rows="8" placeholder="请输入内容" v-model="form.rbody"></el-input>
        </el-form-item>
        <el-form-item label="工程进度" :label-width="formLabelWidth">
          <el-input v-model="form.progress" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="日程时间" :label-width="formLabelWidth">
          <el-col :span="5" class="left">
            <el-date-picker type="date" placeholder="开始日期" v-model="form.rstart" style="width: 100%;"></el-date-picker>
          </el-col>
          <el-col :span="5" class="right">
            <el-date-picker type="date" placeholder="结束日期" v-model="form.rend" style="width: 100%;"></el-date-picker>
          </el-col>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="dialogFormVisible = false">取 消</el-button>
        <el-button type="primary" @click="updateform">确 定</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'todoshow',
  data() {
    return {
      bai: [],
      tableData: [{
        rtitle: '',
        rbody: '',
        rstart: '',
        rend: '',
        progress: 1
      }],
      dialogFormVisible: false,
      form: {
        rtitle: '',
        rbody: '',
        rstart: '',
        rend: '',
        progress: ''
      },
      formLabelWidth: '120px'
    }
  },
  mounted() {
    const _this = this
    axios.get('http://localhost:8081/schedule/get').then(resp => {
      _this.tableData = resp.data
      _this.bai = resp.data.progress
    })
  },
  methods: {
    handleClick(row) {
      this.dialogFormVisible = true
      const _this = this
      axios.get('http://localhost:8081/schedule/getbyid/' + row.rid).then(resp => {
        _this.form = resp.data
      })
    },
    updateform() {
      this.dialogFormVisible = false
      const _this = this
      axios.post('http://localhost:8081/schedule/add', this.form).then(resp => {
        this.$message('修改成功')
      })
      window.location.reload()
    },
    dschesule(row) {
      const _this = this
      axios.delete('http://localhost:8081/schedule/del/' + row.rid).then(resp => {
        console.log(resp.data)
      })
      window.location.reload();
    }
  }
}
</script>

<style scoped>
.todotable {
  margin: 20px;
}

.left {
  width: 140px;
}

.right {
  width: 140px;
  margin-left: 60px;
}
</style>
