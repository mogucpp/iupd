module iup.ole;

import iup.iup: Ihandle;

extern(C) {

Ihandle *IupOleControl(const(char) * progid);

int IupOleControlOpen();

}