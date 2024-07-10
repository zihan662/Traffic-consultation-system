QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    homepage.cpp \
    main.cpp \
    login.cpp \
    staffhomepage.cpp \
    staffmodify.cpp \
    userhomepage.cpp \
    usermainpage.cpp \
    userticket.cpp

HEADERS += \
    homepage.h \
    login.h \
    staffhomepage.h \
    staffmodify.h \
    userhomepage.h \
    usermainpage.h \
    userticket.h

FORMS += \
    HomePage.ui \
    SatffModify.ui \
    StaffHomePage.ui \
    Ticket.ui \
    UserHomePage.ui \
    UserMainPage.ui \
    login.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    res.qrc
