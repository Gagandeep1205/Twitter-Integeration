//
//  ViewController.m
//  twitterGagan
//
//  Created by Gagandeep Kaur on 22/07/15.
//  Copyright (c) 2015 Gagandeep Kaur. All rights reserved.
//

#import "ViewController.h"
#import <TwitterKit/TwitterKit.h>
NSString *x;
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _labelUserID.hidden = YES;
//
//    [[Twitter sharedInstance] logInWithCompletion:^(TWTRSession *session, NSError *error) {
//        
//        if (session) {
//            
//            NSLog(@"User ID is %@", [session userID]);
//           x =  [session userID];
//        } else {
//            
//            NSLog(@"error: %@", [error localizedDescription]);
//        }
//    }];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnActionLogin:(id)sender {
    
    [[Twitter sharedInstance]logInWithCompletion:^(TWTRSession* session, NSError* error) {
        if (session) {
            
            NSLog(@"signed in as %@", [session userName]);
            _labelUserID.hidden = NO;
            _labelUserID.text = (@"Welcome %@",[session userName]);
        } else {
            NSLog(@"error: %@", [error localizedDescription]);
        }
    }];
}
//-(void) deleteCookie {
//    NSHTTPCookieStorage *cookieStorage = [NSHTTPCookieStorage sharedHTTPCookieStorage];
//    for (NSHTTPCookie *each in [[[cookieStorage cookiesForURL:/Users/Gagan/Library/UIApplication Support/iPhone Simulator/<iOSversion>/Library/Cookies/Cookies.binarycookies] copy] autorelease]) {
//        [cookieStorage deleteCookie:each];
//    }
//}
@end
