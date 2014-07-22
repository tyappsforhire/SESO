//
//  webCreator.m
//  JobApp
//
//  Created by Tanya on 7/22/14.
//  Copyright (c) 2014 ustwo.com.ty. All rights reserved.
//

#import "webCreator.h"

@implementation webCreator

- (UIWebView *) loadsWebFromString:(NSString *)urlString
{
    UIWebView *webView = [[UIWebView alloc] init];
    NSURL *nsurl = [NSURL URLWithString:urlString];
    NSURLRequest *nsrequest=[NSURLRequest requestWithURL:nsurl];
    [webView loadRequest:nsrequest];
    return webView;
}

@end
