module iup.matrixex;

import iup.iup: Ihandle;

extern(C) {

void IupMatrixExOpen();

Ihandle* IupMatrixEx();

void IupMatrixExInit(Ihandle* ih);

}