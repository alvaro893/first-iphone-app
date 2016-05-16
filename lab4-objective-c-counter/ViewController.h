//
//  ViewController.h
//  lab4-objective-c-counter
//
//  Created by Alvaro Bol on 5/15/16.
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Counter.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *numberLabel;


- (IBAction)plusButtonPressed:(id)sender;
- (IBAction)minusButtonPressed:(id)sender;
- (IBAction)resetButtonPressed:(id)sender;

@end
