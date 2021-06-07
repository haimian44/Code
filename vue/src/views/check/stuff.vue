<template>
  <div class="stuff">
    <el-container>
      <el-header><h2>材料签收中心</h2></el-header>
      <el-main>
        <el-table :data="tableData" style="width: 100%">
          <el-table-column label="序号" prop="sid"></el-table-column>
          <el-table-column label="类型" prop="sclass"></el-table-column>
          <el-table-column label="描述" prop="sdetail"></el-table-column>
          <el-table-column label="已签人员" prop="smember"></el-table-column>
          <el-table-column label="查看详情">
            <template slot-scope="scope">
              <el-button icon="el-icon-search" circle size="small" @click="detail(scope.row)"/>
            </template>
          </el-table-column>
        </el-table>
      </el-main>
    </el-container>
    <el-dialog title="签收详情" :visible.sync="dialogFormVisible" width="60%">
      <h2 style="color: #20a0ff">供货交接记录表</h2>
      <el-table :data="table" height="400" border style="width: 100%">
        <el-table-column prop="sname" label="产品名称" width="100"></el-table-column>
        <el-table-column prop="sfact" label="厂家" width="150"></el-table-column>
        <el-table-column prop="sclass" label="产品型号"width="150"></el-table-column>
        <el-table-column prop="snum" label="数量" width="88"></el-table-column>
        <el-table-column prop="sdan" label="单位" width="88"></el-table-column>
        <el-table-column prop="scar" label="运输车牌号" width="100"></el-table-column>
        <el-table-column prop="stime" label="交货时间" width="100"></el-table-column>
        <el-table-column prop="sload" label="交货地点" width="170"></el-table-column>
      </el-table>
    </el-dialog>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'stuff',
  data() {
    return {
      dialogFormVisible: false,
      tableData: [
        {
          sid: '',
          sclass: '',
          sdetail: '',
          smember: '',
          stid: ''
        }],
      table: [
        {
          sid: '',
          stid: '',
          sname: '',
          sfact: '',
          sclass: '',
          sdan: '',
          snum: '',
          scar: '',
          stime: '',
          sload: ''
        }
      ]
    }
  },
  methods: {
    detail(row) {
      const _this=this
      this.dialogFormVisible = true
      axios.get("http://localhost:8081/stab/get/"+row.stid).then(resp=>{
        _this.table=resp.data
      })


    }
  },
  mounted() {
    const _this=this
    axios.get("http://localhost:8081/stuff/get").then(resp=>{
      _this.tableData=resp.data
    })
  }
}
</script>

<style scoped>
.el-header {
  color: #20a0ff;
  text-align: center;
  margin: 0;
}

.el-main {
  color: #333;
  text-align: center;
}

.demo-table-expand {
  font-size: 0;
}

.demo-table-expand label {
  width: 90px;
  color: #99a9bf;
}

.demo-table-expand .el-form-item {
  margin-right: 0;
  margin-bottom: 0;
  width: 50%;
}
</style>
