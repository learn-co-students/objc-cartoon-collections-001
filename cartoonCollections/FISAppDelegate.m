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

-(NSString *) stringByRollCallingDwarfsInArray:(NSArray *)dwarf{
    
    NSString * str = [[NSString alloc] init];
    
    for (NSUInteger i = 0; i < [dwarf count]; i++) {
        NSNumber * num = @(i + 1);
        
        if ( i < [dwarf count] - 1)
        {
            str = [[[[str stringByAppendingString:[num stringValue]]stringByAppendingString:@". "] stringByAppendingString: dwarf[i]] stringByAppendingString:@" | "];
        }
        else{
            str = [[[str stringByAppendingString:[num stringValue]]stringByAppendingString:@". "] stringByAppendingString: dwarf[i]];
        }
        
       // NSLog(@"%lu %@ |", i+1, str);
    }

    return str;
}

-(NSArray *) arrayOfPlaneteerShoutsFromArray:(NSArray *)powers{
    NSMutableArray * arr = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [powers count]; i++) {
        [arr addObject:[[powers[i] uppercaseString] stringByAppendingString:@"!"]];
        
    }
    //NSLog(@"%@", arr);
    return arr;
}

-(NSString *) summonCaptainPlanetWithPowers:(NSArray *)powers{
    NSString * str = [[NSString alloc] init];
    
    str = @"Let our powers combine:\n";
    
    for (NSUInteger i = 0; i < [powers count]; i++) {
        str = [str stringByAppendingString:[[[powers[i] uppercaseString] stringByAppendingString:@"!"] stringByAppendingString: @"\n"]];
    }
    str = [str stringByAppendingString:@"Go Planet!"];
    NSLog(@"%@",str);
    return str;
    
}

-(NSString *) findFirstOfPremiumCheeses:(NSArray *)premiumCheeses inCheesesInStock:(NSArray *)cheeseInStock{
    NSString * str = [[NSString alloc] init];
    
    for (NSUInteger i = 0; i < [premiumCheeses count]; i++) {
        for (NSUInteger a = 0; a < [cheeseInStock count]; a++) {
            if (premiumCheeses[i] == cheeseInStock[a]){
                return [str stringByAppendingString: premiumCheeses[i]];
            }
        }
    }
    return [str stringByAppendingString: @"No premium cheeses in stock."];
}

-(NSArray *) arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags{
    NSMutableArray * arr = [[NSMutableArray alloc] init];
    NSNumber * len = [[NSNumber alloc] init];
    
    for (NSUInteger a = 0; a < [moneyBags count]; a++) {
        len = @([moneyBags[a] length]);
        [arr addObject: [@"$" stringByAppendingString:[len stringValue]]];
    }
    
    return arr;
}

/**
 
 *  Define your method implementations here.
 
 */



@end
