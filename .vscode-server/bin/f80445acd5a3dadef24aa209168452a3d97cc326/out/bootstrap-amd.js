"use strict";const loader=require("./vs/loader"),bootstrap=require("./bootstrap"),performance=require("./vs/base/common/performance"),nlsConfig=bootstrap.setupNLS();loader.config({baseUrl:bootstrap.fileUriFromPath(__dirname,{isWindows:process.platform==="win32"}),catchError:!0,nodeRequire:require,nodeMain:__filename,"vs/nls":nlsConfig,amdModulesPattern:/^vs\//,recordStats:!0}),(process.env.ELECTRON_RUN_AS_NODE||process.versions.electron)&&loader.define("fs",["original-fs"],function(e){return e}),nlsConfig&&nlsConfig.pseudo&&loader(["vs/nls"],function(e){e.setPseudoTranslation(nlsConfig.pseudo)}),exports.load=function(e,s,o){!e||(process.env.VSCODE_CODE_CACHE_PATH&&loader.config({nodeCachedData:{path:process.env.VSCODE_CODE_CACHE_PATH,seed:e}}),s=s||function(){},o=o||function(r){console.error(r)},performance.mark("code/fork/willLoadCode"),loader([e],s,o))};

//# sourceMappingURL=https://ticino.blob.core.windows.net/sourcemaps/f80445acd5a3dadef24aa209168452a3d97cc326/core/bootstrap-amd.js.map
