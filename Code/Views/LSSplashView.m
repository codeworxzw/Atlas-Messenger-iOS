//
//  LSSplashView.m
//  LayerSample
//
//  Created by Kevin Coleman on 9/24/14.
//  Copyright (c) 2014 Layer, Inc. All rights reserved.
//

#import "LSSplashView.h"

@interface LSSplashView ()

@property (nonatomic) UIImageView *logoImageView;
@property (nonatomic) UIActivityIndicatorView *spinner;
@end

@implementation LSSplashView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        
        self.logoImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logo"]];
        self.logoImageView.center = CGPointMake(self.center.x, self.center.y - 40);
        self.logoImageView.alpha = 0.10;
        [self addSubview:self.logoImageView];
       
        self.spinner = [[UIActivityIndicatorView alloc] init];
        self.spinner.center = CGPointMake(self.center.x, self.center.y + 40);
        self.spinner.color = [UIColor blackColor];
        [self.spinner startAnimating];
        [self addSubview:self.spinner];
    }
    return self;
}

@end
