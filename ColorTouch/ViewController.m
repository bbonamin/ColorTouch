//
//  ViewController.m
//  ColorTouch
//
//  Created by Bruno Bonamin on 26/12/12.
//  Copyright (c) 2012 Bruno Bonamin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor colorWithRed:0.462 green:0.749 blue:0.937 alpha:1.0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadView
{
    //Creates the view property within a frame with the current device bounds
    self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //Executes when the screen is touched!
    NSLog(@"You started to touch the screen!");
}
@end
