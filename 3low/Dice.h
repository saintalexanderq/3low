//
//  Dice.h
//  3low
//
//  Created by Alex Quigley on 2017-11-01.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic, assign) int currentValue;
@property (nonatomic, assign) BOOL isHeld;

- (instancetype)initWithHoldCheck; //custom to check bool
- (void)roll;
- (void)print;

@end
