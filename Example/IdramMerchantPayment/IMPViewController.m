//
//  IMPViewController.m
//  IdramMerchantPayment
//
//  Created by Gagik Martirosyan on 02/26/2016.
//  Copyright (c) 2016 Gagik Martirosyan. All rights reserved.
//

#import "IMPViewController.h"
#import "IdramPaymentManager.h"


@interface IMPViewController ()

@property (weak, nonatomic) IBOutlet UITextField *receiverNameField;
@property (weak, nonatomic) IBOutlet UITextField *receiverIdField;
@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UITextField *amountField;
@property (weak, nonatomic) IBOutlet UITextField *callbackURLSchemeField;
@property (weak, nonatomic) IBOutlet UISwitch *hasTipSwitch;

@end

@implementation IMPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)payButtonAction:(id)sender {
    
    NSNumber* amount = [NSNumber numberWithFloat:[_amountField.text floatValue]];
    [IdramPaymentManager payWithReceiverName:_receiverNameField.text
                                  receiverId:_receiverIdField.text
                                       title:_titleField.text
                                      amount:amount
                                      hasTip:_hasTipSwitch.isOn
                           callbackURLScheme:_callbackURLSchemeField.text];
}

@end
