(function(t){function e(e){for(var n,o,r=e[0],c=e[1],l=e[2],u=0,h=[];u<r.length;u++)o=r[u],a[o]&&h.push(a[o][0]),a[o]=0;for(n in c)Object.prototype.hasOwnProperty.call(c,n)&&(t[n]=c[n]);d&&d(e);while(h.length)h.shift()();return i.push.apply(i,l||[]),s()}function s(){for(var t,e=0;e<i.length;e++){for(var s=i[e],n=!0,r=1;r<s.length;r++){var c=s[r];0!==a[c]&&(n=!1)}n&&(i.splice(e--,1),t=o(o.s=s[0]))}return t}var n={},a={app:0},i=[];function o(e){if(n[e])return n[e].exports;var s=n[e]={i:e,l:!1,exports:{}};return t[e].call(s.exports,s,s.exports,o),s.l=!0,s.exports}o.m=t,o.c=n,o.d=function(t,e,s){o.o(t,e)||Object.defineProperty(t,e,{enumerable:!0,get:s})},o.r=function(t){"undefined"!==typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(t,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(t,"__esModule",{value:!0})},o.t=function(t,e){if(1&e&&(t=o(t)),8&e)return t;if(4&e&&"object"===typeof t&&t&&t.__esModule)return t;var s=Object.create(null);if(o.r(s),Object.defineProperty(s,"default",{enumerable:!0,value:t}),2&e&&"string"!=typeof t)for(var n in t)o.d(s,n,function(e){return t[e]}.bind(null,n));return s},o.n=function(t){var e=t&&t.__esModule?function(){return t["default"]}:function(){return t};return o.d(e,"a",e),e},o.o=function(t,e){return Object.prototype.hasOwnProperty.call(t,e)},o.p="/";var r=window["webpackJsonp"]=window["webpackJsonp"]||[],c=r.push.bind(r);r.push=e,r=r.slice();for(var l=0;l<r.length;l++)e(r[l]);var d=c;i.push([0,"chunk-vendors"]),s()})({0:function(t,e,s){t.exports=s("56d7")},"034f":function(t,e,s){"use strict";var n=s("1356"),a=s.n(n);a.a},"0a45":function(t,e,s){},1356:function(t,e,s){},"328e":function(t,e,s){},"38d2":function(t,e,s){"use strict";var n=s("ebb6"),a=s.n(n);a.a},4678:function(t,e,s){var n={"./af":"2bfb","./af.js":"2bfb","./ar":"8e73","./ar-dz":"a356","./ar-dz.js":"a356","./ar-kw":"423e","./ar-kw.js":"423e","./ar-ly":"1cfd","./ar-ly.js":"1cfd","./ar-ma":"0a84","./ar-ma.js":"0a84","./ar-sa":"8230","./ar-sa.js":"8230","./ar-tn":"6d83","./ar-tn.js":"6d83","./ar.js":"8e73","./az":"485c","./az.js":"485c","./be":"1fc1","./be.js":"1fc1","./bg":"84aa","./bg.js":"84aa","./bm":"a7fa","./bm.js":"a7fa","./bn":"9043","./bn.js":"9043","./bo":"d26a","./bo.js":"d26a","./br":"6887","./br.js":"6887","./bs":"2554","./bs.js":"2554","./ca":"d716","./ca.js":"d716","./cs":"3c0d","./cs.js":"3c0d","./cv":"03ec","./cv.js":"03ec","./cy":"9797","./cy.js":"9797","./da":"0f14","./da.js":"0f14","./de":"b469","./de-at":"b3eb","./de-at.js":"b3eb","./de-ch":"bb718","./de-ch.js":"bb718","./de.js":"b469","./dv":"598a","./dv.js":"598a","./el":"8d47","./el.js":"8d47","./en-SG":"cdab","./en-SG.js":"cdab","./en-au":"0e6b","./en-au.js":"0e6b","./en-ca":"3886","./en-ca.js":"3886","./en-gb":"39a6","./en-gb.js":"39a6","./en-ie":"e1d3","./en-ie.js":"e1d3","./en-il":"7333","./en-il.js":"7333","./en-nz":"6f50","./en-nz.js":"6f50","./eo":"65db","./eo.js":"65db","./es":"898b","./es-do":"0a3c","./es-do.js":"0a3c","./es-us":"55c9","./es-us.js":"55c9","./es.js":"898b","./et":"ec18","./et.js":"ec18","./eu":"0ff2","./eu.js":"0ff2","./fa":"8df4","./fa.js":"8df4","./fi":"81e9","./fi.js":"81e9","./fo":"0721","./fo.js":"0721","./fr":"9f26","./fr-ca":"d9f8","./fr-ca.js":"d9f8","./fr-ch":"0e49","./fr-ch.js":"0e49","./fr.js":"9f26","./fy":"7118","./fy.js":"7118","./ga":"5120","./ga.js":"5120","./gd":"f6b4","./gd.js":"f6b4","./gl":"8840","./gl.js":"8840","./gom-latn":"0caa","./gom-latn.js":"0caa","./gu":"e0c5","./gu.js":"e0c5","./he":"c7aa","./he.js":"c7aa","./hi":"dc4d","./hi.js":"dc4d","./hr":"4ba9","./hr.js":"4ba9","./hu":"5b14","./hu.js":"5b14","./hy-am":"d6b6","./hy-am.js":"d6b6","./id":"5038","./id.js":"5038","./is":"0558","./is.js":"0558","./it":"6e98","./it-ch":"6f12","./it-ch.js":"6f12","./it.js":"6e98","./ja":"079e","./ja.js":"079e","./jv":"b540","./jv.js":"b540","./ka":"201b","./ka.js":"201b","./kk":"6d79","./kk.js":"6d79","./km":"e81d","./km.js":"e81d","./kn":"3e92","./kn.js":"3e92","./ko":"22f8","./ko.js":"22f8","./ku":"2421","./ku.js":"2421","./ky":"9609","./ky.js":"9609","./lb":"440c","./lb.js":"440c","./lo":"b29d","./lo.js":"b29d","./lt":"26f9","./lt.js":"26f9","./lv":"b97c","./lv.js":"b97c","./me":"293c","./me.js":"293c","./mi":"688b","./mi.js":"688b","./mk":"6909","./mk.js":"6909","./ml":"02fb","./ml.js":"02fb","./mn":"958b","./mn.js":"958b","./mr":"39bd","./mr.js":"39bd","./ms":"ebe4","./ms-my":"6403","./ms-my.js":"6403","./ms.js":"ebe4","./mt":"1b45","./mt.js":"1b45","./my":"8689","./my.js":"8689","./nb":"6ce3","./nb.js":"6ce3","./ne":"3a39","./ne.js":"3a39","./nl":"facd","./nl-be":"db29","./nl-be.js":"db29","./nl.js":"facd","./nn":"b84c","./nn.js":"b84c","./pa-in":"f3ff","./pa-in.js":"f3ff","./pl":"8d57","./pl.js":"8d57","./pt":"f260","./pt-br":"d2d4","./pt-br.js":"d2d4","./pt.js":"f260","./ro":"972c","./ro.js":"972c","./ru":"957c","./ru.js":"957c","./sd":"6784","./sd.js":"6784","./se":"ffff","./se.js":"ffff","./si":"eda5","./si.js":"eda5","./sk":"7be6","./sk.js":"7be6","./sl":"8155","./sl.js":"8155","./sq":"c8f3","./sq.js":"c8f3","./sr":"cf1e","./sr-cyrl":"13e9","./sr-cyrl.js":"13e9","./sr.js":"cf1e","./ss":"52bd","./ss.js":"52bd","./sv":"5fbd","./sv.js":"5fbd","./sw":"74dc","./sw.js":"74dc","./ta":"3de5","./ta.js":"3de5","./te":"5cbb","./te.js":"5cbb","./tet":"576c","./tet.js":"576c","./tg":"3b1b","./tg.js":"3b1b","./th":"10e8","./th.js":"10e8","./tl-ph":"0f38","./tl-ph.js":"0f38","./tlh":"cf75","./tlh.js":"cf75","./tr":"0e81","./tr.js":"0e81","./tzl":"cf51","./tzl.js":"cf51","./tzm":"c109","./tzm-latn":"b53d","./tzm-latn.js":"b53d","./tzm.js":"c109","./ug-cn":"6117","./ug-cn.js":"6117","./uk":"ada2","./uk.js":"ada2","./ur":"5294","./ur.js":"5294","./uz":"2e8c","./uz-latn":"010e","./uz-latn.js":"010e","./uz.js":"2e8c","./vi":"2921","./vi.js":"2921","./x-pseudo":"fd7e","./x-pseudo.js":"fd7e","./yo":"7f33","./yo.js":"7f33","./zh-cn":"5c3a","./zh-cn.js":"5c3a","./zh-hk":"49ab","./zh-hk.js":"49ab","./zh-tw":"90ea","./zh-tw.js":"90ea"};function a(t){var e=i(t);return s(e)}function i(t){var e=n[t];if(!(e+1)){var s=new Error("Cannot find module '"+t+"'");throw s.code="MODULE_NOT_FOUND",s}return e}a.keys=function(){return Object.keys(n)},a.resolve=i,t.exports=a,a.id="4678"},"56d7":function(t,e,s){"use strict";s.r(e);s("cadf"),s("551c"),s("f751"),s("097d");var n=s("2b0e"),a=s("bb71");s("da64");n["a"].use(a["a"],{iconfont:"md"});var i=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("v-app",{attrs:{id:"inspire"}},[t.mainWindow?s("mainContents"):t._e(),s("div",{staticClass:"loginArea"},[s("div",{staticClass:"loginModalArea"},[t.loginWindow?s("login",{on:{loginSuccess:t.loginSuccess}}):t._e()],1)])],1)},o=[],r=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("v-content",[s("v-container",{attrs:{fluid:"","fill-height":""}},[s("v-layout",{attrs:{"align-center":"","justify-center":""}},[s("v-flex",{attrs:{xs12:"",sm8:"",md4:""}},[s("v-card",{staticClass:"elevation-12"},[s("v-toolbar",{attrs:{dark:"",color:"green accent-2"}}),s("v-card-text",[s("v-form",[s("v-text-field",{attrs:{"prepend-icon":"person",name:"login",label:"Login",type:"text",color:"green accent-2"}}),s("v-text-field",{attrs:{id:"password","prepend-icon":"lock",name:"password",label:"Password",type:"password",color:"green accent-2"}})],1)],1),s("v-card-actions",[s("v-spacer"),s("v-btn",{attrs:{dark:"",color:"green accent-2"},on:{click:t.loginTest}},[t._v("Log in")]),s("v-btn",{attrs:{dark:"",color:"green accent-3"},on:{click:t.showSignUpModal}},[t._v("Sign up")])],1)],1)],1),t.signUpShow?s("signUpModal",{attrs:{signUpModalOpen:t.signUpShow},on:{closeSignUpModal:t.closeSignUpModal,succeedSignUp:t.succeedSignUp}}):t._e()],1)],1)],1)},c=[],l=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("v-dialog",{attrs:{persistent:"","max-width":"500px"},model:{value:t.signUpModalOpen,callback:function(e){t.signUpModalOpen=e},expression:"signUpModalOpen"}},[s("v-card",[s("v-card-title",[s("span",{staticClass:"headline"},[t._v("Sign Up")])]),s("v-card-text",[s("v-container",{attrs:{"grid-list-md":""}},[s("v-layout",{attrs:{wrap:""}},[s("v-flex",{attrs:{xs12:""}},[s("v-form",{model:{value:t.valid,callback:function(e){t.valid=e},expression:"valid"}},[s("v-text-field",{attrs:{label:"ID",rules:[t.idRules.required,t.idRules.min],counter:""},model:{value:t.id,callback:function(e){t.id=e},expression:"id"}}),s("v-text-field",{attrs:{type:"password",rules:[t.pwRules.required,t.pwRules.min],name:"input-10-1",label:"Pass Word",counter:""},model:{value:t.password,callback:function(e){t.password=e},expression:"password"}})],1)],1)],1)],1)],1),s("v-card-actions",[s("v-spacer"),s("v-btn",{attrs:{color:"blue darken-1",flat:""},on:{click:t.close}},[t._v("Close")]),s("v-btn",{attrs:{color:"blue darken-1",flat:""},on:{click:t.signUpRequest}},[t._v("Sign Up")])],1)],1)],1)},d=[],u={props:["signUpModalOpen"],data:function(){return{valid:!1,id:"",password:"",idRules:{required:function(t){return!!t||"아이디가 필요합니다."},min:function(t){return t.length>=3||"최소 3자 이상이 필요합니다."}},pwRules:{required:function(t){return!!t||"패스워드가 필요합니다."},min:function(t){return t.length>=8||"최소 8자 이상이 필요합니다."}}}},methods:{close:function(){this.$emit("closeSignUpModal")},signUpRequest:function(){1==this.valid&&this.$emit("succeedSignUp")}}},h=u,v=s("2877"),f=s("6544"),m=s.n(f),g=s("8336"),p=s("b0af"),w=s("99d9"),b=s("12b2"),_=s("a523"),j=s("169a"),S=s("0e8f"),C=s("4bd4"),k=s("a722"),x=s("9910"),y=s("2677"),V=Object(v["a"])(h,l,d,!1,null,"088d13ec",null),M=V.exports;m()(V,{VBtn:g["a"],VCard:p["a"],VCardActions:w["a"],VCardText:w["b"],VCardTitle:b["a"],VContainer:_["a"],VDialog:j["a"],VFlex:S["a"],VForm:C["a"],VLayout:k["a"],VSpacer:x["a"],VTextField:y["a"]});var z={components:{signUpModal:M},data:function(){return{loginSuccess:!1,signUpShow:!1}},methods:{loginTest:function(){this.loginSuccess=!0,1==this.loginSuccess&&this.$emit("loginSuccess")},closeSignUpModal:function(){this.signUpShow=!1},showSignUpModal:function(){this.signUpShow=!0},succeedSignUp:function(){this.$emit("loginSuccess")}}},I=z,O=s("549c"),T=s("71d9"),F=Object(v["a"])(I,r,c,!1,null,null,null),N=F.exports;m()(F,{VBtn:g["a"],VCard:p["a"],VCardActions:w["a"],VCardText:w["b"],VContainer:_["a"],VContent:O["a"],VFlex:S["a"],VForm:C["a"],VLayout:k["a"],VSpacer:x["a"],VTextField:y["a"],VToolbar:T["a"]});var U=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",[s("v-navigation-drawer",{attrs:{fixed:"",app:""}},[s("v-list",{attrs:{dense:""}},[s("v-avatar",{attrs:{id:"avatar",size:150,color:"grey lighten-4"}},[s("img",{attrs:{src:"me/sophie.jpg",alt:"avatar"}})]),s("p",{staticClass:"userName display-1"},[t._v(t._s(t.userName))]),s("v-list-tile",{on:{click:t.myForest}},[s("v-list-tile-action",[s("v-icon",[t._v("home")])],1),s("v-list-tile-content",[s("v-list-tile-title",[t._v("나의 숲")])],1)],1),s("v-list-tile",{on:{click:t.words}},[s("v-list-tile-action",[s("v-icon",[t._v("assignment")])],1),s("v-list-tile-content",[s("v-list-tile-title",[t._v("단어 암기")])],1)],1),s("v-list-tile",{on:{click:t.quiz}},[s("v-list-tile-action",[s("v-icon",[t._v("class")])],1),s("v-list-tile-content",[s("v-list-tile-title",[t._v("문제 풀기")])],1)],1),s("v-list-tile",{on:{click:t.chart}},[s("v-list-tile-action",[s("v-icon",[t._v("timeline")])],1),s("v-list-tile-content",[s("v-list-tile-title",[t._v("통계")])],1)],1),s("v-list-tile",{on:{click:t.settings}},[s("v-list-tile-action",[s("v-icon",[t._v("settings")])],1),s("v-list-tile-content",[s("v-list-tile-title",[t._v("설정")])],1)],1),s("v-list-tile",{attrs:{color:"red"},on:{click:t.logout}},[s("v-list-tile-action",[s("v-icon",{attrs:{color:"red"}},[t._v("undo")])],1),s("v-list-tile-content",[s("v-list-tile-title",[t._v("로그아웃")])],1)],1),s("v-list-tile",{attrs:{color:"blue"},on:{click:t.presentation}},[s("v-list-tile-action",[s("v-icon",{attrs:{color:"blue"}},[t._v("record_voice_over")])],1),s("v-list-tile-content",[s("v-list-tile-title",[t._v("발표 PPT")])],1)],1)],1)],1),t.settingsShow?s("settings",{attrs:{SettingsModalOpen:t.settingsShow},on:{closeSettingsModal:t.closeSettingsModal}}):t._e(),t.logoutShow?s("logoutDialog",{attrs:{propsdata:t.logoutShow},on:{closeLogoutModal:t.closeLogoutModal}}):t._e(),s("v-toolbar",{attrs:{color:"green accent-2",dark:"",fixed:"",app:""}},[s("v-toolbar-title",[t._v(t._s(t.selectedMode))])],1),s("div",{staticClass:"userSelectedWindow"},[t.myForestShow?s("myForest"):t._e(),t.wordsShow?s("words"):t._e(),t.quizShow?s("quiz"):t._e(),t.chartShow?s("chart"):t._e(),t.presentationShow?s("presentation"):t._e()],1),s("v-footer",{attrs:{color:"green accent-2",app:""}},[s("span",{staticClass:"white--text"},[t._v("© 2019 토익의 숲")])])],1)},A=[],q=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("v-dialog",{attrs:{persistent:"","max-width":"400px"},model:{value:t.propsdata,callback:function(e){t.propsdata=e},expression:"propsdata"}},[s("v-card",[s("v-card-title",[s("span",{staticClass:"headline"},[t._v("정말 로그아웃 하시겠습니까?")])]),s("v-card-actions",[s("v-spacer"),s("v-btn",{attrs:{color:"red",flat:""},nativeOn:{click:function(e){return t.onLogout(e)}}},[t._v("예")]),s("v-btn",{attrs:{color:"blue darken-1",flat:""},on:{click:t.close}},[t._v("아니오")])],1)],1)],1)},L=[],R={props:["propsdata"],methods:{onLogout:function(){window.location.href="https://www.google.co.kr/"},close:function(){this.$emit("closeLogoutModal")}}},$=R,E=Object(v["a"])($,q,L,!1,null,"e7685ab8",null),P=E.exports;m()(E,{VBtn:g["a"],VCard:p["a"],VCardActions:w["a"],VCardTitle:b["a"],VDialog:j["a"],VSpacer:x["a"]});var B=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("v-dialog",{attrs:{persistent:"","max-width":"500px"},model:{value:t.SettingsModalOpen,callback:function(e){t.SettingsModalOpen=e},expression:"SettingsModalOpen"}},[s("v-card",[s("v-card-title",[s("span",{staticClass:"headline"},[t._v("프로필 설정")])]),s("v-card-text",[s("v-container",{attrs:{"grid-list-md":""}},[s("v-layout",{attrs:{wrap:""}},[s("v-flex",{staticClass:"text-xs-center text-sm-center text-md-center text-lg-center",attrs:{xs12:""}},[t.imageUrl?s("img",{attrs:{src:t.imageUrl,height:"150"}}):t._e(),s("v-text-field",{attrs:{label:"Select Image","prepend-icon":"attach_file"},on:{click:t.pickFile},model:{value:t.imageName,callback:function(e){t.imageName=e},expression:"imageName"}}),s("input",{staticStyle:{display:"none"},attrs:{type:"file"}})],1),s("v-flex",{attrs:{xs12:""}},[s("v-text-field",{attrs:{label:"이름"},model:{value:t.uploadUserName,callback:function(e){t.uploadUserName=e},expression:"uploadUserName"}})],1)],1)],1)],1),s("v-card-actions",[s("v-spacer"),s("v-btn",{attrs:{color:"blue darken-1",flat:""},on:{click:t.close}},[t._v("Close")]),s("v-btn",{attrs:{color:"blue darken-1",flat:""},on:{click:t.onSave}},[t._v("Save")])],1)],1)],1)},D=[],W={props:["SettingsModalOpen"],data:function(){return{imageName:"",imageUrl:"",uploadUserName:""}},methods:{pickFile:function(){},close:function(){this.$emit("closeSettingsModal")},onSave:function(){this.$emit("closeSettingsModal")}}},Q=W,J=Object(v["a"])(Q,B,D,!1,null,"e254a30a",null),G=J.exports;m()(J,{VBtn:g["a"],VCard:p["a"],VCardActions:w["a"],VCardText:w["b"],VCardTitle:b["a"],VContainer:_["a"],VDialog:j["a"],VFlex:S["a"],VLayout:k["a"],VSpacer:x["a"],VTextField:y["a"]});var H=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{attrs:{id:"chartContainer"}},[s("line-chart",{attrs:{data:t.chartData}})],1)},Y=[],K={data:function(){return{chartData:[["5/20",630],["5/21",650],["5/22",730],["5/23",850],["5/24",890],["5/25",950],["5/26",990]]}}},X=K,Z=(s("38d2"),Object(v["a"])(X,H,Y,!1,null,"7c0ddd30",null)),tt=Z.exports,et=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",[t.infoShow?s("div",{staticClass:"quizInfo"},[s("p",{staticClass:"display-3"},[t._v("퀴즈를 시작합니다.")]),s("p",{staticClass:"body-2"},[t._v("총 10문제가 주어지며, 정답을 빨리 맞출수록 고득점을 받습니다.")]),s("v-btn",{attrs:{color:"success"},on:{click:t.runQuiz}},[t._v("Start")])],1):t._e(),t.quizShow?s("div",{staticClass:"quizTemplate"},[s("v-progress-circular",{staticClass:"timer",attrs:{rotate:-90,size:100,width:15,value:t.timerValue,color:"green accent-2"}},[t._v("\n            "+t._s(t.timerValue/10)+"\n        ")]),s("div",{staticClass:"questionAndAnswer"},[s("div",{staticClass:"questionBox"},[s("p",{staticClass:"question display-1"},[t._v(t._s(t.questionFront)+"\n                    "),s("v-btn",{attrs:{outline:"",disabled:""}}),t._v("\n                    "+t._s(t.questionEnd))],1)]),s("div",{staticClass:"answerBox"},[s("v-btn",{attrs:{outline:"",disabled:t.done},on:{click:function(e){return t.answerCheck(0)}}},[t._v(t._s(t.choice0))]),s("v-btn",{attrs:{outline:"",disabled:t.done},on:{click:function(e){return t.answerCheck(1)}}},[t._v(t._s(t.choice1))]),s("v-btn",{attrs:{outline:"",disabled:t.done},on:{click:function(e){return t.answerCheck(2)}}},[t._v(t._s(t.choice2))]),s("v-btn",{attrs:{outline:"",disabled:t.done},on:{click:function(e){return t.answerCheck(3)}}},[t._v(t._s(t.choice3))])],1)]),s("div",{staticClass:"answerAlertArea"},[s("v-alert",{attrs:{value:t.rightAnswerFlag,type:"success",transition:"scale-transition"}},[t._v("\n                정답입니다.\n            ")]),s("v-alert",{attrs:{value:t.wrongAnswerFlag,type:"error",transition:"scale-transition"}},[t._v("\n                틀렸습니다.\n            ")])],1)],1):t._e(),t.resultShow?s("div",{staticClass:"resultPage display-1"},[t._v("\n        당신의 예상점수는 "+t._s(t.totalScore)+"점입니다.\n        "),s("v-btn",{staticClass:"retryBtn",attrs:{color:"success"},on:{click:t.runQuiz}},[t._v("다시 하기")])],1):t._e()])},st=[],nt=s("bc3a"),at=s.n(nt),it={data:function(){return{allQuestionsNumber:10,interval:{},timerValue:100,infoShow:!0,quizShow:!1,questionFront:"",questionEnd:"",choice0:"",choice1:"",choice2:"",choice3:"",answerNum:0,quizCounter:0,rightAnswerFlag:!1,wrongAnswerFlag:!1,done:!1,totalScore:785,resultShow:!1}},methods:{runQuiz:function(){this.infoShow=!1,this.quizShow=!0,this.loadQuiz()},timerReset:function(){var t=this;this.timerValue=100,this.interval=setInterval(function(){t.timerValue-=10,0==t.timerValue&&clearInterval(t.interval)},1e3)},loadQuiz:function(){var t=this;this.timerReset(),at.a.get("/me/quiz/set1").then(function(e){t.questionFront=e.questionFront,t.questionEnd=e.data.questionEnd,t.answerNum=e.data.answerNum,t.choice0=e.data.choice0,t.choice1=e.data.choice1,t.choice2=e.data.choice2,t.choice3=e.data.choice3})},answerCheck:function(t){t==this.answerNum?this.rightAnswerFlag=!0:this.wrongAnswerFlag=!0,this.done=!0,this.goNextOrShowResult(),clearInterval(this.interval)},toNext:function(){this.done=!1,this.rightAnswerFlag=!1,this.wrongAnswerFlag=!1,this.quizCounter++,this.loadQuiz()},goNextOrShowResult:function(){var t=this;this.allQuestionsNumber!=this.quizCounter+1?setTimeout(function(){return t.toNext()},1e3):setTimeout(function(){return t.showResultPage()},1500)},showResultPage:function(){this.quizShow=!1,this.resultShow=!0,this.allDataReset()},allDataReset:function(){this.questionFront="",this.questionEnd="",this.choice0="",this.choice1="",this.choice2="",this.choice3="",this.answerNum=0,this.quizCounter=0,this.rightAnswerFlag=!1,this.wrongAnswerFlag=!1,this.done=!1}}},ot=it,rt=(s("fb1a"),s("0798")),ct=s("490a"),lt=Object(v["a"])(ot,et,st,!1,null,"bb9668f0",null),dt=lt.exports;m()(lt,{VAlert:rt["a"],VBtn:g["a"],VProgressCircular:ct["a"]});var ut=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",[s("v-menu",{attrs:{"offset-x":""},scopedSlots:t._u([{key:"activator",fn:function(e){var n=e.on;return[s("div",{staticClass:"mapContainer"},t._l(3,function(e){return s("div",{key:e,ref:"mapParentItem",refInFor:!0,staticClass:"mapParentItem"},t._l(3,function(a){return s("div",t._g({key:a,ref:"mapChildItem",refInFor:!0,staticClass:"mapChildItem",on:{click:function(s){return t.setSelectedLocation(a,e)}}},n),[s("div",{staticClass:"imgOfMap"},[t.locationURL?s("img",{ref:"mapImg",refInFor:!0,attrs:{src:t.locationURL[t.locationCheck(a,e)],alt:"errer",height:"70"}}):t._e()])])}),0)}),0)]}}])},[s("v-list",t._l(t.userItems,function(e,n){return s("v-list-tile",{key:n},[s("v-list-tile-title",[t._v(t._s(e))])],1)}),1)],1)],1)},ht=[],vt={data:function(){return{userItems:[],attachedItems:[],locationURL:[]}},created:function(){var t=this;at.a.get("me/profile").then(function(e){for(var s=e.data.item.length-1;s>=0;s--)-1==e.data.item[s].location?t.userItems.push(e.data.item[s].itemName):t.attachedItems[e.data.item[s].location]=e.data.item[s].itemName;for(var n=t.$refs.mapChildItem.length-1;n>=0;n--)t.attachedItems[n]||(t.attachedItems[n]="soil");for(var a=t.$refs.mapChildItem.length-1;a>=0;a--)if(t.attachedItems[a]){var i=t.nameURL(t.attachedItems[a]);t.locationURL[a]=i}})},methods:{nameURL:function(t){var e;return e="/Jony/itemImg/"+t+".jpg",e},locationCheck:function(t,e){return 1==t?1==e?0:2==e?1:2:2==t?1==e?3:2==e?4:5:1==e?6:2==e?7:8},setSelectedLocation:function(t,e){var s=this.locationCheck(t,e);console.log(s)}}},ft=vt,mt=(s("e820"),s("8860")),gt=s("ba95"),pt=s("5d23"),wt=s("e449"),bt=Object(v["a"])(ft,ut,ht,!1,null,"511cc1a6",null),_t=bt.exports;m()(bt,{VList:mt["a"],VListTile:gt["a"],VListTileTitle:pt["b"],VMenu:wt["a"]});var jt=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("v-carousel",{attrs:{height:"645px",cycle:!1,light:""}},[s("v-carousel-item",[s("page1",{staticClass:"pptPages"})],1),s("v-carousel-item",[s("page2",{staticClass:"pptPages"})],1),s("v-carousel-item",[s("page3",{staticClass:"pptPages"})],1),s("v-carousel-item",[s("page4",{staticClass:"pptPages"})],1),s("v-carousel-item",[s("page5",{staticClass:"pptPages"})],1),s("v-carousel-item",[s("page6",{staticClass:"pptPages"})],1)],1)},St=[],Ct=function(){var t=this,e=t.$createElement;t._self._c;return t._m(0)},kt=[function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{attrs:{id:"page1"}},[s("h1",[t._v(" TOREST ")]),s("h3",{attrs:{id:"teamMemberName"}},[t._v(" 이자룡 제태경 박명인 박수진 ")])])}],xt={},yt=xt,Vt=(s("731e"),Object(v["a"])(yt,Ct,kt,!1,null,"5f1d34e4",null)),Mt=Vt.exports,zt=function(){var t=this,e=t.$createElement;t._self._c;return t._m(0)},It=[function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",[s("h1",[t._v(" 역할 ")]),s("ul",[s("li",[t._v("Front_End : 이자룡 -> Vue 이용한 UI제작\n        ")]),s("li",[t._v("Back_End : 제태경 박수진 -> PHP 서버 통신 및 DB 컨트롤\n        ")]),s("li",[t._v(" Design : 박명인 -> 포토샵 이용한 디자인\n        ")])])])}],Ot={},Tt=Ot,Ft=(s("800e"),Object(v["a"])(Tt,zt,It,!1,null,"5bd72463",null)),Nt=Ft.exports,Ut=function(){var t=this,e=t.$createElement;t._self._c;return t._m(0)},At=[function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",[s("h1",[t._v(" 목표 ")]),s("ul",[s("li",[s("h3")]),s("li",[s("h3")]),s("li",[s("h3")])])])}],qt={},Lt=qt,Rt=Object(v["a"])(Lt,Ut,At,!1,null,"407e8a20",null),$t=Rt.exports,Et=function(){var t=this,e=t.$createElement;t._self._c;return t._m(0)},Pt=[function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",[s("h1",[t._v(" 각 기능 설명 ")])])}],Bt={},Dt=Bt,Wt=Object(v["a"])(Dt,Et,Pt,!1,null,"b2833954",null),Qt=Wt.exports,Jt=function(){var t=this,e=t.$createElement;t._self._c;return t._m(0)},Gt=[function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",[s("h1",[t._v("나의 숲 ")]),s("ul",[s("li",[s("h3")]),s("li",[s("h3")]),s("li",[s("h3")])])])}],Ht={},Yt=Ht,Kt=Object(v["a"])(Yt,Jt,Gt,!1,null,"71eb2cda",null),Xt=Kt.exports,Zt=function(){var t=this,e=t.$createElement;t._self._c;return t._m(0)},te=[function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",[s("h1",[t._v(" 아쉬운 점 ")]),s("ul",[s("li",[s("h3")]),s("li",[s("h3")]),s("li",[s("h3")])])])}],ee={},se=ee,ne=Object(v["a"])(se,Zt,te,!1,null,"3debfde8",null),ae=ne.exports,ie={components:{page1:Mt,page2:Nt,page3:$t,page4:Qt,page5:Xt,page6:ae},data:function(){return{}}},oe=ie,re=(s("d026"),s("5e66")),ce=s("3e35"),le=Object(v["a"])(oe,jt,St,!1,null,"5a5491eb",null),de=le.exports;m()(le,{VCarousel:re["a"],VCarouselItem:ce["a"]});var ue=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",[t.wordRememberingIntroShow?s("div",{staticClass:"wordRememberingIntro"},[s("p",{staticClass:"display-1"},[t._v("You are going to see 10 words and solve the word test.")]),s("v-btn",{staticClass:"wordRememberingStartBtn",attrs:{color:"success"},on:{click:t.wordRememberingStart}},[t._v("start")])],1):t._e(),t.wordRememberingShow?s("div",{staticClass:"wordRemembering"},[s("p",{staticClass:"display-2"},[t._v(t._s(t.wordName))]),s("p",[t._v(t._s(t.wordPrononciation))]),s("p",[t._v(t._s(t.wordMeaning))]),s("img",{staticClass:"wordImg",attrs:{src:t.wordImg,height:"150",width:"150"}}),s("v-btn",{staticClass:"wordNextBtn",attrs:{color:"success"},on:{click:t.nextWord}},[t._v("next")])],1):t._e(),t.wordTestShow?s("div",{staticClass:"wordTest"},[s("div",{staticClass:"rightOrWrongContainer"},t._l(10,function(e){return s("div",{key:e,ref:"rightOrWrongBoxNum",refInFor:!0,staticClass:"rightOrWrongItem"},[s("div",{staticClass:"rightItemImgArea"},[t.rights[e-1]?s("img",{attrs:{src:"/me/words/rightWrongIcon/right.jpg",alt:"rightIcon",height:"45px"}}):t._e()]),t.wrongs[e-1]?s("img",{attrs:{src:"/me/words/rightWrongIcon/wrong.jpg",alt:"wrongIcon",height:"36px"}}):t._e()])}),0),s("div",{staticClass:"wordTestContainer"},[t._l(t.wordMeaningList,function(e,n){return s("div",{key:e,staticClass:"itemContainer"},[s("div",{staticClass:"wordMeaningInTestContainer"},[t._v("\n                    "+t._s(e)+"\n                ")]),s("div",{staticClass:"userAnswerBox"},[s("input",{directives:[{name:"model",rawName:"v-model",value:t.userAnswer[n],expression:"userAnswer[answerNum]"}],ref:"userAnswer",refInFor:!0,staticClass:"userAnswer",attrs:{type:"text",disabled:t.inputDisableFlag},domProps:{value:t.userAnswer[n]},on:{input:function(e){e.target.composing||t.$set(t.userAnswer,n,e.target.value)}}})])])}),t.submitBtnShow?s("v-btn",{staticClass:"wordTestSubmitBtn",attrs:{color:"success"},on:{click:t.wordSubmit}},[t._v("submit")]):t._e(),t.nextBtnShow?s("v-btn",{staticClass:"keepDoingWordTestBtn",attrs:{color:"success"},on:{click:t.keepStudy}},[t._v("계속 단어 외우기")]):t._e()],2)]):t._e()])},he=[],ve={data:function(){return{wordRememberingIntroShow:!0,wordRememberingShow:!1,wordTestShow:!1,wordName:"",wordPrononciation:"",wordMeaning:"",wordImg:"",wordCounter:0,wordNameList:[],wordMeaningList:[],userAnswer:[],inputDisableFlag:!1,record:0,submitBtnShow:!0,nextBtnShow:!1,rights:[],wrongs:[]}},methods:{wordRememberingStart:function(){this.wordRememberingIntroShow=!1,this.wordRememberingShow=!0,this.loadWord()},loadWord:function(){var t=this;at.a.get("/me/words/level1").then(function(e){t.wordName=e.data[t.wordCounter].wordName,t.wordPrononciation=e.data[t.wordCounter].wordPrononciation,t.wordMeaning=e.data[t.wordCounter].wordMeaning,t.wordImg=e.data[t.wordCounter].wordImg})},loadAllWords:function(){var t=this;at.a.get("/me/words/level1").then(function(e){for(var s=0;s<e.data.length;s++)t.wordNameList.push(e.data[s].wordName),t.wordMeaningList.push(e.data[s].wordMeaning)})},nextWord:function(){this.wordCounter++,3==this.wordCounter&&(this.wordRememberingShow=!1,this.wordTestShow=!0,this.wordTest()),this.loadWord()},wordTest:function(){this.loadAllWords()},wordSubmit:function(){for(var t=0;t<10;t++)this.userAnswer[t]!=this.wordNameList[t]?(this.wrongs[t]=!0,this.userAnswer[t]=this.wordNameList[t],this.$refs.userAnswer[t].style.color="red"):(this.rights[t]=!0,this.record++);this.inputDisableFlag=!0,this.submitBtnShow=!1,this.nextBtnShow=!0},keepStudy:function(){this.resetAllData(),this.wordTestShow=!1,this.wordRememberingIntroShow=!0},resetAllData:function(){this.wordCounter=0,this.wordNameList=[],this.wordMeaningList=[],this.userAnswer=[],this.record=0,this.submitBtnShow=!0,this.nextBtnShow=!1,this.inputDisableFlag=!1,this.rights=[],this.wrongs=[]}}},fe=ve,me=(s("d619"),Object(v["a"])(fe,ue,he,!1,null,"df014f86",null)),ge=me.exports;m()(me,{VBtn:g["a"]});var pe={data:function(){return{userName:"Sophie",myForestShow:!1,wordsShow:!1,quizShow:!1,chartShow:!1,logoutShow:!1,settingsShow:!1,presentationShow:!0,selectedMode:"PPT"}},components:{logoutDialog:P,settings:G,chart:tt,quiz:dt,myForest:_t,presentation:de,words:ge},props:{source:String},methods:{shutdown:function(){this.myForestShow=!1,this.wordsShow=!1,this.quizShow=!1,this.chartShow=!1,this.presentationShow=!1},logout:function(){this.logoutShow=!0},myForest:function(){this.shutdown(),this.myForestShow=!0,this.selectedMode="나의 숲"},words:function(){this.shutdown(),this.wordsShow=!0,this.selectedMode="단어 암기"},quiz:function(){this.shutdown(),this.quizShow=!0,this.selectedMode="문제 풀기"},chart:function(){this.shutdown(),this.chartShow=!0,this.selectedMode="통계"},settings:function(){this.settingsShow=!0},closeLogoutModal:function(){this.logoutShow=!1},closeSettingsModal:function(){this.settingsShow=!1},presentation:function(){this.shutdown(),this.presentationShow=!0,this.selectedMode="PPT"}}},we=pe,be=(s("c266"),s("8212")),_e=s("553a"),je=s("132d"),Se=s("40fe"),Ce=s("f774"),ke=s("2a7f"),xe=Object(v["a"])(we,U,A,!1,null,null,null),ye=xe.exports;m()(xe,{VAvatar:be["a"],VFooter:_e["a"],VIcon:je["a"],VList:mt["a"],VListTile:gt["a"],VListTileAction:Se["a"],VListTileContent:pt["a"],VListTileTitle:pt["b"],VNavigationDrawer:Ce["a"],VToolbar:T["a"],VToolbarTitle:ke["a"]});var Ve={created:function(){var t=this;setTimeout(function(){return t.loginWindow=!0},1e3)},components:{login:N,mainContents:ye},data:function(){return{loginWindow:!1,mainWindow:!1}},methods:{loginSuccess:function(){var t=this;this.loginWindow=!1,setTimeout(function(){return t.mainWindow=!0},1e3)}}},Me=Ve,ze=(s("034f"),s("7496")),Ie=Object(v["a"])(Me,i,o,!1,null,null,null),Oe=Ie.exports;m()(Ie,{VApp:ze["a"]});var Te=s("d842"),Fe=s("30ef"),Ne=s.n(Fe);n["a"].use(Te["a"],{adapter:Ne.a}),n["a"].config.productionTip=!1,new n["a"]({render:function(t){return t(Oe)}}).$mount("#app")},7285:function(t,e,s){},"731e":function(t,e,s){"use strict";var n=s("f62d"),a=s.n(n);a.a},"800e":function(t,e,s){"use strict";var n=s("328e"),a=s.n(n);a.a},b496:function(t,e,s){},b7c0:function(t,e,s){},c266:function(t,e,s){"use strict";var n=s("0a45"),a=s.n(n);a.a},d026:function(t,e,s){"use strict";var n=s("b496"),a=s.n(n);a.a},d3ca:function(t,e,s){},d619:function(t,e,s){"use strict";var n=s("d3ca"),a=s.n(n);a.a},e820:function(t,e,s){"use strict";var n=s("7285"),a=s.n(n);a.a},ebb6:function(t,e,s){},f62d:function(t,e,s){},fb1a:function(t,e,s){"use strict";var n=s("b7c0"),a=s.n(n);a.a}});
//# sourceMappingURL=app.3b614520.js.map