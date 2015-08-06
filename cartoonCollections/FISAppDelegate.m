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

-(NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs {
    NSMutableString *result = [[NSMutableString alloc] init];
    for (int i=0; i<[dwarfs count]; i++){
        [result appendFormat:@"%d. %@ | ", i+1, dwarfs[i]];
    }
    
    [result deleteCharactersInRange:NSMakeRange([result length] - 3, 3)];
    return [result copy];
}

-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {
    NSUInteger length = [powers count];
    NSMutableArray *result = [[NSMutableArray alloc] initWithCapacity:length];
                              
    for(int i=0; i<length; i++){
        result[i] = [[powers[i] uppercaseString] stringByAppendingString:@"!"];
    }
    
    return [result copy];
}

-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers {
    NSArray *shouts = [self arrayOfPlaneteerShoutsFromArray:powers];
    NSMutableString *result = [[NSMutableString alloc] initWithString:@"Let our powers combine:\n"];
    
    for (int i=0; i < [shouts count]; i++){
        [result appendFormat:@"%@\n", shouts[i]];
    }
    [result appendString:@"Go Planet!"];
    
    return result;
}

-(NSString *)findFirstOfPremiumCheeses:(NSArray *)premiumCheeses inCheesesInStock:(NSArray *)cheesesInStock {
    for (int i=0; i < [cheesesInStock count]; i++)
        for (int j=0; j < [premiumCheeses count]; j++)
            if ( [premiumCheeses[j] isEqualToString:cheesesInStock[i]])
                return premiumCheeses[j];
    return @"No premium cheeses in stock.";
}

-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {
    NSUInteger length = [moneyBags count];
    NSMutableArray *result = [[NSMutableArray alloc] initWithCapacity:length];
    for (int i=0; i<length; i++){
        result[i] = [NSString stringWithFormat:@"$%lu", [moneyBags[i] length]];
    }
    return result;
}


@end
