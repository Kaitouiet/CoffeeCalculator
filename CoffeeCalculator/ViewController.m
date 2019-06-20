//
//  ViewController.m
//  CoffeeCalculator
//
//  Created by Kiet Ha on 6/16/19.
//  Copyright © 2019 Kiet Ha. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _coffeeTextField.userInteractionEnabled = NO;
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)calButtonPressed:(id)sender {
    NSLog(@"Calculate Pressed");
    float water = [[self.waterTextField text] floatValue];
    float ratio = [[self.ratioTextField text] floatValue];
    NSLog(@"Water: %f & Ratio: %f", water, ratio);
    float coffee = water / ratio;
    NSLog(@"Coffee: %f", coffee);
    NSString *coffeeText = [NSString stringWithFormat:@"%.02f", coffee]; // 2 decimal places
    self.coffeeTextField.text = coffeeText;
    self.coffeeNeededLabel.hidden = NO;
    self.coffeeTextField.hidden = NO;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES]; //makes it so if you touch the view, the keyboard can dismiss
}

@end
