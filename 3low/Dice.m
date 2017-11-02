//
//  Dice.m
//  3low
//
//  Created by Alex Quigley on 2017-11-01.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import "Dice.h"

@implementation Dice
//CUSTOM INIT TO CHECK BOOL
- (instancetype)initWithHoldCheck {
    self = [super init];
    if (self ) {
        _isHeld = NO;
    }
    return self;
}


- (void) roll {
    if (!self.isHeld) {
        self.currentValue = arc4random_uniform(6) + 1;
    }
}

- (void)print {
    if (!self.isHeld) {
        switch (self.currentValue) {
            case 1:
                NSLog(@"I ⚀");
                break;
            case 2:
                NSLog(@"II ⚁");
                break;
            case 3:
                NSLog(@"III ⚂");
                break;
            case 4:
                NSLog(@"IV ⚃");
                break;
            case 5:
                NSLog(@"V ⚄");
                break;
            case 6:
                NSLog(@"VI ⚅");
                break;
        }
    }
    if (self.isHeld) {
        switch (self.currentValue) {
            case 1:
                NSLog(@"[I ⚀]");
                break;
            case 2:
                NSLog(@"[II ⚁]");
                break;
            case 3:
                NSLog(@"[III ⚂]");
                break;
            case 4:
                NSLog(@"[IV ⚃]");
                break;
            case 5:
                NSLog(@"[V ⚄]");
                break;
            case 6:
                NSLog(@"[VI ⚅]");
                break;
        }
    }
}

@end

