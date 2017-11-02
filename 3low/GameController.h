//
//  GameController.h
//  3low
//
//  Created by Alex Quigley on 2017-11-01.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property (nonatomic, strong) NSArray *setOfDice;

- (instancetype)initWithDice;
- (void)roll;
- (void)holdDie:(Dice *)dice;
- (void)resetDice:(NSArray *)gameDice;
- (int)score;
- (void)print;

@end
