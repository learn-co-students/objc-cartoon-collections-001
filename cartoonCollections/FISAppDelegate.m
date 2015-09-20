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

-(NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs {
    
    NSString *rollCall = @"";
    
    for (NSUInteger i = 0; i < dwarfs.count; i++) {
        NSUInteger dwarfCount = i + 1;
        NSUInteger endOfArray = dwarfs.count - 1;
        NSString *dwarfNumber = [@(dwarfCount) stringValue];
        
        rollCall = [rollCall stringByAppendingString:dwarfNumber];
        rollCall = [rollCall stringByAppendingString:@". "];
        rollCall = [rollCall stringByAppendingString:dwarfs[i]];
        
        if (i < endOfArray) {
            rollCall = [rollCall stringByAppendingString:@" | "];
        }
        
        
    }
    
    return rollCall;
}
-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {
    
    NSString *powersString = @"";
    
    for (NSUInteger i = 0; i < powers.count; i++) {
        
        powersString = [powersString stringByAppendingString:powers[i]];
        powersString = [powersString stringByAppendingString:@"!,"];
    }
    
    powersString = [powersString uppercaseString];
    powersString = [powersString substringToIndex:[powersString length]-1];
    NSArray *powersUppercase = [powersString componentsSeparatedByString:@","];
    
    return powersUppercase;
}

-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers {
    
    NSArray *uppercasePowers = [self arrayOfPlaneteerShoutsFromArray:(NSArray *)powers];
    NSString *summonCaptain = @"Let our powers combine:\n";
    
    for (NSUInteger i = 0; i < uppercasePowers.count; i++) {
        
        summonCaptain = [summonCaptain stringByAppendingString:uppercasePowers[i]];
        summonCaptain = [summonCaptain stringByAppendingString:@"\n"];
    }
    
    summonCaptain = [summonCaptain stringByAppendingString:@"Go Planet!"];
    
    return summonCaptain;
}

-(NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames{
    
    NSString *cheeseMatchTest;
    
    for (NSUInteger i = 0; i < premiumCheeseNames.count; i++)
    {
        for (NSUInteger j = 0; j < cheesesInStock.count; j++) {
        
            if ([[premiumCheeseNames objectAtIndex:i] isEqualToString:[cheesesInStock objectAtIndex:j]]) {
                
                cheeseMatchTest = [premiumCheeseNames objectAtIndex:i];
                
            }
            
        }
    
        
    }
    if ([cheeseMatchTest length] == 0) {
        return @"No premium cheeses in stock.";
    } else {
        return cheeseMatchTest;
    }
}

-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {
    
    
    NSMutableArray *paperBills = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < moneyBags.count; i++) {
        NSString *convertCoins = [moneyBags objectAtIndex:i];
        NSUInteger coinCount = [[convertCoins componentsSeparatedByString:@"$"] count] -1;
        NSString *coinToPaper = [@(coinCount) stringValue];
        NSString *paperAmount = @"$";
        paperAmount = [paperAmount stringByAppendingString:coinToPaper];
        [paperBills addObject:paperAmount];
        
    }
    
    NSArray *finalAmount = [paperBills copy];
    
    return finalAmount;
}


@end
