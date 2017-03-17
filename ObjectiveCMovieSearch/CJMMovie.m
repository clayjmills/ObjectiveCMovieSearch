//
//  CJMMovie.m
//  ObjectiveCMovieSearch
//
//  Created by Clay Mills on 3/17/17.
//  Copyright © 2017 PineAPPle LLC. All rights reserved.
//

// implement the .h file then go to model controllers, methods, inits, extensions

#import "CJMMovie.h"

@implementation CJMMovie

-(instancetype)initWithName:(NSString *)name voteCount:(NSInteger)voteCount overview:(NSString *) overview
{
    self = [super init];
    if (self) {
        _name = [name copy];
        _voteCount = voteCount;
        _overview = [overview copy];
    }
    return self;
}

@end

@implementation CJMMovie (JSONConvertible)

-(instancetype)initWithDictionary:(NSDictionary<NSString *,id> *)dictionary
{
    NSString *name = dictionary[@"title"];
    NSInteger voteCount = [dictionary[@"vote_count"] integerValue];
    NSString *overview = dictionary[@"overview"];
    
    return [self initWithName:name voteCount:voteCount overview:overview];
}

@end

