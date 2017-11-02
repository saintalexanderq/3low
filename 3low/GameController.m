//
//  GameController.m
//  3low
//
//  Created by Alex Quigley on 2017-11-01.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import "GameController.h"


@implementation GameController

- (instancetype)initWithDice {
    self = [super init];
    
    Dice *dice0 = [[Dice alloc] initWithHoldCheck];
    Dice *dice1 = [[Dice alloc] initWithHoldCheck];
    Dice *dice2 = [[Dice alloc] initWithHoldCheck];
    Dice *dice3 = [[Dice alloc] initWithHoldCheck];
    Dice *dice4 = [[Dice alloc] initWithHoldCheck];
    
    _setOfDice = @[dice0, dice1, dice2, dice3, dice4];
    
    return self;
}

- (void) roll {
    for (Dice *dice in self.setOfDice) {
        [dice roll];
    }
    [self printDiceAndScore];
}

- (void)holdDie:(Dice *)dice {
    dice.isHeld = !dice.isHeld;
    [self printDiceAndScore];
}



- (void)resetDice:(NSArray *)gameDice {
    for (Dice *dice in gameDice) {
        dice.isHeld = NO;
    }
    [self printDiceAndScore];
}

-(int) score {
    int score = 0;
    for (Dice *dice in self.setOfDice) {
        if (dice.isHeld) {
            if (dice.currentValue != 3) {
                score = score + dice.currentValue;
            }
        }
    }
    return score;
}

- (void)printDiceAndScore {
    for (Dice *dice in self.setOfDice) {
        [dice print];
    }
    NSLog(@"Current score:%i", [self score]);
    
}

@end
