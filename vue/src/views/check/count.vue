<template>
  <div class="stuff">
    <el-container>
      <el-header><h2>计量签收中心</h2></el-header>
      <el-main>
        <el-table :data="tableData" style="width: 100%">
          <el-table-column label="序号" prop="cid" width="100"></el-table-column>
          <el-table-column label="类型" prop="cclass" width="300"></el-table-column>
          <el-table-column label="周期" prop="czhou" width="300"></el-table-column>
          <el-table-column label="已签人员" prop="cmember" width="500"></el-table-column>
          <el-table-column label="查看详情">
            <template slot-scope="scope">
              <el-button icon="el-icon-search" circle size="small" @click="detail(scope.row)"/>
            </template>
          </el-table-column>
        </el-table>
      </el-main>
    </el-container>
    <el-dialog title="签收详情" :visible.sync="dialogFormVisible" width="60%">
      <h2 style="color: #20a0ff">{{ccname}}</h2>
      <el-table :data="table" height="400" border style="width: 100%">
        <el-table-column prop="cid" label="项目编号" width="100"></el-table-column>
        <el-table-column prop="cname" label="项目名称" width="180"></el-table-column>
        <el-table-column prop="ccount" label="凭证号" width="200"></el-table-column>
        <el-table-column prop="cnumber" label="数量"width="150"></el-table-column>
        <el-table-column prop="cprice" label="单价" width="154"></el-table-column>
        <el-table-column prop="call" label="金额" width="162"></el-table-column>
      </el-table>
    </el-dialog>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'count',
  data() {
    return {
      dialogFormVisible: false,
      ccname:'',
      tableData: [
        {
          cid:'',
          cclass:'',
          czhou:'',
          cmember:'',
          ctid:''
        }],
      table: [
        {
          cid:'',
          cname:'',
          ccount:'',
          cnumber:'',
          cprice:'',
          call:'',
          ctid:''
        }
      ]
    }
  },
  methods: {
    detail(row) {
      const _this=this
      this.dialogFormVisible = true
      this.ccname=row.cclass
      axios.get("http://localhost:8081/ctab/get/"+row.ctid).then(resp=>{
        _this.table=resp.data
      })


    }
  },
  mounted() {
    const _this=this
    axios.get("http://localhost:8081/count/get").then(resp=>{
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
