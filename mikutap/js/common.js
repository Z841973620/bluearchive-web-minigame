var hr = location.href;
function gtag() {
    dataLayer.push(arguments)
}
hr.indexOf("nore=1") <= 0 && 0 < hr.indexOf("a.aidn") && (location.href = hr.split("a.aidn").join("aidn")),
0 < hr.indexOf("www.aidn") && (location.href = hr.split("www.aidn").join("aidn")),
0 < hr.indexOf("daniwell.com") && (location.href = "https://aidn.jp" + hr.split("daniwell.com")[1]),
0 <= hr.indexOf("aidn.jp") && ((()=>{
    var e = document.createElement("script");
    e.async = 1,
    e.src = "https://www.googletagmanager.com/gtag/js?id=G-B7NEZTN0V4",
    document.head.appendChild(e)
}
)(),
window.dataLayer = window.dataLayer || [],
gtag("js", new Date),
gtag("config", "G-B7NEZTN0V4"));
var aidn = aidn || {};
aidn.log = function() {
    window.console && console.log(arguments)
}
,
aidn.alert = function() {
    for (var e = "", t = arguments.length, n = 0; n < t - 1; n++)
        e += arguments[n] + ", ";
    0 < t && (e += arguments[n]),
    alert(e)
}
,
aidn.debug = function() {
    if ("undefined" != typeof jQuery) {
        for (var e = "", t = arguments.length, n = 0; n < t; n++)
            e += arguments[n] + ", ";
        0 == $("#__debugx").length && $("html").append("<div id='__debugx' style='pointer-events:none;text-align:left;position:fixed;z-index:10000000;top:0;font-weight:bold;background:rgba(255,255,255,0.5);'></div>"),
        $("#__debugx").prepend("<p>" + e + "</p>")
    }
}
,
aidn.constant = {
    album2ndJa: "/daniwell/cats/",
    album2ndEn: "/daniwell/cats/en/",
    advUrlJa: "/daniwell/",
    advUrlEn: "/daniwell/",
    advImg: "shared/img/adv.gif",
    advTex: "DANIWELL DISCOGRAPHY",
    advAlt: "DANIWELL (Nyan Cat Song Creator) DISCOGRAPHY"
};
try {
    for (var l = location.href.split("aidn")[1].split("/").length - 2, i = 0; i < l; i++)
        aidn.constant.advImg = "../" + aidn.constant.advImg
} catch (e) {}
aidn.init = {
    ver: 0,
    selectBasePath: function(e, t) {
        var n = parseInt(aidn.util.getCookie("baseid"));
        return !isNaN(n) && 1 != t || (n = Math.floor(Math.random() * e.length),
        aidn.util.setCookie("baseid", n, 604800)),
        (e.length <= n || n < 0) && (n = 0),
        this.basepath = e[n],
        this.basepath
    },
    loadScript: function(n, i) {
        $.ajaxSetup({
            cache: !0
        });
        function a(e) {
            var t = n[e] + "?" + aidn.init.ver;
            aidn.init.usebase && 0 != t.indexOf("http") && (t = aidn.init.basepath + t),
            $.getScript(t, function() {
                e + 1 < n.length ? a(e + 1) : i && i()
            })
        }
        a(0)
    },
    basepath: "",
    usebase: !0
},
aidn.config = {
    init: function() {
        this.clWidth = document.documentElement.clientWidth,
        this.clHeight = document.documentElement.clientHeight,
        this.scWidth = screen.width,
        this.scHeight = screen.height,
        this.inWidth = window.innerWidth,
        this.inHeight = window.innerHeight,
        (this.clHeight <= 0 || this.clWidth <= 0) && (this.clWidth = this.scWidth,
        this.clHeight = this.scHeight),
        (this.inHeight <= 0 || this.inWidth <= 0) && (this.inWidth = this.clWidth,
        this.inHeight = this.clHeight)
    },
    clWidth: 0,
    clHeight: 0,
    scWidth: 0,
    scHeight: 0,
    inWidth: 0,
    inHeight: 0,
    touchEnabled: null != window.TouchEvent
},
aidn.audio = {
    init: function() {
        if (!this._inited) {
            this._inited = !0;
            try {
                this.audio = [],
                this.audio[0] = new Audio,
                this.availableAudio = !0,
                this.availableOgg = "" != this.audio[0].canPlayType("audio/ogg"),
                this.availableMP3 = "" != this.audio[0].canPlayType("audio/mpeg"),
                this.availableWav = "" != this.audio[0].canPlayType("audio/wav")
            } catch (e) {
                availableAudio = !1
            }
        }
    },
    setSrc: function(e, t) {
        this.audio[e] ? this.audio[e].src = t : this.audio[e] = new Audio(t)
    },
    load: function(e) {
        this.audio[e].load()
    },
    play: function(e) {
        this.audio[e].play()
    },
    pause: function(e) {
        this.audio[e].pause()
    },
    stop: function(e) {
        this.audio[e].ended || (this.audio[e].pause(),
        this.audio[e].currentTime = 0)
    },
    volume: function(e, t) {
        this.audio[e].volume = t = 1 < (t = t < 0 ? 0 : t) ? 1 : t
    },
    getPath: function(e) {
        for (var t = e.length, n = 0; n < t; n++) {
            var i = e[n]
              , a = i.toLowerCase();
            if (aidn.audio.availableMP3 && a.indexOf(".mp3"))
                break;
            if (aidn.audio.availableOgg && a.indexOf(".ogg"))
                break;
            if (aidn.audio.availableWav && a.indexOf(".wav"))
                break
        }
        return i = n == t ? null : i
    },
    _inited: !1,
    audio: [],
    availableAudio: !1,
    availableMP3: !1,
    availableWav: !1,
    availableOgg: !1
},
aidn.canvas = {
    create: function(e, t, n, i, a) {
        var o = '<canvas id="' + t + '" width="' + n + '" height="' + i + '"></canvas>';
        document.getElementById(e).innerHTML = o,
        this.canvas = document.getElementById(t),
        this.ctx = this.canvas.getContext("2d"),
        this.w = n,
        this.h = i,
        this.bgColor = a,
        this.clear(!0)
    },
    clear: function(e) {
        this.ctx.fillStyle = this.bgColor,
        this.ctx.fillRect(0, 0, this.w, this.h),
        e && this.ctx.fill()
    },
    canvas: null,
    ctx: null,
    w: 0,
    h: 0,
    bgColor: "#ffffff"
},
aidn.event = {
    addTouchEvent: function(e, t, n, i, a) {
        "string" == typeof e && (e = document.getElementById(e)),
        t && e.addEventListener("touchstart", t, !1),
        n && e.addEventListener("touchmove", n, !1),
        i && e.addEventListener("touchend", i, !1),
        a && e.addEventListener("touchcancel", a, !1)
    },
    removeTouchEvent: function(e, t, n, i, a) {
        "string" == typeof e && (e = document.getElementById(e)),
        t && e.removeEventListener("touchstart", t, !1),
        n && e.removeEventListener("touchmove", n, !1),
        i && e.removeEventListener("touchend", i, !1),
        a && e.removeEventListener("touchcancel", a, !1)
    },
    addMouseEvent: function(e, t, n, i, a) {
        "string" == typeof e && (e = document.getElementById(e)),
        t && e.addEventListener("mousedown", t, !1),
        n && e.addEventListener("mousemove", n, !1),
        i && e.addEventListener("mouseup", i, !1),
        a && e.addEventListener("mouseout", a, !1)
    },
    removeMouseEvent: function(e, t, n, i, a) {
        "string" == typeof e && (e = document.getElementById(e)),
        t && e.removeEventListener("mousedown", t, !1),
        n && e.removeEventListener("mousemove", n, !1),
        i && e.removeEventListener("mouseup", i, !1),
        a && e.removeEventListener("mouseout", a, !1)
    },
    add: function(e, t, n, i, a) {
        (aidn.config.touchEnabled ? this.addTouchEvent : this.addMouseEvent)(e, t, n, i, a)
    },
    remove: function(e, t, n, i, a) {
        (aidn.config.touchEnabled ? this.removeTouchEvent : this.removeMouseEvent)(e, t, n, i, a)
    },
    addMouseWheel: function(e, t) {
        var n = "onwheel"in document ? "wheel" : "onmousewheel"in document ? "mousewheel" : "DOMMouseScroll";
        (e = "string" == typeof e ? document.getElementById(e) : e).addEventListener(n, t)
    },
    removeMouseWheel: function(e, t) {
        var n = "onwheel"in document ? "wheel" : "onmousewheel"in document ? "mousewheel" : "DOMMouseScroll";
        (e = "string" == typeof e ? document.getElementById(e) : e).removeEventListener(n, t)
    },
    addDeviceOrientation: function(e) {
        window.addEventListener("deviceorientation", e)
    },
    removeDeviceOrientation: function(e) {
        window.removeEventListener("deviceorientation", e)
    },
    addDeviceMotion: function(e) {
        window.addEventListener("devicemotion", e)
    },
    removeDeviceMotion: function(e) {
        window.removeEventListener("devicemotion", e)
    },
    getWheelDelta: function(e) {
        return void 0 !== e.wheelDelta ? e.wheelDelta : e.detail
    },
    getPos: function(e) {
        return e.touches ? {
            x: e.touches[0].pageX,
            y: e.touches[0].pageY
        } : e.originalEvent && e.originalEvent.touches ? {
            x: e.originalEvent.touches[0].pageX,
            y: e.originalEvent.touches[0].pageY
        } : {
            x: e.clientX,
            y: e.clientY
        }
    }
},
aidn.util = {
    initHideAddressBar: function(e, t) {
        e && window.addEventListener("load", function() {
            setTimeout(aidn.util.hideAddressBar, 100)
        }, !1),
        t && window.addEventListener("orientationchange", function() {
            setTimeout(aidn.util.hideAddressBar, 100)
        }, !1)
    },
    hideAddressBar: function() {
        window.pageYOffset <= 0 && window.scrollTo(0, 1)
    },
    hideAddressBarStart: function(e) {
        navigator.userAgent.match(/iphone|ipod/i) ? (this.m = parseInt(document.body.style.minHeight),
        isNaN(this.m) && (this.m = 0),
        document.body.style.minHeight = "2000px",
        window.addEventListener("scroll", this._scrolled),
        this.f = e,
        this.i = setInterval(function() {
            aidn.util.hideAddressBar()
        }, 50)) : e && e()
    },
    _scrolled: function() {
        var e = aidn.util;
        document.body.style.minHeight = Math.max(window.innerHeight, e.m) + "px",
        clearInterval(e.i),
        window.removeEventListener("scroll", e._scrolled),
        e.f && e.f()
    },
    lowerAndroid: function(e) {
        var t = !1
          , n = navigator.userAgent
          , i = n.indexOf("Android");
        return t = 0 < i && parseFloat(n.substring(i + 8, i + 11)) < e ? !0 : t
    },
    getLanguage: function() {
        var e = this.getQuery();
        return e.lc || (navigator.browserLanguage || navigator.language || navigator.userLanguage).substring(0, 2)
    },
    stopScroll: function() {
        document.addEventListener("touchmove", function(e) {
            e.preventDefault()
        }, !1)
    },
    checkJapanese: function() {
        this.getLanguage();
        return "ja" == this.getLanguage() || !!(this.lowerAndroid(2.4) && 0 < navigator.userAgent.toLowerCase().indexOf("ja-jp"))
    },
    useDummyDiv: function() {
        var e = aidn.util.getiOSVersion();
        return 0 < e && e < 10
    },
    getiOSVersion: function() {
        var e = navigator.userAgent
          , t = e.match(/iPhone OS (\d+_*\d*)/);
        return t && t[1] || (t = e.match(/iPad; CPU OS (\d+_*\d*)/)) && t[1] ? parseFloat(t[1].replace("_", ".")) : aidn.util.checkiOS() && (t = e.match(/Version\/(\d+\.*\d*)/)) && t[1] ? t[1] : -1
    },
    isLocal: function() {
        return location.href.indexOf("aidn.jp") < 0
    },
    checkChrome: function() {
        var e = navigator.userAgent;
        return 0 <= e.indexOf("CriOS") || 0 <= e.indexOf("Chrome")
    },
    checkSafari: function() {
        var e = navigator.userAgent;
        return 0 <= e.indexOf("Version") && 0 <= e.indexOf("Safari")
    },
    checkFirefox: function() {
        return 0 <= navigator.userAgent.indexOf("Firefox")
    },
    checkAndroid: function() {
        return 0 <= navigator.userAgent.indexOf("Android")
    },
    checkiOS: function(e) {
        var t = navigator.userAgent
          , n = 0 <= t.indexOf("iPhone") || 0 <= t.indexOf("iPod");
        return 0 != e ? n || 0 <= t.indexOf("iPad") || 0 < t.indexOf("Mac OS") && void 0 !== document.ontouchstart : n
    },
    checkMobile: function() {
        var e = navigator.userAgent;
        return aidn.util.checkiOS() || 0 <= e.indexOf("Android") || 0 <= e.indexOf("BlackBerry") || 0 <= e.indexOf("Windows Phone")
    },
    checkApps: function() {
        return aidn.util.checkAppTwitter() || aidn.util.checkAppFacebook() || aidn.util.checkAppLine()
    },
    checkAppTwitter: function() {
        var e = navigator.userAgent;
        return !(!aidn.util.checkSafari() || !aidn.util.checkMobile()) || 0 <= e.indexOf("Twitter for")
    },
    checkAppFacebook: function() {
        return 0 <= navigator.userAgent.indexOf("FBAV")
    },
    checkAppLine: function() {
        return 0 <= navigator.userAgent.indexOf("Line")
    },
    shuffleArray: function(e) {
        for (var t = e.length, n = 0; n < t; n++) {
            var i = e[n]
              , a = Math.floor(Math.random() * t);
            e[n] = e[a],
            e[a] = i
        }
        return e
    },
    getQuery: function() {
        for (var e = [], t = window.location.search.slice(1).split("&"), n = t.length, i = 0; i < n; i++) {
            var a = t[i].split("=");
            e.push(a[0]),
            e[a[0]] = a[1]
        }
        return e
    },
    getTime: function() {
        return ("undefined" == typeof performance || void 0 === performance.now ? Date : performance).now()
    },
    fullscreen: function(e) {
        aidn.util.checkiOS() || (aidn.util.checkFullscreen() ? document.webkitCancelFullScreen ? document.webkitCancelFullScreen() : document.mozCancelFullScreen ? document.mozCancelFullScreen() : document.msExitFullscreen ? document.msExitFullscreen() : document.cancelFullScreen ? document.cancelFullScreen() : document.exitFullscreen && document.exitFullscreen() : (e ? "string" == typeof e && (e = document.getElementById(e)) : e = document.body,
        e.webkitRequestFullscreen ? e.webkitRequestFullscreen() : e.mozRequestFullScreen ? e.mozRequestFullScreen() : e.msRequestFullscreen ? e.msRequestFullscreen() : e.requestFullscreen && e.requestFullscreen()))
    },
    checkFullscreen: function() {
        return !!(document.webkitFullscreenElement || document.mozFullScreenElement || document.msFullscreenElement || document.fullscreenElement)
    },
    enabledFullscreen: function(e) {
        return (!e || !navigator.userAgent.match(/Firefox/i)) && !aidn.util.checkiOS() && (document.fullscreenEnabled || document.webkitFullscreenEnabled || document.mozFullScreenEnabled || document.msFullscreenEnabled) || !1
    },
    copyToClipboard: function(e) {
        var t = document.createElement("textarea")
          , e = (t.value = e,
        t.selectionStart = 0,
        t.selectionEnd = t.value.length,
        t.style)
          , e = (e.position = "fixed",
        e.left = "-100%",
        document.body.appendChild(t),
        t.focus(),
        document.execCommand("copy"));
        return t.blur(),
        document.body.removeChild(t),
        e
    },
    getCookie: function(e) {
        var t = null
          , e = e + "="
          , n = document.cookie
          , i = n.indexOf(e);
        return 0 <= i && (-1 == (e = n.indexOf(";", i = i + e.length)) && (e = n.length),
        t = decodeURIComponent(n.substring(i, e))),
        t
    },
    setCookie: function(e, t, n, i) {
        e = e + "=" + encodeURIComponent(t) + ";";
        0 <= n && (e += " max-age=" + n + ";"),
        i && (e += " path=" + i + ";"),
        document.cookie = e
    },
    getStorage: function(e) {
        void 0 === e && (e = location.href.split("/")[3]);
        e = localStorage.getItem(e);
        try {
            e = JSON.parse(e)
        } catch (e) {}
        return e
    },
    setStorage: function(e, t) {
        void 0 === t && (t = location.href.split("/")[3]),
        null == (e = "object" == typeof e ? JSON.stringify(e) : e) ? localStorage.removeItem(t) : localStorage.setItem(t, e)
    },
    needExpandArea: function(e) {
        var t = navigator.userAgent;
        return (t = (0 <= t.indexOf("iPhone") || 0 <= t.indexOf("iPod")) && 0 <= t.indexOf("Version/") && Math.max(window.screen.width, window.screen.height) < 600) && 1 == e && (window.scrollTo(0, 0),
        $("body").css("padding-bottom", 1)),
        t
    },
    checkStandAlone: function() {
        return "standalone"in window.navigator && window.navigator.standalone
    },
    checkEnableDownload: function() {
        return !(aidn.util.checkiOS() && aidn.util.getiOSVersion() < 12)
    },
    selectAndCopyText: function(e) {
        var e = document.getElementById(e)
          , t = document.createRange()
          , n = (t.selectNodeContents(e),
        window.getSelection());
        n.removeAllRanges(),
        n.addRange(t),
        navigator.clipboard.writeText(e.innerText)
    },
    deviceMotionRequestPermission: function() {
        "undefined" != typeof DeviceMotionEvent && 13 <= aidn.util.getiOSVersion() && DeviceMotionEvent.requestPermission()
    },
    enabledNavigatorFileShare: function() {
        return void 0 !== navigator.share && (!aidn.util.checkiOS() || 15 <= aidn.util.getiOSVersion())
    },
    navigatorFileShare: function(e) {
        var t = (t = e.file) || new File([e.blob],e.name,{
            type: e.type
        });
        navigator.share({
            text: e.text,
            files: [t]
        }).then(e.success).catch(e.fail)
    },
    changeUrl: function(e, t=!0) {
        var n, i = location.href.split("?")[0].split("#")[0];
        2 == (n = (i = 0 < i.indexOf("html") ? ((n = i.split("html")).pop(),
        n.join("html") + "html") : ((n = i.split("/")).pop(),
        n.join("/") + "/")).split(/\/\/.+?\//)).length && (i = "/" + n[1]),
        i += e,
        t ? history.pushState("", "", i) : history.replaceState("", "", i)
    },
    initStandAlone: function() {
        aidn.util.checkStandAlone() && $("a").each(function(e, t) {
            var n = $(this)
              , i = n.attr("target")
              , a = !0
              , o = (i && 0 <= i.indexOf("blank") && (a = !1),
            n.attr("href"));
            a && o && "" != o && (n.click(function(e) {
                location.href = o,
                e.preventDefault()
            }),
            n.attr("href", ""))
        })
    },
    canvas: !!window.CanvasRenderingContext2D,
    webgl: (()=>{
        try {
            var e = document.createElement("canvas")
              , t = e.getContext("webgl") || e.getContext("experimental-webgl");
            return !!(window.WebGLRenderingContext && t && t.getShaderPrecisionFormat)
        } catch (e) {
            return !1
        }
    }
    )(),
    webaudio: (()=>{
        for (var e = ["SO-03F", "SO-02F", "SO-01F"], t = e.length, n = navigator.userAgent, i = 0; i < t; i++)
            if (0 <= n.indexOf(e[i]))
                return !1;
        return !(!window.AudioContext && !window.webkitAudioContext)
    }
    )()
},
aidn.adv = {
    show: function() {},
    hide: function() {},
    close: function() {},
    showLink: function() {},
    hideLink: function() {},
    closeLink: function() {}
},
aidn.window = {
    useDummyDiv: aidn.util.useDummyDiv,
    addDummyDiv: function() {
        var e;
        aidn.window.useDummyDiv() && ((e = $("<div id='dummy'></div>")).css({
            width: "100%",
            height: "100%",
            position: "fixed",
            zIndex: -1
        }),
        e.html('<p style="width:100%;height:100%;"></p>'),
        $("body").prepend(e),
        aidn.window._dummy = $("#dummy p"))
    },
    resize: function(e, t) {
        void 0 === (aidn.window._isFit = t) && (aidn.window._isFit = !0),
        aidn.window._resizeFunc = e,
        $(window).resize(aidn.window._resize),
        aidn.window._isFit && aidn.window.scrollOff(),
        aidn.window._isTwitteriOS && aidn.window._resizeFix(),
        aidn.window._resize()
    },
    width: function() {
        return $(window).width()
    },
    height: function() {
        return aidn.window._isTwitteriOS ? window.innerHeight : (aidn.window._dummy || $(window)).height()
    },
    addVisibilityChangeEvent: function(e) {
        var t, n;
        void 0 !== document.hidden ? (t = "hidden",
        n = "visibilitychange") : void 0 !== document.msHidden ? (t = "msHidden",
        n = "msvisibilitychange") : void 0 !== document.webkitHidden && (t = "webkitHidden",
        n = "webkitvisibilitychange"),
        aidn.window._hidden = t,
        aidn.window._visibilityCallback = e,
        void 0 !== document.addEventListener && t && document.addEventListener(n, aidn.window._visibilityChangeHandler, !1)
    },
    _visibilityChangeHandler: function() {
        var e = aidn.window._visibilityCallback;
        e && e(!document[aidn.window._hidden])
    },
    scrollOff: function() {
        0 < navigator.userAgent.indexOf("SamsungBrowser") || window.addEventListener("touchmove", aidn.window.__scroll, {
            passive: !1
        })
    },
    scrollOn: function() {
        window.removeEventListener("touchmove", aidn.window.__scroll, {
            passive: !1
        })
    },
    __scroll: function(e) {
        e.preventDefault()
    },
    _resize: function() {
        if (aidn.window._isTwitteriOS && aidn.window._isFit && aidn.util.getiOSVersion() < 14 && $("body").height(window.innerHeight + 20),
        aidn.window._isTwitteriOS)
            for (var e = 0; e < 8; e++)
                setTimeout(aidn.window._resizeFix, 100 * (e + 1));
        else
            aidn.window._resizeFix()
    },
    _resizeFix: function() {
        var e;
        aidn.window._isTwitteriOS && aidn.window._isFit && (e = Math.max(window.innerHeight, $(window).height()),
        $("body").height(e)),
        aidn.window._resizeFunc && aidn.window._resizeFunc()
    },
    _isFit: !0,
    _isTwitteriOS: aidn.util.checkAppTwitter(),
    _dummy: null,
    _resizeFunc: null
},
aidn.math = {
    toRad: function(e) {
        return e * Math.PI / 180
    },
    toDeg: function(e) {
        return 180 * e / Math.PI
    },
    rand: function(e, t) {
        return Math.random() * (t - e) + e
    },
    randInt: function(e, t) {
        return Math.floor(Math.random() * (t + 1 - e) + e)
    },
    fmod: function(e, t) {
        return Number((e - Math.floor(e / t) * t).toPrecision(8))
    },
    from10: function(e, t="0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ") {
        var n = t.length
          , i = ""
          , a = !1;
        if (0 == (e = parseInt(e)))
            return t.charAt(0);
        for (e < 0 && (a = !0,
        e = Math.abs(e)); e; )
            i = t[Math.floor(aidn.math.fmod(e, n))] + i,
            e = Math.floor(e / n);
        return i = a ? "-" + i : i
    },
    to10: function(e, t="0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ") {
        for (var n = t.length, i = "-" == e.charAt(0), a = 0, o = (e = i ? e.substring(1) : e).length, r = 0; r < o; r++)
            a += t.indexOf(e[r]) * Math.pow(n, o - r - 1);
        return i && (a *= -1),
        a
    }
},
aidn.string = {
    breakStr: function(e, t, n) {
        void 0 === n && (n = !0),
        0 < t || (t = 1);
        for (var i = this.toArraySurrogate(e), a = Math.ceil(i.length / t), o = [], r = !0, d = 0, l = i.length; d < l; d++)
            if (256 <= i[d].charCodeAt(d) && 1 == i[d].length) {
                r = !1;
                break
            }
        for (; 0 < i.length; )
            o.push(i.splice(0, a));
        for (var c, d = 0, l = o.length; d < l; d++)
            if (d < l - 1 && (c = o[d][o[d].length - 1],
            0 <= "[{(<「『【（［".indexOf(c)) && o[d + 1].unshift(o[d].pop()),
            1 <= d && (c = o[d][0],
            0 <= ',.!?]})>"、。」』】）］！？'.indexOf(c)) && o[d - 1].push(o[d].shift()),
            d < l - 1 && r) {
                for (var s = !1, u = 0; u < 5; u++) {
                    var h = o[d][o[d].length - u - 1];
                    if (0 < ',.!?]})>" 　'.indexOf(h) || 2 <= h.length) {
                        s = !0;
                        break
                    }
                    if (h = o[d + 1][u],
                    0 < ',.!?]})>" 　'.indexOf(h) || 2 <= h.length) {
                        s = !1;
                        break
                    }
                }
                if (0 < u && u < 5)
                    for (var f = 0; f < u; f++)
                        s ? (h = o[d][o[d].length - u - 1],
                        o[d + 1].unshift(o[d].pop())) : (h = o[d + 1][u],
                        o[d].push(o[d + 1].shift()))
            }
        if (!n)
            return o;
        for (var p = [], d = 0, l = o.length; d < l; d++)
            p[d] = o[d].join("");
        return p
    },
    toArraySurrogate: function(e) {
        try {
            for (var t = Array.from(new Intl.Segmenter("ja",{
                granularity: "grapheme"
            }).segment(e)), n = [], i = 0; i < t.length; i++)
                n[i] = t[i].segment;
            return n
        } catch (e) {}
        return e.match(/[\uD800-\uDBFF][\uDC00-\uDFFF]|[^\uD800-\uDFFF]/g) || []
    },
    calcStrWidth: function(e, t) {
        e = $(e).clone(),
        e.css({
            opacity: 0,
            display: "inline-block",
            whiteSpace: "nowrap",
            position: "absolute"
        }),
        $("body").append(e),
        e.text(t),
        t = e.width();
        return e.remove(),
        t
    },
    insertBreakStr: function(e, t, n) {
        for (var i = this.calcStrWidth(e, t), i = Math.ceil(i / n), a = this.breakStr(t, i), o = 0; o < a.length; o++)
            a[o] = this.escapeSpecialChars(a[o]);
        $(e).html(a.join("<br>"))
    },
    colToRgb: function(e) {
        return e < 0 ? e = 0 : 16777215 < e && (e = 16777215),
        [e >> 16, e >> 8 & 255, 255 & e]
    },
    rgbToCol: function(e) {
        return e.length < 3 ? 0 : 256 * e[0] * 256 + 256 * e[1] + e[2]
    },
    rgbStrToCol: function(e) {
        e = e.replace(/rgb\((.+)\)/, "$1").split(",");
        return this.rgbToCol([parseInt(e[0]), parseInt(e[1]), parseInt(e[2])])
    },
    colToHex: function(e) {
        return "#" + this.colToRgb(e).map(function(e) {
            return ("0" + e.toString(16)).slice(-2)
        }).join("")
    },
    hexToCol: function(e) {
        e = e.substring(1);
        return 3 == e.length && (e = [e.charAt(0), e.charAt(0), e.charAt(1), e.charAt(1), e.charAt(2), e.charAt(2)].join("")),
        parseInt(e, 16)
    },
    checkEnglish: function(e) {
        for (var t = this.toArraySurrogate(e), n = 0, i = t.length; n < i; n++) {
            var a = t[n];
            if (1 == a.length && 256 <= a.charCodeAt(0))
                return !1
        }
        return !0
    },
    escapeSpecialChars: function(e) {
        for (var t = [["&", "&amp;"], ["<", "&lt;"], [">", "&gt;"], [">", "&gt;"], ['"', "&quot;"], ["'", "&#39;"], [" ", "&nbsp;"]], n = 0; n < t.length; n++)
            e = e.split(t[n][0]).join(t[n][1]);
        return e
    }
},
aidn.color = {
    hslToRgb: function(e) {
        var t, n, i, a = e[0] % 360, o = +e[1], e = +e[2], e = e < .5 ? (i = e + e * o,
        e - e * o) : (i = e + (1 - e) * o,
        e - (1 - e) * o), o = a / 60, o = o <= 1 ? (n = a / 60 * ((t = i) - e) + e,
        e) : o <= 2 ? (t = (120 - a) / 60 * (i - e) + e,
        n = i,
        e) : o <= 3 ? (a - 120) / 60 * ((n = i) - (t = e)) + e : o <= 4 ? (n = (240 - a) / 60 * (i - (t = e)) + e,
        i) : o <= 5 ? (t = (a - 240) / 60 * (i - e) + e,
        n = e,
        i) : (360 - a) / 60 * ((t = i) - (n = e)) + e;
        return [Math.floor(255 * t), Math.floor(255 * n), Math.floor(255 * o)]
    },
    rgbToHsl: function(e) {
        var t = e[0]
          , n = e[1]
          , e = e[2]
          , i = Math.max(t, n, e)
          , a = Math.min(t, n, e)
          , e = i == a ? 0 : t == i ? (n - e) / (i - a) * 60 : n == i ? (e - t) / (i - a) * 60 + 120 : (t - n) / (i - a) * 60 + 240;
        return e < 0 && (e += 360),
        [e, (i + a) / 2 < 127.5 ? i + a <= 0 ? 0 : (i - a) / (i + a) * 1 : (i - a) / (510 - i - a) * 1, (i + a) / 255 / 2 * 1]
    },
    hsvToRgb: function(e) {
        var t, n = e[0] / 60, i = e[1], a = e[2];
        if (0 == i)
            return [255 * a, 255 * a, 255 * a];
        var e = parseInt(n)
          , n = n - e
          , o = a * (1 - i)
          , r = a * (1 - i * n)
          , d = a * (1 - i * (1 - n));
        switch (e) {
        case 0:
        case 6:
            t = [a, d, o];
            break;
        case 1:
            t = [r, a, o];
            break;
        case 2:
            t = [o, a, d];
            break;
        case 3:
            t = [o, r, a];
            break;
        case 4:
            t = [d, o, a];
            break;
        case 5:
            t = [a, o, r]
        }
        return t.map(function(e) {
            return Math.floor(255 * e)
        })
    },
    rgbToHsv: function(e) {
        var t = e[0] / 255
          , n = e[1] / 255
          , i = e[2] / 255
          , e = Math.max(t, n, i)
          , a = Math.min(t, n, i)
          , o = e - a
          , r = 0;
        switch (a) {
        case e:
            r = 0;
            break;
        case t:
            r = (i - n) / o * 60 + 180;
            break;
        case n:
            r = (t - i) / o * 60 + 300;
            break;
        case i:
            r = (n - t) / o * 60 + 60
        }
        return [r, 0 == e ? 0 : o / e, e]
    }
},
aidn.social = {
    init: function() {
        this.initTw(),
        this.initFb(),
        this.initGp()
    },
    initTw: function() {
        var e, t, n, i;
        location.href.indexOf("http") < 0 || (e = document,
        t = "twitter-wjs",
        n = e.getElementsByTagName("script")[0],
        i = /^http:/.test(e.location) ? "http" : "https",
        e.getElementById(t)) || ((e = e.createElement("script")).id = t,
        e.src = i + "://platform.twitter.com/widgets.js",
        n.parentNode.insertBefore(e, n))
    },
    initFb: function() {
        var e, t, n;
        location.href.indexOf("http") < 0 || (e = document,
        t = "facebook-jssdk",
        n = e.getElementsByTagName("script")[0],
        e.getElementById(t)) || ((e = e.createElement("script")).id = t,
        e.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.0",
        n.parentNode.insertBefore(e, n))
    },
    initGp: function() {},
    reloadTw: function(e, t, n, i) {
        0 <= i.indexOf("http://aidn.jp") && (i = i.replace("http", "https")),
        0 < $("#twitter iframe").length && $("#twitter iframe").remove(),
        0 < $("#twitter-wjs").length && $("#twitter-wjs").remove();
        var a = '<a href="https://twitter.com/share" class="twitter-share-button"';
        e && (a += ' data-text="' + e + '"'),
        t && (a += 'data-related="' + t + '"'),
        n && (a += 'data-count="' + n + '"'),
        i && (a += 'data-url="' + i + '"'),
        a += ' data-lang="en">Tweet</a>',
        $("#twitter").append(a),
        this.initTw()
    },
    shareTw: function(e, t, n, i, a) {
        var o, r = "https://twitter.com/intent/tweet", d = {}, l = (e && (d.url = encodeURIComponent(e)),
        n && (d.text = encodeURIComponent(n)),
        i && (d.related = i),
        a && (d.hashtags = encodeURIComponent(a)),
        0);
        for (o in d)
            r += 0 == l ? "?" + o + "=" + d[o] : "&" + o + "=" + d[o],
            l++;
        t && !aidn.util.checkMobile() ? window.open(r, "_blank") : location.href = r
    },
    shareFb: function(e, t) {
        e = "https://www.facebook.com/sharer/sharer.php?u=" + encodeURIComponent(e);
        t ? window.open(e, "_blank") : location.href = e
    },
    shareGp: function(e, t) {},
    shareHatena: function(e, t) {
        e = "http://b.hatena.ne.jp/entry/" + encodeURIComponent(e);
        t ? window.open(e, "_blank") : location.href = e
    },
    shareLi: function(e, t) {
        t = "http://line.me/R/msg/text/?" + encodeURIComponent(t) + " " + encodeURIComponent(e);
        location.href = t
    },
    setShareInfo: function(e, t) {
        $("title").text(e),
        $("h1").text(e),
        $("#twitter a").attr("data-text", e),
        $("#twitter a").attr("data-url", t),
        $($("#facebook").children()).attr("href", t),
        $($("#plusone").children()).attr("href", t)
    }
};
var _isJapanese = aidn.util.checkJapanese()
  , _active = !1;
function __googleTranslateElementInit() {
    new google.translate.TranslateElement({
        pageLanguage: "ja",
        includedLanguages: "de,en,es,fr,it,ja,ko,pt,ru,zh-CN,zh-TW",
        layout: google.translate.TranslateElement.InlineLayout.SIMPLE,
        autoDisplay: !1
    },"google_translate_element")
}
function __addRelease(e, t, n, i, a, o, r, d) {
    if ("string" != typeof (d = void 0 === d ? null : d) || (d = "_release" + d,
    "1" != aidn.util.getCookie(d))) {
        "string" != typeof a && (a = "NEW RELEASE"),
        "string" != typeof o && (o = "NEW RELEASE"),
        _isJapanese || (a = o);
        for (var l = "Noto+Sans+JP:wght@500", c = !1, s = "Poppins:wght@500", u = !1, h = $("link"), f = 0, p = h.length; f < p; f++) {
            var g = h[f].getAttribute("href");
            g && (0 < g.indexOf(l) && (c = !0),
            0 < g.indexOf(s)) && (u = !0)
        }
        c && u || (o = '<link href="https://fonts.googleapis.com/css2?family=',
        c || (o += l),
        c || u || (o += "&family="),
        u || (o += s),
        o += '&display=swap" rel="stylesheet">',
        $("head").append(o)),
        _isJapanese || (n = i);
        var m = Date.now() + Math.floor(1e5 * Math.random())
          , o = "calc(0.6rem + 0.6vh)"
          , i = (24 <= n.length && (o = "calc(0.55rem + 0.5vh)"),
        "bottom")
          , r = "white-space: nowrap; position: fixed; " + (i = 1 == r ? "top" : i) + ": -2px; z-index: 100000; left: 50%; transform: translateX(-50%); width:100%; max-width: 480px; color: #fff; background:#555560a0; text-align:left; cursor:pointer; letter-spacing: .4rem; line-height: 1; border: solid 1px rgba(255, 255, 255, 0.2); transition: all .12s;"
          , i = '<div id="rel_open' + m + '" style="' + (r += "font-family:Poppins,'Noto Sans JP',sans-serif;") + '">'
          , i = (i = (i = (i = (i += '<img src="' + e + '" style="width:calc(45px + 2.4vh); height:calc(45px + 2.4vh); margin: calc(4px + 1.0vh); margin-right: calc(6px + 1.2vh); vertical-align:middle;">') + '<p style="display:inline-block; vertical-align:middle; letter-spacing:.15rem; line-height:1.6; font-weight:500; margin-bottom:10px;">' + ('<span style="font-size:calc(0.4rem + 0.7vh); color: #f9a;" class="blink">' + a + "</span><br>")) + ('<span style="font-size:' + o + '; border-bottom: calc(1px + 0.15vmin) solid; padding-bottom: 4px;">' + n + "</span>") + "</p>") + ('<p id="rel_close' + m + '" style="position:absolute; right:0; top:0; padding:1vh;">') + '<svg style="width: calc(24px + 2vmin); transition: fill .12s;" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" fill-rule="evenodd" clip-rule="evenodd"><path fill="#fff" d="M12 11.293l10.293-10.293.707.707-10.293 10.293 10.293 10.293-.707.707-10.293-10.293-10.293 10.293-.707-.707 10.293-10.293-10.293-10.293.707-.707 10.293 10.293z"/></svg>') + "</p>" + "</div>";
        $("body").append(i),
        i = (i = (i = (i = "<style>\n.blink{\n") + "animation: animFade 0.7s ease-in infinite alternate;\n" + "}\n") + "@keyframes animFade {\n 40% { opacity: 1; }\n 100% { opacity: 0.0; } \n}\n" + ("#rel_open" + m + ":hover { background: #333339cc !important; } \n")) + ("#rel_close" + m + ":hover > svg path { fill: #f9a !important; } \n") + "</style>",
        $("head").append(i),
        $("#rel_open" + m).on("click", function(e) {
            e.preventDefault(),
            location.href = t
        }),
        $("#rel_close" + m).on("click", function(e) {
            e.preventDefault(),
            e.stopPropagation(),
            $("#rel_open" + m).hide(),
            d && aidn.util.setCookie(d, "1", 86400, "/")
        })
    }
}
function __checkInit() {
    var e;
    "undefined" == typeof jQuery ? setTimeout(__checkInit, 10) : ((e = window.__s) && "string" == typeof e && ($.ajax({
        url: e,
        cache: !0,
        dataType: "script"
    }),
    delete window.__s),
    $(function() {
        if (0 < location.href.indexOf("gaming")) {
            let i = $("html");
            var a = Date.now()
              , o = 0
              , r = 0;
            !function e() {
                for (var t = $("a"), n = 0, i = t.length; n < i; n++) {
                    var a = $(t[n]).attr("href");
                    a && a.indexOf("http") < 0 && a.indexOf("gaming") < 0 && (0 < a.indexOf("?") ? a += "&" : a += "?",
                    a += "gaming",
                    $(t[n]).attr("href", a))
                }
                ++r < 10 && setTimeout(e, 300)
            }(),
            !function e() {
                var t = Date.now()
                  , n = t - a;
                i.css("filter", "hue-rotate(" + o + "deg)"),
                o = (o + Math.floor(n / 4)) % 360,
                a = t,
                window.requestAnimationFrame(e)
            }()
        }
        $("meta[name='theme-color']").length <= 0 && $("meta:last").after('<meta name="theme-color" content="#000000">'),
        aidn.util.initStandAlone();
        var e = aidn.util.getiOSVersion();
        8 <= e && e < 14 && aidn.util.checkStandAlone() && (E = "_start_url",
        localStorage.getItem(E) || localStorage.setItem(E, location.href),
        document.addEventListener("visibilitychange", function(e) {
            "visible" == document.visibilityState && location.href != localStorage.getItem(E) && (location.href = localStorage.getItem(E))
        }));
        for (var t = document.querySelectorAll(".lazy_css"), n = 0, d = t.length; n < d; n++)
            t[n].rel = "stylesheet";
        var i, l = navigator.userAgent;
        function c() {
            $("svg").each(function() {
                var e = $(this);
                if ("none" == e.css("display"))
                    return !0;
                var t = e.width()
                  , n = e.context.viewBox.baseVal
                  , i = n.width;
                e.height(n.height * t / i)
            })
        }
        function s(e) {
            "hidden" == $("html, body").css("overflow") && ($("html, body").css("overflow", "hidden auto"),
            15.5 <= e) && ($("html, body").css("height", "calc(100% + 1px)"),
            setInterval(function() {
                switch (document.activeElement.constructor.name) {
                case "HTMLInputElement":
                case "HTMLTextAreaElement":
                    break;
                default:
                    window.scrollTo(0, 0)
                }
            }, 500))
        }
        if ((0 < l.indexOf("MSIE") || 0 < l.indexOf("rv:11.0")) && 0 < $("svg").length && (i = -1,
        $(window).resize(function() {
            clearTimeout(i),
            i = setTimeout(c, 200)
        }),
        c(),
        setInterval(c, 1e3)),
        0 <= location.href.indexOf("?lc=ja") && setTimeout(function() {
            var e = location.href.split("?")[0].split("#")[0]
              , t = e.split("aidn.jp").pop();
            0 < e.indexOf("/aidn/") && (t = "/aidn" + e.split("/aidn").pop()),
            history.replaceState("", "", t)
        }, 1),
        15.4 <= e && (s(e),
        setTimeout(s, 300, e)),
        12.2 <= e) {
            for (var u, h = ["/mikuboard", "/vtofu", "/omikuji", "/momoko_vr", "/catsphere", "/shake", "/m/nijimi"], f = location.href, p = !1, d = 0, n = 0; n < h.length; n++)
                0 < f.indexOf(h[n]) && (p = !0,
                d = h[n].split("/").length - 2);
            1 == $("body").data("motion") && 2 <= (l = location.href.split("aidn")).length && (p = !0,
            d = l[1].split("/").length - 3),
            p && (u = setTimeout(function() {
                var e = ""
                  , t = (e += '<div style="width:100%; height:100%; background:rgba(255, 255, 255, 0.975); position:fixed; z-index:1000000; top: 0; left: 0; display: none;">',
                "")
                  , n = "../shared/img/dialog_sensor" + (t = 13 <= aidn.util.getiOSVersion() ? "_13" : t) + ".png";
                _isJapanese || (n = "../shared/img/dialog_sensor_en" + t + ".png");
                for (var i = 0; i < d; i++)
                    n = "../" + n;
                var e = e + ('<img src="' + n + '" style="position:absolute; top:50%; left:50%; transform:translate(-50%, -50%); width:100%; height:100%; max-width:640px; object-fit: contain;">') + "</div>"
                  , a = $(e);
                a.fadeIn("normal"),
                a.on("click", function() {
                    13 <= aidn.util.getiOSVersion() && DeviceMotionEvent.requestPermission(),
                    a.fadeOut("normal")
                }),
                $("body").append(a)
            }, 500),
            window.addEventListener("deviceorientation", function e(t) {
                clearTimeout(u),
                window.removeEventListener("deviceorientation", e)
            }))
        }
        function g() {
            try {
                for (var e in document.styleSheets) {
                    try {
                        var t = document.styleSheets[e]
                          , n = t.cssRules;
                        if (!n)
                            continue
                    } catch (e) {
                        continue
                    }
                    for (var i = n.length - 1; 0 <= i; i--) {
                        var a = n[i].selectorText;
                        if (a && a.match(":hover")) {
                            for (var o = a.split(","), r = [], d = 0; d < o.length; d++)
                                o[d].match(":hover") || r.push(o[d]);
                            0 < r.length ? n[i].selectorText = r.join(",") : t.deleteRule(i)
                        }
                    }
                }
            } catch (e) {}
        }
        _isJapanese || null != document.getElementById("google_translate_element") && $.getScript("//translate.google.com/translate_a/element.js?cb=__googleTranslateElementInit", function() {
            setInterval(()=>{
                if (0 < $("iframe.skiptranslate").length)
                    try {
                        var e = $($("iframe.skiptranslate").contents().find("table"));
                        e.attr("style") || e.attr("style", "letter-spacing:0.15rem; line-height:1.4;")
                    } catch (e) {}
            }
            , 300);
            $("head").append("<style>.goog-te-gadget { margin-top:10px; margin-bottom:10px; } .goog-te-gadget a:link, .goog-te-gadget a:visited { text-decoration:none; } div.skiptranslate { opacity: 0; } #google_translate_element div.skiptranslate { opacity: 1; letter-spacing: 0.12rem; } #google_translate_element .goog-te-gadget-simple { padding: 6px; } body { top: 0 !important; } div.skiptranslate iframe { display: none; } </style>"),
            $($("iframe.skiptranslate").contents().find("table")).setAttribute
        }),
        aidn.util.checkMobile() && ($("a[href='http://twitter.com/daniwell_aidn']").attr("target", "_self"),
        $("a[href='https://twitter.com/daniwell_aidn']").attr("target", "_self"),
        g(),
        setTimeout(g, 500)),
        $('a[href$="QH2-TGUlwu4"]').attr("href", "/yt/");
        for (n = 0; n < 3; n++)
            setTimeout(function() {
                $('a[href$="QH2-TGUlwu4"]').attr("href", "/yt/")
            }, 500 * (n + 1));
        0 < location.href.indexOf("/wow") && (m = `<p style="font-family: 'Sawarabi Gothic', sans-serif; font-size: calc(0.5rem + 0.6vmin); animation: none; margin-top: calc(15px + 1.5vmin);">[tx]</p>`,
        m = _isJapanese ? m.replace("[tx]", "サウンドをオンにしてお楽しみください。") : m.replace("[tx]", "Please enjoy this content with sound on."),
        $("#top").append(m));
        for (var m, v = !1, w = "NOW ON SALE", y = "NOW ON SALE", b = "nyancat10th/", x = "daniwell/shared/img/jacket/nyancat_arrangements.png", _ = "Nyan Cat Arrangements", k = "Nyan Cat Arrangements", h = [{
            path: "/nyancat/"
        }, {
            path: "/momotap"
        }, {
            path: "/mikutap"
        }, {
            path: "/mikuwarp"
        }, {
            path: "/rinlenwarp"
        }, {
            path: "/tetomomowarp"
        }, {
            path: "/omikuji"
        }, {
            path: "/mmd"
        }, {
            path: "/ahoge"
        }, {
            path: "/iaigiri"
        }, {
            path: "/snr/",
            topFlag: !0
        }, {
            path: "/mikuboard",
            topFlag: !0
        }, {
            path: "/shake/"
        }, {
            path: "/swipe/"
        }, {
            path: "/ugomoji",
            key: "_nyan10th",
            link: "daniwell/#x_nyancat_arrangements"
        }, {
            path: "/ygif",
            key: "_nyan10th",
            topFlag: !0,
            link: "daniwell/#x_nyancat_arrangements"
        }, {
            path: "/zgif",
            key: "_nyan10th",
            topFlag: !0,
            link: "daniwell/#x_nyancat_arrangements"
        }, {
            path: "/aiyueni_glitch",
            desc: "NOW ON SALE",
            descEn: "AVAILABLE NOW",
            link: "daniwell/#x_uz",
            imgPath: "daniwell/shared/img/jacket/uz.png",
            title: "うちゅうぜんぶ",
            titleEn: "UCHU ZENBU",
            key: "_uz"
        }, {
            path: "/flag",
            desc: "NOW ON SALE",
            descEn: "AVAILABLE NOW",
            link: "daniwell/#x_mklypn",
            imgPath: "daniwell/shared/img/jacket/mklypn.png",
            title: "MKLYPN",
            key: "_mklypn",
            topFlag: !0
        }, {
            path: "/twintail",
            desc: "NOW ON SALE",
            descEn: "AVAILABLE NOW",
            link: "daniwell/#x_mklypn",
            imgPath: "daniwell/shared/img/jacket/mklypn.png",
            title: "MKLYPN",
            key: "_mklypn",
            topFlag: !0
        }, {
            path: "/wow",
            desc: "NOW ON SALE",
            descEn: "AVAILABLE NOW",
            link: "daniwell/#x_wow",
            imgPath: "daniwell/shared/img/jacket/wow.png",
            title: "Wonder of Wonder",
            key: "_wow"
        }], f = location.href, p = !1, E = "", n = 0; n < h.length; n++) {
            var O = h[n];
            if (0 < f.indexOf(O.path)) {
                p = !0,
                E = "_sub",
                O.key && (E = O.key),
                O.desc && (w = O.desc,
                y = O.desc),
                O.descEn && (y = O.descEn),
                O.link && (b = O.link),
                O.imgPath && (x = O.imgPath),
                O.title && (_ = O.title,
                k = O.title),
                O.titleEn && (k = O.titleEn),
                "boolean" == typeof O.topFlag && (v = O.topFlag);
                break
            }
        }
        0 < $("#aidn").length && (_active = !1),
        0 < $("#aidnx").length && (_active = !1,
        $("#bt_menu").on("click", function() {
            $("#menu").stop().slideToggle(150)
        })),
        _active || (e = aidn.constant.advUrlEn,
        m = (m = (m = "") + '<a href="' + (e = aidn.util.checkJapanese() ? aidn.constant.advUrlJa : e) + '" target="_blank"><div class="adv_con"><p class="text">' + aidn.constant.advTex + "</p>") + '<p class="image"><img src="' + aidn.constant.advImg + '" alt="' + aidn.constant.advAlt + '" /></p></div></a>',
        0 < (l = $("#common_back")).length && (m = '<div class="adv"><div class="hr_top"></div>' + m + "</div>",
        $("body").css("overflow", "auto"),
        l.after(m),
        "undefined" != typeof swfobject) && (e = "before",
        1 != (l = $("p.img")).length && (l = $("h1"),
        e = "after"),
        l[e]('<p style="margin: 30px 0;">&gt; <a href="?ruffle=1">JavaScriptで実行する</a><br>(正しく動作しない場合があります)</p>')))
    }))
}
(_active = "undefined" == typeof swfobject || swfobject.hasFlashPlayerVersion("9") && !aidn.util.checkMobile()) || (swffit.fit = function() {}
),
__checkInit(),
aidn.extra = {
    Button: function(e, t) {
        var n = e
          , i = e
          , a = (i = t ? t : i).text()
          , o = a.length
          , r = -1
          , d = !1
          , l = 0
          , c = 0;
        function s() {
            d || (++l % 5 == 0 && c++,
            o <= c && (clearInterval(r),
            i.text(a)));
            for (var e = a.substring(0, c), t = c; t < o; t++)
                e += String.fromCharCode(65 + 26 * Math.random());
            i.text(e)
        }
        n.bind("mouseover", function(e) {
            clearInterval(r),
            l = c = 0,
            r = setInterval(s, 20),
            d = !0
        }),
        n.bind("mouseout", function(e) {
            d = !1
        })
    },
    initSnsButtons: function(t, n) {
        0 <= t.indexOf("http://aidn.jp") && (t = t.replace("http", "https")),
        $("#sns_tw").click(function(e) {
            aidn.social.shareTw(t, !0, n, "daniwell_aidn")
        }),
        $("#sns_fb").click(function(e) {
            aidn.social.shareFb(t, !0)
        }),
        $("#sns_gp").click(function(e) {
            aidn.social.shareGp(t, !0)
        })
    }
},
aidn.Audio = function() {
    aidn.audio.init();
    var o, r, d, l, c, t, s = this, u = new Audio, n = 1, h = -1;
    (this._audio = u).addEventListener("playing", function() {
        0 < o && (u.currentTime = o,
        o = -1);
        c && (c(),
        c = null)
    }),
    u.addEventListener("timeupdate", function() {
        r <= u.currentTime && u.pause();
        0 <= h && h != u.currentTime && c && (c(),
        c = null);
        h = u.currentTime
    }),
    u.addEventListener("ended", function() {
        t && t();
        d && (u.currentTime = 0,
        u.play(),
        u.playbackRate = n)
    }),
    u.addEventListener("canplaythrough", function() {
        0 < o && (u.currentTime = o,
        o = -1);
        l && (l(),
        l = null)
    }),
    this.load = function(t, n, i, a) {
        isNaN(i) || (i = null),
        a && (i = a),
        "string" == typeof t && (t = [t]);
        var e = aidn.audio.getPath(t);
        if (!e)
            return !1;
        l = n,
        u.src = e,
        u.onprogress = function() {
            try {
                i && i(u.buffered.end(0) / u.duration)
            } catch (e) {}
        }
        ,
        u.onerror = function(e) {
            setTimeout(s.load, 3e3, t, n, i, a)
        }
        ,
        u.load()
    }
    ,
    this.play = function(t, e, n, i, a) {
        void 0 === t && (t = 0),
        void 0 === i && (i = 0),
        void 0 === a && (a = 1),
        c = n,
        h = -1,
        d = e = void 0 === e ? !1 : e,
        r = 1e6;
        try {
            u.currentTime = t
        } catch (e) {
            aidn.log(e),
            o = t
        }
        if (u.play(),
        0 < i && "undefined" != typeof jQuery) {
            s.volume = 0;
            try {
                $(s).stop().animate({
                    volume: a
                }, 1e3 * i, "easeInSine")
            } catch (e) {
                $(s).stop().animate({
                    volume: a
                }, 1e3 * i, "linear")
            }
        } else
            s.volume = a
    }
    ,
    this.pause = function() {
        u.pause()
    }
    ,
    this.playSprite = function(e, t) {
        u.currentTime = e,
        u.play(),
        r = t
    }
    ,
    this.addEndEvent = function(e) {
        t = e
    }
    ,
    Object.defineProperty(this, "speed", {
        get: function() {
            return n
        },
        set: function(e) {
            u.playbackRate = n = e
        }
    }),
    Object.defineProperty(this, "loop", {
        get: function() {
            return d
        },
        set: function(e) {
            d = e
        }
    }),
    Object.defineProperty(this, "time", {
        get: function() {
            return u.currentTime
        },
        set: function(e) {
            u.currentTime = e
        }
    }),
    Object.defineProperty(this, "volume", {
        get: function() {
            return u.volume
        },
        set: function(e) {
            u.volume = e
        }
    }),
    Object.defineProperty(this, "duration", {
        get: function() {
            return u.duration
        }
    })
}
,
aidn.WebAudio = function() {
    aidn.audio.init();
    var h, f, p, g, m, v, w, y, b, x, _, t, k = this, E = [], O = [], S = 0, A = 100, T = -1, F = !1, n = 1, L = 1;
    if (void 0 !== aidn.___waContext)
        this._context = I = aidn.___waContext;
    else {
        try {
            var I = new (window.AudioContext || window.webkitAudioContext)
        } catch (e) {}
        this._context = I,
        aidn.___waContext = I
    }
    function C() {
        f.onended = null,
        t && t()
    }
    this.load = function(e, u, t, n) {
        var i = F = !1;
        if (0 <= t && (T = t),
        "string" == typeof e)
            if (0 < e.indexOf("base64"))
                for (var i = !0, a = atob(e.split(",")[1]), o = a.length, r = new Uint8Array(o), d = 0; d < o; ++d)
                    r[d] = a.charCodeAt(d);
            else
                e = [e];
        if (0 < e[0].indexOf("blank.mp3") && (t = new Audio(e[0]),
        document.body.appendChild(t)),
        !I)
            return !1;
        I.createBufferSource().start(0),
        h = null;
        var l, t = aidn.audio.getPath(e);
        return !(!t && !i || (i ? c() : ((l = new XMLHttpRequest).open("GET", t, !0),
        l.responseType = "arraybuffer",
        l.onload = c,
        l.onprogress = function(e) {
            n && n(e.loaded / e.total)
        }
        ,
        l.send()),
        0));
        function c() {
            var e = i ? r.buffer : l.response;
            I.decodeAudioData(e, function(e) {
                if (0 <= T) {
                    for (var t = T, n = Number.MAX_VALUE, i = e.numberOfChannels, a = 0; a < i; a++) {
                        for (var o = e.getChannelData(a), r = o.length, d = 0; d < r && !(t < Math.abs(o[d])); d++)
                            ;
                        d < n && (n = d)
                    }
                    for (var r = e.length - n, l = I.createBuffer(i, r, I.sampleRate), a = 0; a < i; a++)
                        for (var c = e.getChannelData(a), s = l.getChannelData(a), d = 0; d < r; d++)
                            s[d] = c[d + n];
                    e = l
                }
                A = (h = e).duration,
                u && u(h),
                F && (F = !1,
                k.play(v, w, y, b, x, _))
            }, function() {})
        }
    }
    ,
    this.play = function(e, t, n, i, a, o, r) {
        if (v = e,
        w = t,
        y = n,
        b = i,
        x = a,
        _ = o,
        h) {
            void 0 === e && (e = 0),
            void 0 === t && (t = !1),
            void 0 === i && (i = 0),
            void 0 === a ? a = L : L = a,
            void 0 === o && (o = 0),
            void 0 === r && (r = !0),
            (f = I.createBufferSource()).buffer = h,
            f.loop = t,
            f.onended = C,
            g = g || I.createGain();
            var d, l = [f, g];
            p && l.push(p),
            m && l.push(m);
            for (var c = 1; c < l.length; c++)
                (u = l[c - 1]).connect(d = l[c]);
            for (var s, u = d, c = 0; c < E.length; c++)
                O[c] ? (u.connect(E[c]),
                u = E[c]) : (d.connect(E[c]),
                d = E[c]);
            if (r) {
                for (c = E.length - 1; 0 <= c; c--)
                    if (!O[c]) {
                        d.connect(I.destination);
                        break
                    }
                c < 0 && d.connect(I.destination)
            } else
                try {
                    d.disconnect(I.destination)
                } catch (e) {}
            if (f.start ? f.start(I.currentTime + o, e) : f.noteOn(e),
            S = I.currentTime - e,
            this._source = f,
            this.nodeGain = g,
            0 < i && "undefined" != typeof jQuery) {
                k.volume = 0;
                try {
                    $(k).stop().animate({
                        volume: a
                    }, 1e3 * i, "easeInSine")
                } catch (e) {
                    $(k).stop().animate({
                        volume: a
                    }, 1e3 * i, "linear")
                }
            } else
                k.volume = a;
            n && (s = setInterval(function() {
                0 < k.time && (clearInterval(s),
                n())
            }, 10))
        } else
            F = !0,
            console.log('call "load" method before "play"')
    }
    ,
    this.stop = function(e) {
        if (void 0 === e && (e = 0),
        F = !1,
        f)
            try {
                f.stop ? f.stop(I.currentTime + e) : f.noteOff()
            } catch (e) {}
    }
    ,
    this.initPanner = function(e) {
        return 0 < (e = void 0 === e || e <= 0 ? "equalpower" : e) && (e = "HRTF"),
        (p = I.createPanner()).panningModel = e,
        this.nodePanner = p
    }
    ,
    this.initBiquadFilter = function(e) {
        return void 0 === e && (e = 0),
        (m = I.createBiquadFilter()).type = e,
        m
    }
    ,
    this.addNode = function(e, t) {
        return E.push(e),
        O.push(t),
        E.length - 1
    }
    ,
    this.removeNode = function(e) {
        var t;
        return e < 0 || E.length <= e ? null : (t = E.splice(e, 1)[0],
        O.splice(e, 1),
        t)
    }
    ,
    this.addEndEvent = function(e) {
        t = e
    }
    ,
    Object.defineProperty(this, "speed", {
        get: function() {
            return f.playbackRate.value
        },
        set: function(e) {
            try {
                S = I.currentTime - this.time / e
            } catch (e) {}
            f.playbackRate.value = n = e
        }
    }),
    Object.defineProperty(this, "loop", {
        get: function() {
            return f.loop
        },
        set: function(e) {
            f.loop = e
        }
    }),
    Object.defineProperty(this, "time", {
        get: function() {
            return (I.currentTime - S) * n % A
        },
        set: function(e) {
            try {
                f.stop(0)
            } catch (e) {}
            k.play(e, f.loop)
        }
    }),
    Object.defineProperty(this, "volume", {
        get: function() {
            return L
        },
        set: function(e) {
            L = e,
            g && (g.gain.value = e)
        }
    }),
    Object.defineProperty(this, "duration", {
        get: function() {
            return A
        }
    })
}
,
aidn.AutoAudio = function(e, t, n) {
    void 0 === e && (e = "../shared/swf/audio.swf"),
    aidn.audio.init();
    var i, a, o, r, d = 2;
    "undefined" != typeof swfobject && swfobject.hasFlashPlayerVersion(10) && null != e ? d = 0 : aidn.util.webaudio && (d = 1),
    ___flash_audioLoadComplete = function() {
        a()
    }
    ,
    ___flash_audioPlay = function() {
        o()
    }
    ,
    0 == (d = 0 <= n && n <= 2 ? n : d) ? ((n = document.createElement("div")).id = "flash_audio",
    document.body.appendChild(n),
    swfobject.embedSWF(e, "flash_audio", "20", "20", "10.2.0", "", {
        callback: t
    }, {
        menu: "false",
        scale: "noScale",
        wmode: "transparent",
        allowScriptAccess: "always",
        allowFullScreen: "true"
    }, {
        id: "flash_audio",
        name: "flash_audio"
    }),
    r = setInterval(function() {
        document.getElementById("flash_audio").loadFunc && (clearInterval(r),
        i = document.getElementById("flash_audio"),
        t(d))
    }, 100)) : (i = new (1 == d ? aidn.WebAudio : aidn.Audio),
    this.audio = i,
    t && setTimeout(function() {
        t(d)
    }, 10)),
    this.load = function() {
        if ("string" == typeof arguments[0] && (arguments[0] = [arguments[0]]),
        0 == d) {
            for (this.audio = i,
            t = 0; t < arguments[0].length; t++)
                if (0 <= arguments[0][t].indexOf(".swf")) {
                    arguments[0] = arguments[0][t];
                    break
                }
            arguments[1] && (a = arguments[1],
            arguments[1] = "___flash_audioLoadComplete")
        } else {
            for (var e = [], t = 0; t < arguments[0].length; t++)
                arguments[0][t].indexOf(".swf") < 0 && e.push(arguments[0][t]);
            arguments[0] = e
        }
        (i.loadFunc || i.load).apply(i, arguments)
    }
    ,
    this.play = function() {
        0 == d && arguments[2] && (o = arguments[2],
        arguments[2] = "___flash_audioPlay"),
        (i.playFunc || i.play).apply(i, arguments)
    }
    ,
    this.stop = function() {
        (i.stopFunc || i.stop || i.pause).apply(i, arguments)
    }
    ,
    this.addEndEvent = function(e) {
        0 != d && i.addEndEvent(e)
    }
    ,
    Object.defineProperty(this, "speed", {
        get: function() {
            return 0 == d ? -1 : i.speed
        },
        set: function(e) {
            0 != d && (i.speed = e)
        }
    }),
    Object.defineProperty(this, "time", {
        get: function() {
            return 0 == d ? i ? i.getTimeFunc() : -1 : i.time
        },
        set: function(e) {
            0 != d && (i.time = e)
        }
    }),
    Object.defineProperty(this, "volume", {
        get: function() {
            return 0 == d ? -1 : i.volume
        },
        set: function(e) {
            0 != d && (i.volume = e)
        }
    }),
    Object.defineProperty(this, "duration", {
        get: function() {
            return 0 == d ? -1 : i.duration
        }
    }),
    this.type = d
}
,
aidn.SceneManager = function() {
    var r = 150
      , d = []
      , n = -1
      , i = -1
      , a = -1;
    function o(e) {
        e.stop().delay(r).fadeIn(r, "linear")
    }
    function l(e) {
        e.stop().fadeOut(r, "linear")
    }
    this.init = function(e, t=150) {
        for (var n = e.length, i = 0; i < n; i++) {
            var a = e[i]
              , o = 0 <= a.id ? a.id : i;
            d[o] = $(a.target)
        }
        return r = t,
        this
    }
    ,
    this.show = function(e, t=!0) {
        0 <= n && (l(d[n]),
        clearTimeout(i),
        t) && (i = setTimeout(l, 2 * r, d[n])),
        0 <= e && (o(d[e]),
        clearTimeout(a),
        t) && (a = setTimeout(o, 2 * r, d[e])),
        n = e
    }
}
,
window.requestAnimFrame = window.requestAnimationFrame || window.webkitRequestAnimationFrame || window.mozRequestAnimationFrame || window.oRequestAnimationFrame || window.msRequestAnimationFrame || function(e) {
    window.setTimeout(e, 1e3 / 60)
}
;
