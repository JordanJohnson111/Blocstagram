//
//  DataSource.m
//  Blocstagram
//
//  Created by Jordan Johnson on 8/25/16.
//  Copyright © 2016 Bloc. All rights reserved.
//

#import "DataSource.h"

@interface DataSource()

@property (nonatomic,strong) NSArray *mediaItems;

@end



@implementation DataSource

+(instancetype) sharedInstance {
    static dispatch_once_t once;
    static id sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

@end
