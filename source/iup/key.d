module iup.key;

enum K_SP          = ' ';   /* 32 (0x20) */
enum K_exclam      = '!';   /* 33 */
enum K_quotedbl    = '\"';  /* 34 */
enum K_numbersign  = '#';   /* 35 */
enum K_dollar      = '$';   /* 36 */
enum K_percent     = '%';   /* 37 */
enum K_ampersand   = '&';   /* 38 */
enum K_apostrophe  = '\'';  /* 39 */
enum K_parentleft  = '(';   /* 40 */
enum K_parentright = ')';   /* 41 */
enum K_asterisk    = '*';   /* 42 */
enum K_plus        = '+';   /* 43 */
enum K_comma       = ',';   /* 44 */
enum K_minus       = '-';   /* 45 */
enum K_period      = '.';   /* 46 */
enum K_slash       = '/';   /* 47 */
enum K_0           = '0';   /* 48 (0x30) */
enum K_1           = '1';   /* 49 */
enum K_2           = '2';   /* 50 */
enum K_3           = '3';   /* 51 */
enum K_4           = '4';   /* 52 */
enum K_5           = '5';   /* 53 */
enum K_6           = '6';   /* 54 */
enum K_7           = '7';   /* 55 */
enum K_8           = '8';   /* 56 */
enum K_9           = '9';   /* 57 */
enum K_colon       = ':';   /* 58 */
enum K_semicolon   = ';';   /* 59 */
enum K_less        = '<';   /* 60 */
enum K_equal       = '=';   /* 61 */
enum K_greater     = '>';   /* 62 */
enum K_question    = '?';   /* 63 */
enum K_at          = '@';   /* 64 */
enum K_A           = 'A';   /* 65 (0x41) */
enum K_B           = 'B';   /* 66 */
enum K_C           = 'C';   /* 67 */
enum K_D           = 'D';   /* 68 */
enum K_E           = 'E';   /* 69 */
enum K_F           = 'F';   /* 70 */
enum K_G           = 'G';   /* 71 */
enum K_H           = 'H';   /* 72 */
enum K_I           = 'I';   /* 73 */
enum K_J           = 'J';   /* 74 */
enum K_K           = 'K';   /* 75 */
enum K_L           = 'L';   /* 76 */
enum K_M           = 'M';   /* 77 */
enum K_N           = 'N';   /* 78 */
enum K_O           = 'O';   /* 79 */
enum K_P           = 'P';   /* 80 */
enum K_Q           = 'Q';   /* 81 */
enum K_R           = 'R';   /* 82 */
enum K_S           = 'S';   /* 83 */
enum K_T           = 'T';   /* 84 */
enum K_U           = 'U';   /* 85 */
enum K_V           = 'V';   /* 86 */
enum K_W           = 'W';   /* 87 */
enum K_X           = 'X';   /* 88 */
enum K_Y           = 'Y';   /* 89 */
enum K_Z           = 'Z';   /* 90 */
enum K_bracketleft = '[';   /* 91 */
enum K_backslash   = '\\';  /* 92 */
enum K_bracketright= ']';  /* 93 */
enum K_circum      = '^';   /* 94 */
enum K_underscore  = '_';   /* 95 */
enum K_grave       = '`';   /* 96 */
enum K_a           = 'a';   /* 97 (0x61) */
enum K_b           = 'b';   /* 98 */
enum K_c           = 'c';   /* 99 */
enum K_d           = 'd';   /* 100 */
enum K_e           = 'e';   /* 101 */
enum K_f           = 'f';   /* 102 */
enum K_g           = 'g';   /* 103 */
enum K_h           = 'h';   /* 104 */
enum K_i           = 'i';   /* 105 */
enum K_j           = 'j';   /* 106 */
enum K_k           = 'k';   /* 107 */
enum K_l           = 'l';   /* 108 */
enum K_m           = 'm';   /* 109 */
enum K_n           = 'n';   /* 110 */
enum K_o           = 'o';   /* 111 */
enum K_p           = 'p';   /* 112 */
enum K_q           = 'q';   /* 113 */
enum K_r           = 'r';   /* 114 */
enum K_s           = 's';   /* 115 */
enum K_t           = 't';   /* 116 */
enum K_u           = 'u';   /* 117 */
enum K_v           = 'v';   /* 118 */
enum K_w           = 'w';   /* 119 */
enum K_x           = 'x';   /* 120 */
enum K_y           = 'y';   /* 121 */
enum K_z           = 'z';   /* 122 */
enum K_braceleft   = '{';   /* 123 */
enum K_bar         = '|';   /* 124 */
enum K_braceright  = '}';   /* 125 */
enum K_tilde       = '~';   /* 126 (0x7E) */

/* Printable ASCii keys */

pragma(inline, true):
auto iup_isprint(T)(T v) {
    return v > 31 && v < 127;
}

/* also define the escape sequences that have keys associated */

enum K_BS     = '\b';       /* 8 */
enum K_TAB    = '\t';       /* 9 */
enum K_LF     = '\n';       /* 10 (0x0A) not a real key, is a combination of CR with a modifier, just to document */
enum K_CR     = '\r';       /* 13 (0x0D) */

/* IUP Extended Key Codes, range start at 128      */

pragma(inline, true):
auto iup_isXkey(T)(T v) {
    return v >= 128;
}

/* These use the same definition as X11 and GDK.
   This also means that any X11 or GDK definition can also be used. */

enum K_PAUSE    = 0xFF13;
enum K_ESC      = 0xFF1B;
enum K_HOME     = 0xFF50;
enum K_LEFT     = 0xFF51;
enum K_UP       = 0xFF52;
enum K_RIGHT    = 0xFF53;
enum K_DOWN     = 0xFF54;
enum K_PGUP     = 0xFF55;
enum K_PGDN     = 0xFF56;
enum K_END      = 0xFF57;
enum K_MIDDLE   = 0xFF0B;
enum K_Print    = 0xFF61;
enum K_INS      = 0xFF63;
enum K_Menu     = 0xFF67;
enum K_DEL      = 0xFFFF;
enum K_F1       = 0xFFBE;
enum K_F2       = 0xFFBF;
enum K_F3       = 0xFFC0;
enum K_F4       = 0xFFC1;
enum K_F5       = 0xFFC2;
enum K_F6       = 0xFFC3;
enum K_F7       = 0xFFC4;
enum K_F8       = 0xFFC5;
enum K_F9       = 0xFFC6;
enum K_F10      = 0xFFC7;
enum K_F11      = 0xFFC8;
enum K_F12      = 0xFFC9;

/* no Shift/Ctrl/Alt */
enum K_LSHIFT   = 0xFFE1;
enum K_RSHIFT   = 0xFFE2;
enum K_LCTRL    = 0xFFE3;
enum K_RCTRL    = 0xFFE4;
enum K_LALT     = 0xFFE9;
enum K_RALT     = 0xFFEA;

enum K_NUM      = 0xFF7F;
enum K_SCROLL   = 0xFF14;
enum K_CAPS     = 0xFFE5;

/* Also, these are the same as the Latin-1 definition */

enum K_ccedilla  = 0x00E7;
enum K_Ccedilla  = 0x00C7;
enum K_acute     = 0x00B4  /* no Shift/Ctrl/Alt */;
enum K_diaeresis = 0x00A8;

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

enum K_sHOME    = iup_XkeyShift(K_HOME   );
enum K_sUP      = iup_XkeyShift(K_UP     );
enum K_sPGUP    = iup_XkeyShift(K_PGUP   );
enum K_sLEFT    = iup_XkeyShift(K_LEFT   );
enum K_sMIDDLE  = iup_XkeyShift(K_MIDDLE );
enum K_sRIGHT   = iup_XkeyShift(K_RIGHT  );
enum K_sEND     = iup_XkeyShift(K_END    );
enum K_sDOWN    = iup_XkeyShift(K_DOWN   );
enum K_sPGDN    = iup_XkeyShift(K_PGDN   );
enum K_sINS     = iup_XkeyShift(K_INS    );
enum K_sDEL     = iup_XkeyShift(K_DEL    );
enum K_sSP      = iup_XkeyShift(K_SP     );
enum K_sTAB     = iup_XkeyShift(K_TAB    );
enum K_sCR      = iup_XkeyShift(K_CR     );
enum K_sBS      = iup_XkeyShift(K_BS     );
enum K_sPAUSE   = iup_XkeyShift(K_PAUSE  );
enum K_sESC     = iup_XkeyShift(K_ESC    );
enum K_sF1      = iup_XkeyShift(K_F1     );
enum K_sF2      = iup_XkeyShift(K_F2     );
enum K_sF3      = iup_XkeyShift(K_F3     );
enum K_sF4      = iup_XkeyShift(K_F4     );
enum K_sF5      = iup_XkeyShift(K_F5     );
enum K_sF6      = iup_XkeyShift(K_F6     );
enum K_sF7      = iup_XkeyShift(K_F7     );
enum K_sF8      = iup_XkeyShift(K_F8     );
enum K_sF9      = iup_XkeyShift(K_F9     );
enum K_sF10     = iup_XkeyShift(K_F10    );
enum K_sF11     = iup_XkeyShift(K_F11    );
enum K_sF12     = iup_XkeyShift(K_F12    );
enum K_sPrint   = iup_XkeyShift(K_Print  );
enum K_sMenu    = iup_XkeyShift(K_Menu   );

enum K_cHOME     = iup_XkeyCtrl(K_HOME    );
enum K_cUP       = iup_XkeyCtrl(K_UP      );
enum K_cPGUP     = iup_XkeyCtrl(K_PGUP    );
enum K_cLEFT     = iup_XkeyCtrl(K_LEFT    );
enum K_cMIDDLE   = iup_XkeyCtrl(K_MIDDLE  );
enum K_cRIGHT    = iup_XkeyCtrl(K_RIGHT   );
enum K_cEND      = iup_XkeyCtrl(K_END     );
enum K_cDOWN     = iup_XkeyCtrl(K_DOWN    );
enum K_cPGDN     = iup_XkeyCtrl(K_PGDN    );
enum K_cINS      = iup_XkeyCtrl(K_INS     );
enum K_cDEL      = iup_XkeyCtrl(K_DEL     );
enum K_cSP       = iup_XkeyCtrl(K_SP      );
enum K_cTAB      = iup_XkeyCtrl(K_TAB     );
enum K_cCR       = iup_XkeyCtrl(K_CR      );
enum K_cBS       = iup_XkeyCtrl(K_BS      );
enum K_cPAUSE    = iup_XkeyCtrl(K_PAUSE   );
enum K_cESC      = iup_XkeyCtrl(K_ESC     );
enum K_cCcedilla = iup_XkeyCtrl(K_Ccedilla);
enum K_cF1       = iup_XkeyCtrl(K_F1      );
enum K_cF2       = iup_XkeyCtrl(K_F2      );
enum K_cF3       = iup_XkeyCtrl(K_F3      );
enum K_cF4       = iup_XkeyCtrl(K_F4      );
enum K_cF5       = iup_XkeyCtrl(K_F5      );
enum K_cF6       = iup_XkeyCtrl(K_F6      );
enum K_cF7       = iup_XkeyCtrl(K_F7      );
enum K_cF8       = iup_XkeyCtrl(K_F8      );
enum K_cF9       = iup_XkeyCtrl(K_F9      );
enum K_cF10      = iup_XkeyCtrl(K_F10     );
enum K_cF11      = iup_XkeyCtrl(K_F11     );
enum K_cF12      = iup_XkeyCtrl(K_F12     );
enum K_cPrint    = iup_XkeyCtrl(K_Print   );
enum K_cMenu     = iup_XkeyCtrl(K_Menu    );

enum K_mHOME     = iup_XkeyAlt(K_HOME    );
enum K_mUP       = iup_XkeyAlt(K_UP      );
enum K_mPGUP     = iup_XkeyAlt(K_PGUP    );
enum K_mLEFT     = iup_XkeyAlt(K_LEFT    );
enum K_mMIDDLE   = iup_XkeyAlt(K_MIDDLE  );
enum K_mRIGHT    = iup_XkeyAlt(K_RIGHT   );
enum K_mEND      = iup_XkeyAlt(K_END     );
enum K_mDOWN     = iup_XkeyAlt(K_DOWN    );
enum K_mPGDN     = iup_XkeyAlt(K_PGDN    );
enum K_mINS      = iup_XkeyAlt(K_INS     );
enum K_mDEL      = iup_XkeyAlt(K_DEL     );
enum K_mSP       = iup_XkeyAlt(K_SP      );
enum K_mTAB      = iup_XkeyAlt(K_TAB     );
enum K_mCR       = iup_XkeyAlt(K_CR      );
enum K_mBS       = iup_XkeyAlt(K_BS      );
enum K_mPAUSE    = iup_XkeyAlt(K_PAUSE   );
enum K_mESC      = iup_XkeyAlt(K_ESC     );
enum K_mCcedilla = iup_XkeyAlt(K_Ccedilla);
enum K_mF1       = iup_XkeyAlt(K_F1      );
enum K_mF2       = iup_XkeyAlt(K_F2      );
enum K_mF3       = iup_XkeyAlt(K_F3      );
enum K_mF4       = iup_XkeyAlt(K_F4      );
enum K_mF5       = iup_XkeyAlt(K_F5      );
enum K_mF6       = iup_XkeyAlt(K_F6      );
enum K_mF7       = iup_XkeyAlt(K_F7      );
enum K_mF8       = iup_XkeyAlt(K_F8      );
enum K_mF9       = iup_XkeyAlt(K_F9      );
enum K_mF10      = iup_XkeyAlt(K_F10     );
enum K_mF11      = iup_XkeyAlt(K_F11     );
enum K_mF12      = iup_XkeyAlt(K_F12     );
enum K_mPrint    = iup_XkeyAlt(K_Print   );
enum K_mMenu     = iup_XkeyAlt(K_Menu    );

enum K_yHOME     = iup_XkeySys(K_HOME    );
enum K_yUP       = iup_XkeySys(K_UP      );
enum K_yPGUP     = iup_XkeySys(K_PGUP    );
enum K_yLEFT     = iup_XkeySys(K_LEFT    );
enum K_yMIDDLE   = iup_XkeySys(K_MIDDLE  );
enum K_yRIGHT    = iup_XkeySys(K_RIGHT   );
enum K_yEND      = iup_XkeySys(K_END     );
enum K_yDOWN     = iup_XkeySys(K_DOWN    );
enum K_yPGDN     = iup_XkeySys(K_PGDN    );
enum K_yINS      = iup_XkeySys(K_INS     );
enum K_yDEL      = iup_XkeySys(K_DEL     );
enum K_ySP       = iup_XkeySys(K_SP      );
enum K_yTAB      = iup_XkeySys(K_TAB     );
enum K_yCR       = iup_XkeySys(K_CR      );
enum K_yBS       = iup_XkeySys(K_BS      );
enum K_yPAUSE    = iup_XkeySys(K_PAUSE   );
enum K_yESC      = iup_XkeySys(K_ESC     );
enum K_yCcedilla = iup_XkeySys(K_Ccedilla);
enum K_yF1       = iup_XkeySys(K_F1      );
enum K_yF2       = iup_XkeySys(K_F2      );
enum K_yF3       = iup_XkeySys(K_F3      );
enum K_yF4       = iup_XkeySys(K_F4      );
enum K_yF5       = iup_XkeySys(K_F5      );
enum K_yF6       = iup_XkeySys(K_F6      );
enum K_yF7       = iup_XkeySys(K_F7      );
enum K_yF8       = iup_XkeySys(K_F8      );
enum K_yF9       = iup_XkeySys(K_F9      );
enum K_yF10      = iup_XkeySys(K_F10     );
enum K_yF11      = iup_XkeySys(K_F11     );
enum K_yF12      = iup_XkeySys(K_F12     );
enum K_yPrint    = iup_XkeySys(K_Print   );
enum K_yMenu     = iup_XkeySys(K_Menu    );

enum K_sPlus     = iup_XkeyShift(K_plus    );
enum K_sComma    = iup_XkeyShift(K_comma   );
enum K_sMinus    = iup_XkeyShift(K_minus   );
enum K_sPeriod   = iup_XkeyShift(K_period  );
enum K_sSlash    = iup_XkeyShift(K_slash   );
enum K_sAsterisk = iup_XkeyShift(K_asterisk);

enum K_cA     = iup_XkeyCtrl(K_A);
enum K_cB     = iup_XkeyCtrl(K_B);
enum K_cC     = iup_XkeyCtrl(K_C);
enum K_cD     = iup_XkeyCtrl(K_D);
enum K_cE     = iup_XkeyCtrl(K_E);
enum K_cF     = iup_XkeyCtrl(K_F);
enum K_cG     = iup_XkeyCtrl(K_G);
enum K_cH     = iup_XkeyCtrl(K_H);
enum K_cI     = iup_XkeyCtrl(K_I);
enum K_cJ     = iup_XkeyCtrl(K_J);
enum K_cK     = iup_XkeyCtrl(K_K);
enum K_cL     = iup_XkeyCtrl(K_L);
enum K_cM     = iup_XkeyCtrl(K_M);
enum K_cN     = iup_XkeyCtrl(K_N);
enum K_cO     = iup_XkeyCtrl(K_O);
enum K_cP     = iup_XkeyCtrl(K_P);
enum K_cQ     = iup_XkeyCtrl(K_Q);
enum K_cR     = iup_XkeyCtrl(K_R);
enum K_cS     = iup_XkeyCtrl(K_S);
enum K_cT     = iup_XkeyCtrl(K_T);
enum K_cU     = iup_XkeyCtrl(K_U);
enum K_cV     = iup_XkeyCtrl(K_V);
enum K_cW     = iup_XkeyCtrl(K_W);
enum K_cX     = iup_XkeyCtrl(K_X);
enum K_cY     = iup_XkeyCtrl(K_Y);
enum K_cZ     = iup_XkeyCtrl(K_Z);
enum K_c1     = iup_XkeyCtrl(K_1);
enum K_c2     = iup_XkeyCtrl(K_2);
enum K_c3     = iup_XkeyCtrl(K_3);
enum K_c4     = iup_XkeyCtrl(K_4);
enum K_c5     = iup_XkeyCtrl(K_5);
enum K_c6     = iup_XkeyCtrl(K_6);
enum K_c7     = iup_XkeyCtrl(K_7);
enum K_c8     = iup_XkeyCtrl(K_8);
enum K_c9     = iup_XkeyCtrl(K_9);
enum K_c0     = iup_XkeyCtrl(K_0);
enum K_cPlus         = iup_XkeyCtrl(K_plus        );
enum K_cComma        = iup_XkeyCtrl(K_comma       );
enum K_cMinus        = iup_XkeyCtrl(K_minus       );
enum K_cPeriod       = iup_XkeyCtrl(K_period      );
enum K_cSlash        = iup_XkeyCtrl(K_slash       );
enum K_cSemicolon    = iup_XkeyCtrl(K_semicolon   );
enum K_cEqual        = iup_XkeyCtrl(K_equal       );
enum K_cBracketleft  = iup_XkeyCtrl(K_bracketleft );
enum K_cBracketright = iup_XkeyCtrl(K_bracketright);
enum K_cBackslash    = iup_XkeyCtrl(K_backslash   );
enum K_cAsterisk     = iup_XkeyCtrl(K_asterisk    );

enum K_mA     = iup_XkeyAlt(K_A);
enum K_mB     = iup_XkeyAlt(K_B);
enum K_mC     = iup_XkeyAlt(K_C);
enum K_mD     = iup_XkeyAlt(K_D);
enum K_mE     = iup_XkeyAlt(K_E);
enum K_mF     = iup_XkeyAlt(K_F);
enum K_mG     = iup_XkeyAlt(K_G);
enum K_mH     = iup_XkeyAlt(K_H);
enum K_mI     = iup_XkeyAlt(K_I);
enum K_mJ     = iup_XkeyAlt(K_J);
enum K_mK     = iup_XkeyAlt(K_K);
enum K_mL     = iup_XkeyAlt(K_L);
enum K_mM     = iup_XkeyAlt(K_M);
enum K_mN     = iup_XkeyAlt(K_N);
enum K_mO     = iup_XkeyAlt(K_O);
enum K_mP     = iup_XkeyAlt(K_P);
enum K_mQ     = iup_XkeyAlt(K_Q);
enum K_mR     = iup_XkeyAlt(K_R);
enum K_mS     = iup_XkeyAlt(K_S);
enum K_mT     = iup_XkeyAlt(K_T);
enum K_mU     = iup_XkeyAlt(K_U);
enum K_mV     = iup_XkeyAlt(K_V);
enum K_mW     = iup_XkeyAlt(K_W);
enum K_mX     = iup_XkeyAlt(K_X);
enum K_mY     = iup_XkeyAlt(K_Y);
enum K_mZ     = iup_XkeyAlt(K_Z);
enum K_m1     = iup_XkeyAlt(K_1);
enum K_m2     = iup_XkeyAlt(K_2);
enum K_m3     = iup_XkeyAlt(K_3);
enum K_m4     = iup_XkeyAlt(K_4);
enum K_m5     = iup_XkeyAlt(K_5);
enum K_m6     = iup_XkeyAlt(K_6);
enum K_m7     = iup_XkeyAlt(K_7);
enum K_m8     = iup_XkeyAlt(K_8);
enum K_m9     = iup_XkeyAlt(K_9);
enum K_m0     = iup_XkeyAlt(K_0);
enum K_mPlus         = iup_XkeyAlt(K_plus        );
enum K_mComma        = iup_XkeyAlt(K_comma       );
enum K_mMinus        = iup_XkeyAlt(K_minus       );
enum K_mPeriod       = iup_XkeyAlt(K_period      );
enum K_mSlash        = iup_XkeyAlt(K_slash       );
enum K_mSemicolon    = iup_XkeyAlt(K_semicolon   );
enum K_mEqual        = iup_XkeyAlt(K_equal       );
enum K_mBracketleft  = iup_XkeyAlt(K_bracketleft );
enum K_mBracketright = iup_XkeyAlt(K_bracketright);
enum K_mBackslash    = iup_XkeyAlt(K_backslash   );
enum K_mAsterisk     = iup_XkeyAlt(K_asterisk    );

enum K_yA     = iup_XkeySys(K_A);
enum K_yB     = iup_XkeySys(K_B);
enum K_yC     = iup_XkeySys(K_C);
enum K_yD     = iup_XkeySys(K_D);
enum K_yE     = iup_XkeySys(K_E);
enum K_yF     = iup_XkeySys(K_F);
enum K_yG     = iup_XkeySys(K_G);
enum K_yH     = iup_XkeySys(K_H);
enum K_yI     = iup_XkeySys(K_I);
enum K_yJ     = iup_XkeySys(K_J);
enum K_yK     = iup_XkeySys(K_K);
enum K_yL     = iup_XkeySys(K_L);
enum K_yM     = iup_XkeySys(K_M);
enum K_yN     = iup_XkeySys(K_N);
enum K_yO     = iup_XkeySys(K_O);
enum K_yP     = iup_XkeySys(K_P);
enum K_yQ     = iup_XkeySys(K_Q);
enum K_yR     = iup_XkeySys(K_R);
enum K_yS     = iup_XkeySys(K_S);
enum K_yT     = iup_XkeySys(K_T);
enum K_yU     = iup_XkeySys(K_U);
enum K_yV     = iup_XkeySys(K_V);
enum K_yW     = iup_XkeySys(K_W);
enum K_yX     = iup_XkeySys(K_X);
enum K_yY     = iup_XkeySys(K_Y);
enum K_yZ     = iup_XkeySys(K_Z);
enum K_y1     = iup_XkeySys(K_1);
enum K_y2     = iup_XkeySys(K_2);
enum K_y3     = iup_XkeySys(K_3);
enum K_y4     = iup_XkeySys(K_4);
enum K_y5     = iup_XkeySys(K_5);
enum K_y6     = iup_XkeySys(K_6);
enum K_y7     = iup_XkeySys(K_7);
enum K_y8     = iup_XkeySys(K_8);
enum K_y9     = iup_XkeySys(K_9);
enum K_y0     = iup_XkeySys(K_0);
enum K_yPlus         = iup_XkeySys(K_plus        );
enum K_yComma        = iup_XkeySys(K_comma       );
enum K_yMinus        = iup_XkeySys(K_minus       );
enum K_yPeriod       = iup_XkeySys(K_period      );
enum K_ySlash        = iup_XkeySys(K_slash       );
enum K_ySemicolon    = iup_XkeySys(K_semicolon   );
enum K_yEqual        = iup_XkeySys(K_equal       );
enum K_yBracketleft  = iup_XkeySys(K_bracketleft );
enum K_yBracketright = iup_XkeySys(K_bracketright);
enum K_yBackslash    = iup_XkeySys(K_backslash   );
enum K_yAsterisk     = iup_XkeySys(K_asterisk    );