module iup;

public import iup.iup, iup.key, iup.config, iup.controls, iup.gl, iup.glcontrols,
    iup.im, iup.matrixex, iup.mglplot, iup.ole, iup.plot, iup.pplot, iup.scintilla, iup.tuio, iup.web;

/*
struct Iup {
    template opDispatch(string name, Args...) {
        static auto concatArgs(size_t n, Args...)() {
            static if (n == 0 || Args.length == 0) {
                return "";
            } else {
                import std.conv;
                static if (is(Args[0] == string))
                    return "args[" ~ (n-Args.length).to!string ~ "].ptr, " ~ concatArgs!(n, Args[1..$]);
                else
                    return "args[" ~ (n-Args.length).to!string ~ "], " ~ concatArgs!(n, Args[1..$]);
            }
        }

        pragma(msg, name);
        mixin(`static if (is(` ~ name ~ `)) {
            alias opDispatch = ` ~ name ~ `;
        } else {
            pragma(inline, true):
            static auto opDispatch(Args...)(Args args) {
                pragma(msg, typeof(args).stringof);
                enum callStr = "Iup" ~ name ~ "(" ~ concatArgs!(Args.length, Args) ~ ")";
                static if (is(typeof(mixin(callStr)))) {
                    pragma(msg, concatArgs!(Args.length, Args));
                    return mixin(callStr);
                } else static if (is(typeof(IUP_` ~ name ~ `))) {
                    return IUP_` ~ name ~ `;
                } else {
                    static assert(false, "Invalid identifier: ` ~ name ~ `");
                }
            }
        }`);
    }
}
*/