QT += qml quick widgets gui webview

CONFIG += c++11

SOURCES += main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

#unix:!macx: LIBS += -L$$OUT_PWD/../BGQLCommon/ -lBGQLCommon

#INCLUDEPATH += $$PWD/../BGQLCommon
#DEPENDPATH += $$PWD/../BGQLCommon

#unix:!macx: PRE_TARGETDEPS += $$OUT_PWD/../BGQLCommon/libBGQLCommon.a

DISTFILES += \
    android/AndroidManifest.xml \
    android/gradle/wrapper/gradle-wrapper.jar \
    android/gradlew \
    android/res/values/libs.xml \
    android/build.gradle \
    android/gradle/wrapper/gradle-wrapper.properties \
    android/gradlew.bat

ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android

#unix:!macx {
#    equals(DEVICE, "desktop") {
#        LIBS += -L$$PWD/../../local/lib/desktop/ -lBGQLCommon
#        PRE_TARGETDEPS += $$PWD/../../local/lib/desktop/libBGQLCommon.a
#        message ("....desktop")
#    }
#    equals(DEVICE, "android") {
#        LIBS += -L$$PWD/../../local/lib/android/ -lBGQLCommon
#        PRE_TARGETDEPS += $$PWD/../../local/lib/android/libBGQLCommon.a
#        message ("....android")
#    }
#}


contains(ANDROID_TARGET_ARCH,armeabi-v7a) {
    ANDROID_EXTRA_LIBS =
}

unix:!macx: LIBS += -L$$OUT_PWD/../BGQLCommon/ -lBGQLCommon

INCLUDEPATH += $$PWD/../BGQLCommon
DEPENDPATH += $$PWD/../BGQLCommon

unix:!macx: PRE_TARGETDEPS += $$OUT_PWD/../BGQLCommon/libBGQLCommon.a
