#-------------------------------------------------
#
# Project created by QtCreator 2014-06-04T00:59:52
#
#-------------------------------------------------

QT       += core gui sql

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = GYS
TEMPLATE = app

QMAKE_CXXFLAGS += -Wpedantic -Wall -Wextra -Wformat
CONFIG += c++11 console

SOURCES += main.cpp\
        mainwindow.cpp \
    gys_controller.cpp \
    gys_csvfetcher.cpp \
    gys_storage.cpp

HEADERS  += mainwindow.h \
    gys_controller.h \
    gys_types.h \
    gys_csvfetcher.h \
    gys_exceptions.h \
    gys_storage.h

FORMS    += mainwindow.ui
