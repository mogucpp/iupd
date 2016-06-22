module iup.key;

static immutable K_SP          = ' ';   /* 32 (0x20) */
static immutable K_exclam      = '!';   /* 33 */
static immutable K_quotedbl    = '\"';  /* 34 */
static immutable K_numbersign  = '#';   /* 35 */
static immutable K_dollar      = '$';   /* 36 */
static immutable K_percent     = '%';   /* 37 */
static immutable K_ampersand   = '&';   /* 38 */
static immutable K_apostrophe  = '\'';  /* 39 */
static immutable K_parentleft  = '(';   /* 40 */
static immutable K_parentright = ')';   /* 41 */
static immutable K_asterisk    = '*';   /* 42 */
static immutable K_plus        = '+';   /* 43 */
static immutable K_comma       = ',';   /* 44 */
static immutable K_minus       = '-';   /* 45 */
static immutable K_period      = '.';   /* 46 */
static immutable K_slash       = '/';   /* 47 */
static immutable K_0           = '0';   /* 48 (0x30) */
static immutable K_1           = '1';   /* 49 */
static immutable K_2           = '2';   /* 50 */
static immutable K_3           = '3';   /* 51 */
static immutable K_4           = '4';   /* 52 */
static immutable K_5           = '5';   /* 53 */
static immutable K_6           = '6';   /* 54 */
static immutable K_7           = '7';   /* 55 */
static immutable K_8           = '8';   /* 56 */
static immutable K_9           = '9';   /* 57 */
static immutable K_colon       = ':';   /* 58 */
static immutable K_semicolon   = ';';   /* 59 */
static immutable K_less        = '<';   /* 60 */
static immutable K_equal       = '=';   /* 61 */
static immutable K_greater     = '>';   /* 62 */
static immutable K_question    = '?';   /* 63 */
static immutable K_at          = '@';   /* 64 */
static immutable K_A           = 'A';   /* 65 (0x41) */
static immutable K_B           = 'B';   /* 66 */
static immutable K_C           = 'C';   /* 67 */
static immutable K_D           = 'D';   /* 68 */
static immutable K_E           = 'E';   /* 69 */
static immutable K_F           = 'F';   /* 70 */
static immutable K_G           = 'G';   /* 71 */
static immutable K_H           = 'H';   /* 72 */
static immutable K_I           = 'I';   /* 73 */
static immutable K_J           = 'J';   /* 74 */
static immutable K_K           = 'K';   /* 75 */
static immutable K_L           = 'L';   /* 76 */
static immutable K_M           = 'M';   /* 77 */
static immutable K_N           = 'N';   /* 78 */
static immutable K_O           = 'O';   /* 79 */
static immutable K_P           = 'P';   /* 80 */
static immutable K_Q           = 'Q';   /* 81 */
static immutable K_R           = 'R';   /* 82 */
static immutable K_S           = 'S';   /* 83 */
static immutable K_T           = 'T';   /* 84 */
static immutable K_U           = 'U';   /* 85 */
static immutable K_V           = 'V';   /* 86 */
static immutable K_W           = 'W';   /* 87 */
static immutable K_X           = 'X';   /* 88 */
static immutable K_Y           = 'Y';   /* 89 */
static immutable K_Z           = 'Z';   /* 90 */
static immutable K_bracketleft = '[';   /* 91 */
static immutable K_backslash   = '\\';  /* 92 */
static immutable K_bracketright= ']';  /* 93 */
static immutable K_circum      = '^';   /* 94 */
static immutable K_underscore  = '_';   /* 95 */
static immutable K_grave       = '`';   /* 96 */
static immutable K_a           = 'a';   /* 97 (0x61) */
static immutable K_b           = 'b';   /* 98 */
static immutable K_c           = 'c';   /* 99 */
static immutable K_d           = 'd';   /* 100 */
static immutable K_e           = 'e';   /* 101 */
static immutable K_f           = 'f';   /* 102 */
static immutable K_g           = 'g';   /* 103 */
static immutable K_h           = 'h';   /* 104 */
static immutable K_i           = 'i';   /* 105 */
static immutable K_j           = 'j';   /* 106 */
static immutable K_k           = 'k';   /* 107 */
static immutable K_l           = 'l';   /* 108 */
static immutable K_m           = 'm';   /* 109 */
static immutable K_n           = 'n';   /* 110 */
static immutable K_o           = 'o';   /* 111 */
static immutable K_p           = 'p';   /* 112 */
static immutable K_q           = 'q';   /* 113 */
static immutable K_r           = 'r';   /* 114 */
static immutable K_s           = 's';   /* 115 */
static immutable K_t           = 't';   /* 116 */
static immutable K_u           = 'u';   /* 117 */
static immutable K_v           = 'v';   /* 118 */
static immutable K_w           = 'w';   /* 119 */
static immutable K_x           = 'x';   /* 120 */
static immutable K_y           = 'y';   /* 121 */
static immutable K_z           = 'z';   /* 122 */
static immutable K_braceleft   = '{';   /* 123 */
static immutable K_bar         = '|';   /* 124 */
static immutable K_braceright  = '}';   /* 125 */
static immutable K_tilde       = '~';   /* 126 (0x7E) */

/* Printable ASCii keys */

pragma(inline, true):
auto iup_isprint(T)(T v) {
    return v > 31 && v < 127;
}

/* also define the escape sequences that have keys associated */

static immutable K_BS     = '\b';       /* 8 */
static immutable K_TAB    = '\t';       /* 9 */
static immutable K_LF     = '\n';       /* 10 (0x0A) not a real key, is a combination of CR with a modifier, just to document */
static immutable K_CR     = '\r';       /* 13 (0x0D) */

/* IUP Extended Key Codes, range start at 128      */

pragma(inline, true):
auto iup_isXkey(T)(T v) {
    return v >= 128;
}

/* These use the same definition as X11 and GDK.
   This also means that any X11 or GDK definition can also be used. */

static immutable K_PAUSE    = 0xFF13;
static immutable K_ESC      = 0xFF1B;
static immutable K_HOME     = 0xFF50;
static immutable K_LEFT     = 0xFF51;
static immutable K_UP       = 0xFF52;
static immutable K_RIGHT    = 0xFF53;
static immutable K_DOWN     = 0xFF54;
static immutable K_PGUP     = 0xFF55;
static immutable K_PGDN     = 0xFF56;
static immutable K_END      = 0xFF57;
static immutable K_MIDDLE   = 0xFF0B;
static immutable K_Print    = 0xFF61;
static immutable K_INS      = 0xFF63;
static immutable K_Menu     = 0xFF67;
static immutable K_DEL      = 0xFFFF;
static immutable K_F1       = 0xFFBE;
static immutable K_F2       = 0xFFBF;
static immutable K_F3       = 0xFFC0;
static immutable K_F4       = 0xFFC1;
static immutable K_F5       = 0xFFC2;
static immutable K_F6       = 0xFFC3;
static immutable K_F7       = 0xFFC4;
static immutable K_F8       = 0xFFC5;
static immutable K_F9       = 0xFFC6;
static immutable K_F10      = 0xFFC7;
static immutable K_F11      = 0xFFC8;
static immutable K_F12      = 0xFFC9;

/* no Shift/Ctrl/Alt */
static immutable K_LSHIFT   = 0xFFE1;
static immutable K_RSHIFT   = 0xFFE2;
static immutable K_LCTRL    = 0xFFE3;
static immutable K_RCTRL    = 0xFFE4;
static immutable K_LALT     = 0xFFE9;
static immutable K_RALT     = 0xFFEA;

static immutable K_NUM      = 0xFF7F;
static immutable K_SCROLL   = 0xFF14;
static immutable K_CAPS     = 0xFFE5;

/* Also, these are the same as the Latin-1 definition */

static immutable K_ccedilla  = 0x00E7;
static immutable K_Ccedilla  = 0x00C7;
static immutable K_acute     = 0x00B4  /* no Shift/Ctrl/Alt */;
static immutable K_diaeresis = 0x00A8;

/******************************************************/
/* Modifiers use last 4 bits. Since IUP 3.9           */
/* These modifiers definitions are specific to IUP    */
/******************************************************/

pragma(inline, true) {
    auto iup_isShiftXkey(T)(T v) { return v & 0x10000000; }
    auto iup_isCtrlXkey (T)(T v) { return v & 0x20000000; }
    auto iup_isAltXkey  (T)(T v) { return v & 0x40000000; }
    auto iup_isSysXkey  (T)(T v) { return v & 0x80000000; }

    auto iup_XkeyBase (T)(T v) { return v & 0x0FFFFFFF; }
    auto iup_XkeyShift(T)(T v) { return v | 0x10000000; }   /* Shift  */
    auto iup_XkeyCtrl (T)(T v) { return v | 0x20000000; }   /* Ctrl   */
    auto iup_XkeyAlt  (T)(T v) { return v | 0x40000000; }   /* Alt    */
    auto iup_XkeySys  (T)(T v) { return v | 0x80000000; }   /* Sys (Win or Apple) */
}

/* These definitions are here for backward compatibility
   and to simplify some key combination usage.
   But since IUP 3.9, modifiers can be combined with any key
   and they can be mixed togheter. */

static immutable K_sHOME    = iup_XkeyShift(K_HOME   );
static immutable K_sUP      = iup_XkeyShift(K_UP     );
static immutable K_sPGUP    = iup_XkeyShift(K_PGUP   );
static immutable K_sLEFT    = iup_XkeyShift(K_LEFT   );
static immutable K_sMIDDLE  = iup_XkeyShift(K_MIDDLE );
static immutable K_sRIGHT   = iup_XkeyShift(K_RIGHT  );
static immutable K_sEND     = iup_XkeyShift(K_END    );
static immutable K_sDOWN    = iup_XkeyShift(K_DOWN   );
static immutable K_sPGDN    = iup_XkeyShift(K_PGDN   );
static immutable K_sINS     = iup_XkeyShift(K_INS    );
static immutable K_sDEL     = iup_XkeyShift(K_DEL    );
static immutable K_sSP      = iup_XkeyShift(K_SP     );
static immutable K_sTAB     = iup_XkeyShift(K_TAB    );
static immutable K_sCR      = iup_XkeyShift(K_CR     );
static immutable K_sBS      = iup_XkeyShift(K_BS     );
static immutable K_sPAUSE   = iup_XkeyShift(K_PAUSE  );
static immutable K_sESC     = iup_XkeyShift(K_ESC    );
static immutable K_sF1      = iup_XkeyShift(K_F1     );
static immutable K_sF2      = iup_XkeyShift(K_F2     );
static immutable K_sF3      = iup_XkeyShift(K_F3     );
static immutable K_sF4      = iup_XkeyShift(K_F4     );
static immutable K_sF5      = iup_XkeyShift(K_F5     );
static immutable K_sF6      = iup_XkeyShift(K_F6     );
static immutable K_sF7      = iup_XkeyShift(K_F7     );
static immutable K_sF8      = iup_XkeyShift(K_F8     );
static immutable K_sF9      = iup_XkeyShift(K_F9     );
static immutable K_sF10     = iup_XkeyShift(K_F10    );
static immutable K_sF11     = iup_XkeyShift(K_F11    );
static immutable K_sF12     = iup_XkeyShift(K_F12    );
static immutable K_sPrint   = iup_XkeyShift(K_Print  );
static immutable K_sMenu    = iup_XkeyShift(K_Menu   );

static immutable K_cHOME     = iup_XkeyCtrl(K_HOME    );
static immutable K_cUP       = iup_XkeyCtrl(K_UP      );
static immutable K_cPGUP     = iup_XkeyCtrl(K_PGUP    );
static immutable K_cLEFT     = iup_XkeyCtrl(K_LEFT    );
static immutable K_cMIDDLE   = iup_XkeyCtrl(K_MIDDLE  );
static immutable K_cRIGHT    = iup_XkeyCtrl(K_RIGHT   );
static immutable K_cEND      = iup_XkeyCtrl(K_END     );
static immutable K_cDOWN     = iup_XkeyCtrl(K_DOWN    );
static immutable K_cPGDN     = iup_XkeyCtrl(K_PGDN    );
static immutable K_cINS      = iup_XkeyCtrl(K_INS     );
static immutable K_cDEL      = iup_XkeyCtrl(K_DEL     );
static immutable K_cSP       = iup_XkeyCtrl(K_SP      );
static immutable K_cTAB      = iup_XkeyCtrl(K_TAB     );
static immutable K_cCR       = iup_XkeyCtrl(K_CR      );
static immutable K_cBS       = iup_XkeyCtrl(K_BS      );
static immutable K_cPAUSE    = iup_XkeyCtrl(K_PAUSE   );
static immutable K_cESC      = iup_XkeyCtrl(K_ESC     );
static immutable K_cCcedilla = iup_XkeyCtrl(K_Ccedilla);
static immutable K_cF1       = iup_XkeyCtrl(K_F1      );
static immutable K_cF2       = iup_XkeyCtrl(K_F2      );
static immutable K_cF3       = iup_XkeyCtrl(K_F3      );
static immutable K_cF4       = iup_XkeyCtrl(K_F4      );
static immutable K_cF5       = iup_XkeyCtrl(K_F5      );
static immutable K_cF6       = iup_XkeyCtrl(K_F6      );
static immutable K_cF7       = iup_XkeyCtrl(K_F7      );
static immutable K_cF8       = iup_XkeyCtrl(K_F8      );
static immutable K_cF9       = iup_XkeyCtrl(K_F9      );
static immutable K_cF10      = iup_XkeyCtrl(K_F10     );
static immutable K_cF11      = iup_XkeyCtrl(K_F11     );
static immutable K_cF12      = iup_XkeyCtrl(K_F12     );
static immutable K_cPrint    = iup_XkeyCtrl(K_Print   );
static immutable K_cMenu     = iup_XkeyCtrl(K_Menu    );

static immutable K_mHOME     = iup_XkeyAlt(K_HOME    );
static immutable K_mUP       = iup_XkeyAlt(K_UP      );
static immutable K_mPGUP     = iup_XkeyAlt(K_PGUP    );
static immutable K_mLEFT     = iup_XkeyAlt(K_LEFT    );
static immutable K_mMIDDLE   = iup_XkeyAlt(K_MIDDLE  );
static immutable K_mRIGHT    = iup_XkeyAlt(K_RIGHT   );
static immutable K_mEND      = iup_XkeyAlt(K_END     );
static immutable K_mDOWN     = iup_XkeyAlt(K_DOWN    );
static immutable K_mPGDN     = iup_XkeyAlt(K_PGDN    );
static immutable K_mINS      = iup_XkeyAlt(K_INS     );
static immutable K_mDEL      = iup_XkeyAlt(K_DEL     );
static immutable K_mSP       = iup_XkeyAlt(K_SP      );
static immutable K_mTAB      = iup_XkeyAlt(K_TAB     );
static immutable K_mCR       = iup_XkeyAlt(K_CR      );
static immutable K_mBS       = iup_XkeyAlt(K_BS      );
static immutable K_mPAUSE    = iup_XkeyAlt(K_PAUSE   );
static immutable K_mESC      = iup_XkeyAlt(K_ESC     );
static immutable K_mCcedilla = iup_XkeyAlt(K_Ccedilla);
static immutable K_mF1       = iup_XkeyAlt(K_F1      );
static immutable K_mF2       = iup_XkeyAlt(K_F2      );
static immutable K_mF3       = iup_XkeyAlt(K_F3      );
static immutable K_mF4       = iup_XkeyAlt(K_F4      );
static immutable K_mF5       = iup_XkeyAlt(K_F5      );
static immutable K_mF6       = iup_XkeyAlt(K_F6      );
static immutable K_mF7       = iup_XkeyAlt(K_F7      );
static immutable K_mF8       = iup_XkeyAlt(K_F8      );
static immutable K_mF9       = iup_XkeyAlt(K_F9      );
static immutable K_mF10      = iup_XkeyAlt(K_F10     );
static immutable K_mF11      = iup_XkeyAlt(K_F11     );
static immutable K_mF12      = iup_XkeyAlt(K_F12     );
static immutable K_mPrint    = iup_XkeyAlt(K_Print   );
static immutable K_mMenu     = iup_XkeyAlt(K_Menu    );

static immutable K_yHOME     = iup_XkeySys(K_HOME    );
static immutable K_yUP       = iup_XkeySys(K_UP      );
static immutable K_yPGUP     = iup_XkeySys(K_PGUP    );
static immutable K_yLEFT     = iup_XkeySys(K_LEFT    );
static immutable K_yMIDDLE   = iup_XkeySys(K_MIDDLE  );
static immutable K_yRIGHT    = iup_XkeySys(K_RIGHT   );
static immutable K_yEND      = iup_XkeySys(K_END     );
static immutable K_yDOWN     = iup_XkeySys(K_DOWN    );
static immutable K_yPGDN     = iup_XkeySys(K_PGDN    );
static immutable K_yINS      = iup_XkeySys(K_INS     );
static immutable K_yDEL      = iup_XkeySys(K_DEL     );
static immutable K_ySP       = iup_XkeySys(K_SP      );
static immutable K_yTAB      = iup_XkeySys(K_TAB     );
static immutable K_yCR       = iup_XkeySys(K_CR      );
static immutable K_yBS       = iup_XkeySys(K_BS      );
static immutable K_yPAUSE    = iup_XkeySys(K_PAUSE   );
static immutable K_yESC      = iup_XkeySys(K_ESC     );
static immutable K_yCcedilla = iup_XkeySys(K_Ccedilla);
static immutable K_yF1       = iup_XkeySys(K_F1      );
static immutable K_yF2       = iup_XkeySys(K_F2      );
static immutable K_yF3       = iup_XkeySys(K_F3      );
static immutable K_yF4       = iup_XkeySys(K_F4      );
static immutable K_yF5       = iup_XkeySys(K_F5      );
static immutable K_yF6       = iup_XkeySys(K_F6      );
static immutable K_yF7       = iup_XkeySys(K_F7      );
static immutable K_yF8       = iup_XkeySys(K_F8      );
static immutable K_yF9       = iup_XkeySys(K_F9      );
static immutable K_yF10      = iup_XkeySys(K_F10     );
static immutable K_yF11      = iup_XkeySys(K_F11     );
static immutable K_yF12      = iup_XkeySys(K_F12     );
static immutable K_yPrint    = iup_XkeySys(K_Print   );
static immutable K_yMenu     = iup_XkeySys(K_Menu    );

static immutable K_sPlus     = iup_XkeyShift(K_plus    );
static immutable K_sComma    = iup_XkeyShift(K_comma   );
static immutable K_sMinus    = iup_XkeyShift(K_minus   );
static immutable K_sPeriod   = iup_XkeyShift(K_period  );
static immutable K_sSlash    = iup_XkeyShift(K_slash   );
static immutable K_sAsterisk = iup_XkeyShift(K_asterisk);

static immutable K_cA     = iup_XkeyCtrl(K_A);
static immutable K_cB     = iup_XkeyCtrl(K_B);
static immutable K_cC     = iup_XkeyCtrl(K_C);
static immutable K_cD     = iup_XkeyCtrl(K_D);
static immutable K_cE     = iup_XkeyCtrl(K_E);
static immutable K_cF     = iup_XkeyCtrl(K_F);
static immutable K_cG     = iup_XkeyCtrl(K_G);
static immutable K_cH     = iup_XkeyCtrl(K_H);
static immutable K_cI     = iup_XkeyCtrl(K_I);
static immutable K_cJ     = iup_XkeyCtrl(K_J);
static immutable K_cK     = iup_XkeyCtrl(K_K);
static immutable K_cL     = iup_XkeyCtrl(K_L);
static immutable K_cM     = iup_XkeyCtrl(K_M);
static immutable K_cN     = iup_XkeyCtrl(K_N);
static immutable K_cO     = iup_XkeyCtrl(K_O);
static immutable K_cP     = iup_XkeyCtrl(K_P);
static immutable K_cQ     = iup_XkeyCtrl(K_Q);
static immutable K_cR     = iup_XkeyCtrl(K_R);
static immutable K_cS     = iup_XkeyCtrl(K_S);
static immutable K_cT     = iup_XkeyCtrl(K_T);
static immutable K_cU     = iup_XkeyCtrl(K_U);
static immutable K_cV     = iup_XkeyCtrl(K_V);
static immutable K_cW     = iup_XkeyCtrl(K_W);
static immutable K_cX     = iup_XkeyCtrl(K_X);
static immutable K_cY     = iup_XkeyCtrl(K_Y);
static immutable K_cZ     = iup_XkeyCtrl(K_Z);
static immutable K_c1     = iup_XkeyCtrl(K_1);
static immutable K_c2     = iup_XkeyCtrl(K_2);
static immutable K_c3     = iup_XkeyCtrl(K_3);
static immutable K_c4     = iup_XkeyCtrl(K_4);
static immutable K_c5     = iup_XkeyCtrl(K_5);
static immutable K_c6     = iup_XkeyCtrl(K_6);
static immutable K_c7     = iup_XkeyCtrl(K_7);
static immutable K_c8     = iup_XkeyCtrl(K_8);
static immutable K_c9     = iup_XkeyCtrl(K_9);
static immutable K_c0     = iup_XkeyCtrl(K_0);
static immutable K_cPlus         = iup_XkeyCtrl(K_plus        );
static immutable K_cComma        = iup_XkeyCtrl(K_comma       );
static immutable K_cMinus        = iup_XkeyCtrl(K_minus       );
static immutable K_cPeriod       = iup_XkeyCtrl(K_period      );
static immutable K_cSlash        = iup_XkeyCtrl(K_slash       );
static immutable K_cSemicolon    = iup_XkeyCtrl(K_semicolon   );
static immutable K_cEqual        = iup_XkeyCtrl(K_equal       );
static immutable K_cBracketleft  = iup_XkeyCtrl(K_bracketleft );
static immutable K_cBracketright = iup_XkeyCtrl(K_bracketright);
static immutable K_cBackslash    = iup_XkeyCtrl(K_backslash   );
static immutable K_cAsterisk     = iup_XkeyCtrl(K_asterisk    );

static immutable K_mA     = iup_XkeyAlt(K_A);
static immutable K_mB     = iup_XkeyAlt(K_B);
static immutable K_mC     = iup_XkeyAlt(K_C);
static immutable K_mD     = iup_XkeyAlt(K_D);
static immutable K_mE     = iup_XkeyAlt(K_E);
static immutable K_mF     = iup_XkeyAlt(K_F);
static immutable K_mG     = iup_XkeyAlt(K_G);
static immutable K_mH     = iup_XkeyAlt(K_H);
static immutable K_mI     = iup_XkeyAlt(K_I);
static immutable K_mJ     = iup_XkeyAlt(K_J);
static immutable K_mK     = iup_XkeyAlt(K_K);
static immutable K_mL     = iup_XkeyAlt(K_L);
static immutable K_mM     = iup_XkeyAlt(K_M);
static immutable K_mN     = iup_XkeyAlt(K_N);
static immutable K_mO     = iup_XkeyAlt(K_O);
static immutable K_mP     = iup_XkeyAlt(K_P);
static immutable K_mQ     = iup_XkeyAlt(K_Q);
static immutable K_mR     = iup_XkeyAlt(K_R);
static immutable K_mS     = iup_XkeyAlt(K_S);
static immutable K_mT     = iup_XkeyAlt(K_T);
static immutable K_mU     = iup_XkeyAlt(K_U);
static immutable K_mV     = iup_XkeyAlt(K_V);
static immutable K_mW     = iup_XkeyAlt(K_W);
static immutable K_mX     = iup_XkeyAlt(K_X);
static immutable K_mY     = iup_XkeyAlt(K_Y);
static immutable K_mZ     = iup_XkeyAlt(K_Z);
static immutable K_m1     = iup_XkeyAlt(K_1);
static immutable K_m2     = iup_XkeyAlt(K_2);
static immutable K_m3     = iup_XkeyAlt(K_3);
static immutable K_m4     = iup_XkeyAlt(K_4);
static immutable K_m5     = iup_XkeyAlt(K_5);
static immutable K_m6     = iup_XkeyAlt(K_6);
static immutable K_m7     = iup_XkeyAlt(K_7);
static immutable K_m8     = iup_XkeyAlt(K_8);
static immutable K_m9     = iup_XkeyAlt(K_9);
static immutable K_m0     = iup_XkeyAlt(K_0);
static immutable K_mPlus         = iup_XkeyAlt(K_plus        );
static immutable K_mComma        = iup_XkeyAlt(K_comma       );
static immutable K_mMinus        = iup_XkeyAlt(K_minus       );
static immutable K_mPeriod       = iup_XkeyAlt(K_period      );
static immutable K_mSlash        = iup_XkeyAlt(K_slash       );
static immutable K_mSemicolon    = iup_XkeyAlt(K_semicolon   );
static immutable K_mEqual        = iup_XkeyAlt(K_equal       );
static immutable K_mBracketleft  = iup_XkeyAlt(K_bracketleft );
static immutable K_mBracketright = iup_XkeyAlt(K_bracketright);
static immutable K_mBackslash    = iup_XkeyAlt(K_backslash   );
static immutable K_mAsterisk     = iup_XkeyAlt(K_asterisk    );

static immutable K_yA     = iup_XkeySys(K_A);
static immutable K_yB     = iup_XkeySys(K_B);
static immutable K_yC     = iup_XkeySys(K_C);
static immutable K_yD     = iup_XkeySys(K_D);
static immutable K_yE     = iup_XkeySys(K_E);
static immutable K_yF     = iup_XkeySys(K_F);
static immutable K_yG     = iup_XkeySys(K_G);
static immutable K_yH     = iup_XkeySys(K_H);
static immutable K_yI     = iup_XkeySys(K_I);
static immutable K_yJ     = iup_XkeySys(K_J);
static immutable K_yK     = iup_XkeySys(K_K);
static immutable K_yL     = iup_XkeySys(K_L);
static immutable K_yM     = iup_XkeySys(K_M);
static immutable K_yN     = iup_XkeySys(K_N);
static immutable K_yO     = iup_XkeySys(K_O);
static immutable K_yP     = iup_XkeySys(K_P);
static immutable K_yQ     = iup_XkeySys(K_Q);
static immutable K_yR     = iup_XkeySys(K_R);
static immutable K_yS     = iup_XkeySys(K_S);
static immutable K_yT     = iup_XkeySys(K_T);
static immutable K_yU     = iup_XkeySys(K_U);
static immutable K_yV     = iup_XkeySys(K_V);
static immutable K_yW     = iup_XkeySys(K_W);
static immutable K_yX     = iup_XkeySys(K_X);
static immutable K_yY     = iup_XkeySys(K_Y);
static immutable K_yZ     = iup_XkeySys(K_Z);
static immutable K_y1     = iup_XkeySys(K_1);
static immutable K_y2     = iup_XkeySys(K_2);
static immutable K_y3     = iup_XkeySys(K_3);
static immutable K_y4     = iup_XkeySys(K_4);
static immutable K_y5     = iup_XkeySys(K_5);
static immutable K_y6     = iup_XkeySys(K_6);
static immutable K_y7     = iup_XkeySys(K_7);
static immutable K_y8     = iup_XkeySys(K_8);
static immutable K_y9     = iup_XkeySys(K_9);
static immutable K_y0     = iup_XkeySys(K_0);
static immutable K_yPlus         = iup_XkeySys(K_plus        );
static immutable K_yComma        = iup_XkeySys(K_comma       );
static immutable K_yMinus        = iup_XkeySys(K_minus       );
static immutable K_yPeriod       = iup_XkeySys(K_period      );
static immutable K_ySlash        = iup_XkeySys(K_slash       );
static immutable K_ySemicolon    = iup_XkeySys(K_semicolon   );
static immutable K_yEqual        = iup_XkeySys(K_equal       );
static immutable K_yBracketleft  = iup_XkeySys(K_bracketleft );
static immutable K_yBracketright = iup_XkeySys(K_bracketright);
static immutable K_yBackslash    = iup_XkeySys(K_backslash   );
static immutable K_yAsterisk     = iup_XkeySys(K_asterisk    );