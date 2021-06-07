<template>
  <div class="edit">
    <el-container>
      <el-header>
        <el-row>
          <el-col :span="12">
            <div class="gridleft">
              <label>发布文章类型：</label>
              <el-select v-model="newsform.mclass" placeholder="请选择类别">
                <el-option v-for="item in options" :key="item.value" :label="item.label" :value="item.value"/>
              </el-select>
            </div>
          </el-col>
          <el-col :span="12">
            <div class="gridright">
              <el-button type="primary" class="el-button" @click="addnews">发布</el-button>
            </div>
          </el-col>
        </el-row>
      </el-header>
      <div class="propoties">
        <el-row>
          <el-col :span="8">
            <div class="gridleft1">
              <label>标题:</label>
              <el-input type="text" placeholder="请输入标题" v-model="newsform.mname" maxlength="20" show-word-limit class="title"/>
            </div>
          </el-col>
          <el-col :span="8">
            <div class="gridright2">
              <label>作者:</label>
              <el-input type="text" placeholder="请输入作者" v-model="newsform.mauthor" maxlength="8" show-word-limit class="author"/>
            </div>
          </el-col>
          <el-col :span="8">
            <div class="gridright2">
              <label>部门:</label>
              <el-input type="text" placeholder="请输入部门" v-model="newsform.mpart" maxlength="8" show-word-limit class="author"/>
            </div>
          </el-col>
        </el-row>
      </div>
      <el-main>
        <div class="content">
          <tinymce v-model="newsform.mcontent" :width="1400" :height="585"/>
        </div>
      </el-main>
    </el-container>
  </div>
</template>

<script>
import Tinymce from '@/components/Tinymce'
import axios from 'axios'

export default {
  name: 'editnews',
  components: { Tinymce },
  data() {
    return {
      options: [{
        value: '1',
        label: '通知公告'
      }, {
        value: '2',
        label: '项目动态'
      }, {
        value: '3',
        label: '相关信息'
      }, {
        value: '4',
        label: '安全生产'
      }],
      newsform: {
        mclass: '',
        mname: '',
        mauthor: '',
        mpart:'',
        mdate: new Date(),
        mcontent: ''
      }
    }
  },
  methods: {
    addnews() {
      const _this = this
      axios.post('http://localhost:8081/news/add', this.newsform).then(resp => {
        this.$message('发布成功');
        setTimeout(() =>{
          window.location.reload()
        },1000);
      })
    }

  }
}
</script>

<style scoped>
.el-button {
  width: 100px;
}

.el-header, .el-footer {
  background-color: #B3C0D1;
  color: #333;
  text-align: center;
  line-height: 60px;
}

.el-main {
  background-color: #E9EEF3;
  color: #333;
  text-align: center;
  line-height: 160px;
}

.propoties {
  color: #333;
  background-color: #E9EEF3;
}

.gridleft {
  text-align: left;
}

.gridleft1 {
  margin-top: 10px;
  margin-left: 20px;
  text-align: left;
}

.gridright {
  text-align: right;
}

.gridright2 {
  margin-top: 10px;
  margin-left: 20px;
  text-align: left;
}

.content {
  display: flex;
}

.editor-content {
  margin-left: 30px;
  flex-grow: 1;
  border: 2px dashed #f1f1f1;
  padding: 0 20px;
}

.title {
  width: 400px;
  margin-left: 10px;
}

.author {
  width: 400px;
  margin-left: 10px;
}

h3 {
  color: #808080;
}
</style>
