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

- (NSString *)stringByRollCallingDwarfsInArray: (NSArray *)dwarfs {
    NSString *output = @"";
    for (NSUInteger i = 0; i < [dwarfs count]; i++){
        if (i == 0){
            NSString *header = [NSString stringWithFormat:@"%lu. %@", i+1, dwarfs[0]];
            output = [output stringByAppendingString:header];
        } else {
            NSString *body = [NSString stringWithFormat:@" | %lu. %@", i+1, dwarfs[i]];
            output = [output stringByAppendingString:body];
        }
    }
    return output;
}

- (NSArray *)arrayOfPlaneteerShoutsFromArray: (NSArray *)powers {
    NSMutableArray *output = [[NSMutableArray alloc] init];
    for (NSString *power in powers){
        NSString *powerUp = [power uppercaseString];
        NSString *format = [NSString stringWithFormat:@"%@!",powerUp];
        [output addObject:format];
    }
     return output;
}

- (NSString *)summonCaptainPlanetWithPowers: (NSArray *)powers{
    NSString *output = @"Let our powers combine:";
    NSArray *body =[self arrayOfPlaneteerShoutsFromArray:powers];
    NSString *end = @"\nGo Planet!";
    for (NSString *power in body){
        output = [output stringByAppendingString:[NSString stringWithFormat: @"\n%@", power]];
        
    }
    output = [output stringByAppendingString:end];
    return output;
}

- (NSString *)firstPremiumCheeseInStock: (NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames {
    NSString *output = @"";
    for (NSString *cheese in cheesesInStock){
        for (NSString *premium in premiumCheeseNames) {
            if (cheese == premium) {
                output = [output stringByAppendingString: cheese];
            }
        }
    }
    if ([output length] == 0) {
        output = [output stringByAppendingString:@"No premium cheeses in stock."];
    }
    return output;
}

- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills: (NSArray *)moneyBags {
    NSMutableArray *output = [[NSMutableArray alloc]init];
    for (NSString *dollars in moneyBags) {
        NSUInteger coin = [dollars length];
        NSString *format = [NSString stringWithFormat:@"$%lu",coin];
        [output addObject:format];
    }
    return output;
}

@end
