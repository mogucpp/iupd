module iup.gl;

import iup.iup: Ihandle;

/* Attributes
** To set the appropriate visual (pixel format) the following
** attributes may be specified. Their values should be set
** before the canvas is mapped to the scrren.
** After mapping, changing their values has no effect.
*/
/* IUP_SINGLE (defaut) or IUP_DOUBLE */
enum const(char) * IUP_BUFFER = "BUFFER";
/* IUP_NO (defaut) or IUP_YES */
enum const(char) * IUP_STEREO = "STEREO";
/* Number of bits if index mode */
enum const(char) * IUP_BUFFER_SIZE = "BUFFER_SIZE";
/* Number of red bits */
enum const(char) * IUP_RED_SIZE = "RED_SIZE";
/* Number of green bits */
enum const(char) * IUP_GREEN_SIZE = "GREEN_SIZE";
/* Number of blue bits */
enum const(char) * IUP_BLUE_SIZE = "BLUE_SIZE";
/* Number of alpha bits */
enum const(char) * IUP_ALPHA_SIZE = "ALPHA_SIZE";
/* Number of bits in depth buffer */
enum const(char) * IUP_DEPTH_SIZE = "DEPTH_SIZE";
/* Number of bits in stencil buffer */
enum const(char) * IUP_STENCIL_SIZE = "STENCIL_SIZE";
/* Number of red bits in accum. buffer */
enum const(char) * IUP_ACCUM_RED_SIZE = "ACCUM_RED_SIZE";
/* Number of green bits in accum. buffer */
enum const(char) * IUP_ACCUM_GREEN_SIZE = "ACCUM_GREEN_SIZE";
/* Number of blue bits in accum. buffer */
enum const(char) * IUP_ACCUM_BLUE_SIZE = "ACCUM_BLUE_SIZE";
/* Number of alpha bits in accum. buffer */
enum const(char) * IUP_ACCUM_ALPHA_SIZE = "ACCUM_ALPHA_SIZE";

/* Attribute values */

enum const(char) * IUP_DOUBLE = "DOUBLE";

enum const(char) * IUP_SINGLE = "SINGLE";

enum const(char) * IUP_INDEX = "INDEX";

enum const(char) * IUP_RGBA = "RGBA";

enum const(char) * IUP_YES = "YES";

enum const(char) * IUP_NO = "NO";

extern(C) {
    void IupGLCanvasOpen();

    Ihandle *IupGLCanvas(const char *action);
    Ihandle* IupGLBackgroundBox(Ihandle* child);

    void IupGLMakeCurrent(Ihandle* ih);
    int IupGLIsCurrent(Ihandle* ih);
    void IupGLSwapBuffers(Ihandle* ih);
    void IupGLPalette(Ihandle* ih, int index, float r, float g, float b);
    void IupGLUseFont(Ihandle* ih, int first, int count, int list_base);
    void IupGLWait(int gl);
}
