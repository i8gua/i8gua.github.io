webpackJsonp([10],{ls7j:function(t,e,n){"use strict";t.exports=function(t){var e=t.file,r=t.editor,l=t.h1;return n.e(9).then(n.bind(null,"4qs1")).then(function(t){var n,i;return n=r.getContent(),i=$.trim(l.val()),"!/draft/"!==e.slice(0,8)||i||n.replace(/<[^>]+>/g,"").replace(/[\s\n\r\t]|&nbsp;/g,"")?t(e,i,n).then(function(){return PP.get("post/edit//",function(t){return r.load_md(t,""),history.replaceState(null,null,"/edit/"+t)})}):(r.setContent("<p><br></p>"),l.val("").focus())})}}});