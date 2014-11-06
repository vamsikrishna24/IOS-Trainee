//
//  ViewController.m
//  Cropping image
//
//  Created by mac on 10/31/14.
//  Copyright (c) 2014 paradigm-creatives. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *image = [UIImage imageNamed:@"199vu342jcfpwjpg.jpg"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    
    CGSize size = [image size];
    
    
    [imageView setFrame:CGRectMake(0, 0, 500,300)];
    [[self view] addSubview:imageView];
   
 
    
   
    CGRect rect = CGRectMake(size.width/4, size.height/4,
                             (size.width ), (size.height ));
    
    
    CGImageRef imageRef = CGImageCreateWithImageInRect([image CGImage], rect);
    UIImage *img = [UIImage imageWithCGImage:imageRef];
    CGImageRelease(imageRef);
    
        imageView = [[UIImageView alloc] initWithImage:img];
    [imageView setFrame:CGRectMake(0, 220, (size.width / 4), (size.height / 4))];
    [[self view] addSubview:imageView];
   
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
