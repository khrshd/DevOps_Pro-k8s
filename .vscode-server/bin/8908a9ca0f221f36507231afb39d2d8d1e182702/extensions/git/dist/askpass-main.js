(()=>{"use strict";var e={3403:(e,r,n)=>{Object.defineProperty(r,"__esModule",{value:!0});var o,t,a,s,l,i=n(5622),c=n(5747),u=Object.prototype.toString;function f(e){return void 0!==e}function d(e){return"[object Number]"===u.call(e)}function g(e){return"[object String]"===u.call(e)}function v(e){return JSON.parse(c.readFileSync(e,"utf8"))}function p(e,r){return l&&(e="［"+e.replace(/[aouei]/g,"$&$&")+"］"),0===r.length?e:e.replace(/\{(\d+)\}/g,(function(e,n){var o=n[0],t=r[o],a=e;return"string"==typeof t?a=t:"number"!=typeof t&&"boolean"!=typeof t&&null!=t||(a=String(t)),a}))}function h(e){return function(r,n){for(var o=[],t=2;t<arguments.length;t++)o[t-2]=arguments[t];return d(r)?r>=e.length?void console.error("Broken localize call found. Index out of bounds. Stacktrace is\n: "+new Error("").stack):p(e[r],o):g(n)?(console.warn("Message "+n+" didn't get externalized correctly."),p(n,o)):void console.error("Broken localize call found. Stacktrace is\n: "+new Error("").stack)}}function m(e,r){for(var n=[],o=2;o<arguments.length;o++)n[o-2]=arguments[o];return p(r,n)}function S(e,r){return a[e]=r,r}function b(e){try{return function(e){var r=v(i.join(e,"nls.metadata.json")),n=Object.create(null);for(var o in r){var t=r[o];n[o]=t.messages}return n}(e)}catch(e){return void console.log("Generating default bundle from meta data failed.",e)}}function _(e,r){var n;if(!0===s.languagePackSupport&&void 0!==s.cacheRoot&&void 0!==s.languagePackId&&void 0!==s.translationsConfigFile&&void 0!==s.translationsConfig)try{n=function(e,r){var n,o,t,a=i.join(s.cacheRoot,e.id+"-"+e.hash+".json"),l=!1,u=!1;try{return n=JSON.parse(c.readFileSync(a,{encoding:"utf8",flag:"r"})),o=a,t=new Date,c.utimes(o,t,t,(function(){})),n}catch(e){if("ENOENT"===e.code)u=!0;else{if(!(e instanceof SyntaxError))throw e;console.log("Syntax error parsing message bundle: "+e.message+"."),c.unlink(a,(function(e){e&&console.error("Deleting corrupted bundle "+a+" failed.")})),l=!0}}if(!(n=function(e,r){var n=s.translationsConfig[e.id];if(n){var o=v(n).contents,t=v(i.join(r,"nls.metadata.json")),a=Object.create(null);for(var l in t){var c=t[l],u=o[e.outDir+"/"+l];if(u){for(var f=[],d=0;d<c.keys.length;d++){var p=c.keys[d],h=u[g(p)?p:p.key];void 0===h&&(h=c.messages[d]),f.push(h)}a[l]=f}else a[l]=c.messages}return a}}(e,r))||l)return n;if(u)try{c.writeFileSync(a,JSON.stringify(n),{encoding:"utf8",flag:"wx"})}catch(e){if("EEXIST"===e.code)return n;throw e}return n}(e,r)}catch(e){console.log("Load or create bundle failed ",e)}if(!n){if(s.languagePackSupport)return b(r);var o=function(e){for(var r=s.locale;r;){var n=i.join(e,"nls.bundle."+r+".json");if(c.existsSync(n))return n;var o=r.lastIndexOf("-");r=o>0?r.substring(0,o):void 0}if(void 0===r&&(n=i.join(e,"nls.bundle.json"),c.existsSync(n)))return n}(r);if(o)try{return v(o)}catch(e){console.log("Loading in the box message bundle failed.",e)}n=b(r)}return n}function y(e){if(!e)return m;var r=i.extname(e);if(r&&(e=e.substr(0,e.length-r.length)),s.messageFormat===o.both||s.messageFormat===o.bundle){var n=function(e){for(var r,n=i.dirname(e);r=i.join(n,"nls.metadata.header.json"),!c.existsSync(r);){var o=i.dirname(n);if(o===n){r=void 0;break}n=o}return r}(e);if(n){var t=i.dirname(n),u=a[t];if(void 0===u)try{var d=JSON.parse(c.readFileSync(n,"utf8"));try{var g=_(d,t);u=S(t,g?{header:d,nlsBundle:g}:null)}catch(e){console.error("Failed to load nls bundle",e),u=S(t,null)}}catch(e){console.error("Failed to read header file",e),u=S(t,null)}if(u){var p=e.substr(t.length+1).replace(/\\/g,"/"),b=u.nlsBundle[p];return void 0===b?(console.error("Messages for file "+e+" not found. See console for details."),function(){return"Messages not found."}):h(b)}}}if(s.messageFormat===o.both||s.messageFormat===o.file)try{var y=v(function(e){var r;if(s.cacheLanguageResolution&&r)r=r;else{if(l||!s.locale)r=".nls.json";else for(var n=s.locale;n;){var o=".nls."+n+".json";if(c.existsSync(e+o)){r=o;break}var t=n.lastIndexOf("-");t>0?n=n.substring(0,t):(r=".nls.json",n=null)}s.cacheLanguageResolution&&(r=r)}return e+r}(e));return Array.isArray(y)?h(y):f(y.messages)&&f(y.keys)?h(y.messages):(console.error("String bundle '"+e+"' uses an unsupported format."),function(){return"File bundle has unsupported format. See console for details"})}catch(e){"ENOENT"!==e.code&&console.error("Failed to load single file bundle",e)}return console.error("Failed to load message bundle for file "+e),function(){return"Failed to load message bundle. See console for details."}}!function(e){e.file="file",e.bundle="bundle",e.both="both"}(o=r.MessageFormat||(r.MessageFormat={})),function(e){e.is=function(e){var r=e;return r&&f(r.key)&&f(r.comment)}}(t||(t={})),function(){if(s={locale:void 0,languagePackSupport:!1,cacheLanguageResolution:!0,messageFormat:o.bundle},g(process.env.VSCODE_NLS_CONFIG))try{var e=JSON.parse(process.env.VSCODE_NLS_CONFIG);if(g(e.locale)&&(s.locale=e.locale.toLowerCase()),(!0===(r=e._languagePackSupport)||!1===r)&&(s.languagePackSupport=e._languagePackSupport),g(e._cacheRoot)&&(s.cacheRoot=e._cacheRoot),g(e._languagePackId)&&(s.languagePackId=e._languagePackId),g(e._translationsConfigFile)){s.translationsConfigFile=e._translationsConfigFile;try{s.translationsConfig=v(s.translationsConfigFile)}catch(r){e._corruptedFile&&c.writeFile(e._corruptedFile,"corrupted","utf8",(function(e){console.error(e)}))}}}catch(e){}var r;l="pseudo"===s.locale,a=Object.create(null)}(),r.loadMessageBundle=y,r.config=function(e){return e&&(g(e.locale)&&(s.locale=e.locale.toLowerCase(),a=Object.create(null)),void 0!==e.messageFormat&&(s.messageFormat=e.messageFormat)),l="pseudo"===s.locale,y}},6675:(e,r,n)=>{Object.defineProperty(r,"__esModule",{value:!0}),r.IPCClient=void 0;const o=n(8605);r.IPCClient=class{constructor(e){this.handlerName=e;const r=process.env.VSCODE_GIT_IPC_HANDLE;if(!r)throw new Error("Missing VSCODE_GIT_IPC_HANDLE");this.ipcHandlePath=r}call(e){const r={socketPath:this.ipcHandlePath,path:`/${this.handlerName}`,method:"POST"};return new Promise(((n,t)=>{const a=o.request(r,(e=>{if(200!==e.statusCode)return t(new Error(`Bad status code: ${e.statusCode}`));const r=[];e.on("data",(e=>r.push(e))),e.on("end",(()=>n(JSON.parse(Buffer.concat(r).toString("utf8")))))}));a.on("error",(e=>t(e))),a.write(JSON.stringify(e)),a.end()}))}}},5747:e=>{e.exports=require("fs")},8605:e=>{e.exports=require("http")},5622:e=>{e.exports=require("path")}},r={};function n(o){var t=r[o];if(void 0!==t)return t.exports;var a=r[o]={exports:{}};return e[o](a,a.exports,n),a.exports}var o={};(()=>{var e=o;Object.defineProperty(e,"__esModule",{value:!0});const r=n(5747),t=n(3403),a=n(6675),s=t.loadMessageBundle(n(5622).join(__dirname,"askpass-main.ts"));function l(e){console.error(s(0,null)),console.error(e),process.exit(1)}!function(e){if(5!==e.length)return l("Wrong number of arguments");if(!process.env.VSCODE_GIT_ASKPASS_PIPE)return l("Missing pipe");if("fetch"===process.env.VSCODE_GIT_COMMAND&&process.env.VSCODE_GIT_FETCH_SILENT)return l("Skip silent fetch commands");const n=process.env.VSCODE_GIT_ASKPASS_PIPE,o=e[2],t=e[4].replace(/^["']+|["':]+$/g,"");new a.IPCClient("askpass").call({request:o,host:t}).then((e=>{r.writeFileSync(n,e+"\n"),setTimeout((()=>process.exit(0)),0)})).catch((e=>l(e)))}(process.argv)})();var t=exports;for(var a in o)t[a]=o[a];o.__esModule&&Object.defineProperty(t,"__esModule",{value:!0})})();
//# sourceMappingURL=https://ticino.blob.core.windows.net/sourcemaps/8908a9ca0f221f36507231afb39d2d8d1e182702/extensions/git/dist/askpass-main.js.map