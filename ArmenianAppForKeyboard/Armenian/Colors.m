//
//  Colors.m
//  ArmenianAppForKeyboard
//
//  Created by Levon Poghosyan on 3/30/16.
//  Copyright © 2016 Levon Poghosyan. All rights reserved.
//

#import "Colors.h"

@implementation Colors

@synthesize textDocumentProxy;
@synthesize isBoldEnabled;

+ (id)sharedManager
{
    static Colors *sharedMyManager = nil;
    @synchronized(self) {
        if (sharedMyManager == nil)
        {
            sharedMyManager = [[self alloc] init];
        }
    }
    return sharedMyManager;
}

- (UIColor*) buttonBackgroundColor
{
    if (self.textDocumentProxy.keyboardAppearance == UIKeyboardAppearanceDark)
    {
        // dark mode
        return [UIColor colorWithRed:90.f/255.f green:90.f/255.f blue:90.f/255.f alpha:1.f];
    }
    else
    {
        // bright mode
        return [UIColor whiteColor];
    }
}

- (UIColor*) buttonTextBackgroundColor
{
    if (self.textDocumentProxy.keyboardAppearance == UIKeyboardAppearanceDark)
    {
        // dark mode
        return [UIColor whiteColor];
    }
    else
    {
        // bright mode
        return [UIColor blackColor];
    }
}

- (UIColor*) buttonSpecialBackgroundColor
{
    if (self.textDocumentProxy.keyboardAppearance == UIKeyboardAppearanceDark)
    {
        // dark mode
        return [UIColor colorWithRed:57.f/255.f green:57.f/255.f blue:57.f/255.f alpha:1.f];
    }
    else
    {
        // bright mode
        return [UIColor colorWithRed:174.f/255.f green:179.f/255.f blue:190.f/255.f alpha:1.f];
    }
}

- (UIColor*) buttonSpecialTintColor
{
    return [UIColor whiteColor];
}

- (UIColor*) buttonSpecialTintSelectedColor
{
    return [UIColor blackColor];
}

- (UIColor*) buttonSpecialBackgroundColorSelected
{
    if (self.textDocumentProxy.keyboardAppearance == UIKeyboardAppearanceDark)
    {
        // dark mode
        return [UIColor colorWithRed:174.f/255.f green:179.f/255.f blue:190.f/255.f alpha:1.f];
    }
    else
    {
        // bright mode
        return [UIColor whiteColor];
    }
}

- (UIColor*) buttonSuggestionBackgroundColor
{
    if (self.textDocumentProxy.keyboardAppearance == UIKeyboardAppearanceDark)
    {
        // dark mode
        return [UIColor colorWithRed:57.f/255.f green:57.f/255.f blue:57.f/255.f alpha:1.f];
    }
    else
    {
        // bright mode
        return [UIColor colorWithRed:174.f/255.f green:179.f/255.f blue:190.f/255.f alpha:1.f];
    }
}

- (UIColor*) buttonSuggestionTextColor
{
    return [UIColor whiteColor];
}

- (UIColor*) buttonSuggestionSelectedBackgroundColor
{
    if (self.textDocumentProxy.keyboardAppearance == UIKeyboardAppearanceDark)
    {
        // dark mode
        return [UIColor colorWithRed:174.f/255.f green:179.f/255.f blue:190.f/255.f alpha:1.f];
    }
    else
    {
        // bright mode
        return [UIColor whiteColor];
    }
}

- (UIColor*) buttonShadowColor
{
    if (self.textDocumentProxy.keyboardAppearance == UIKeyboardAppearanceDark)
    {
        return [UIColor blackColor];
    }
    else
    {
        return [UIColor colorWithRed:136 / 255.f green:138 / 255.f blue:142 / 255.f alpha:1];
    }
}

- (UIColor*) backgroundColor
{
    if (self.textDocumentProxy.keyboardAppearance == UIKeyboardAppearanceDark)
    {
        return [UIColor colorWithRed:0.0f green:0.0f blue:0.0f alpha:0.002f];
    }
    else
    {
        return [UIColor colorWithRed:1.0f green:1.0f blue:1.0f alpha:0.002f];
    }
}

- (NSString*) keyboardFont
{
    if (self.isBoldEnabled)
        return @"ArianAMU-Bold";
    else
        return @"ArianAMU";
}

- (int) keyboardFontSize
{
    if (self.isBoldEnabled)
        return 2;
    else
        return 0;
}

@end
