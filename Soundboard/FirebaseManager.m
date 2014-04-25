//
//  FirebaseManager.m
//  PearTest
//
//  Created by Dylan Hurd on 3/11/14.
//  Copyright (c) 2014 Because. All rights reserved.
//

#import "FirebaseManager.h"
#import <Firebase/Firebase.h>

@interface FirebaseManager()
@property (nonatomic, strong) Firebase* f;
@end


@implementation FirebaseManager

static FirebaseManager *fm = nil;
+ (FirebaseManager *)singleton
{
    if (!fm) {
        fm = [[FirebaseManager alloc] init];
        [fm refresh];
    }
    return fm;
}

- (void)refresh
{
    self.f = [[Firebase alloc] initWithUrl:@"https://pearsync.firebaseIO.com/sound/"];
}

- (void)sendMessage:(NSString*)string
{
    NSLog(@"Sending message");
    [self.f setValue:string withCompletionBlock:^(NSError *error, Firebase *ref) {
        if (error) {
            NSLog(@"sending went wrong");
        }
        else {
            NSLog(@"send success");
        }
    }];
}

- (void)sendNumber:(NSNumber*)number
{
    NSLog(@"Sending message");
    [self.f setValue:number withCompletionBlock:^(NSError *error, Firebase *ref) {
        if (error) {
            NSLog(@"sending went wrong");
        }
        else {
            NSLog(@"send success");
        }
    }];
}


@end
