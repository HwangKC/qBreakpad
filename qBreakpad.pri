message("BREAKPAD_crash_handler_attached")

INCLUDEPATH += $$PWD/handler/


#CONFIG += debug_and_release
#CONFIG += warn_on
CONFIG += thread exceptions rtti stl

macx: {
    #without c++11 & AppKit library compiler can't solve address for symbols
    #CONFIG -= app_bundle #for run the app at the console
    LIBS += -framework AppKit
    CONFIG += c++11
}

HEADERS += \
    $$PWD/handler/QBreakpadHandler.h \
    $$PWD/handler/QBreakpadHttpUploader.h

LIBS += \
    -L$$PWD/handler -lqBreakpad
