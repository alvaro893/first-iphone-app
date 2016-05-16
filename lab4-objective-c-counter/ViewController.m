//
//  ViewController.m
//  lab4-objective-c-counter
//
//  Created by Alvaro Bol on 5/15/16.
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "Counter.h"

@interface ViewController ()
@property (strong, nonatomic) Counter *counter;
-(void) updateCount;
@end


@implementation ViewController
@synthesize numberLabel;
@synthesize counter;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    // initialize counter
    [super viewDidLoad];
	counter = [[Counter alloc] init];
    [counter reset];
}

- (void)viewDidUnload
{
    [self setNumberLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}
// MARK: actions
- (IBAction)plusButtonPressed:(id)sender {
    [counter add];
    [self updateCount];
}

- (IBAction)minusButtonPressed:(id)sender {
    [counter substract];
    [self updateCount];
}

- (IBAction)resetButtonPressed:(id)sender {
    [counter reset];
    [self updateCount];
}

// MARK: private functions
- (void)updateCount{
    NSString *text = [NSString stringWithFormat:@"%i", counter.count];
    numberLabel.text = text;
}
@end
