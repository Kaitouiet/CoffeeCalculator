//
//  ViewController.h
//  CoffeeCalculator
//
//  Created by Kiet Ha on 6/16/19.
//  Copyright © 2019 Kiet Ha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *waterTextField;
@property (weak, nonatomic) IBOutlet UITextField *ratioTextField;
@property (weak, nonatomic) IBOutlet UITextField *coffeeTextField;
@property (weak, nonatomic) IBOutlet UILabel *coffeeNeededLabel;
- (IBAction)calButtonPressed:(id)sender;


@end

