//
//  FacebookViewController.m
//  JobApp
//
//  Created by Tanya on 7/22/14.
//  Copyright (c) 2014 ustwo.com.ty. All rights reserved.
//

#import "FacebookViewController.h"
#import "webCreator.h"

@interface FacebookViewController ()

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
    
    NSString *url = @"https://www.facebook.com/pageseso/";
    webCreator *webCreate = [[webCreator alloc] init];
    webView = [webCreate loadsWebFromString:url];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
