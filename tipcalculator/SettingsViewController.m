//
//  SettingsViewController.m
//  tipcalculator
//
//  Created by Michael Ellison on 1/14/14.
//  Copyright (c) 2014 Michael Ellison. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

// Collecting information from the tip settings UISegmented control
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipSetting;

- (IBAction)setDefaultTip:(id)sender;

@end

@implementation SettingsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
         self.title = @"Settings";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)setDefaultTip:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:[self.tipSetting selectedSegmentIndex] forKey:@"segment"];
    [defaults synchronize];
    
}

- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"view will appear");
    
    // Code for Setting view did load
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int intValue = [defaults integerForKey:@"segment"];
    [self.tipSetting setSelectedSegmentIndex:intValue];
}

@end
