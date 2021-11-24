/* jQuery Easing v1.3 - http://gsgd.co.uk/sandbox/jquery/easing/ */
jQuery.easing["jswing"] = jQuery.easing["swing"];
jQuery.extend(jQuery.easing, {
    def: "easeOutQuad",
    swing: function(e, t, n, r, i) {
        return jQuery.easing[jQuery.easing.def](e, t, n, r, i)
    },
    easeInQuad: function(e, t, n, r, i) {
        return r * (t /= i) * t + n
    },
    easeOutQuad: function(e, t, n, r, i) {
        return -r * (t /= i) * (t - 2) + n
    },
    easeInOutQuad: function(e, t, n, r, i) {
        if ((t /= i / 2) < 1) return r / 2 * t * t + n;
        return -r / 2 * (--t * (t - 2) - 1) + n
    },
    easeInCubic: function(e, t, n, r, i) {
        return r * (t /= i) * t * t + n
    },
    easeOutCubic: function(e, t, n, r, i) {
        return r * ((t = t / i - 1) * t * t + 1) + n
    },
    easeInOutCubic: function(e, t, n, r, i) {
        if ((t /= i / 2) < 1) return r / 2 * t * t * t + n;
        return r / 2 * ((t -= 2) * t * t + 2) + n
    },
    easeInQuart: function(e, t, n, r, i) {
        return r * (t /= i) * t * t * t + n
    },
    easeOutQuart: function(e, t, n, r, i) {
        return -r * ((t = t / i - 1) * t * t * t - 1) + n
    },
    easeInOutQuart: function(e, t, n, r, i) {
        if ((t /= i / 2) < 1) return r / 2 * t * t * t * t + n;
        return -r / 2 * ((t -= 2) * t * t * t - 2) + n
    },
    easeInQuint: function(e, t, n, r, i) {
        return r * (t /= i) * t * t * t * t + n
    },
    easeOutQuint: function(e, t, n, r, i) {
        return r * ((t = t / i - 1) * t * t * t * t + 1) + n
    },
    easeInOutQuint: function(e, t, n, r, i) {
        if ((t /= i / 2) < 1) return r / 2 * t * t * t * t * t + n;
        return r / 2 * ((t -= 2) * t * t * t * t + 2) + n
    },
    easeInSine: function(e, t, n, r, i) {
        return -r * Math.cos(t / i * (Math.PI / 2)) + r + n
    },
    easeOutSine: function(e, t, n, r, i) {
        return r * Math.sin(t / i * (Math.PI / 2)) + n
    },
    easeInOutSine: function(e, t, n, r, i) {
        return -r / 2 * (Math.cos(Math.PI * t / i) - 1) + n
    },
    easeInExpo: function(e, t, n, r, i) {
        return t == 0 ? n : r * Math.pow(2, 10 * (t / i - 1)) + n
    },
    easeOutExpo: function(e, t, n, r, i) {
        return t == i ? n + r : r * (-Math.pow(2, -10 * t / i) + 1) + n
    },
    easeInOutExpo: function(e, t, n, r, i) {
        if (t == 0) return n;
        if (t == i) return n + r;
        if ((t /= i / 2) < 1) return r / 2 * Math.pow(2, 10 * (t - 1)) + n;
        return r / 2 * (-Math.pow(2, -10 * --t) + 2) + n
    },
    easeInCirc: function(e, t, n, r, i) {
        return -r * (Math.sqrt(1 - (t /= i) * t) - 1) + n
    },
    easeOutCirc: function(e, t, n, r, i) {
        return r * Math.sqrt(1 - (t = t / i - 1) * t) + n
    },
    easeInOutCirc: function(e, t, n, r, i) {
        if ((t /= i / 2) < 1) return -r / 2 * (Math.sqrt(1 - t * t) - 1) + n;
        return r / 2 * (Math.sqrt(1 - (t -= 2) * t) + 1) + n
    },
    easeInElastic: function(e, t, n, r, i) {
        var s = 1.70158;
        var o = 0;
        var u = r;
        if (t == 0) return n;
        if ((t /= i) == 1) return n + r;
        if (!o) o = i * .3;
        if (u < Math.abs(r)) {
            u = r;
            var s = o / 4
        } else var s = o / (2 * Math.PI) * Math.asin(r / u);
        return -(u * Math.pow(2, 10 * (t -= 1)) * Math.sin((t * i - s) * 2 * Math.PI / o)) + n
    },
    easeOutElastic: function(e, t, n, r, i) {
        var s = 1.70158;
        var o = 0;
        var u = r;
        if (t == 0) return n;
        if ((t /= i) == 1) return n + r;
        if (!o) o = i * .3;
        if (u < Math.abs(r)) {
            u = r;
            var s = o / 4
        } else var s = o / (2 * Math.PI) * Math.asin(r / u);
        return u * Math.pow(2, -10 * t) * Math.sin((t * i - s) * 2 * Math.PI / o) + r + n
    },
    easeInOutElastic: function(e, t, n, r, i) {
        var s = 1.70158;
        var o = 0;
        var u = r;
        if (t == 0) return n;
        if ((t /= i / 2) == 2) return n + r;
        if (!o) o = i * .3 * 1.5;
        if (u < Math.abs(r)) {
            u = r;
            var s = o / 4
        } else var s = o / (2 * Math.PI) * Math.asin(r / u);
        if (t < 1) return -.5 * u * Math.pow(2, 10 * (t -= 1)) * Math.sin((t * i - s) * 2 * Math.PI / o) + n;
        return u * Math.pow(2, -10 * (t -= 1)) * Math.sin((t * i - s) * 2 * Math.PI / o) * .5 + r + n
    },
    easeInBack: function(e, t, n, r, i, s) {
        if (s == undefined) s = 1.70158;
        return r * (t /= i) * t * ((s + 1) * t - s) + n
    },
    easeOutBack: function(e, t, n, r, i, s) {
        if (s == undefined) s = 1.70158;
        return r * ((t = t / i - 1) * t * ((s + 1) * t + s) + 1) + n
    },
    easeInOutBack: function(e, t, n, r, i, s) {
        if (s == undefined) s = 1.70158;
        if ((t /= i / 2) < 1) return r / 2 * t * t * (((s *= 1.525) + 1) * t - s) + n;
        return r / 2 * ((t -= 2) * t * (((s *= 1.525) + 1) * t + s) + 2) + n
    },
    easeInBounce: function(e, t, n, r, i) {
        return r - jQuery.easing.easeOutBounce(e, i - t, 0, r, i) + n
    },
    easeOutBounce: function(e, t, n, r, i) {
        if ((t /= i) < 1 / 2.75) {
            return r * 7.5625 * t * t + n
        } else if (t < 2 / 2.75) {
            return r * (7.5625 * (t -= 1.5 / 2.75) * t + .75) + n
        } else if (t < 2.5 / 2.75) {
            return r * (7.5625 * (t -= 2.25 / 2.75) * t + .9375) + n
        } else {
            return r * (7.5625 * (t -= 2.625 / 2.75) * t + .984375) + n
        }
    },
    easeInOutBounce: function(e, t, n, r, i) {
        if (t < i / 2) return jQuery.easing.easeInBounce(e, t * 2, 0, r, i) * .5 + n;
        return jQuery.easing.easeOutBounce(e, t * 2 - i, 0, r, i) * .5 + r * .5 + n
    }
})

/*
 * jQuery throttle / debounce - v1.1 - 3/7/2010
 * http://benalman.com/projects/jquery-throttle-debounce-plugin/
 */

;
(function(b, c) {
    var $ = b.jQuery || b.Cowboy || (b.Cowboy = {}),
        a;
    $.throttle = a = function(e, f, j, i) {
        var h, d = 0;
        if (typeof f !== "boolean") {
            i = j;
            j = f;
            f = c
        }

        function g() {
            var o = this,
                m = +new Date() - d,
                n = arguments;

            function l() {
                d = +new Date();
                j.apply(o, n)
            }

            function k() {
                h = c
            }
            if (i && !h) {
                l()
            }
            h && clearTimeout(h);
            if (i === c && m > e) {
                l()
            } else {
                if (f !== true) {
                    h = setTimeout(i ? k : l, i === c ? e - m : e)
                }
            }
        }
        if ($.guid) {
            g.guid = j.guid = j.guid || $.guid++
        }
        return g
    };
    $.debounce = function(d, e, f) {
        return f === c ? a(d, e, false) : a(d, f, e !== false)
    }
})(this);

/*!
 * https://github.com/es-shims/es5-shim
 */

;
(function(a, b) {
    if (typeof define === "function" && define.amd) {
        define(b)
    } else if (typeof exports === "object") {
        module.exports = b()
    } else {
        a.returnExports = b()
    }
})(this, function() {
    function Empty() {}
    if (!Function.prototype.bind) {
        Function.prototype.bind = function bind(b) {
            var c = this;
            if (typeof c != "function") {
                throw new TypeError("Function.prototype.bind called on incompatible " + c)
            }
            var d = u.call(arguments, 1);
            var e = function() {
                if (this instanceof h) {
                    var a = c.apply(this, d.concat(u.call(arguments)));
                    if (Object(a) === a) {
                        return a
                    }
                    return this
                } else {
                    return c.apply(b, d.concat(u.call(arguments)))
                }
            };
            var f = Math.max(0, c.length - d.length);
            var g = [];
            for (var i = 0; i < f; i++) {
                g.push("$" + i)
            }
            var h = Function("binder", "return function(" + g.join(",") + "){return binder.apply(this,arguments)}")(e);
            if (c.prototype) {
                Empty.prototype = c.prototype;
                h.prototype = new Empty;
                Empty.prototype = null
            }
            return h
        }
    }
    var p = Function.prototype.call;
    var q = Array.prototype;
    var r = Object.prototype;
    var u = q.slice;
    var v = p.bind(r.toString);
    var w = p.bind(r.hasOwnProperty);
    var y;
    var A;
    var B;
    var C;
    var E;
    if (E = w(r, "__defineGetter__")) {
        y = p.bind(r.__defineGetter__);
        A = p.bind(r.__defineSetter__);
        B = p.bind(r.__lookupGetter__);
        C = p.bind(r.__lookupSetter__)
    }
    if ([1, 2].splice(0).length != 2) {
        var F = Array.prototype.splice;
        var G = Array.prototype.push;
        var H = Array.prototype.unshift;
        if (function() {
                function makeArray(l) {
                    var a = [];
                    while (l--) {
                        a.unshift(l)
                    }
                    return a
                }
                var b = [],
                    lengthBefore;
                b.splice.bind(b, 0, 0).apply(null, makeArray(20));
                b.splice.bind(b, 0, 0).apply(null, makeArray(26));
                lengthBefore = b.length;
                b.splice(5, 0, "XXX");
                if (lengthBefore + 1 == b.length) {
                    return true
                }
            }()) {
            Array.prototype.splice = function(a, b) {
                if (!arguments.length) {
                    return []
                } else {
                    return F.apply(this, [a === void 0 ? 0 : a, b === void 0 ? this.length - a : b].concat(u.call(arguments, 2)))
                }
            }
        } else {
            Array.prototype.splice = function(a, b) {
                var c, args = u.call(arguments, 2),
                    addElementsCount = args.length;
                if (!arguments.length) {
                    return []
                }
                if (a === void 0) {
                    a = 0
                }
                if (b === void 0) {
                    b = this.length - a
                }
                if (addElementsCount > 0) {
                    if (b <= 0) {
                        if (a == this.length) {
                            G.apply(this, args);
                            return []
                        }
                        if (a == 0) {
                            H.apply(this, args);
                            return []
                        }
                    }
                    c = u.call(this, a, a + b);
                    args.push.apply(args, u.call(this, a + b, this.length));
                    args.unshift.apply(args, u.call(this, 0, a));
                    args.unshift(0, this.length);
                    F.apply(this, args);
                    return c
                }
                return F.call(this, a, b)
            }
        }
    }
    if ([].unshift(0) != 1) {
        var H = Array.prototype.unshift;
        Array.prototype.unshift = function() {
            H.apply(this, arguments);
            return this.length
        }
    }
    if (!Array.isArray) {
        Array.isArray = function isArray(a) {
            return v(a) == "[object Array]"
        }
    }
    var I = Object("a");
    var J = I[0] != "a" || !(0 in I);
    var K = function properlyBoxed(d) {
        var e = true;
        if (d) {
            d.call("foo", function(a, b, c) {
                if (typeof c !== "object") {
                    e = false
                }
            })
        }
        return !!d && e
    };
    if (!Array.prototype.forEach || !K(Array.prototype.forEach)) {
        Array.prototype.forEach = function forEach(a) {
            var b = U(this),
                self = J && v(this) == "[object String]" ? this.split("") : b,
                thisp = arguments[1],
                i = -1,
                length = self.length >>> 0;
            if (v(a) != "[object Function]") {
                throw new TypeError
            }
            while (++i < length) {
                if (i in self) {
                    a.call(thisp, self[i], i, b)
                }
            }
        }
    }
    if (!Array.prototype.map || !K(Array.prototype.map)) {
        Array.prototype.map = function map(a) {
            var b = U(this),
                self = J && v(this) == "[object String]" ? this.split("") : b,
                length = self.length >>> 0,
                result = Array(length),
                thisp = arguments[1];
            if (v(a) != "[object Function]") {
                throw new TypeError(a + " is not a function")
            }
            for (var i = 0; i < length; i++) {
                if (i in self) result[i] = a.call(thisp, self[i], i, b)
            }
            return result
        }
    }
    if (!Array.prototype.filter || !K(Array.prototype.filter)) {
        Array.prototype.filter = function filter(a) {
            var b = U(this),
                self = J && v(this) == "[object String]" ? this.split("") : b,
                length = self.length >>> 0,
                result = [],
                value, thisp = arguments[1];
            if (v(a) != "[object Function]") {
                throw new TypeError(a + " is not a function")
            }
            for (var i = 0; i < length; i++) {
                if (i in self) {
                    value = self[i];
                    if (a.call(thisp, value, i, b)) {
                        result.push(value)
                    }
                }
            }
            return result
        }
    }
    if (!Array.prototype.every || !K(Array.prototype.every)) {
        Array.prototype.every = function every(a) {
            var b = U(this),
                self = J && v(this) == "[object String]" ? this.split("") : b,
                length = self.length >>> 0,
                thisp = arguments[1];
            if (v(a) != "[object Function]") {
                throw new TypeError(a + " is not a function")
            }
            for (var i = 0; i < length; i++) {
                if (i in self && !a.call(thisp, self[i], i, b)) {
                    return false
                }
            }
            return true
        }
    }
    if (!Array.prototype.some || !K(Array.prototype.some)) {
        Array.prototype.some = function some(a) {
            var b = U(this),
                self = J && v(this) == "[object String]" ? this.split("") : b,
                length = self.length >>> 0,
                thisp = arguments[1];
            if (v(a) != "[object Function]") {
                throw new TypeError(a + " is not a function")
            }
            for (var i = 0; i < length; i++) {
                if (i in self && a.call(thisp, self[i], i, b)) {
                    return true
                }
            }
            return false
        }
    }
    if (!Array.prototype.reduce) {
        Array.prototype.reduce = function reduce(a) {
            var b = U(this),
                self = J && v(this) == "[object String]" ? this.split("") : b,
                length = self.length >>> 0;
            if (v(a) != "[object Function]") {
                throw new TypeError(a + " is not a function")
            }
            if (!length && arguments.length == 1) {
                throw new TypeError("reduce of empty array with no initial value")
            }
            var i = 0;
            var c;
            if (arguments.length >= 2) {
                c = arguments[1]
            } else {
                do {
                    if (i in self) {
                        c = self[i++];
                        break
                    }
                    if (++i >= length) {
                        throw new TypeError("reduce of empty array with no initial value")
                    }
                } while (true)
            }
            for (; i < length; i++) {
                if (i in self) {
                    c = a.call(void 0, c, self[i], i, b)
                }
            }
            return c
        }
    }
    if (!Array.prototype.reduceRight) {
        Array.prototype.reduceRight = function reduceRight(a) {
            var b = U(this),
                self = J && v(this) == "[object String]" ? this.split("") : b,
                length = self.length >>> 0;
            if (v(a) != "[object Function]") {
                throw new TypeError(a + " is not a function")
            }
            if (!length && arguments.length == 1) {
                throw new TypeError("reduceRight of empty array with no initial value")
            }
            var c, i = length - 1;
            if (arguments.length >= 2) {
                c = arguments[1]
            } else {
                do {
                    if (i in self) {
                        c = self[i--];
                        break
                    }
                    if (--i < 0) {
                        throw new TypeError("reduceRight of empty array with no initial value")
                    }
                } while (true)
            }
            if (i < 0) {
                return c
            }
            do {
                if (i in this) {
                    c = a.call(void 0, c, self[i], i, b)
                }
            } while (i--);
            return c
        }
    }
    if (!Array.prototype.indexOf || [0, 1].indexOf(1, 2) != -1) {
        Array.prototype.indexOf = function indexOf(a) {
            var b = J && v(this) == "[object String]" ? this.split("") : U(this),
                length = b.length >>> 0;
            if (!length) {
                return -1
            }
            var i = 0;
            if (arguments.length > 1) {
                i = toInteger(arguments[1])
            }
            i = i >= 0 ? i : Math.max(0, length + i);
            for (; i < length; i++) {
                if (i in b && b[i] === a) {
                    return i
                }
            }
            return -1
        }
    }
    if (!Array.prototype.lastIndexOf || [0, 1].lastIndexOf(0, -3) != -1) {
        Array.prototype.lastIndexOf = function lastIndexOf(a) {
            var b = J && v(this) == "[object String]" ? this.split("") : U(this),
                length = b.length >>> 0;
            if (!length) {
                return -1
            }
            var i = length - 1;
            if (arguments.length > 1) {
                i = Math.min(i, toInteger(arguments[1]))
            }
            i = i >= 0 ? i : length - Math.abs(i);
            for (; i >= 0; i--) {
                if (i in b && a === b[i]) {
                    return i
                }
            }
            return -1
        }
    }
    if (!Object.keys) {
        var L = true,
            hasProtoEnumBug = function() {}.propertyIsEnumerable("prototype"),
            dontEnums = ["toString", "toLocaleString", "valueOf", "hasOwnProperty", "isPrototypeOf", "propertyIsEnumerable", "constructor"],
            dontEnumsLength = dontEnums.length;
        for (var N in {
                toString: null
            }) {
            L = false
        }
        Object.keys = function c(a) {
            var b = v(a) === "[object Function]",
                isObject = a !== null && typeof a === "object";
            if (!isObject && !b) {
                throw new TypeError("Object.keys called on a non-object")
            }
            var c = [],
                skipProto = hasProtoEnumBug && b;
            for (var d in a) {
                if (!(skipProto && d === "prototype") && w(a, d)) {
                    c.push(d)
                }
            }
            if (L) {
                var e = a.constructor,
                    skipConstructor = e && e.prototype === a;
                for (var i = 0; i < dontEnumsLength; i++) {
                    var f = dontEnums[i];
                    if (!(skipConstructor && f === "constructor") && w(a, f)) {
                        c.push(f)
                    }
                }
            }
            return c
        }
    }
    var O = -621987552e5,
        negativeYearString = "-000001";
    if (!Date.prototype.toISOString || new Date(O).toISOString().indexOf(negativeYearString) === -1) {
        Date.prototype.toISOString = function toISOString() {
            var a, length, value, year, month;
            if (!isFinite(this)) {
                throw new RangeError("Date.prototype.toISOString called on non-finite value.")
            }
            year = this.getUTCFullYear();
            month = this.getUTCMonth();
            year += Math.floor(month / 12);
            month = (month % 12 + 12) % 12;
            a = [month + 1, this.getUTCDate(), this.getUTCHours(), this.getUTCMinutes(), this.getUTCSeconds()];
            year = (year < 0 ? "-" : year > 9999 ? "+" : "") + ("00000" + Math.abs(year)).slice(0 <= year && year <= 9999 ? -4 : -6);
            length = a.length;
            while (length--) {
                value = a[length];
                if (value < 10) {
                    a[length] = "0" + value
                }
            }
            return year + "-" + a.slice(0, 2).join("-") + "T" + a.slice(2).join(":") + "." + ("000" + this.getUTCMilliseconds()).slice(-3) + "Z"
        }
    }
    var P = false;
    try {
        P = Date.prototype.toJSON && new Date(NaN).toJSON() === null && new Date(O).toJSON().indexOf(negativeYearString) !== -1 && Date.prototype.toJSON.call({
            toISOString: function() {
                return true
            }
        })
    } catch (e) {}
    if (!P) {
        Date.prototype.toJSON = function toJSON(a) {
            var o = Object(this),
                tv = toPrimitive(o),
                toISO;
            if (typeof tv === "number" && !isFinite(tv)) {
                return null
            }
            toISO = o.toISOString;
            if (typeof toISO != "function") {
                throw new TypeError("toISOString property is not callable")
            }
            return toISO.call(o)
        }
    }
    if (!Date.parse || "Date.parse is buggy") {
        Date = function(d) {
            function Date(Y, M, D, h, m, s, a) {
                var b = arguments.length;
                if (this instanceof d) {
                    var c = b == 1 && String(Y) === Y ? new d(Date.parse(Y)) : b >= 7 ? new d(Y, M, D, h, m, s, a) : b >= 6 ? new d(Y, M, D, h, m, s) : b >= 5 ? new d(Y, M, D, h, m) : b >= 4 ? new d(Y, M, D, h) : b >= 3 ? new d(Y, M, D) : b >= 2 ? new d(Y, M) : b >= 1 ? new d(Y) : new d;
                    c.constructor = Date;
                    return c
                }
                return d.apply(this, arguments)
            }
            var e = new RegExp("^" + "(\\d{4}|[+-]\\d{6})" + "(?:-(\\d{2})" + "(?:-(\\d{2})" + "(?:" + "T(\\d{2})" + ":(\\d{2})" + "(?:" + ":(\\d{2})" + "(?:(\\.\\d{1,}))?" + ")?" + "(" + "Z|" + "(?:" + "([-+])" + "(\\d{2})" + ":(\\d{2})" + ")" + ")?)?)?)?" + "$");
            var f = [0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334, 365];

            function dayFromMonth(a, b) {
                var t = b > 1 ? 1 : 0;
                return f[b] + Math.floor((a - 1969 + t) / 4) - Math.floor((a - 1901 + t) / 100) + Math.floor((a - 1601 + t) / 400) + 365 * (a - 1970)
            }

            function toUTC(t) {
                return Number(new d(1970, 0, 1, 0, 0, 0, t))
            }
            for (var g in d) {
                Date[g] = d[g]
            }
            Date.now = d.now;
            Date.UTC = d.UTC;

            Date.prototype = d.prototype;
            Date.prototype.constructor = Date;
            Date.parse = function parse(a) {
                var b = e.exec(a);
                if (b) {
                    var c = Number(b[1]),
                        month = Number(b[2] || 1) - 1,
                        day = Number(b[3] || 1) - 1,
                        hour = Number(b[4] || 0),
                        minute = Number(b[5] || 0),
                        second = Number(b[6] || 0),
                        millisecond = Math.floor(Number(b[7] || 0) * 1e3),
                        isLocalTime = Boolean(b[4] && !b[8]),
                        signOffset = b[9] === "-" ? 1 : -1,
                        hourOffset = Number(b[10] || 0),
                        minuteOffset = Number(b[11] || 0),
                        result;
                    if (hour < (minute > 0 || second > 0 || millisecond > 0 ? 24 : 25) && minute < 60 && second < 60 && millisecond < 1e3 && month > -1 && month < 12 && hourOffset < 24 && minuteOffset < 60 && day > -1 && day < dayFromMonth(c, month + 1) - dayFromMonth(c, month)) {
                        result = ((dayFromMonth(c, month) + day) * 24 + hour + hourOffset * signOffset) * 60;
                        result = ((result + minute + minuteOffset * signOffset) * 60 + second) * 1e3 + millisecond;
                        if (isLocalTime) {
                            result = toUTC(result)
                        }
                        if (-864e13 <= result && result <= 864e13) {
                            return result
                        }
                    }
                    return NaN
                }
                return d.parse.apply(this, arguments)
            };
            return Date
        }(Date)
    }
    if (!Date.now) {
        Date.now = function now() {
            return (new Date).getTime()
        }
    }
    if (!Number.prototype.toFixed || 8e-5.toFixed(3) !== "0.000" || .9.toFixed(0) === "0" || 1.255.toFixed(2) !== "1.25" || 0xde0b6b3a7640080.toFixed(0) !== "1000000000000000128") {
        (function() {
            var b, size, data, i;
            b = 1e7;
            size = 6;
            data = [0, 0, 0, 0, 0, 0];

            function multiply(n, c) {
                var i = -1;
                while (++i < size) {
                    c += n * data[i];
                    data[i] = c % b;
                    c = Math.floor(c / b)
                }
            }

            function divide(n) {
                var i = size,
                    c = 0;
                while (--i >= 0) {
                    c += data[i];
                    data[i] = Math.floor(c / n);
                    c = c % n * b
                }
            }

            function toString() {
                var i = size;
                var s = "";
                while (--i >= 0) {
                    if (s !== "" || i === 0 || data[i] !== 0) {
                        var t = String(data[i]);
                        if (s === "") {
                            s = t
                        } else {
                            s += "0000000".slice(0, 7 - t.length) + t
                        }
                    }
                }
                return s
            }

            function pow(x, n, a) {
                return n === 0 ? a : n % 2 === 1 ? pow(x, n - 1, a * x) : pow(x * x, n / 2, a)
            }

            function log(x) {
                var n = 0;
                while (x >= 4096) {
                    n += 12;
                    x /= 4096
                }
                while (x >= 2) {
                    n += 1;
                    x /= 2
                }
                return n
            }
            Number.prototype.toFixed = function(a) {
                var f, x, s, m, e, z, j, k;
                f = Number(a);
                f = f !== f ? 0 : Math.floor(f);
                if (f < 0 || f > 20) {
                    throw new RangeError("Number.toFixed called with invalid number of decimals")
                }
                x = Number(this);
                if (x !== x) {
                    return "NaN"
                }
                if (x <= -1e21 || x >= 1e21) {
                    return String(x)
                }
                s = "";
                if (x < 0) {
                    s = "-";
                    x = -x
                }
                m = "0";
                if (x > 1e-21) {
                    e = log(x * pow(2, 69, 1)) - 69;
                    z = e < 0 ? x * pow(2, -e, 1) : x / pow(2, e, 1);
                    z *= 4503599627370496;
                    e = 52 - e;
                    if (e > 0) {
                        multiply(0, z);
                        j = f;
                        while (j >= 7) {
                            multiply(1e7, 0);
                            j -= 7
                        }
                        multiply(pow(10, j, 1), 0);
                        j = e - 1;
                        while (j >= 23) {
                            divide(1 << 23);
                            j -= 23
                        }
                        divide(1 << j);
                        multiply(1, 1);
                        divide(2);
                        m = toString()
                    } else {
                        multiply(0, z);
                        multiply(1 << -e, 0);
                        m = toString() + "0.00000000000000000000".slice(2, 2 + f)
                    }
                }
                if (f > 0) {
                    k = m.length;
                    if (k <= f) {
                        m = s + "0.0000000000000000000".slice(0, f - k + 2) + m
                    } else {
                        m = s + m.slice(0, k - f) + "." + m.slice(k - f)
                    }
                } else {
                    m = s + m
                }
                return m
            }
        })()
    }
    var Q = String.prototype.split;
    if ("ab".split(/(?:ab)*/).length !== 2 || ".".split(/(.?)(.?)/).length !== 4 || "tesst".split(/(s)*/)[1] === "t" || "".split(/.?/).length || ".".split(/()()/).length > 1) {
        (function() {
            var e = /()??/.exec("")[1] === void 0;
            String.prototype.split = function(a, b) {
                var c = this;
                if (a === void 0 && b === 0) return [];
                if (Object.prototype.toString.call(a) !== "[object RegExp]") {
                    return Q.apply(this, arguments)
                }
                var d = [],
                    flags = (a.ignoreCase ? "i" : "") + (a.multiline ? "m" : "") + (a.extended ? "x" : "") + (a.sticky ? "y" : ""),
                    lastLastIndex = 0,
                    a = new RegExp(a.source, flags + "g"),
                    separator2, match, lastIndex, lastLength;
                c += "";
                if (!e) {
                    separator2 = new RegExp("^" + a.source + "$(?!\\s)", flags)
                }
                b = b === void 0 ? -1 >>> 0 : b >>> 0;
                while (match = a.exec(c)) {
                    lastIndex = match.index + match[0].length;
                    if (lastIndex > lastLastIndex) {
                        d.push(c.slice(lastLastIndex, match.index));
                        if (!e && match.length > 1) {
                            match[0].replace(separator2, function() {
                                for (var i = 1; i < arguments.length - 2; i++) {
                                    if (arguments[i] === void 0) {
                                        match[i] = void 0
                                    }
                                }
                            })
                        }
                        if (match.length > 1 && match.index < c.length) {
                            Array.prototype.push.apply(d, match.slice(1))
                        }
                        lastLength = match[0].length;
                        lastLastIndex = lastIndex;
                        if (d.length >= b) {
                            break
                        }
                    }
                    if (a.lastIndex === match.index) {
                        a.lastIndex++
                    }
                }
                if (lastLastIndex === c.length) {
                    if (lastLength || !a.test("")) {
                        d.push("")
                    }
                } else {
                    d.push(c.slice(lastLastIndex))
                }
                return d.length > b ? d.slice(0, b) : d
            }
        })()
    } else if ("0".split(void 0, 0).length) {
        String.prototype.split = function(a, b) {
            if (a === void 0 && b === 0) return [];
            return Q.apply(this, arguments)
        }
    }
    if ("".substr && "0b".substr(-1) !== "b") {
        var R = String.prototype.substr;
        String.prototype.substr = function(a, b) {
            return R.call(this, a < 0 ? (a = this.length + a) < 0 ? 0 : a : a, b)
        }
    }
    var S = "	\n\f\r \xa0\u1680\u180e\u2000\u2001\u2002\u2003" + "\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028" + "\u2029\ufeff";
    if (!String.prototype.trim || S.trim()) {
        S = "[" + S + "]";
        var T = new RegExp("^" + S + S + "*"),
            trimEndRegexp = new RegExp(S + S + "*$");
        String.prototype.trim = function trim() {
            if (this === void 0 || this === null) {
                throw new TypeError("can't convert " + this + " to object")
            }
            return String(this).replace(T, "").replace(trimEndRegexp, "")
        }
    }
    if (parseInt(S + "08") !== 8 || parseInt(S + "0x16") !== 22) {
        parseInt = function(c) {
            var d = /^0[xX]/;
            return function parseIntES5(a, b) {
                a = String(a).trim();
                if (!+b) {
                    b = d.test(a) ? 16 : 10
                }
                return c(a, b)
            }
        }(parseInt)
    }

    function toInteger(n) {
        n = +n;
        if (n !== n) {
            n = 0
        } else if (n !== 0 && n !== 1 / 0 && n !== -(1 / 0)) {
            n = (n > 0 || -1) * Math.floor(Math.abs(n))
        }
        return n
    }

    function isPrimitive(a) {
        var b = typeof a;
        return a === null || b === "undefined" || b === "boolean" || b === "number" || b === "string"
    }

    function toPrimitive(a) {
        var b, valueOf, toString;
        if (isPrimitive(a)) {
            return a
        }
        valueOf = a.valueOf;
        if (typeof valueOf === "function") {
            b = valueOf.call(a);
            if (isPrimitive(b)) {
                return b
            }
        }
        toString = a.toString;
        if (typeof toString === "function") {
            b = toString.call(a);
            if (isPrimitive(b)) {
                return b
            }
        }
        throw new TypeError
    }
    var U = function(o) {
        if (o == null) {
            throw new TypeError("can't convert " + o + " to object")
        }
        return Object(o)
    }
});

//TouchSwipe-Jquery-Plugin

(function(a) {
    if (typeof define === "function" && define.amd && define.amd.jQuery) {
        define(["jquery"], a)
    } else {
        a(jQuery)
    }
}(function(f) {
    var p = "left",
        o = "right",
        e = "up",
        x = "down",
        c = "in",
        z = "out",
        m = "none",
        s = "auto",
        l = "swipe",
        t = "pinch",
        A = "tap",
        j = "doubletap",
        b = "longtap",
        y = "hold",
        D = "horizontal",
        u = "vertical",
        i = "all",
        r = 10,
        g = "start",
        k = "move",
        h = "end",
        q = "cancel",
        a = "ontouchstart" in window,
        v = window.navigator.msPointerEnabled && !window.navigator.pointerEnabled,
        d = window.navigator.pointerEnabled || window.navigator.msPointerEnabled,
        B = "TouchSwipe";
    var n = {
        fingers: 1,
        threshold: 75,
        cancelThreshold: null,
        pinchThreshold: 20,
        maxTimeThreshold: null,
        fingerReleaseThreshold: 250,
        longTapThreshold: 500,
        doubleTapThreshold: 200,
        swipe: null,
        swipeLeft: null,
        swipeRight: null,
        swipeUp: null,
        swipeDown: null,
        swipeStatus: null,
        pinchIn: null,
        pinchOut: null,
        pinchStatus: null,
        click: null,
        tap: null,
        doubleTap: null,
        longTap: null,
        hold: null,
        triggerOnTouchEnd: true,
        triggerOnTouchLeave: false,
        allowPageScroll: "auto",
        fallbackToMouseEvents: true,
        excludedElements: "label, button, input, select, textarea, a, .noSwipe"
    };
    f.fn.swipe = function(G) {
        var F = f(this),
            E = F.data(B);
        if (E && typeof G === "string") {
            if (E[G]) {
                return E[G].apply(this, Array.prototype.slice.call(arguments, 1))
            } else {
                f.error("Method " + G + " does not exist on jQuery.swipe")
            }
        } else {
            if (!E && (typeof G === "object" || !G)) {
                return w.apply(this, arguments)
            }
        }
        return F
    };
    f.fn.swipe.defaults = n;
    f.fn.swipe.phases = {
        PHASE_START: g,
        PHASE_MOVE: k,
        PHASE_END: h,
        PHASE_CANCEL: q
    };
    f.fn.swipe.directions = {
        LEFT: p,
        RIGHT: o,
        UP: e,
        DOWN: x,
        IN: c,
        OUT: z
    };
    f.fn.swipe.pageScroll = {
        NONE: m,
        HORIZONTAL: D,
        VERTICAL: u,
        AUTO: s
    };
    f.fn.swipe.fingers = {
        ONE: 1,
        TWO: 2,
        THREE: 3,
        ALL: i
    };

    function w(E) {
        if (E && (E.allowPageScroll === undefined && (E.swipe !== undefined || E.swipeStatus !== undefined))) {
            E.allowPageScroll = m
        }
        if (E.click !== undefined && E.tap === undefined) {
            E.tap = E.click
        }
        if (!E) {
            E = {}
        }
        E = f.extend({}, f.fn.swipe.defaults, E);
        return this.each(function() {
            var G = f(this);
            var F = G.data(B);
            if (!F) {
                F = new C(this, E);
                G.data(B, F)
            }
        })
    }

    function C(n, w) {
        var y = (a || d || !w.fallbackToMouseEvents),
            J = y ? (d ? (v ? "MSPointerDown" : "pointerdown") : "touchstart") : "mousedown",
            ay = y ? (d ? (v ? "MSPointerMove" : "pointermove") : "touchmove") : "mousemove",
            U = y ? (d ? (v ? "MSPointerUp" : "pointerup") : "touchend") : "mouseup",
            S = y ? null : "mouseleave",
            aD = (d ? (v ? "MSPointerCancel" : "pointercancel") : "touchcancel");
        var bh = 0,
            aP = null,
            ab = 0,
            a1 = 0,
            aZ = 0,
            G = 1,
            aq = 0,
            aJ = 0,
            M = null;
        var bi = f(n);
        var Z = "start";
        var W = 0;
        var bj = null;
        var T = 0,
            a2 = 0,
            a5 = 0,
            ad = 0,
            N = 0;
        var bk = null,
            af = null;
        try {
            bi.bind(J, aN);
            bi.bind(aD, a9)
        } catch (ak) {
            f.error("events not supported " + J + "," + aD + " on jQuery.swipe")
        }
        this.enable = function() {
            bi.bind(J, aN);
            bi.bind(aD, a9);
            return bi
        };
        this.disable = function() {
            aK();
            return bi
        };
        this.destroy = function() {
            aK();
            bi.data(B, null);
            return bi
        };
        this.option = function(a, b) {
            if (w[a] !== undefined) {
                if (b === undefined) {
                    return w[a]
                } else {
                    w[a] = b
                }
            } else {
                f.error("Option " + a + " does not exist on jQuery.swipe.options")
            }
            return null
        };

        function aN(b) {
            if (aB()) {
                return
            }
            if (f(b.target).closest(w.excludedElements, bi).length > 0) {
                return
            }
            var c = b.originalEvent ? b.originalEvent : b;
            var d, bb = a ? c.touches[0] : c;
            Z = g;
            if (a) {
                W = c.touches.length
            } else {
                b.preventDefault()
            }
            bh = 0;
            aP = null;
            aJ = null;
            ab = 0;
            a1 = 0;
            aZ = 0;
            G = 1;
            aq = 0;
            bj = aj();
            M = aa();
            R();
            if (!a || (W === w.fingers || w.fingers === i) || aX()) {
                ai(0, bb);
                T = at();
                if (W == 2) {
                    ai(1, c.touches[1]);
                    a1 = aZ = au(bj[0].start, bj[1].start)
                }
                if (w.swipeStatus || w.pinchStatus) {
                    d = O(c, Z)
                }
            } else {
                d = false
            }
            if (d === false) {
                Z = q;
                O(c, Z);
                return d
            } else {
                if (w.hold) {
                    af = setTimeout(f.proxy(function() {
                        bi.trigger("hold", [c.target]);
                        if (w.hold) {
                            d = w.hold.call(bi, c, c.target)
                        }
                    }, this), w.longTapThreshold)
                }
                ao(true)
            }
            return null
        }

        function a3(b) {
            var c = b.originalEvent ? b.originalEvent : b;
            if (Z === h || Z === q || am()) {
                return
            }
            var d, bc = a ? c.touches[0] : c;
            var e = aH(bc);
            a2 = at();
            if (a) {
                W = c.touches.length
            }
            if (w.hold) {
                clearTimeout(af)
            }
            Z = k;
            if (W == 2) {
                if (a1 == 0) {
                    ai(1, c.touches[1]);
                    a1 = aZ = au(bj[0].start, bj[1].start)
                } else {
                    aH(c.touches[1]);
                    aZ = au(bj[0].end, bj[1].end);
                    aJ = ar(bj[0].end, bj[1].end)
                }
                G = a7(a1, aZ);
                aq = Math.abs(a1 - aZ)
            }
            if ((W === w.fingers || w.fingers === i) || !a || aX()) {
                aP = aL(e.start, e.end);
                al(b, aP);
                bh = aS(e.start, e.end);
                ab = aM();
                aI(aP, bh);
                if (w.swipeStatus || w.pinchStatus) {
                    d = O(c, Z)
                }
                if (!w.triggerOnTouchEnd || w.triggerOnTouchLeave) {
                    var f = true;
                    if (w.triggerOnTouchLeave) {
                        var g = aY(this);
                        f = E(e.end, g)
                    }
                    if (!w.triggerOnTouchEnd && f) {
                        Z = aC(k)
                    } else {
                        if (w.triggerOnTouchLeave && !f) {
                            Z = aC(h)
                        }
                    }
                    if (Z == q || Z == h) {
                        O(c, Z)
                    }
                }
            } else {
                Z = q;
                O(c, Z)
            }
            if (d === false) {
                Z = q;
                O(c, Z)
            }
        }

        function L(b) {
            var c = b.originalEvent;
            if (a) {
                if (c.touches.length > 0) {
                    F();
                    return true
                }
            }
            if (am()) {
                W = ad
            }
            a2 = at();
            ab = aM();
            if (ba() || !an()) {
                Z = q;
                O(c, Z)
            } else {
                if (w.triggerOnTouchEnd || (w.triggerOnTouchEnd == false && Z === k)) {
                    b.preventDefault();
                    Z = h;
                    O(c, Z)
                } else {
                    if (!w.triggerOnTouchEnd && a6()) {
                        Z = h;
                        aF(c, Z, A)
                    } else {
                        if (Z === k) {
                            Z = q;
                            O(c, Z)
                        }
                    }
                }
            }
            ao(false);
            return null
        }

        function a9() {
            W = 0;
            a2 = 0;
            T = 0;
            a1 = 0;
            aZ = 0;
            G = 1;
            R();
            ao(false)
        }

        function K(a) {
            var b = a.originalEvent;
            if (w.triggerOnTouchLeave) {
                Z = aC(h);
                O(b, Z)
            }
        }

        function aK() {
            bi.unbind(J, aN);
            bi.unbind(aD, a9);
            bi.unbind(ay, a3);
            bi.unbind(U, L);
            if (S) {
                bi.unbind(S, K)
            }
            ao(false)
        }

        function aC(a) {
            var b = a;
            var c = aA();
            var d = an();
            var e = ba();
            if (!c || e) {
                b = q
            } else {
                if (d && a == k && (!w.triggerOnTouchEnd || w.triggerOnTouchLeave)) {
                    b = h
                } else {
                    if (!d && a == h && w.triggerOnTouchLeave) {
                        b = q
                    }
                }
            }
            return b
        }

        function O(c, d) {
            var e = undefined;
            if (I() || V()) {
                e = aF(c, d, l)
            } else {
                if ((P() || aX()) && e !== false) {
                    e = aF(c, d, t)
                }
            }
            if (aG() && e !== false) {
                e = aF(c, d, j)
            } else {
                if (ap() && e !== false) {
                    e = aF(c, d, b)
                } else {
                    if (ah() && e !== false) {
                        e = aF(c, d, A)
                    }
                }
            }
            if (d === q) {
                a9(c)
            }
            if (d === h) {
                if (a) {
                    if (c.touches.length == 0) {
                        a9(c)
                    }
                } else {
                    a9(c)
                }
            }
            return e
        }

        function aF(a, c, d) {
            var e = undefined;
            if (d == l) {
                bi.trigger("swipeStatus", [c, aP || null, bh || 0, ab || 0, W, bj]);
                if (w.swipeStatus) {
                    e = w.swipeStatus.call(bi, a, c, aP || null, bh || 0, ab || 0, W, bj);
                    if (e === false) {
                        return false
                    }
                }
                if (c == h && aV()) {
                    bi.trigger("swipe", [aP, bh, ab, W, bj]);
                    if (w.swipe) {
                        e = w.swipe.call(bi, a, aP, bh, ab, W, bj);
                        if (e === false) {
                            return false
                        }
                    }
                    switch (aP) {
                        case p:
                            bi.trigger("swipeLeft", [aP, bh, ab, W, bj]);
                            if (w.swipeLeft) {
                                e = w.swipeLeft.call(bi, a, aP, bh, ab, W, bj)
                            }
                            break;
                        case o:
                            bi.trigger("swipeRight", [aP, bh, ab, W, bj]);
                            if (w.swipeRight) {
                                e = w.swipeRight.call(bi, a, aP, bh, ab, W, bj)
                            }
                            break;
                        case e:
                            bi.trigger("swipeUp", [aP, bh, ab, W, bj]);
                            if (w.swipeUp) {
                                e = w.swipeUp.call(bi, a, aP, bh, ab, W, bj)
                            }
                            break;
                        case x:
                            bi.trigger("swipeDown", [aP, bh, ab, W, bj]);
                            if (w.swipeDown) {
                                e = w.swipeDown.call(bi, a, aP, bh, ab, W, bj)
                            }
                            break
                    }
                }
            }
            if (d == t) {
                bi.trigger("pinchStatus", [c, aJ || null, aq || 0, ab || 0, W, G, bj]);
                if (w.pinchStatus) {
                    e = w.pinchStatus.call(bi, a, c, aJ || null, aq || 0, ab || 0, W, G, bj);
                    if (e === false) {
                        return false
                    }
                }
                if (c == h && a8()) {
                    switch (aJ) {
                        case c:
                            bi.trigger("pinchIn", [aJ || null, aq || 0, ab || 0, W, G, bj]);
                            if (w.pinchIn) {
                                e = w.pinchIn.call(bi, a, aJ || null, aq || 0, ab || 0, W, G, bj)
                            }
                            break;
                        case z:
                            bi.trigger("pinchOut", [aJ || null, aq || 0, ab || 0, W, G, bj]);
                            if (w.pinchOut) {
                                e = w.pinchOut.call(bi, a, aJ || null, aq || 0, ab || 0, W, G, bj)
                            }
                            break
                    }
                }
            }
            if (d == A) {
                if (c === q || c === h) {
                    clearTimeout(bk);
                    clearTimeout(af);
                    if (Y() && !H()) {
                        N = at();
                        bk = setTimeout(f.proxy(function() {
                            N = null;
                            bi.trigger("tap", [a.target]);
                            if (w.tap) {
                                e = w.tap.call(bi, a, a.target)
                            }
                        }, this), w.doubleTapThreshold)
                    } else {
                        N = null;
                        bi.trigger("tap", [a.target]);
                        if (w.tap) {
                            e = w.tap.call(bi, a, a.target)
                        }
                    }
                }
            } else {
                if (d == j) {
                    if (c === q || c === h) {
                        clearTimeout(bk);
                        N = null;
                        bi.trigger("doubletap", [a.target]);
                        if (w.doubleTap) {
                            e = w.doubleTap.call(bi, a, a.target)
                        }
                    }
                } else {
                    if (d == b) {
                        if (c === q || c === h) {
                            clearTimeout(bk);
                            N = null;
                            bi.trigger("longtap", [a.target]);
                            if (w.longTap) {
                                e = w.longTap.call(bi, a, a.target)
                            }
                        }
                    }
                }
            }
            return e
        }

        function an() {
            var a = true;
            if (w.threshold !== null) {
                a = bh >= w.threshold
            }
            return a
        }

        function ba() {
            var a = false;
            if (w.cancelThreshold !== null && aP !== null) {
                a = (aT(aP) - bh) >= w.cancelThreshold
            }
            return a
        }

        function ae() {
            if (w.pinchThreshold !== null) {
                return aq >= w.pinchThreshold
            }
            return true
        }

        function aA() {
            var a;
            if (w.maxTimeThreshold) {
                if (ab >= w.maxTimeThreshold) {
                    a = false
                } else {
                    a = true
                }
            } else {
                a = true
            }
            return a
        }

        function al(a, b) {
            if (w.allowPageScroll === m || aX()) {
                a.preventDefault()
            } else {
                var c = w.allowPageScroll === s;
                switch (b) {
                    case p:
                        if ((w.swipeLeft && c) || (!c && w.allowPageScroll != D)) {
                            a.preventDefault()
                        }
                        break;
                    case o:
                        if ((w.swipeRight && c) || (!c && w.allowPageScroll != D)) {
                            a.preventDefault()
                        }
                        break;
                    case e:
                        if ((w.swipeUp && c) || (!c && w.allowPageScroll != u)) {
                            a.preventDefault()
                        }
                        break;
                    case x:
                        if ((w.swipeDown && c) || (!c && w.allowPageScroll != u)) {
                            a.preventDefault()
                        }
                        break
                }
            }
        }

        function a8() {
            var a = aO();
            var b = X();
            var c = ae();
            return a && b && c
        }

        function aX() {
            return !!(w.pinchStatus || w.pinchIn || w.pinchOut)
        }

        function P() {
            return !!(a8() && aX())
        }

        function aV() {
            var a = aA();
            var b = an();
            var c = aO();
            var d = X();
            var e = ba();
            var f = !e && d && c && b && a;
            return f
        }

        function V() {
            return !!(w.swipe || w.swipeStatus || w.swipeLeft || w.swipeRight || w.swipeUp || w.swipeDown)
        }

        function I() {
            return !!(aV() && V())
        }

        function aO() {
            return ((W === w.fingers || w.fingers === i) || !a)
        }

        function X() {
            return bj[0].end.x !== 0
        }

        function a6() {
            return !!(w.tap)
        }

        function Y() {
            return !!(w.doubleTap)
        }

        function aU() {
            return !!(w.longTap)
        }

        function Q() {
            if (N == null) {
                return false
            }
            var a = at();
            return (Y() && ((a - N) <= w.doubleTapThreshold))
        }

        function H() {
            return Q()
        }

        function ax() {
            return ((W === 1 || !a) && (isNaN(bh) || bh < w.threshold))
        }

        function a0() {
            return ((ab > w.longTapThreshold) && (bh < r))
        }

        function ah() {
            return !!(ax() && a6())
        }

        function aG() {
            return !!(Q() && Y())
        }

        function ap() {
            return !!(a0() && aU())
        }

        function F() {
            a5 = at();
            ad = event.touches.length + 1
        }

        function R() {
            a5 = 0;
            ad = 0
        }

        function am() {
            var a = false;
            if (a5) {
                var b = at() - a5;
                if (b <= w.fingerReleaseThreshold) {
                    a = true
                }
            }
            return a
        }

        function aB() {
            return !!(bi.data(B + "_intouch") === true)
        }

        function ao(a) {
            if (a === true) {
                bi.bind(ay, a3);
                bi.bind(U, L);
                if (S) {
                    bi.bind(S, K)
                }
            } else {
                bi.unbind(ay, a3, false);
                bi.unbind(U, L, false);
                if (S) {
                    bi.unbind(S, K, false)
                }
            }
            bi.data(B + "_intouch", a === true)
        }

        function ai(a, b) {
            var c = b.identifier !== undefined ? b.identifier : 0;
            bj[a].identifier = c;
            bj[a].start.x = bj[a].end.x = b.pageX || b.clientX;
            bj[a].start.y = bj[a].end.y = b.pageY || b.clientY;
            return bj[a]
        }

        function aH(a) {
            var b = a.identifier !== undefined ? a.identifier : 0;
            var c = ac(b);
            c.end.x = a.pageX || a.clientX;
            c.end.y = a.pageY || a.clientY;
            return c
        }

        function ac(a) {
            for (var b = 0; b < bj.length; b++) {
                if (bj[b].identifier == a) {
                    return bj[b]
                }
            }
        }

        function aj() {
            var a = [];
            for (var b = 0; b <= 5; b++) {
                a.push({
                    start: {
                        x: 0,
                        y: 0
                    },
                    end: {
                        x: 0,
                        y: 0
                    },
                    identifier: 0
                })
            }
            return a
        }

        function aI(a, b) {
            b = Math.max(b, aT(a));
            M[a].distance = b
        }

        function aT(a) {
            if (M[a]) {
                return M[a].distance
            }
            return undefined
        }

        function aa() {
            var a = {};
            a[p] = aw(p);
            a[o] = aw(o);
            a[e] = aw(e);
            a[x] = aw(x);
            return a
        }

        function aw(a) {
            return {
                direction: a,
                distance: 0
            }
        }

        function aM() {
            return a2 - T
        }

        function au(a, b) {
            var c = Math.abs(a.x - b.x);
            var d = Math.abs(a.y - b.y);
            return Math.round(Math.sqrt(c * c + d * d))
        }

        function a7(a, b) {
            var c = (b / a) * 1;
            return c.toFixed(2)
        }

        function ar() {
            if (G < 1) {
                return z
            } else {
                return c
            }
        }

        function aS(a, b) {
            return Math.round(Math.sqrt(Math.pow(b.x - a.x, 2) + Math.pow(b.y - a.y, 2)))
        }

        function aE(a, b) {
            var c = a.x - b.x;
            var d = b.y - a.y;
            var e = Math.atan2(d, c);
            var f = Math.round(e * 180 / Math.PI);
            if (f < 0) {
                f = 360 - Math.abs(f)
            }
            return f
        }

        function aL(a, b) {
            var c = aE(a, b);
            if ((c <= 45) && (c >= 0)) {
                return p
            } else {
                if ((c <= 360) && (c >= 315)) {
                    return p
                } else {
                    if ((c >= 135) && (c <= 225)) {
                        return o
                    } else {
                        if ((c > 45) && (c < 135)) {
                            return x
                        } else {
                            return e
                        }
                    }
                }
            }
        }

        function at() {
            var a = new Date();
            return a.getTime()
        }

        function aY(a) {
            a = f(a);
            var b = a.offset();
            var c = {
                left: b.left,
                right: b.left + a.outerWidth(),
                top: b.top,
                bottom: b.top + a.outerHeight()
            };
            return c
        }

        function E(a, b) {
            return (a.x > b.left && a.x < b.right && a.y > b.top && a.y < b.bottom)
        }
    }
}));

jQuery(function($) {

    $.support.placeholder = ('placeholder' in document.createElement('input'));
    if (!$.support.placeholder) {
        $('input[placeholder], textarea[placeholder]').each(function(n) {
            $input = $(this);
            $(this)
                .attr('autocomplete', 'off')
                .addClass('ie_placeholder')
                .bind('keydown keyup click blur focus change paste cut', function(e) {
                    $(this).delay(10)
                        .queue(function(n) {
                            if ($(this).val() != '') {
                                $(this)
                                    .parent()
                                    .find('>.form_placeholder')
                                    .hide();
                            } else {
                                $(this)
                                    .parent()
                                    .find('>.form_placeholder')
                                    .show();
                            }
                            n();
                        });
                })
            var svg = document.createElementNS("http://www.w3.org/2000/svg", "svg");
            svg.setAttribute('class', 'form_placeholder');
            var svgNS = svg.namespaceURI,
                text = document.createElementNS('http://www.w3.org/2000/svg', 'text');
            text.setAttribute('x', '0');
            text.setAttribute('y', parseInt($input.css('paddingTop')) + parseInt($input.css('borderTopWidth')) + parseInt($input.css('fontSize')) + 1);
            text.setAttribute('fill', $input.css('color'));
            text.textContent = $input.attr('placeholder');
            svg.appendChild(text);
            $input.parent()[0].appendChild(svg);
            $input.parent()
                .addClass('ie_placeholder_controls')
                .find('>.form_placeholder')
                .css({
                    paddingLeft: $(this).parent().find('>*[placeholder]').css('paddingLeft'),
                    borderTopWidth: 0,
                    borderBottomWidth: 0,
                    borderLeftWidth: $(this).parent().find('>*[placeholder]').css('borderLeftWidth'),
                    borderRightWidth: 0,
                    fontSize: $(this).parent().find('>*[placeholder]').css('fontSize'),
                    textAlign: $(this).parent().find('>*[placeholder]').css('textAlign')
                })
            if ($input.val() && $input.val() != '') {
                $input.parent().find('>.form_placeholder').hide();
            }
        })
    }

    $('.search-block .module_container > i.icon-search').click(function() {
        $('.search-block .module_container > div.mod-search').slideToggle();
        $('.search-block').toggleClass('active')
        if ($('.search-block').hasClass('active')) {
            $('.search-block .module_container > div.mod-search input#searchword').focus();
        }
    });

    $('.login-popup .fa-lock').click(function() {
        $('.login-popup .module_container .login_box').slideToggle();
        if ($(this).parent().find('.login_box').hasClass('shown')) {
            $(this).parent().find('.login_box').removeClass('shown');
        } else {
            $(this).parent().find('.login_box').addClass('shown');
        }
    })
    $('.login-popup input').focus(function() {
        $('.login-popup .login_box').addClass('shown2');
        $('.container').addClass('shown2');
    })
    $('.login-popup input').blur(function() {
        $('.login-popup .login_box').removeClass('shown2');
        $('.container').removeClass('shown2');
    })

    // Turn radios into btn-group
    $('.radio.btn-group label').addClass('btn');
    $(".btn-group label:not(.active)").click(function() {
        var a = $(this);
        var b = $('#' + a.attr('for'));
        if (!b.prop('checked')) {
            a.closest('.btn-group').find("label").removeClass('active btn-success btn-danger btn-primary');
            if (b.val() == '') {
                a.addClass('active btn-primary')
            } else if (b.val() == 0) {
                a.addClass('active btn-danger')
            } else {
                a.addClass('active btn-success')
            }
            b.prop('checked', true)
        }
    });
    $('fieldset#jform_published label[for*=jform_published]').each(function() {
        $(this).attr('title', $(this).text()).tooltip();
    })
    $('fieldset#jform_published label[for*=jform_published]').wrapInner('<span/>');
    $('fieldset#jform_published label[for=jform_published0]').prepend('<i class="fa fa-check"/> ');
    $('fieldset#jform_published label[for=jform_published1]').prepend('<i class="fa fa-times-circle"/> ');
    $('fieldset#jform_published label[for=jform_published2]').prepend('<i class="fa fa-trash"/> ');
    $(".btn-group input[checked]").each(function() {
        if ($(this).val() == '') {
            $("label[for=" + $(this).attr('id') + "]").addClass('active btn-primary');
        } else if ($(this).val() == 0) {
            $("label[for=" + $(this).attr('id') + "]").addClass('active btn-danger');
        } else {
            $("label[for=" + $(this).attr('id') + "]").addClass('active btn-success');
        }
    });

    $('ul li:last-child').addClass('lastItem');
    $('ul li:first-child').addClass('firstItem');

    /*Pagination Active Button*/
    $('div.pagination ul li:not([class])').addClass('num');

    // Modal Window
    $('[href="#modal"]').click(function(e) {
        $('#modal').modal({
            show: true,
            backdrop: false
        });
        e.preventDefault()
    });

    $('#modal button.modalClose').click(function(e) {
        $('#modal').modal('hide');
        e.preventDefault()
    });
    $('.modal-hide').click(function(e) {
        $('#modal').modal('hide')
    });

    var iconTest = /icon-/i;
    var iconReplace = "fa fa-";

    function iconSet() {
        $('[class*="icon-"]').each(function() {
            iconClass = $(this).attr('class');
            var a = iconClass.replace(iconTest, iconReplace);
            $(this).addClass(a)
        })
    }
    iconSet()

    function setOffset() {
        $('.item__module, .item, .row-container, .categories-module, .archive-module, .tagspopular, .mod-login__aside, .form-vertical, .mod-search__aside, .contact_details_item, .contact_misc, .contact_form, .contact_map, h1, h2, h3, h4, h5, h6').each(function(i) {
            var a = ($(this).offset().top - $(window).scrollTop()) < $(window).height(),
                scrollUp = ($(this).offset().top - $(window).scrollTop()) > -$(this).height();
            if (a && scrollUp) {
                $(this).addClass('visible');
                $(this).addClass('visible-first')
            } else {
                $(this).removeClass('visible')
            }
        })
    }

    setOffset()
    $(window).resize($.throttle(500, setOffset));
    $(window).scroll($.throttle(500, setOffset));

    // hide #back-top first
    $("#back-top").hide();

    // fade in #back-top
    $(window).scroll(function() {
        if ($(this).scrollTop() > 100) {
            $('#back-top').fadeIn();
        } else {
            $('#back-top').fadeOut();
        }
        if ($(this).scrollTop() > 30) {
            $('body:first').addClass('scrolled');
        } else {
            $('body:first').removeClass('scrolled');
        }
    });

    var $scrollEl = ($.browser.mozilla || $.browser.msie) ? $('html') : $('body');

    // scroll body to 0px on click
    $('#back-top a').click(function() {
        $scrollEl.animate({
            scrollTop: 0
        }, 400);
        return false
    });

    // Calendar position fix
    if ($('#jform_profile_dob_img').length && $.browser.msie) {
        var h = $('#jform_profile_dob_img').offset().top - 202;
        $('head').append('<style> .calendar { top:' + h + 'px !important;}</style>');
    }

    if ($.browser.msie) {
        $('.lazy_container').each(function() {
            $(this).parent('a').not('.fancybox-thumb').attr({
                style: $(this).attr('style')
            }).parent('.img-intro__left, .img-intro__right').attr({
                style: $(this).attr('style')
            });
        })
    }
    $('.page-category__faqs .items-row').not('.row-0').find('.span12').prepend('<div class="to_top"><a href="#"><i class="fa fa-chevron-up"></i></a></div>').find('.to_top a').click(function() {
        $scrollEl.animate({
            scrollTop: 0
        }, 400);
        return false;
    })
});

autosize(document.querySelectorAll('textarea'));