//
//  ViewController.m
//  ObjC
//
//  Created by Lucas Fernandez Nicolau on 08/05/20.
//  Copyright © 2020 Lucas Fernandez Nicolau. All rights reserved.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>
#import <XMPFramework/XMPReader.h>
#import <XMPFramework/XMPWriter.h>
#import <CoreImage/CoreImage.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSURL *url = [[NSBundle mainBundle] URLForResource:@"gabriel" withExtension:@"jpg"];

    XMPWriter *writer = [[XMPWriter alloc] initWithFilePath:url];
    BOOL writeSuccessful = [writer setInteger:0 forKey:@"IncrementalTemperature"];
    BOOL writeSuccessful2 = [writer setInteger:100 forKey:@"GreenSaturation"];
    BOOL syncSuccessful = [writer synchronize]; // synchronizes the changes

    XMPReader *reader = [[XMPReader alloc] initWithFilePath:url];
    NSInteger *output = [reader integerForKey:@"IncrementalTemperature"];
    NSInteger *output2 = [reader integerForKey:@"GreenSaturation"];

    NSData *picData = [NSData dataWithContentsOfURL:url];
    CIImage *i = [CIImage imageWithData:picData];

    printf("%d\n", output);
    printf("%d", output2);

//    UIImageView *imgView = [UIImageView alloc];
    //    imgView.image = [UIImage imageWithData:picData];
    //    [self.view addSubview:imgView];
}


@end
