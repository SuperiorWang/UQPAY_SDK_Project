//
//  ViewController.m
//  UQPAY_SDK_Project
//
//  Created by uqpay on 2019/8/14.
//  Copyright © 2019 优钱付. All rights reserved.
//

#import "ViewController.h"
#import <UQPAYSDK/UQPAYSDK.h>

@interface ViewController ()

@property (nonatomic) UQPayApi* api;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.api = [[UQPayApi alloc]initWithModel:TEST];

}

- (IBAction)action:(id)sender {
    OrderInfo *orderInfo = [[OrderInfo alloc]initWithCode:@"585419236346001769500" ScenesEnum:UnionPay];
    
    [self.api pay:orderInfo ViewController:self];
}

@end
