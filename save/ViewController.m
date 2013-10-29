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
    int k = [self kiso:(int)w];
    NSLog(@"基礎代謝は%d",k);
    int s = [self syouhi:(int)k];
    NSLog(@"消費カロリーは%d",s);
    [self check:(int)w int:(int)p];
}

-(int)kiso:(int)w{
    //18~29の女性として計算
    w = w*23.5;
    NSLog(@"基礎呼ばれたよ");
    return w;
}

- (int)syouhi:(int)k{
    //運動強度低い
    k = k*1.3;
    NSLog(@"消費呼ばれたよ");
    return k;
}

- (void)check:(int)check_w int:(int)check_p{
    check_w = check_w/check_p;
    NSLog(@"ほげほげ%d",check_w);
    BOOL check_goal;
    if(check_w>5){
        NSLog(@"目標の見直しが必要です");
        check_goal = NO;
    }else{
        NSLog(@"適切な目標です");
        check_goal = YES;
    }
    
}


@end
