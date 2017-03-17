//
//  CJMMovieController.m
//  ObjectiveCMovieSearch
//
//  Created by Clay Mills on 3/17/17.
//  Copyright © 2017 PineAPPle LLC. All rights reserved.
//

// implement .h file, static to call API's, call from Plist, network requests

#import "CJMMovieController.h"
#import "CJMMovie.h"

@implementation CJMMovieController

+(void)fetchMovieWithSearchTerm:(NSString *)searchTerm completion:(void (^)(CJMMovie * _Nullable))completion
{
    NSString *baseURLString = @"https://api.themoviedb.org/3/search/movie";
    NSURL *baseURL = [[NSURL new] initWithString:baseURLString];
    NSURLComponents *urlComponents = [NSURLComponents componentsWithURL:baseURL resolvingAgainstBaseURL:YES];
    NSURLQueryItem *apiKey = [NSURLQueryItem queryItemWithName:@"api_key" value:[self fetchAPIKeyFromLocalURL]];
    NSURL *movieSearchURL = [baseURL URLByAppendingPathComponent:[searchTerm lowercaseString]];
    urlComponents.queryItems = @[movieSearchURL, apiKey];
}

+(NSString *)fetchAPIKeyFromLocalURL
{
    NSURL *apiKeyPlistURL = [[NSBundle mainBundle] URLForResource: @"API" withExtension:@"plist"];
    NSDictionary *apiKeyDictionary = [[NSDictionary alloc] initWithContentsOfURL:apiKeyPlistURL];
    NSString *apiKey = apiKeyDictionary[@"APIKey"];
    return apiKey;
}



@end
