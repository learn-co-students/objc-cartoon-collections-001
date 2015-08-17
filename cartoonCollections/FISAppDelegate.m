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

-(NSString*)stringByRollCallingDwarfsInArray:(NSArray*)dwarfs {
    NSString *dwarfRoll = @"";
    for (NSUInteger i = 0; i < [dwarfs count]; i++) {
        NSString *dwarfPlace = [NSString stringWithFormat: @"%lu. %@", i + 1, dwarfs[i]];
        if (i < [dwarfs count] - 1) {
            dwarfPlace = [dwarfPlace  stringByAppendingString: @" | " ];
        }
        dwarfRoll = [dwarfRoll stringByAppendingString: dwarfPlace ];
    }
    return dwarfRoll;
}

-(NSArray*)arrayOfPlaneteerShoutsFromArray:(NSArray*)powers {
    NSMutableArray *powersShout = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < [powers count]; i++) {
        NSString *upperCasePower = [NSString stringWithFormat: @"%@!", [powers[i] uppercaseString]];
        [powersShout addObject:upperCasePower];
    }
    return powersShout;
}

-(NSString*)summonCaptainPlanetWithPowers:(NSArray*)powers {
    NSArray *powersShout = [self arrayOfPlaneteerShoutsFromArray:powers];
    NSString *captCall = @"Let our powers combine:";
    for (NSUInteger i = 0; i < [powers count]; i++) {
        NSString *power = [NSString stringWithFormat: @"\n%@", powersShout[i]];
        captCall = [captCall stringByAppendingString: power];
    }
    captCall = [captCall stringByAppendingString: @"\nGo Planet!"];
    return captCall;
}

-(NSString*)findFirstOfPremiumCheeses:(NSArray*)premiumCheeses inCheesesInStock:(NSArray*)cheesesInStock{
    NSString *match = [premiumCheeses firstObjectCommonWithArray: cheesesInStock];
    if (match){
        return match;
    } else {
        return @"No premium cheeses in stock.";
    }
}

-(NSArray*)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray*)moneyBags {
    NSMutableArray *paperBills = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < [moneyBags count]; i++) {
        NSString *bill = [NSString stringWithFormat: @"$%lu", [moneyBags[i] length]];
        [paperBills addObject:bill];
    }
    return paperBills;
}

@end
