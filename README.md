# IdramMerchantPayment

[![CI Status](http://img.shields.io/travis/Gagik Martirosyan/IdramMerchantPayment.svg?style=flat)](https://travis-ci.org/Gagik Martirosyan/IdramMerchantPayment)
[![Version](https://img.shields.io/cocoapods/v/IdramMerchantPayment.svg?style=flat)](http://cocoapods.org/pods/IdramMerchantPayment)
[![License](https://img.shields.io/cocoapods/l/IdramMerchantPayment.svg?style=flat)](http://cocoapods.org/pods/IdramMerchantPayment)
[![Platform](https://img.shields.io/cocoapods/p/IdramMerchantPayment.svg?style=flat)](http://cocoapods.org/pods/IdramMerchantPayment)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

### Cocoapods
IdramMerchantPayment is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "IdramMerchantPayment"
```

### Manual installation 
You can simply download IdramPaymentManager.h and IdramPaymentManager.m and Drag & Drop to your project.

## Usage 
  1. After setting up dependencies import header 
     #import "IdramPaymentManager.h"
  2. In your Info.plist file add following:
``` XML
<key>LSApplicationQueriesSchemes</key>
 <array>
   <string>idramapp</string>
 </array>
```

  3. If you need to open your application you need to set up 'URL Types' in your Info.plist. See http://iosdevelopertips.com/cocoa/launching-your-own-application-via-a-custom-url-scheme.html
  4. Also implement handleOpenURL method in your appDelegate.m to handle success or failure callbacks from Idram app.
  

## Documentation 
Currently 'IdramPaymentManager' has single class method:

``` ObjC
    [IdramPaymentManager payWithReceiverName:@"Some name"
                                  receiverId:@"Users Idram Id. (EDP_REC_ACCOUNT)"
                                       title:@"Unique id for payment identification of merchant billing. (EDP_BILL_NO)"
                                      amount:@"10000"
                                      hasTip:YES
                           callbackURLScheme:@"Your URL Scheme"];
```
    
## Callback
```
<your URL Scheme>://payment/idram?error=<0 for success or error code>&receiverId=<id>&tip=<tip amount>
```

### Error codes

1. 0         -> Unknown error
2. 110099    -> Operation is canceled by user
3. 110012    -> Idram ID recipient does not exist or is blocked.
4. 110043    -> The service is currently unavailable. Please, try again later.

Other errors are handled by Idram application 

##
  



## Author

Gagik Martirosyan, g.martirosjan@gmail.com

## License

IdramMerchantPayment is available under the MIT license. See the LICENSE file for more info.
