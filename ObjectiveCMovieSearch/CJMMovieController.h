//
//  CJMMovieController.h
//  ObjectiveCMovieSearch
//
//  Created by Clay Mills on 3/17/17.
//  Copyright © 2017 PineAPPle LLC. All rights reserved.
//

// connect with model using @class, fetch API, make nonnullable

#import <Foundation/Foundation.h>
@class CJMMovie;

NS_ASSUME_NONNULL_BEGIN

@interface CJMMovieController : NSObject

+(void)fetchMovieWithSearchTerm:(NSString *)searchTerm completion: (void(^)(CJMMovie * _Nullable))completion;

+(NSString *)fetchAPIKeyFromLocalURL;

@end

NS_ASSUME_NONNULL_END
