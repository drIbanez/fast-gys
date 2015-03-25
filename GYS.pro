#-------------------------------------------------
#
# Project created by QtCreator 2014-06-04T00:59:52
#
#-------------------------------------------------

QT       += core gui sql network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = GYS
TEMPLATE = app

QMAKE_CXXFLAGS += -Wpedantic -Wall -Wextra -Wformat
CONFIG += c++11 console

SOURCES += main.cpp\
        mainwindow.cpp \
    ranks.cpp \
    mainclass.cpp \
    filefetcher.cpp
    #controller.cpp \

HEADERS  += mainwindow.h \
    types.h \
    exceptions.h \
    ranks.h \
    mainclass.h \
    filefetcher.h
    #controller.h \

FORMS    += mainwindow.ui
