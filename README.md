Hello World Android Application with Swipe View UI Using Qt

Welcome to the Hello World Android Application project! This repository contains the source code and detailed steps for building a simple "Hello World" Android app with a swipe view UI using Qt. The project demonstrates the basics of setting up a development environment, building an Android application with Qt, and deploying it to an emulator or device.
Table of Contents

    Introduction
    Features
    Prerequisites
    Development Steps
        1. Set Up the Development Environment
        2. Create the Application
        3. Build  & pa ckage the Application
        4. Deploy on Emulator or Device
    Repository Structure

Introduction

This project is a basic Android application developed using Qt that demonstrates:

    Swipe navigation between multiple views.
    Building and deploying Qt applications for Android.

The app is packaged as an APK and can be deployed to an emulator or physical device for testing.
Features

    Swipe View UI: Navigate between multiple views using swipe gestures.
    Simple Design: Displays a "Hello World" message on each view.
    Cross-Platform Development: Built using Qt for Android.

Prerequisites

Ensure you have the following installed and configured:

    Operating System: Linux (e.g., Ubuntu)
    Qt Framework: Download and install Qt with Android support from Qt Downloads.
    Android SDK and NDK: Install the required SDK tools, platforms, and NDK.
    Build Tools:
        CMake
        adb (Android Debug Bridge)
        Android toolchain (for cross-compilation)

Development Steps
1. Set Up the Development Environment

    Install Qt And settup it:
    sudo apt update
    Download the necessary components for Android development from the Qt Maintenance Tool.
    wget https://download.qt.io/official_releases/online_installers/qt-unified-linux-x64-online.run
    chmod +x qt-unified-linux-x64-online.run
    ./qt-unified-linux-x64-online.run
    apt install libxcb-cursor0 libxcb-cursor-dev'
    sudo apt install build-essential openjdk-17-jdk unzip git cmake ninja-build libgl1-mesa-dev -y  
    wget https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip
    unzip commandlinetools-linux-9477386_latest.zip -d $HOME/Android
    export ANDROID_HOME=$HOME/Android
    export PATH=$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools:$PATH
    mkdir -p $ANDROID_HOME/cmdline-tools/latest
    mv $ANDROID_HOME/cmdline-tools $ANDROID_HOME/cmdline-tools/latest
    sdkmanager  --channel=3   "platform-tools" "platforms;android-33" "build-tools;33.0.0" "ndk;26.1.10909125"

    install neccessary tool and  library  with  MaintenanceTool like this: 
    ![Screenshot from 2024-11-26 14-53-39](https://github.com/user-attachments/assets/c493bac6-9052-4128-92b3-f8c03721225c)

    Configure the Qt Android Toolchain:
        Open Qt Creator.
        Navigate to Prefrence > Kits > Android.
        Set the paths for Android SDK, NDK, JDK, and ant.
        like these photos:
        ![Screenshot from 2024-11-26 14-57-29](https://github.com/user-attachments/assets/e9971ee6-e5bc-4540-9041-3f80d8ccec21)
        ![Screenshot from 2024-11-26 14-51-58](https://github.com/user-attachments/assets/f8cf0646-92be-453c-b818-a258e4d45acf)
        ![Screenshot from 2024-11-26 14-51-42](https://github.com/user-attachments/assets/b1bde40e-62ee-41ad-a76f-cf25acf5bc4a)

2. Create the Application

    Create a new Qt Quick Application project in Qt Creator:
        File > New Project > Application (Qt Quick) > Swipe View UI.
        Use a basic template or design your views manually.
        ![Screenshot from 2024-11-26 11-16-12](https://github.com/user-attachments/assets/8a7cb925-123e-4bc1-bf9b-29bbd793d401)
        ![Screenshot from 2024-11-26 11-16-44](https://github.com/user-attachments/assets/7e262685-d897-4dbd-b775-4829b9c25f84)


    Implement swipe navigation:
        Use SwipeView from Qt Quick Controls.
        Example:

        SwipeView {
            id: swipeView
          anchors.fill: parent
  
          Page {
              Label {
                  anchors.centerIn: parent
                  text: "Hello, World! Page 1"
              }
          }
  
          Page {
              Label {
                  anchors.centerIn: parent
                  text: "Hello, World! Page 2"
              }
          }
  
          Page {
              Label {
                  anchors.centerIn: parent
                  text: "Hello, World! Page 3"
              }
          }
        }

3. Build & Package the Application

    Select the Android Kit in Qt Creator.
    Configure the build system:
        Use CMake for project configuration.
    Build the project:
   /opt/Qt/Tools/CMake/bin/cmake --build /root/HelloWorldSwipe/build/Android_Qt_6_8_0_Clang_arm64_v8a-Debug --target all
   /opt/Qt/6.8.0/gcc_64/bin/androiddeployqt --input /root/HelloWorldSwipe/build/Android_Qt_6_8_0_Clang_arm64_v8a-Debug/android-appHelloWorldSwipe-deployment-settings.json --output /root/HelloWorldSwipe/build/Android_Qt_6_8_0_Clang_arm64_v8a-      Debug/android-build-appHelloWorldSwipe --android-platform android-34 --jdk /usr/lib/jvm/java-1.17.0-openjdk-amd64 --gradle


4. Deploy on Emulator or Device

    Deploy using adb:
        ![Screenshot from 2024-11-26 14-36-29](https://github.com/user-attachments/assets/684a7df8-66d1-4e4f-a665-03b21cb5d9ee)

    Verify functionality on the emulator or physical device:
        Launch the app and test swipe functionality.
   
        ![Screenshot_20241126-143434](https://github.com/user-attachments/assets/21309b40-fdbc-4fcd-b31e-bd01bc2553a9)
        ![Screenshot_20241126-143436](https://github.com/user-attachments/assets/802607f6-5d1e-44fa-9e4b-d9a798c46200)
        ![Screenshot_20241126-143440](https://github.com/user-attachments/assets/f82205c1-1360-4b1c-a503-6ee231477129)


Repository Structure
/project-root
├── /src                # Source code of the application
├── /build              # Build output directory
├── /resources          # Images, icons, and other resources
├── /docs               # Documentation and guides
└── README.md           # Project documentation
