# flutter airbnb clone 
airbnb clone (Both frontend and backend) created with Flutter and Firebase(flutterfire)
### Show some ❤️ and star the repo to support the project.
-------------
###  Note
-------------

This repository is still under development and I will continue to add more features to it.

###  SCREENSHOTS
-------------
> login screen.
![](https://github.com/mahmoudBens/flutter-airbnb-clone/blob/master/airbnb%20screen/Screenshot_20200826_132716_bmitech.airbnb_clone.jpg?raw=true)



> Home screen with buttom navigation.
![](https://github.com/mahmoudBens/flutter-airbnb-clone/blob/master/airbnb%20screen/Screenshot_20200826_132720_bmitech.airbnb_clone.jpg?raw=true)

> Properties list.
![](https://github.com/mahmoudBens/flutter-airbnb-clone/blob/master/airbnb%20screen/Screenshot_20200826_132724_bmitech.airbnb_clone.jpg?raw=truee)


> Panel.
![](https://github.com/mahmoudBens/flutter-airbnb-clone/blob/master/airbnb%20screen/Screenshot_20200826_132730_bmitech.airbnb_clone.jpg?raw=truee)

> Profil information.
![](https://github.com/mahmoudBens/flutter-airbnb-clone/blob/master/airbnb%20screen/Screenshot_20200826_132734_bmitech.airbnb_clone.jpg?raw=true)

> add property process.
![](https://github.com/mahmoudBens/flutter-airbnb-clone/blob/master/airbnb%20screen/Screenshot_20200826_132737_bmitech.airbnb_clone.jpg?raw=true)

![](https://github.com/mahmoudBens/flutter-airbnb-clone/blob/master/airbnb%20screen/Screenshot_20200826_132741_bmitech.airbnb_clone.jpg?raw=true)
![](https://github.com/mahmoudBens/flutter-airbnb-clone/blob/master/airbnb%20screen/Screenshot_20200826_132747_bmitech.airbnb_clone.jpg?raw=true)
![](https://github.com/mahmoudBens/flutter-airbnb-clone/blob/master/airbnb%20screen/Screenshot_20200826_132755_bmitech.airbnb_clone.jpg?raw=true)
![](https://github.com/mahmoudBens/flutter-airbnb-clone/blob/master/airbnb%20screen/Screenshot_20200826_132759_bmitech.airbnb_clone.jpg?raw=true)
![](https://github.com/mahmoudBens/flutter-airbnb-clone/blob/master/airbnb%20screen/Screenshot_20200826_132804_bmitech.airbnb_clone.jpg?raw=true)
![](https://github.com/mahmoudBens/flutter-airbnb-clone/blob/master/airbnb%20screen/Screenshot_20200826_132804_bmitech.airbnb_clone.jpg?raw=true)

AND MORE !!
###  2. FEATURES
-------------

- LOGIN & SIGNUP
- ADD PROPERTIES
- SEARCH FOR LOCATION
- PROFIL MANAGEMENT


### 3. Setup the firebase app
-------------
You'll need to create a Firebase instance. Follow the instructions at https://console.firebase.google.com.
- Once your Firebase instance is created, you'll need to enable anonymous authentication.
- Go to the Firebase Console for your new instance.
- Click "Authentication" in the left-hand menu
- Click the "sign-in method" tab
- Click "Google" and enable it
- Enable the Firebase Database
- Go to the Firebase Console
- Click "Database" in the left-hand menu
- Click the Cloudstore "Create Database" button
- Select "Start in test mode" and "Enable"
(skip if not running on Android)
- Create an app within your Firebase instance for Android, with package name com.bmitech.dari_darek_admin
- Run the following command to get your SHA-1 key:
`keytool -exportcert -list -v `
`-alias androiddebugkey -keystore ~/.android/debug.keystore`
- In the Firebase console, in the settings of your Android app, add your SHA-1 key by clicking "Add Fingerprint".
- Follow instructions to download google-services.json
- place google-services.json into /android/app/.
(skip if not running on iOS)
- Create an app within your Firebase instance for iOS, with your app package name
- Follow instructions to download GoogleService-Info.plist
- Open XCode, right click the Runner folder, select the "Add Files to 'Runner'" menu, and select the GoogleService-Info.plist file to add it to /ios/Runner in XCode
- Open /ios/Runner/Info.plist in a text editor. Locate the CFBundleURLSchemes key. The second item in the array value of this key is specific to the Firebase instance. Replace it with the value for REVERSED_CLIENT_ID from GoogleService-Info.plist
Double check install instructions for both

- Google Auth Plugin
https://pub.dartlang.org/packages/firebase_auth
- Firestore Plugin
https://pub.dartlang.org/packages/cloud_firestore







