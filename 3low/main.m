//
//  main.m
//  3low
//
//  Created by Alex Quigley on 2017-11-01.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        GameController *diceGame1 = [[GameController alloc] initWithDice];
        
        NSString *inputString;
        
        while (![inputString isEqualToString:@"quit"]) {
            
            NSLog(@"ROLL or HOLD# or RESET or QUIT:");
//            use same fgets sequence as other day
            char userInput [255];
            fgets(userInput, 255, stdin);
            inputString = [NSString stringWithUTF8String:userInput];
            inputString = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
            
            if ([inputString isEqualToString:@"ROLL"]) {
                [diceGame1 roll];
            } else if ([inputString isEqualToString:@"HOLD1"]) {
                [diceGame1 holdDie:[diceGame1.setOfDice objectAtIndex:0]];
            } else if ([inputString isEqualToString:@"HOLD2"]) {
                [diceGame1 holdDie:[diceGame1.setOfDice objectAtIndex:1]];
            } else if ([inputString isEqualToString:@"HOLD3"]) {
                [diceGame1 holdDie:[diceGame1.setOfDice objectAtIndex:2]];
            } else if ([inputString isEqualToString:@"HOLD4"]) {
                [diceGame1 holdDie:[diceGame1.setOfDice objectAtIndex:3]];
            } else if ([inputString isEqualToString:@"HOLD5"]) {
                [diceGame1 holdDie:[diceGame1.setOfDice objectAtIndex:4]];
            } else if ([inputString isEqualToString:@"RESET"]) {
                [diceGame1 resetDice:diceGame1.setOfDice];
            } else if ([inputString isEqualToString:@"QUIT"]) {
                NSLog(@"PZ");
            } else {
                NSLog(@"ERROR");
            }
        }
        return 0;
    }
}
