//
//  ViewController.m
//  shareViaWhattsApp
//
//  Created by Meheboob Nadaf on 20/09/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)whattsApp:(id)sender {
    NSString * msg = @"YOUR MSG";
    NSString * urlWhats = [NSString stringWithFormat:@"whatsapp://send?text=%@",msg];
    
    NSCharacterSet *set = [NSCharacterSet URLHostAllowedCharacterSet];
    NSString *result = [urlWhats stringByAddingPercentEncodingWithAllowedCharacters:set];

    //NSURL * whatsappURL = [NSURL URLWithString:[urlWhats stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    if ([[UIApplication sharedApplication] canOpenURL: [NSURL URLWithString:result]]) {
        [[UIApplication sharedApplication] openURL: [NSURL URLWithString:result]];
    } else {
        NSLog(@"Device not Found");
    }
}
@end
