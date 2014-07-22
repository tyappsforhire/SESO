//
//  FacebookViewController.m
//  JobApp
//
//  Created by Tanya on 7/22/14.
//  Copyright (c) 2014 ustwo.com.ty. All rights reserved.
//

#import "FacebookViewController.h"
#import "ActivityIndicatorCreator.h"

@interface FacebookViewController ()
{
    UIActivityIndicatorView *act;
}

@end

@implementation FacebookViewController

@synthesize webView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    act = [[UIActivityIndicatorView alloc] init];
    ActivityIndicatorCreator *activityCreator = [[ActivityIndicatorCreator alloc] init];
    act = [activityCreator createAcivityIndicator];
    [self.view addSubview:act];
    [act startAnimating];
    
    [self performSelector:@selector(loadWebView) withObject:nil afterDelay:0];
}

- (void) loadWebView
{
    NSString *url = @"https://www.facebook.com/pageseso/";
    NSURL *nsurl = [NSURL URLWithString:url];
    NSURLRequest *nsrequest=[NSURLRequest requestWithURL:nsurl];
    [webView loadRequest:nsrequest];
    
    [act stopAnimating];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
