//
//  IdramPaymentManager.h
//  Pods
//
//  Created by Gagik Martirosyan on 2/26/16.
//
//

#import <Foundation/Foundation.h>

@interface IdramPaymentManager : NSObject

+ (void)payWithReceiverName:(NSString *)receiverName    // Shows in Idram application
                 receiverId:(NSString *)receiverId      // Receiver's Idram id
                      title:(NSString *)title           //
                     amount:(NSNumber *)amount          //
                     hasTip:(BOOL)hasTip                // Shows Tip field in the screen if hasTip is YES
          callbackURLScheme:(NSString *)callbackURLScheme;

@end
