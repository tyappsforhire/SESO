//
//  WebsiteViewController.m
//  JobApp
//
//  Created by Tanya on 7/22/14.
//  Copyright (c) 2014 ustwo.com.ty. All rights reserved.
//

#import "WebsiteViewController.h"
#import "webCreator.h"

@interface WebsiteViewController ()

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
    
    NSString *url = @"http://apps.seso.go.th/";
    webCreator *webCreate = [[webCreator alloc] init];
    webView = [webCreate loadsWebFromString:url];
    
    
    //changed a bit here
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end
