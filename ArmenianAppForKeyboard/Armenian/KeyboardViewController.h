//
//  KeyboardViewController.h
//  Armenian
//
//  Created by Levon Poghosyan on 3/30/16.
//  Copyright © 2016 Levon Poghosyan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Alpha.h"
#import "PredictiveBar.h"

@interface KeyboardViewController : UIInputViewController <AlphaInputDelegate, PredictiveBarDelegate>
{
    // The instance to prediction bar
    PredictiveBar* bar;
    
    // The currently typing word
    NSString* currentWord;
    
    // Flag for currenlty removing character state
    BOOL isUpperCase;
}
@end
