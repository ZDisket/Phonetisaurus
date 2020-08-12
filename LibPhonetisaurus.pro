#-------------------------------------------------
#
# Project created by QtCreator 2020-08-12T16:13:33
#
#-------------------------------------------------

QT       -= core gui

TARGET = phonetisaurus
TEMPLATE = lib
CONFIG += staticlib

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        libphonetisaurus.cpp \
        src/3rdparty/rnnlm/rnnlmlib.cpp \
        src/lib/LatticePruner.cc \
        src/lib/M2MFstAligner.cc \
        src/lib/feature-reader.cc \
        src/lib/util.cc \
        src/loadclusters.cpp

HEADERS += \
        libphonetisaurus.h \
        src/3rdparty/rnnlm/rnnlmlib.h \
        src/3rdparty/utfcpp/utf8.h \
        src/3rdparty/utfcpp/utf8/checked.h \
        src/3rdparty/utfcpp/utf8/core.h \
        src/3rdparty/utfcpp/utf8/unchecked.h \
        src/include/ARPA2WFST.h \
        src/include/LatticePruner.h \
        src/include/LegacyRnnLMDecodable.h \
        src/include/LegacyRnnLMHash.h \
        src/include/LegacyRnnLMReader.h \
        src/include/M2MFstAligner.h \
        src/include/PhonetisaurusRex.h \
        src/include/PhonetisaurusScript.h \
        src/include/RnnLMDecoder.h \
        src/include/util.h
unix {
    target.path = /usr/lib
    INSTALLS += target
}

LIBS += -L/usr/local/lib/fst/ -lfst -lfstfar -lfstngram
INCLUDEPATH += $$PWD/src/3rdparty/
INCLUDEPATH += $$PWD/src/
