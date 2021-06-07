<template>
  <div class="dashboard-container">
    <el-row :gutter="24">
      <el-col :span="12">
        <div class="grid-content bg-purple">
          <h2 class="title">通知公告
            <el-link class="more" type="primary">更多</el-link>
          </h2>
          <el-table @row-click="tt" class="customer-table" :data="tong" style="width: 100%" max-height="350"
                    :show-header="false"
          >
            <el-table-column class="col" prop="mname" width="300">
            </el-table-column>
            <el-table-column class="col" prop="mpart" width="80">
            </el-table-column>
            <el-table-column class="col" prop="mauthor" width="80">
            </el-table-column>
            <el-table-column class="col" prop="mdate">
            </el-table-column>
          </el-table>
        </div>
      </el-col>
      <el-col :span="12">
        <div class="grid-content bg-purple">
          <h2 class="title">项目动态
            <el-link class="more" type="primary">更多</el-link>
          </h2>
          <el-table @row-click="dd" class="customer-table" :data="dong" style="width: 100%" max-height="350" :show-header="false">
            <el-table-column class="col" prop="mname" width="300">
            </el-table-column>
            <el-table-column class="col" prop="mpart" width="80">
            </el-table-column>
            <el-table-column class="col" prop="mauthor" width="80">
            </el-table-column>
            <el-table-column class="col" prop="mdate">
            </el-table-column>
          </el-table>
        </div>
      </el-col>
    </el-row>
    <el-row :gutter="24">
      <el-col :span="12">
        <div class="grid-content bg-purple">
          <h2 class="title">相关信息
            <el-link class="more" type="primary">更多</el-link>
          </h2>
          <el-table @row-click="xx" class="customer-table" :data="xiang" style="width: 100%" max-height="350" :show-header="false">
            <el-table-column class="col" prop="mname" width="300">
            </el-table-column>
            <el-table-column class="col" prop="mpart" width="80">
            </el-table-column>
            <el-table-column class="col" prop="mauthor" width="80">
            </el-table-column>
            <el-table-column class="col" prop="mdate">
            </el-table-column>
          </el-table>
        </div>
      </el-col>
      <el-col :span="12">
        <div class="grid-content bg-purple">
          <h2 class="title">安全生产
            <el-link class="more" type="primary">更多</el-link>
          </h2>
          <el-table @row-click="aa" class="customer-table" :data="an" style="width: 100%" max-height="350" :show-header="false">
            <el-table-column class="col" prop="mname" width="300">
            </el-table-column>
            <el-table-column class="col" prop="mpart" width="80">
            </el-table-column>
            <el-table-column class="col" prop="mauthor" width="80">
            </el-table-column>
            <el-table-column class="col" prop="mdate">
            </el-table-column>
          </el-table>
        </div>
      </el-col>
    </el-row>
    <el-dialog title="信息详情" :visible.sync="dialogFormVisible" width="70%">
      <div>
        <h1 style="text-align: center">{{ ddee.mname }}</h1>
      </div>
      <el-row>
        <el-col :span="8">
          <div class="e1">
            <label class="l1">部门：</label><p>{{ ddee.mpart }}</p></div>
        </el-col>
        <el-col :span="8">
          <div class="e1">
            <label class="l1">作者：</label><p>{{ ddee.mauthor }}</p></div>
        </el-col>
        <el-col :span="8">
          <div class="e1">
            <label class="l1">时间：</label><p>{{ ddee.mdate }}</p></div>
        </el-col>
      </el-row>
      <div class="t1">
        <pre class="t1" v-html="ddee.mcontent" style="white-space: pre-wrap;word-wrap: break-word;"/>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { mapGetters } from 'vuex'
import axios from 'axios'

export default {
  name: 'Dashboard',
  computed: {
    ...mapGetters([
      'name'
    ])
  },
  data() {
    return {
      dialogFormVisible: false,
      tong: [{
        mid: '',
        mname: '',
        mclass: '',
        mpart: '',
        mauthor: '',
        mdate: '',
        mcontent: ''
      }],
      dong: [{
        mid: '',
        mname: '',
        mclass: '',
        mpart: '',
        mauthor: '',
        mdate: '',
        mcontent: ''
      }],
      xiang: [{
        mid: '',
        mname: '',
        mclass: '',
        mpart: '',
        mauthor: '',
        mdate: '',
        mcontent: ''
      }],
      an: [{
        mid: '',
        mname: '',
        mclass: '',
        mpart: '',
        mauthor: '',
        mdate: '',
        mcontent: ''
      }],
      ddee: [{
        mname: '',
        mpart: '',
        mauthor: '',
        mdate: '',
        mcontent: ''
      }]
    }
  },
  beforeMount() {
    const _this = this
    axios.get('http://localhost:8081/news/showbyclass/1').then(resp => {
      _this.tong = resp.data
    })
  },
  mounted() {
    const _this = this
    axios.get('http://localhost:8081/news/showbyclass/2').then(resp => {
      _this.dong = resp.data
    })
  },
  beforeCreate() {
    const _this = this
    axios.get('http://localhost:8081/news/showbyclass/3').then(resp => {
      _this.xiang = resp.data
    })
  },
  created() {
    const _this = this
    axios.get('http://localhost:8081/news/showbyclass/4').then(resp => {
      _this.an = resp.data
    })
  },
  methods: {
    tt(row, event, column) {
      this.dialogFormVisible = true
      const _this = this
      axios.get('http://localhost:8081/news/showbyid/' + row.mid).then(resp => {
        _this.ddee = resp.data
      })
    },
    dd(row, event, column) {
      this.dialogFormVisible = true
      const _this = this
      axios.get('http://localhost:8081/news/showbyid/' + row.mid).then(resp => {
        _this.ddee = resp.data
      })
    },
    xx(row, event, column) {
      this.dialogFormVisible = true
      const _this = this
      axios.get('http://localhost:8081/news/showbyid/' + row.mid).then(resp => {
        _this.ddee = resp.data
      })
    },
    aa(row, event, column) {
      this.dialogFormVisible = true
      const _this = this
      axios.get('http://localhost:8081/news/showbyid/' + row.mid).then(resp => {
        _this.ddee = resp.data
      })
    }
  }
}
</script>

<style lang="scss" scoped>
.dashboard {
  &-container {
    margin: 10px;
  }

  &-text {
    font-size: 30px;
    line-height: 46px;
  }
}

.bg-purple {
  background: #ffffff;
}
.e1{
  margin-left: 10px;
}
.grid-content {
  border-radius: 0;
  min-height: 400px;
}

.row-bg {
  padding: 10px 0;
  background-color: #f9fafc;
}

.title {
  text-align: left;
  color: #20a0ff;
}

.title .more {
  position: absolute;
  top: 24px;
  left: 520px;
}

</style>
<style>

.customer-table th {
  border: none;
}

.customer-table td {
  border: none;
}

.col {
  border: none;
}

.l1 {
  margin-left: 50px;
  float: left;
}
.t1{
  width: 100%;
  height: 400px;
}
</style>
