<template>
  <div class="sunny">
    <el-calendar v-model="value">
      <template slot="dateCell" slot-scope="{date, data}">
        <div>
          {{data.day.slice(8)}}
        </div>
        <div>
          <p v-for="(item,index) in result" v-if="item.days === data.day&&index<3">{{item.weather}}&emsp;&emsp;&emsp;{{item.temperature}}</p>
        </div>
      </template>
    </el-calendar>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'index',
  data() {
    return {
      value: new Date(),
      result: [{
        'days': '2021-05-18',
        'week': '星期二',
        'citynm': '马鞍山',
        'temperature': '17',
        'weather': '阴',
        'weather_icon': 'http://api.k780.com/upload/weather/d/2.gif',
        'wind': '东南风',
        'winp': '小于3级',
        'temp_high': '17',
        'temp_low': '17'
      }]
    }
  },
  created() {
    const _this = this
    axios.get('http://localhost:8081/weather/get').then(resp => {
      _this.result = resp.data.result
    })
  }

}
</script>

<style scoped>
</style>

