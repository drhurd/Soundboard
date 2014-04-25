//
//  FirebaseManager.h
//  PearTest
//
//  Created by Dylan Hurd on 3/11/14.
//  Copyright (c) 2014 Because. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FirebaseManager : NSObject

+ (FirebaseManager *)singleton;
- (void)sendMessage:(NSString*)string;
- (void)sendNumber:(NSNumber*)number;

@end
