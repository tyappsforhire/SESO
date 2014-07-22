//
//  ActivityIndicatorCreator.m
//  SESO
//
//  Created by Tanya on 7/22/14.
//  Copyright (c) 2014 ustwo.com.ty. All rights reserved.
//

#import "ActivityIndicatorCreator.h"

@implementation ActivityIndicatorCreator

- (UIActivityIndicatorView *) createAcivityIndicator
{
     UIActivityIndicatorView *act = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    
    [act setFrame:CGRectMake(320/2-50, 130, 100, 100)];
    act.layer.cornerRadius = 10;
    [act.layer setBackgroundColor:[[UIColor colorWithWhite: 0.0 alpha:0.30] CGColor]];
    
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(0, 80, act.frame.size.width, 20)];
    [lable setText:@"Loading..."];
    [lable setFont:[UIFont fontWithName:@"Helvetica-Light" size:12.0f]];
    [lable setTextAlignment:NSTextAlignmentCenter];
    [lable setTextColor:[UIColor whiteColor]];
    [act addSubview:lable];
    
    return act;
}

@end
