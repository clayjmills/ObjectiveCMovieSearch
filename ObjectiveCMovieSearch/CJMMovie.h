//
//  CJMMovie.h
//  ObjectiveCMovieSearch
//
//  Created by Clay Mills on 3/17/17.
//  Copyright © 2017 PineAPPle LLC. All rights reserved.
//

// properties, initializers, extensions, methods

#import <Foundation/Foundation.h>

@interface CJMMovie : NSObject

- (instancetype)initWithName:(NSString *)name voteCount:(NSInteger)voteCount overview:(NSString *) overview;


@property (nonatomic, copy, readonly) NSString *name;
@property (nonatomic, readonly) NSInteger voteCount;
@property (nonatomic, copy, readonly) NSString *overview;

@end

@interface CJMMovie (JSONConvertible)

-(instancetype)initWithDictionary:(NSDictionary<NSString *, id>*)dictionary;

@end
