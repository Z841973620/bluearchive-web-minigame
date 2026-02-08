System.register([], function (_export, _context) {
  "use strict";

  var cc, Application;
  var onProgress = null;

  function _typeof(o) { "@babel/helpers - typeof"; return _typeof = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator ? function (o) { return typeof o; } : function (o) { return o && "function" == typeof Symbol && o.constructor === Symbol && o !== Symbol.prototype ? "symbol" : typeof o; }, _typeof(o); }
  function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }
  function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, _toPropertyKey(descriptor.key), descriptor); } }
  function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }
  function _toPropertyKey(arg) { var key = _toPrimitive(arg, "string"); return typeof key === "symbol" ? key : String(key); }
  function _toPrimitive(input, hint) { if (_typeof(input) !== "object" || input === null) return input; var prim = input[Symbol.toPrimitive]; if (prim !== undefined) { var res = prim.call(input, hint || "default"); if (_typeof(res) !== "object") return res; throw new TypeError("@@toPrimitive must return a primitive value."); } return (hint === "string" ? String : Number)(input); }
  
  // NOTIC: 自定义加载进度条
  function setLoadingDisplay() {
    var splash = document.getElementById('splash');
    var progressBar = splash.querySelector('.progress-rate');
    onProgress = function (finish, total) {
      var percent = 100 * finish / total;
      if (progressBar) {
        progressBar.style.width = percent.toFixed(2) + '%';
      }
    };
    splash.style.display = 'flex';
    progressBar.style.width = '0%';

    cc.director.once(cc.Director.EVENT_AFTER_SCENE_LAUNCH, function () {
      splash.style.display = 'none';
    });
  }

  function onGameStarted(cc) {
    cc.view.resizeWithBrowserSize(true);
    var launchScene = "db://assets/scenes/start.scene";
    // load scene
    cc.director.preloadScene(launchScene, onProgress, function () {
      cc.game.run();
    })
  }

  // NOTIC: safar浏览器横竖屏适配
  function setScreenRotation() {
    if (cc.sys.isMobile && cc.sys.browserType == cc.sys.BrowserType.SAFARI) {
      var dispatch_event = true;
      window.addEventListener("orientationchange", () => {
        if (dispatch_event) {
          setTimeout(() => {
            var event = new Event("orientationchange", { bubbles: true, cancelable: true });
            window.dispatchEvent(event);
            dispatch_event = true;
          }, 400)
          dispatch_event = false;
        }
      });
    }
  }

  return {
    setters: [],
    execute: function () {
      _export("Application", Application = /*#__PURE__*/function () {
        function Application() {
          _classCallCheck(this, Application);
          this.settingsPath = './src/settings.b63a8.json';
          this.showFPS = false;
        }
        _createClass(Application, [{
          key: "init",
          value: function init(engine) {
            cc = engine;
            setLoadingDisplay();
            setScreenRotation();
            cc.game.onPostBaseInitDelegate.add(this.onPostInitBase.bind(this));
            cc.game.onPostSubsystemInitDelegate.add(this.onPostSystemInit.bind(this));
          }
        }, {
          key: "onPostInitBase",
          value: function onPostInitBase() {
            // cc.settings.overrideSettings('assets', 'server', '');
            // do custom logic
          }
        }, {
          key: "onPostSystemInit",
          value: function onPostSystemInit() {
            // do custom logic
          }
        }, {
          key: "start",
          value: function start() {
            return cc.game.init({
              debugMode: false ? cc.DebugMode.INFO : cc.DebugMode.ERROR,
              settingsPath: this.settingsPath,
              overrideSettings: {
                // assets: {
                //      preloadBundles: [{ bundle: 'main', version: 'xxx' }],
                // }
                profiling: {
                  showFPS: this.showFPS
                }
              }
            }).then(function () {
              // return cc.game.run();
              cc.game.onStart = onGameStarted.bind(null, cc);
              onGameStarted(cc);
            });
          }
        }]);
        return Application;
      }());
    }
  };
});