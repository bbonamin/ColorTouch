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
    
    //Add a button
    UIButton *firstButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    firstButton.frame = CGRectMake(self.view.frame.size.width/2 - 150, self.view.frame.size.height/2, 300, 44);
    [firstButton setTitle:@"Make 50%" forState:UIControlStateNormal];
    [self.view addSubview:firstButton];
    
    //Add a label
    UILabel *firstLabel = [[UILabel alloc] init];
    firstLabel.frame = CGRectMake(300,100,200,44);
    firstLabel.backgroundColor = [UIColor clearColor];
    [firstLabel setText:@"Imma label"];
    [self.view addSubview:firstLabel];
    
    [firstButton addTarget:self
                    action:@selector(buttonPressed:)
          forControlEvents:UIControlEventTouchUpInside];
    
    //Add a second button
    UIButton *secondButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [secondButton setTitle: @"Make 100%" forState:UIControlStateNormal];
    secondButton.frame = CGRectMake(100, 150, 300, 44);
    [self.view addSubview:secondButton];
    
    [secondButton addTarget:self
                     action:@selector(buttonPressed:)
           forControlEvents:UIControlEventTouchUpInside];
    
    
    
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

- (void)buttonPressed:(UIButton *)sender
{
    NSLog(@"You pressed the button!, sender: %@", sender);
    if ([sender.titleLabel.text isEqualToString:@"Make 50%"]) {
        self.view.alpha = 0.5;
    } else {
        self.view.alpha = 1;
    }
}
@end
