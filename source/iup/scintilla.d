module iup.scintilla;

import iup.iup: Ihandle;

extern(C) {

void IupScintillaOpen();

Ihandle *IupScintilla();

// this is a workaround
alias uptr_t = ulong;
alias sptr_t = long;

sptr_t IupScintillaSendMessage(Ihandle* ih, uint iMessage, uptr_t wParam, sptr_t lParam);

}