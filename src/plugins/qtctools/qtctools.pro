DEFINES += QTCTOOLS_LIBRARY

SOURCES += qtctoolsplugin.cpp \
    customexecutableconfigurationwidget.cpp \
    customexecutablerunconfiguration.cpp

HEADERS += qtctoolsplugin.h \
        qtctools_global.h \
        qtctoolsconstants.h \
    customexecutableconfigurationwidget.h \
    customexecutablerunconfiguration.h

include(../../qtcreatorplugin.pri)

