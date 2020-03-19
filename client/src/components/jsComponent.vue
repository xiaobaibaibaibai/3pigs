<template>
  <div class="jsDiv">
    <h3>JavaScript类型</h3>
    <button v-on:click="showHidden(0)" class="expendShrink">On</button>
    <div v-show="showIndex[0]">
        <span>七种<b>基本</b>数据类型 (存放在栈(stack)内存):</span>
        <ul>
            <li>Boolean: 有2个值分别是：true 和 false.</li>
            <li>null : 一个表明 null 值的特殊关键字。</li>
            <li>undefined: 和null一样是一个特殊的关键字, undefined表示变量未定义时的属性。</li>
            <li>Number: 整数或浮点数，例如： 42 或者 3.14159。</li>
            <li>String: 字符串是一串表示文本值的字符序列，例如："Howdy" 。</li>
            <li>BigInt:可以安全地存储和操作大整数，甚至可以超过数字的安全整数限制。</li>
            <li>Symbol: ( 在ES6新加).。一种实例是唯一且不可改变的数据类型。</li>
        </ul>
        <span>一种<b>Object(对象)引用</b>类型，指针放在栈(stack)里，对象放在堆(heap)内存中. 
            Object又可以分为function和object两种，再往下细分又可以分成 array，function，
            regex，date，object这几常见的种类型
        </span>
    </div>
    <br>
    <h3>类型判断</h3>
    <button v-on:click="showHidden(1)" class="expendShrink">On</button>
    <div v-show="showIndex[1]">
        <ul>
            <li><span class="redfont">typeof</span> 
                返回全小写字符串: number, string, boolean, object, undefined, function. 
                适合判断出基本类型. 
                <b>缺点: </b> 判断Object的具体类型时不好用, 
                typeof [ ], typeof null, typeof new Date()都返回object</li>
            <li><span class="redfont">instanceof</span> 
                返回true/false. 用 A instanceof B 判断A的原型链上是否有B的prototype属性. 
                <b>缺点: </b>无法判断基本类型, 基本类型都返回false. 
                只要能在原型链上找到的, 都返回true, 所以数组instanceof Array和Object都返回true. 
                不可以用于undefined和null，因为他们都不是object，会直接报错</li>
            <li><span class="redfont">constructor</span> 和instanceof差不多,
                但是  [ ].constructor === Object 返回false. 
                [].constructor === Array返回true. <b>缺点: </b>继承的对象判断时，不准确</li>
            <li><span class="redfont">Object.prototype.toString.call(obj)</span> 最靠谱,
                返回字符串 [object String], [object Boolean], [object Undefined], [object Null], 
                [object Function], [object Array], [object RegExp], [object Date], [object Error], 
                [object HTMLDocument], [object Window]</li>
        </ul>
    </div>
    
    <pre>
    </pre>
  </div>
</template>

<script>
export default {
  name: 'jsComponenet',
  props: {
    msg: String
  },
  data: function() {
    return {
      inputData: "type something",
      showIndex: [
        false,
        false,
      ],
      seen: true,
    }
  },
  methods: {
      showHidden: function(index) {
          let newVal = !this.showIndex[index];
          this.$set(this.showIndex, index, newVal);
      },
  }
  
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.jsDiv {
    width: 100%;
}
h3 {
    margin-bottom: 5px;
    display: inline-block;
}
span {

}
ul {
  /* list-style-type: none; */
  width: 100%;
  padding-left: 3%;
  margin-top: 5px;
  margin-bottom: 10px;
}
li {
  margin-top: 0px;
  margin-bottom: 0px;
}

.expendShrink {
    margin-left: 5px;
}

.redfont {
    color: red;
}

</style>
