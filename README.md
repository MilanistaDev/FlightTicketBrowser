# FlightTicketBrowser

This app is a SwiftUI sample app for flight ticket browser.  
Even if the barcode and QR code are generated,   
it seems that they cannot be displayed on the SwiftUI, so a fixed image is displayed.  
=> **Fixed QRCode Generation. (June 21, 2022)**  
User can adjust the brightness of the screen by tapping the QR code.  
Flight information is fiction.  

## Sample GIF and Images

![flight_ticket_browser](https://user-images.githubusercontent.com/8732417/148351289-4c7670fa-54bd-4be7-9d42-79e4fb6367ee.gif)

### Ticket List

|Light|Dark|
|:--:|:--:|
|![IMG_0117](https://user-images.githubusercontent.com/8732417/148353400-154fcef0-17b5-4bcd-996c-02f37534eef9.PNG)|![IMG_0118](https://user-images.githubusercontent.com/8732417/148353417-05332640-cde6-4d25-94c8-1d2b4749aae5.PNG)|

### Ticket Detail

|Light|Dark|
|:--:|:--:|
|![IMG_0119](https://user-images.githubusercontent.com/8732417/148353518-addb7ce7-9e19-43b5-9db2-909370ec70c8.PNG)|![IMG_0120](https://user-images.githubusercontent.com/8732417/148353521-3c79a81e-b7d3-49cc-a7d8-0806784c0b71.PNG)|


### Boarding Pass

|Light|Dark|
|:--:|:--:|
|![IMG_0121](https://user-images.githubusercontent.com/8732417/148353601-6c29a0ba-9805-48ad-a225-35d0ff169dca.PNG)|![IMG_0122](https://user-images.githubusercontent.com/8732417/148353604-7e689306-8f62-4021-a512-b1f7d053f847.PNG)|

## Environment

![<iOS>-<iOS 15.0 and later>](https://img.shields.io/badge/iOS-iOS%2015.0%20and%20later-brightgreen)  
![<Xcode>-<Xcode 13.0>](https://img.shields.io/badge/Xcode-Xcode%2013-blue)  
![<SwiftUI>-<SwiftUI 3>](https://img.shields.io/badge/SwiftUI-SwiftUI%203-informational)  

## Point of implementation

* How to use `Path`
  - Cut off of leading and trailing edge
  - Dash Line
  - QRCode generation

## Article

N/A

## Contact

Please feel free to contact us if you find a bug or have any feedback.  
Suggestions for adding functions and code corrections are also welcome.

```swift
let name = "Takuya Aso"
let email = "milanista224" + "@" + "icloud.com"
let profession = "iOS Engineer"
let location = "Tokyo"
```
