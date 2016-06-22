module iup.im;

import iup.iup: Ihandle;

extern(C) {

    Ihandle* IupLoadImage(const(char) * file_name);
    int IupSaveImage(Ihandle* ih, const(char) * file_name, const(char) * format);

    Ihandle* IupLoadAnimation(const(char) * file_name);
    Ihandle* IupLoadAnimationFrames(const(char) ** file_name_list, int file_count);

    struct _imImage;
    alias imImage = _imImage;

    imImage* IupGetNativeHandleImage(void* handle);
    void* IupGetImageNativeHandle(const(imImage) * image);

    Ihandle* IupImageFromImImage(const(imImage) * image);
}