<template>
  <div class="show">
    <el-table :data="news" style="width: 100%" :row-class-name="tableRowClassName">
      <el-table-column prop="mid" label="编号" align="center" width="80"></el-table-column>
      <el-table-column prop="mname" label="标题" align="center" width="400"></el-table-column>
      <el-table-column prop="mauthor" label="作者" align="center" width="200"></el-table-column>
      <el-table-column prop="mpart" label="部门" align="center" width="200"></el-table-column>
      <el-table-column prop="mclass" label="类别" align="center" width="200"></el-table-column>
      <el-table-column prop="mdate" label="时间" align="center" width="200"></el-table-column>
      <el-table-column fixed="right" label="信息管理" width="100" align="center">
        <template slot-scope="scope">
          <el-button type="danger" icon="el-icon-delete" circle @click="delnews(scope.row)"></el-button>
        </template>
      </el-table-column>
    </el-table>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'show',
  data() {
    return {
      news: [{
        mid: '',
        mname: '',
        mauthor: '',
        mpart: '',
        mclass: '',
        mdate: ''
      }]
    }
  },
  methods: {
    tableRowClassName({ row, rowIndex }) {
      if (rowIndex % 2 === 1) {
        return 'warning-row'
      } else if (rowIndex % 2 === 0) {
        return 'success-row'
      }
      return ''
    },
    delnews(row) {
      axios.delete('http://localhost:8081/news/del/' + row.mid).then(resp => {
        this.$message('删除成功')
        setTimeout(() =>{
          window.location.reload()
        },1000);
      })
    }
  },
  mounted() {
    const _this = this
    axios.get('http://localhost:8081/news/show').then(resp => {
      _this.news = resp.data
    })
  }
}
</script>

<style>
.el-table .warning-row {
  background: #eaeaea;
}

.el-table .success-row {
  background: #f5f5f5;
}
</style>
