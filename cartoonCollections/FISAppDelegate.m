//
//  FISAppDelegate.m
//  cartoonCollections
//
//  Created by Joe Burgess on 6/4/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    return YES;
}

- (NSString *) stringByRollCallingDwarfsInArray: (NSArray *)dwarfs {
    NSUInteger numDwarfs = [dwarfs count];
    NSString *finalRollCall = @"";
    NSString *dwarfsInRoll;
    for (NSUInteger i = 0; i < numDwarfs; i++) {
        dwarfsInRoll = [NSString stringWithFormat:@"%li. %@ | ", i+1, dwarfs[i]];
    finalRollCall = [finalRollCall stringByAppendingFormat:@"%@", dwarfsInRoll];
    }
    NSString *newFinalCall = [finalRollCall substringToIndex:[finalRollCall length]-3];
    finalRollCall = [finalRollCall stringByAppendingString:@","];
    finalRollCall = [finalRollCall substringToIndex:finalRollCall.length-(finalRollCall.length>0)];
    return newFinalCall;
}


- (NSArray *) arrayOfPlaneteerShoutsFromArray: (NSArray *)powers; {
    NSUInteger numPowers = [powers count];
    NSMutableArray *mpowers = [powers mutableCopy];
    for (NSUInteger i = 0; i < numPowers; i++) {
        mpowers[i] = [powers[i] uppercaseString];
        mpowers[i] = [mpowers[i] stringByAppendingString:@"!"];
    }
    return mpowers;
}




- (NSString *) summonCaptainPlanetWithPowers: (NSArray *)powers {
    NSUInteger numPowers = [powers count];
    NSString *words;
    NSString *sentence = @"";
    NSMutableArray *mpowers = [powers mutableCopy];
    for (NSUInteger i = 0; i < numPowers; i++) {
        mpowers[i] = [powers[i] uppercaseString];
        mpowers[i] = [mpowers[i] stringByAppendingString:@"!"];
        words = [NSString stringWithFormat:@"\n%@", mpowers[i]];
        sentence = [sentence stringByAppendingFormat:@"%@", words];
    }
    NSString *new = [@"Let our powers combine:" stringByAppendingFormat:@"%@,", sentence];
    NSString *newString = [new substringToIndex:[new length]-1];
    
    NSString *finalSpeech = [newString stringByAppendingString:@"\nGo Planet!,"];
    finalSpeech = [finalSpeech substringToIndex:finalSpeech.length-(finalSpeech.length>0)];
    return finalSpeech;




}
- (NSString *) firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames {
    NSUInteger numCheeses = [cheesesInStock count];
    NSUInteger numPremuim = [premiumCheeseNames count];
    NSString *firstCheese = @"";
    for (NSUInteger i = 0; i < numCheeses; i++) {
        NSString *currentCheese = cheesesInStock[i];
        for (NSUInteger j = 0; j < numPremuim; j++) {
            NSString *currentCompare = premiumCheeseNames[j];
            if ([currentCheese isEqualToString:currentCompare]) {
                firstCheese = [firstCheese stringByAppendingString:currentCheese];
            }
            else {
                firstCheese = [firstCheese stringByAppendingString:@""];
            }
            
        }
    }
    
    if ([ firstCheese isEqualToString:@""]) {
        firstCheese = [firstCheese stringByAppendingString:@"No premium cheeses in stock."];
    }
    else {
            return firstCheese;
    }
    
    return firstCheese;
    
}
-(NSArray *) arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {
    NSUInteger numElements = [moneyBags  count];
    NSMutableArray *mEmpty = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < numElements; i++) {
        NSUInteger numDollars = [moneyBags[i] length];
        NSString *new = [NSString stringWithFormat:@"$%lu", numDollars];
        [mEmpty addObject:new];
    
    }
    NSArray *paperMoney = [mEmpty copy];
    return paperMoney;
}



@end
