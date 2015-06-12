//
//  NetworkController.m
//  AnxietyTracker
//
//  Created by Dalton on 6/12/15.
//  Copyright (c) 2015 Dalton. All rights reserved.
//

#import "NetworkController.h"

@implementation NetworkController

- (instancetype) init {
    
    self = [super init];
    if (self) {
        self.sessionManager = [[AFHTTPSessionManager alloc] initWithBaseURL:[NSURL URLWithString:baseURL] sessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    }
    
    return self;
}


- (void)getGeneralInfo:(void (^)(NSDictionary *, NSError *))completion {
    
    [self.sessionManager GET:@"/" parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        
        completion(responseObject, nil);
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        
        completion(nil, error);
        
    }];
    
}


@end
