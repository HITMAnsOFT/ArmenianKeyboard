//
//  ViewController.m
//  ArmenianAppForKeyboard
//
//  Created by Levon Poghosyan on 3/30/16.
//  Copyright © 2016 Levon Poghosyan. All rights reserved.
//

#import "ViewController.h"
#import "SwipeView.h"
#import "HelpFirst.h"
#import "HelpSecond.h"
#import "HelpThird.h"
#import "HelpFourth.h"
#import "KeyboardSetup.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
}

- (void)viewWillAppear:(BOOL)animated
{    
    // Set the default values if no setting is configured
    NSUserDefaults* userDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.levonpoghosyan.armeniankeyboard"];
    if ([userDefaults objectForKey:@"ArmKeyboardPrediction"] == nil)
    {
        NSUserDefaults* userDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.levonpoghosyan.armeniankeyboard"];
        [userDefaults setBool:YES forKey:@"ArmKeyboardPrediction"];
        [userDefaults synchronize];
    }
    if ([userDefaults objectForKey:@"ArmKeyboardBoldText"] == nil)
    {
        NSUserDefaults* userDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.levonpoghosyan.armeniankeyboard"];
        [userDefaults setBool:NO forKey:@"ArmKeyboardBoldText"];
        [userDefaults synchronize];
    }
    if ([userDefaults objectForKey:@"ArmKeyboardAutoCapitalization"] == nil)
    {
        NSUserDefaults* userDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.levonpoghosyan.armeniankeyboard"];
        [userDefaults setBool:YES forKey:@"ArmKeyboardAutoCapitalization"];
        [userDefaults synchronize];
    }
    if ([userDefaults objectForKey:@"ArmKeyboardULetter"] == nil)
    {
        NSUserDefaults* userDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.levonpoghosyan.armeniankeyboard"];
        [userDefaults setBool:NO forKey:@"ArmKeyboardULetter"];
        [userDefaults synchronize];
    }
    if ([userDefaults objectForKey:@"ArmKeyboardQuestionSign"] == nil)
    {
        NSUserDefaults* userDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.levonpoghosyan.armeniankeyboard"];
        [userDefaults setBool:NO forKey:@"ArmKeyboardQuestionSign"];
        [userDefaults synchronize];
    }
    
    SwipeView* swipeView = [[SwipeView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    swipeView.delegate = self;
    swipeView.dataSource = self;
    swipeView.bounces = NO;
    
    [self.view addSubview:swipeView];
    
    if ([userDefaults objectForKey:@"ArmenianInitialized"] != nil)
    {
        [swipeView scrollToPage:4 duration:0.0f];
    }
}

-(BOOL) shouldAutorotate
{
    return NO;
}

- (UIInterfaceOrientationMask) supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return interfaceOrientation == UIInterfaceOrientationPortrait;
}
//- (IBAction) flip: (id) sender {
//    UISwitch *onoff = (UISwitch *) sender;
//    NSUserDefaults* userDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.levonpoghosyan.armeniankeyboard"];
//    [userDefaults setBool:onoff.on forKey:@"ArmKeyboardSound"];
//    [userDefaults synchronize];
//}
//
//- (IBAction) pflip: (id) sender {
//    UISwitch *onoff = (UISwitch *) sender;
//    NSUserDefaults* userDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.levonpoghosyan.armeniankeyboard"];
//    [userDefaults setBool:onoff.on forKey:@"ArmKeyboardPrediction"];
//    [userDefaults synchronize];
//}
//
//- (IBAction) bflip: (id) sender {
//    UISwitch *onoff = (UISwitch *) sender;
//    NSUserDefaults* userDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.levonpoghosyan.armeniankeyboard"];
//    [userDefaults setBool:onoff.on forKey:@"ArmKeyboardBoldText"];
//    [userDefaults synchronize];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark SwipeViewDataSource

- (NSInteger)numberOfItemsInSwipeView:(SwipeView *)swipeView
{
    return 5;
}

- (UIView *)swipeView:(SwipeView *)swipeView viewForItemAtIndex:(NSInteger)index reusingView:(UIView *)view
{
    UIView* page;
    switch (index) {
        case 0:
            page = [[HelpFirst alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
            break;
            
        case 1:
            page = [[HelpSecond alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
            break;
            
        case 2:
            page = [[HelpThird alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
            break;
            
        case 3:
            page = [[HelpFourth alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
            break;
            
        case 4:
        {
            NSUserDefaults* userDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.levonpoghosyan.armeniankeyboard"];
            [userDefaults setBool:YES forKey:@"ArmenianInitialized"];
            page = [[KeyboardSetup alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
            break;
        }
    }
    return page;
}

@end
