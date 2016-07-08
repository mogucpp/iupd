module iup.iup;

enum const(char) * IUP_NAME = "IUP - Portable User Interface";
enum const(char) * IUP_DESCRIPTION = "Multi-platform Toolkit for Building Graphical User Interfaces";
enum const(char) * IUP_COPYRIGHT = "Copyright (C) 1994-2016 Tecgraf/PUC-Rio";
enum const(char) * IUP_VERSION = "3.18"         /* bug fixes are reported only by IupVersion functions */;
enum IUP_VERSION_NUMBER = 318000;
enum const(char) * IUP_VERSION_DATE = "2016/03/21"  /* does not include bug fix releases */;

extern(C) {
    struct Ihandle_;
    alias Ihandle = Ihandle_;
    alias Icallback = int function(Ihandle *);

    /************************************************************************/
    /*                        Main API                                      */
    /************************************************************************/

    int       IupOpen          (int *argc, char ***argv);
    void      IupClose         ();
    void      IupImageLibOpen  ();

    int       IupMainLoop      ();
    int       IupLoopStep      ();
    int       IupLoopStepWait  ();
    int       IupMainLoopLevel ();
    void      IupFlush         ();
    void      IupExitLoop      ();

    int       IupRecordInput(const(char) * filename, int mode);
    int       IupPlayInput(const(char) * filename);

    void      IupUpdate        (Ihandle* ih);
    void      IupUpdateChildren(Ihandle* ih);
    void      IupRedraw        (Ihandle* ih, int children);
    void      IupRefresh       (Ihandle* ih);
    void      IupRefreshChildren(Ihandle* ih);

    int       IupExecute(const(char) *filename, const(char) * parameters);
    int       IupHelp(const(char) * url);

    char*     IupLoad          (const(char) *filename);
    char*     IupLoadBuffer    (const(char) *buffer);

    char*     IupVersion       ();
    char*     IupVersionDate   ();
    int       IupVersionNumber ();

    void      IupSetLanguage   (const(char) *lng);
    char*     IupGetLanguage   ();
    void      IupSetLanguageString(const(char) * name, const(char) * str);
    void      IupStoreLanguageString(const(char) * name, const(char) * str);
    char*     IupGetLanguageString(const(char) * name);
    void      IupSetLanguagePack(Ihandle* ih);

    void      IupDestroy      (Ihandle* ih);
    void      IupDetach       (Ihandle* child);
    Ihandle*  IupAppend       (Ihandle* ih, Ihandle* child);
    Ihandle*  IupInsert       (Ihandle* ih, Ihandle* ref_child, Ihandle* child);
    Ihandle*  IupGetChild     (Ihandle* ih, int pos);
    int       IupGetChildPos  (Ihandle* ih, Ihandle* child);
    int       IupGetChildCount(Ihandle* ih);
    Ihandle*  IupGetNextChild (Ihandle* ih, Ihandle* child);
    Ihandle*  IupGetBrother   (Ihandle* ih);
    Ihandle*  IupGetParent    (Ihandle* ih);
    Ihandle*  IupGetDialog    (Ihandle* ih);
    Ihandle*  IupGetDialogChild(Ihandle* ih, const(char) * name);
    int       IupReparent     (Ihandle* ih, Ihandle* new_parent, Ihandle* ref_child);

    int       IupPopup         (Ihandle* ih, int x, int y);
    int       IupShow          (Ihandle* ih);
    int       IupShowXY        (Ihandle* ih, int x, int y);
    int       IupHide          (Ihandle* ih);
    int       IupMap           (Ihandle* ih);
    void      IupUnmap         (Ihandle *ih);

    void      IupResetAttribute(Ihandle *ih, const(char) * name);
    int       IupGetAllAttributes(Ihandle* ih, char** names, int n);
    Ihandle*  IupSetAtt(const(char) * handle_name, Ihandle* ih, const(char) * name, ...);
    Ihandle*  IupSetAttributes (Ihandle* ih, const(char) *str);
    char*     IupGetAttributes (Ihandle* ih);

    void      IupSetAttribute   (Ihandle* ih, const(char) * name, const(char) * value);
    void      IupSetStrAttribute(Ihandle* ih, const(char) * name, const(char) * value);
    void      IupSetStrf        (Ihandle* ih, const(char) * name, const(char) * format, ...);
    void      IupSetInt         (Ihandle* ih, const(char) * name, int value);
    void      IupSetFloat       (Ihandle* ih, const(char) * name, float value);
    void      IupSetDouble      (Ihandle* ih, const(char) * name, double value);
    void      IupSetRGB         (Ihandle *ih, const(char) * name, ubyte r, ubyte g, ubyte b);

    char*     IupGetAttribute(Ihandle* ih, const(char) * name);
    int       IupGetInt      (Ihandle* ih, const(char) * name);
    int       IupGetInt2     (Ihandle* ih, const(char) * name);
    int       IupGetIntInt   (Ihandle *ih, const(char) * name, int *i1, int *i2);
    float     IupGetFloat    (Ihandle* ih, const(char) * name);
    double    IupGetDouble(Ihandle* ih, const(char) * name);
    void      IupGetRGB      (Ihandle *ih, const(char) * name, ubyte *r, ubyte *g, ubyte *b);

    void  IupSetAttributeId(Ihandle *ih, const(char) * name, int id, const(char) *value);
    void  IupSetStrAttributeId(Ihandle *ih, const(char) * name, int id, const(char) *value);
    void  IupSetStrfId(Ihandle *ih, const(char) * name, int id, const(char) * format, ...);
    void  IupSetIntId(Ihandle* ih, const(char) * name, int id, int value);
    void  IupSetFloatId(Ihandle* ih, const(char) * name, int id, float value);
    void  IupSetDoubleId(Ihandle* ih, const(char) * name, int id, double value);
    void  IupSetRGBId(Ihandle *ih, const(char) * name, int id, ubyte r, ubyte g, ubyte b);

    char*  IupGetAttributeId(Ihandle *ih, const(char) * name, int id);
    int    IupGetIntId(Ihandle *ih, const(char) * name, int id);
    float  IupGetFloatId(Ihandle *ih, const(char) * name, int id);
    double IupGetDoubleId(Ihandle *ih, const(char) * name, int id);
    void   IupGetRGBId(Ihandle *ih, const(char) * name, int id, ubyte *r, ubyte *g, ubyte *b);

    void  IupSetAttributeId2(Ihandle* ih, const(char) * name, int lin, int col, const(char) * value);
    void  IupSetStrAttributeId2(Ihandle* ih, const(char) * name, int lin, int col, const(char) * value);
    void  IupSetStrfId2(Ihandle* ih, const(char) * name, int lin, int col, const(char) * format, ...);
    void  IupSetIntId2(Ihandle* ih, const(char) * name, int lin, int col, int value);
    void  IupSetFloatId2(Ihandle* ih, const(char) * name, int lin, int col, float value);
    void  IupSetDoubleId2(Ihandle* ih, const(char) * name, int lin, int col, double value);
    void  IupSetRGBId2(Ihandle *ih, const(char) * name, int lin, int col, ubyte r, ubyte g, ubyte b);

    char*  IupGetAttributeId2(Ihandle* ih, const(char) * name, int lin, int col);
    int    IupGetIntId2(Ihandle* ih, const(char) * name, int lin, int col);
    float  IupGetFloatId2(Ihandle* ih, const(char) * name, int lin, int col);
    double IupGetDoubleId2(Ihandle* ih, const(char) * name, int lin, int col);
    void   IupGetRGBId2(Ihandle *ih, const(char) * name, int lin, int col, ubyte *r, ubyte *g, ubyte *b);

    void      IupSetGlobal  (const(char) * name, const(char) * value);
    void      IupSetStrGlobal(const(char) * name, const(char) * value);
    char*     IupGetGlobal  (const(char) * name);

    Ihandle*  IupSetFocus     (Ihandle* ih);
    Ihandle*  IupGetFocus     ();
    Ihandle*  IupPreviousField(Ihandle* ih);
    Ihandle*  IupNextField    (Ihandle* ih);

    Icallback IupGetCallback (Ihandle* ih, const(char) *name);
    Icallback IupSetCallback (Ihandle* ih, const(char) *name, Icallback func);
    Ihandle*  IupSetCallbacks(Ihandle* ih, const(char) *name, Icallback func, ...);

    Icallback IupGetFunction(const(char) *name);
    Icallback IupSetFunction(const(char) *name, Icallback func);

    Ihandle*  IupGetHandle    (const(char) *name);
    Ihandle*  IupSetHandle    (const(char) *name, Ihandle* ih);
    int       IupGetAllNames  (char** names, int n);
    int       IupGetAllDialogs(char** names, int n);
    char*     IupGetName      (Ihandle* ih);

    void      IupSetAttributeHandle(Ihandle* ih, const(char) * name, Ihandle* ih_named);
    Ihandle*  IupGetAttributeHandle(Ihandle* ih, const(char) * name);

    char*     IupGetClassName(Ihandle* ih);
    char*     IupGetClassType(Ihandle* ih);
    int       IupGetAllClasses(char** names, int n);
    int       IupGetClassAttributes(const(char) * classname, char** names, int n);
    int       IupGetClassCallbacks(const(char) * classname, char** names, int n);
    void      IupSaveClassAttributes(Ihandle* ih);
    void      IupCopyClassAttributes(Ihandle* src_ih, Ihandle* dst_ih);
    void      IupSetClassDefaultAttribute(const(char) * classname, const(char) *name, const(char) * value);
    int       IupClassMatch(Ihandle* ih, const(char) * classname);

    Ihandle*  IupCreate (const(char) *classname);
    Ihandle*  IupCreatev(const(char) *classname, void* *params);
    Ihandle*  IupCreatep(const(char) *classname, void *first, ...);

    /************************************************************************/
    /*                        Elements                                      */
    /************************************************************************/

    Ihandle*  IupFill       ();
    Ihandle*  IupRadio      (Ihandle* child);
    Ihandle*  IupVbox       (Ihandle* child, ...);
    Ihandle*  IupVboxv      (Ihandle* *children);
    Ihandle*  IupZbox       (Ihandle* child, ...);
    Ihandle*  IupZboxv      (Ihandle* *children);
    Ihandle*  IupHbox       (Ihandle* child,...);
    Ihandle*  IupHboxv      (Ihandle* *children);

    Ihandle*  IupNormalizer (Ihandle* ih_first, ...);
    Ihandle*  IupNormalizerv(Ihandle* *ih_list);

    Ihandle*  IupCbox       (Ihandle* child, ...);
    Ihandle*  IupCboxv      (Ihandle* *children);
    Ihandle*  IupSbox       (Ihandle *child);
    Ihandle*  IupSplit      (Ihandle* child1, Ihandle* child2);
    Ihandle*  IupScrollBox  (Ihandle* child);
    Ihandle*  IupGridBox    (Ihandle* child, ...);
    Ihandle*  IupGridBoxv   (Ihandle **children);
    Ihandle*  IupExpander   (Ihandle *child);
    Ihandle*  IupDetachBox  (Ihandle *child);
    Ihandle*  IupBackgroundBox(Ihandle *child);

    Ihandle*  IupFrame      (Ihandle* child);

    Ihandle*  IupImage      (int width, int height, const ubyte *pixmap);
    Ihandle*  IupImageRGB   (int width, int height, const ubyte *pixmap);
    Ihandle*  IupImageRGBA  (int width, int height, const ubyte *pixmap);

    Ihandle*  IupItem       (const(char) * title, const(char) * action);
    Ihandle*  IupSubmenu    (const(char) * title, Ihandle* child);
    Ihandle*  IupSeparator  ();
    Ihandle*  IupMenu       (Ihandle* child,...);
    Ihandle*  IupMenuv      (Ihandle* *children);

    Ihandle*  IupButton     (const(char) * title, const(char) * action);
    Ihandle*  IupCanvas     (const(char) * action);
    Ihandle*  IupDialog     (Ihandle* child);
    Ihandle*  IupUser       ();
    Ihandle*  IupLabel      (const(char) * title);
    Ihandle*  IupList       (const(char) * action);
    Ihandle*  IupText       (const(char) * action);
    Ihandle*  IupMultiLine  (const(char) * action);
    Ihandle*  IupToggle     (const(char) * title, const(char) * action);
    Ihandle*  IupTimer      ();
    Ihandle*  IupClipboard  ();
    Ihandle*  IupProgressBar();
    Ihandle*  IupVal        (const(char) *type);
    Ihandle*  IupTabs       (Ihandle* child, ...);
    Ihandle*  IupTabsv      (Ihandle* *children);
    Ihandle*  IupTree       ();
    Ihandle*  IupLink       (const(char) * url, const(char) * title);
    Ihandle*  IupFlatButton (const(char) * title);
    Ihandle*  IupAnimatedLabel(Ihandle* animation);
    Ihandle*  IupDatePick   ();
    Ihandle*  IupCalendar   ();

    /* Old controls, use SPIN attribute of IupText */
    Ihandle*  IupSpin       ();
    Ihandle*  IupSpinbox    (Ihandle* child);


    /************************************************************************/
    /*                      Utilities                                       */
    /************************************************************************/

    /* String compare utility */
    int IupStringCompare(const(char) * str1, const(char) * str2, int casesensitive, int lexicographic);

    /* IupImage utility */
    int IupSaveImageAsText(Ihandle* ih, const(char) * file_name, const(char) * format, const(char) * name);

    /* IupText and IupScintilla utilities */
    void  IupTextConvertLinColToPos(Ihandle* ih, int lin, int col, int *pos);
    void  IupTextConvertPosToLinCol(Ihandle* ih, int pos, int *lin, int *col);

    /* IupText, IupList, IupTree, IupMatrix and IupScintilla utility */
    int   IupConvertXYToPos(Ihandle* ih, int x, int y);

    /* IupTree utilities */
    int   IupTreeSetUserId(Ihandle* ih, int id, void* userid);
    void* IupTreeGetUserId(Ihandle* ih, int id);
    int   IupTreeGetId(Ihandle* ih, void *userid);
    void  IupTreeSetAttributeHandle(Ihandle* ih, const(char) * name, int id, Ihandle* ih_named);


    /************************************************************************/
    /*                      Pre-defined dialogs                           */
    /************************************************************************/

    Ihandle* IupFileDlg();
    Ihandle* IupMessageDlg();
    Ihandle* IupColorDlg();
    Ihandle* IupFontDlg();
    Ihandle* IupProgressDlg();

    int  IupGetFile(char *arq);
    void IupMessage(const(char) *title, const(char) *msg);
    void IupMessagef(const(char) *title, const(char) *format, ...);
    int  IupAlarm(const(char) *title, const(char) *msg, const(char) *b1, const(char) *b2, const(char) *b3);
    int  IupScanf(const(char) *format, ...);
    int  IupListDialog(int type, const(char) *title, int size, const(char) ** list,
                    int op, int max_col, int max_lin, int* marks);
    int  IupGetText(const(char) * title, char* text, int maxsize);
    int  IupGetColor(int x, int y, ubyte* r, ubyte* g, ubyte* b);

    alias Iparamcb = int function(Ihandle* dialog, int param_index, void* user_data);
    int IupGetParam(const(char) * title, Iparamcb action, void* user_data, const(char) * format,...);
    int IupGetParamv(const(char) * title, Iparamcb action, void* user_data, const(char) * format, int param_count, int param_extra, void** param_data);
    Ihandle* IupParamf(const(char) * format);
    Ihandle* IupParamBox(Ihandle* parent, Ihandle** params, int count);

    Ihandle* IupLayoutDialog(Ihandle* dialog);
    Ihandle* IupElementPropertiesDialog(Ihandle* elem);
}


/************************************************************************/
/*                   Common Flags and Return Values                     */
/************************************************************************/
enum IUP_ERROR      = 1;
enum IUP_NOERROR    = 0;
enum IUP_OPENED     = -1;
enum IUP_INVALID    = -1;
enum IUP_INVALID_ID = -10;


/************************************************************************/
/*                   Callback Return Values                             */
/************************************************************************/
enum IUP_IGNORE   = -1;
enum IUP_DEFAULT  = -2;
enum IUP_CLOSE    = -3;
enum IUP_CONTINUE = -4;

/************************************************************************/
/*           IupPopup and IupShowXY Parameter Values                    */
/************************************************************************/
enum IUP_CENTER       = 0xFFFF  /* 65535 */;
enum IUP_LEFT         = 0xFFFE  /* 65534 */;
enum IUP_RIGHT        = 0xFFFD  /* 65533 */;
enum IUP_MOUSEPOS     = 0xFFFC  /* 65532 */;
enum IUP_CURRENT      = 0xFFFB  /* 65531 */;
enum IUP_CENTERPARENT = 0xFFFA  /* 65530 */;
enum IUP_TOP          = IUP_LEFT;
enum IUP_BOTTOM       = IUP_RIGHT;

/************************************************************************/
/*               SHOW_CB Callback Values                                */
/************************************************************************/
enum{IUP_SHOW, IUP_RESTORE, IUP_MINIMIZE, IUP_MAXIMIZE, IUP_HIDE};

/************************************************************************/
/*               SCROLL_CB Callback Values                              */
/************************************************************************/
enum{IUP_SBUP,   IUP_SBDN,    IUP_SBPGUP,   IUP_SBPGDN,    IUP_SBPOSV, IUP_SBDRAGV,
     IUP_SBLEFT, IUP_SBRIGHT, IUP_SBPGLEFT, IUP_SBPGRIGHT, IUP_SBPOSH, IUP_SBDRAGH};

/************************************************************************/
/*               Mouse Button Values and Macros                         */
/************************************************************************/
enum IUP_BUTTON1 = '1';
enum IUP_BUTTON2 = '2';
enum IUP_BUTTON3 = '3';
enum IUP_BUTTON4 = '4';
enum IUP_BUTTON5 = '5';

pragma(inline, true) {
    auto iup_isshift(T)(T s)    { return s[0] == 'S'; }
    auto iup_iscontrol(T)(T s)  { return s[1] == 'C'; }
    auto iup_isbutton1(T)(T s)  { return s[2] == '1'; }
    auto iup_isbutton2(T)(T s)  { return s[3] == '2'; }
    auto iup_isbutton3(T)(T s)  { return s[4] == '3'; }
    auto iup_isdouble(T)(T s)   { return s[5] == 'D'; }
    auto iup_isalt(T)(T s)      { return s[6] == 'A'; }
    auto iup_issys(T)(T s)      { return s[7] == 'Y'; }
    auto iup_isbutton4(T)(T s)  { return s[8] == '4'; }
    auto iup_isbutton5(T)(T s)  { return s[9] == '5'; }
}

/************************************************************************/
/*                      Pre-Defined Masks                               */
/************************************************************************/
enum const(char) * IUP_MASK_FLOAT       = "[+/-]?(/d+/.?/d*|/./d+)";
enum const(char) * IUP_MASK_UFLOAT      = "(/d+/.?/d*|/./d+)";
enum const(char) * IUP_MASK_EFLOAT      = "[+/-]?(/d+/.?/d*|/./d+)([eE][+/-]?/d+)?";
enum const(char) * IUP_MASK_FLOATCOMMA  = "[+/-]?(/d+/,?/d*|/,/d+)";
enum const(char) * IUP_MASK_UFLOATCOMMA = "(/d+/,?/d*|/,/d+)";
enum const(char) * IUP_MASK_INT         = "[+/-]?/d+";
enum const(char) * IUP_MASK_UINT        = "/d+";


/************************************************************************/
/*                   IupGetParam Callback situations                    */
/************************************************************************/
enum IUP_GETPARAM_BUTTON1 = -1;
enum IUP_GETPARAM_INIT    = -2;
enum IUP_GETPARAM_BUTTON2 = -3;
enum IUP_GETPARAM_BUTTON3 = -4;
enum IUP_GETPARAM_CLOSE   = -5;
enum IUP_GETPARAM_OK      = IUP_GETPARAM_BUTTON1;
enum IUP_GETPARAM_CANCEL  = IUP_GETPARAM_BUTTON2;
enum IUP_GETPARAM_HELP    = IUP_GETPARAM_BUTTON3;


/************************************************************************/
/*                   Record Input Modes                                 */
/************************************************************************/
enum {IUP_RECBINARY, IUP_RECTEXT};

