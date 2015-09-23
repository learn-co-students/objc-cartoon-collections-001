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

/**
 
 *  Define your method implementations here.
 
 */
- (NSString *) stringByRollCallingDwarfsInArray: (NSArray *)dwarfs {
    NSString *rollCall = @"";
    for (NSUInteger i=0; i < dwarfs.count; i++) {
        if (0<i) {
            rollCall = [rollCall stringByAppendingString:@" | "];
        }
        rollCall = [rollCall stringByAppendingFormat:@"%lu. %@", i+1, dwarfs[i] ];

    }
    
    return rollCall;
}

- (NSArray *) arrayOfPlaneteerShoutsFromArray: (NSArray *) powers {
    NSMutableArray *listOfPowers = [[NSMutableArray alloc] init ];
    for (NSString *nameOfPower in powers) {
        NSString *nameOfPowerWithExclamation = [NSString stringWithFormat:@"%@!", nameOfPower.uppercaseString];
        [listOfPowers addObject: nameOfPowerWithExclamation];
        
    }
    
    return listOfPowers;
}

- (NSString *) summonCaptainPlanetWithPowers: (NSArray *)powers {
    NSString *summonChant = @"Let our powers combine:";
    for (NSUInteger i=0; i< [self arrayOfPlaneteerShoutsFromArray:powers].count; i++) {
        summonChant = [summonChant stringByAppendingFormat:@"\n%@", [self arrayOfPlaneteerShoutsFromArray:powers][i]];
    }
    summonChant = [summonChant stringByAppendingFormat:@"\nGo Planet!"];
    return summonChant;
}

- (NSString *) firstPremiumCheeseInStock: (NSArray *) cheeseInStock premiumCheeseNames: (NSArray *) premiumCheeseName {
    for(NSUInteger i=0; i<cheeseInStock.count; i++) {
        for (NSString *premiumCheese in premiumCheeseName) {
            if ([cheeseInStock[i] isEqualToString:premiumCheese]) {
                return premiumCheese;
            }
        }
    }
    return @"No premium cheeses in stock.";
}

- (NSArray *) arrayByConvertingMoneyBagsIntoPaperBills: (NSArray *) moneyBags {
    NSMutableArray *paperBills = [[NSMutableArray alloc] init];
    for (NSUInteger i=0; i < moneyBags.count; i++) {
        NSString *paperBillEquilivent = [NSString stringWithFormat:@"$%lu", [moneyBags[i] length]];
        [paperBills addObject: paperBillEquilivent];
    }
    return paperBills;
}

@end
