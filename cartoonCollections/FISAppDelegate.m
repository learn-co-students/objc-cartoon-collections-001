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
    
    NSArray *dwarfsToBeRollCalled = @[ @"Doc"     ,
                              @"Grumpy"  ,
                              @"Happy"   ,
                              @"Sleepy"  ,
                              @"Bashful" ,
                              @"Sneezy"  ,
                              @"Dopey"   ];
    
    NSString *dwarves = [self stringByRollCallingDwarfsInArray:dwarfsToBeRollCalled];
    NSLog(@"%@", dwarves);
    
    NSArray *powersToBeCombined = @[ @"earth" ,
                            @"fire"  ,
                            @"wind"  ,
                            @"water" ,
                            @"heart" ];
    NSArray *powerPowers = [self arrayOfPlaneteerShoutsFromArray:powersToBeCombined];
    NSLog(@"%@",powerPowers);
    
    NSString *powerChant = [self summonCaptainPlanetWithPowers:powersToBeCombined];
    NSLog(@"%@",powerChant);
    
    NSString *camembert = @"camembert";
    
    NSArray *premiumCheeses = @[ @"brie",
                        camembert    ,
                        @"jarlsberg" ];
    
    NSArray *cheesesInStock = @[ @"cheddar"       ,
                        camembert        ,
                        @"string cheese" ];
    
    NSString *premCheeseResults = [self firstPremiumCheeseInStock:premiumCheeses premiumCheeseNames:cheesesInStock];
    NSLog(@"%@",premCheeseResults);
    
    NSArray *scroogesMoneyBags = @[ @"$$$$$"      ,
                           @"$"          ,
                           @"$$"         ,
                           @"$$$$$$$$$$" ];
    NSArray *scroogeResult = [self arrayByConvertingMoneyBagsIntoPaperBills:scroogesMoneyBags];
    NSLog(@"%@",scroogeResult);
    
    return YES;
}

- (NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs{
    NSMutableString *mutableNames = [[NSMutableString alloc] init];
    

    for (NSInteger i=0; i < [dwarfs count]; i++) {
        NSString *theName = dwarfs[i];
        NSInteger theNumber = i+1;
        if(i < [dwarfs count]-1){
            [mutableNames appendFormat:@"%li. %@ | ",theNumber,theName];
        } else {
            [mutableNames appendFormat:@"%li. %@",theNumber,theName];
        }
    }
    NSString *dwarfNames = [NSString stringWithString:mutableNames];
    return dwarfNames;
}


- (NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers{
    NSMutableArray *mutableShoutingPowers = [[NSMutableArray alloc] init];
    
    for (NSInteger i=0; i < [powers count]; i++){
        NSString *thePower = powers[i];
        thePower = [thePower uppercaseString];
        thePower = [thePower stringByAppendingFormat:@"!"];
        [mutableShoutingPowers addObject:thePower];
    }
    
    NSArray *theResults = [NSArray arrayWithArray:mutableShoutingPowers];
    
    return theResults;
}


- (NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers{
    NSArray *testing = [self arrayOfPlaneteerShoutsFromArray:powers];
    NSMutableString *thePowersShouting = [[NSMutableString alloc] init];
    for (NSInteger i=0; i < powers.count; i++) {
        [thePowersShouting appendFormat:@"\n%@",testing[i]];
    }
    NSString *theResult = [NSString stringWithFormat:@"Let our powers combine:%@\nGo Planet!",thePowersShouting];
    
    return theResult;
}


- (NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames{
    NSString *resultsCheese = @"";
    NSInteger theTicker = premiumCheeseNames.count;
    for (NSInteger i=0; i < theTicker; i++) {
        if ([cheesesInStock containsObject:premiumCheeseNames[i]]) {
            resultsCheese = premiumCheeseNames[i];
            theTicker = 0;
        } else {
            resultsCheese = @"No premium cheeses in stock.";
        }
        
        
        
    }
    
    return resultsCheese;
}

- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags{
    NSString *bagsOfMoney = @"";
    NSMutableArray *scroogeCash = [[NSMutableArray alloc] init];
    
    for (NSInteger i=0; i<moneyBags.count;i++) {
        bagsOfMoney = moneyBags[i];
        NSUInteger totalAmount = bagsOfMoney.length;
        NSString *cashCash = [NSString stringWithFormat:@"$%lu",totalAmount];
        [scroogeCash addObject:cashCash];
        NSLog(@"%@",cashCash);
        
    }
    
    NSArray *theResults = [NSArray arrayWithArray:scroogeCash];
    
    return theResults;
}


@end
