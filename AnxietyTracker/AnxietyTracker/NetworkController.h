//
//  NetworkController.h
//  AnxietyTracker
//
//  Created by Dalton on 6/12/15.
//  Copyright (c) 2015 Dalton. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AFNetworking.h"

static NSString * const baseURL = @"http://time.jsontest.com";


@interface NetworkController : NSObject

@property (nonatomic, strong) AFHTTPSessionManager *sessionManager;

- (void)getGeneralInfo:(void (^)(NSDictionary *, NSError *))completion;

@end
