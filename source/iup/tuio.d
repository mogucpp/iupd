module iup.tuio;

import iup.iup: Ihandle;

extern(C) {

int IupTuioOpen();
Ihandle* IupTuioClient(int port);

}