//
//  WebsiteViewController.m
//  JobApp
//
//  Created by Tanya on 7/22/14.
//  Copyright (c) 2014 ustwo.com.ty. All rights reserved.
//

#import "WebsiteViewController.h"
#import "ActivityIndicatorCreator.h"

@interface WebsiteViewController ()
{
    UIActivityIndicatorView *act;
}

@end

@implementation WebsiteViewController

@synthesize webView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
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
    NSString *url = @"http://apps.seso.go.th/";    
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
