//
//  ViewController.m
//  save
//
//  Created by snzt on 2013/10/28.
//  Copyright (c) 2013年 snzt. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)save:(id)sender {
    NSUserDefaults *weight = [NSUserDefaults standardUserDefaults];
    NSUserDefaults *period = [NSUserDefaults standardUserDefaults];
    [weight setObject:self.input_weight.text forKey:@"my_weight"];
    [weight setObject:self.input_period.text forKey:@"my_period"];
    int w = [weight integerForKey:@"my_weight"];
    int p = [period integerForKey:@"my_period"];
    NSLog(@"体重は%d",w);
    NSLog(@"期間は%d",p);
    
}
@end
