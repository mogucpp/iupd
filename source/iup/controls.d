module iup.controls;

import iup.iup: Ihandle;

extern(C) {
    int  IupControlsOpen();

    Ihandle* IupColorbar();
    Ihandle* IupCells();
    Ihandle *IupColorBrowser();
    Ihandle *IupGauge();
    Ihandle *IupDial(const(char) * type);
    Ihandle* IupMatrix(const(char) *action);
    Ihandle* IupMatrixList();

    /* Used by IupColorbar */
    static immutable IUP_PRIMARY = -1;
    static immutable IUP_SECONDARY = -2;

    /* available only when linking with "iupluamatrix" */
    void IupMatrixSetFormula(Ihandle* ih, int col, const(char) * formula, const(char) * init);
    void IupMatrixSetDynamic(Ihandle* ih, const(char) * init);
}