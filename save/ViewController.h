//
//  ViewController.h
//  save
//
//  Created by snzt on 2013/10/28.
//  Copyright (c) 2013年 snzt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *input_weight;
@property (weak, nonatomic) IBOutlet UITextField *input_period;
@property (weak, nonatomic) IBOutlet UIButton *save;

- (IBAction)save:(id)sender;
@end
