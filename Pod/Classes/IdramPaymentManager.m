//
//  IdramPaymentManager.m
//  Pods
//
//  Created by Gagik Martirosyan on 2/26/16.
//
//

#import "IdramPaymentManager.h"
#import <UIKit/UIKit.h>


@implementation IdramPaymentManager

+ (void) payWithReceiverName:(NSString * _Nonnull)receiverName
                  receiverId:(NSString * _Nonnull)receiverId
                       title:(NSString * _Nonnull)title
                      amount:(NSNumber * _Nonnull)amount
                      hasTip:(BOOL)hasTip
           callbackURLScheme:(NSString * __nullable)callbackURLScheme {
    

    NSMutableString *urlString = [NSMutableString new];
    [urlString appendString:@"idramapp://payment?"];
    
    if (receiverName && receiverName.length > 0) {
        
        NSString *nameString = [receiverName stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLUserAllowedCharacterSet]];
        [urlString appendFormat:@"receiverName=%@", nameString];
    }
    else {
        NSLog(@"IdramPaymentManager::ERROR: **receiverName can not be empty**");
        return;
    }
    
    if (receiverId && receiverId.length > 0) {
        
        [urlString appendFormat:@"&receiverId=%@", receiverId];
    }
    else {
        NSLog(@"IdramPaymentManager::ERROR: **receiverId can not be empty**");
        return;
    }
    
    if (title && title.length > 0) {
        
        [urlString appendFormat:@"&title=%@", title];
    }
    else {
        NSLog(@"IdramPaymentManager::ERROR: **title can not be empty**");
        return;
    }
    
    if (amount && [amount floatValue] > 0) {
        
        [urlString appendFormat:@"&amount=%@", amount];
    }
    else {
        NSLog(@"IdramPaymentManager::ERROR: **amount can not be empty**");
        return;
    }
    
    if (hasTip) {
        
        [urlString appendString:@"&tip=0"];
    }
    
    if (callbackURLScheme && callbackURLScheme.length > 0) {
        
        [urlString appendFormat:@"&callbackUrlScheme=%@", callbackURLScheme];
    }
    
    NSURL* url = [NSURL URLWithString:urlString];
    
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        
        [[UIApplication sharedApplication] openURL:url];
    }
}


@end
