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

-(NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs{
    NSMutableString *dwarfString =  [[NSMutableString alloc] init];
    for(NSUInteger i = 0; i < [dwarfs count]; i++){
        NSUInteger num = i + 1;
        NSString * dwarfName = dwarfs[i];
        if (num == [dwarfs count]){

            NSString *sentence = [NSString stringWithFormat:@" %lu. %@", num, dwarfName];
        [dwarfString appendString:sentence];
  
        }
        else if (num == 1){
            NSString *sentence = [NSString stringWithFormat:@"%lu. %@ |", num, dwarfName];
            [dwarfString appendString:sentence];
        }
        else{
            NSString *sentence = [NSString stringWithFormat:@" %lu. %@ |", num, dwarfName];
            [dwarfString appendString:sentence];

        }
        
    }
    NSString *immutableDwarfString = [NSString stringWithString:dwarfString];
    return immutableDwarfString;
}
//arrayOfPlaneteerShoutsFromArray: that takes one NSArray argument called powers and returns an NSArray.
-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers{
    NSMutableArray *shoutingPower = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < [powers count];i++){
        NSString *power = powers[i];
        NSString *yellingPower = [power uppercaseString];
        NSString *exclaimingPower = [NSString stringWithFormat:@"%@!", yellingPower];
        [shoutingPower addObject:exclaimingPower];
        
    }
    NSArray *allThePowers = [shoutingPower copy];
    return allThePowers;
}

//summonCaptainPlanetWithPowers: that takes one NSArray argument called powers and returns an NSString.
-(NSString *)summonCaptainPlanetWithPowers:(NSArray * )powers{
    NSString *starting = @"Let our powers combine:";
    NSString *ending = @"Go Planet!";
    
    NSMutableString *shoutingPower = [[NSMutableString alloc] init];
    for (NSUInteger i = 0; i < [powers count];i++){
        NSString *power = powers[i];
        NSString *yellingPower = [power uppercaseString];
        NSString *exclaimingPower = [NSString stringWithFormat:@"%@!\n", yellingPower];
        [shoutingPower appendString:exclaimingPower];
        
    }
     NSString *allThePowers = [shoutingPower copy];
    NSString *sentence = [NSString stringWithFormat:@"%@\n%@%@", starting, allThePowers, ending];
    
    return sentence;
}

//findFirstOfPremiumCheeses:inCheesesInStock: that takes two NSArray arguments called premiumCheeses and cheesesInStock, and returns an NSString.
-(NSString *)findFirstOfPremiumCheeses:(NSArray *)premiumCheeses inCheesesInStock:(NSArray *)cheesesInStock{
    NSMutableString *correctCheese = [[NSMutableString alloc] init];
    for (NSUInteger i=0; i <[premiumCheeses count]; i++){
        NSString *cheese = premiumCheeses[i];
        for (NSUInteger j = 0; j<[cheesesInStock count]; j++){
            NSString *firstCheeseInStock = cheesesInStock[j];
            if ([cheese isEqualToString:firstCheeseInStock]) {
                [correctCheese appendString:cheese];
                return correctCheese;
            }
           
        }
    }
        return @"No premium cheeses in stock.";
}

//arrayByConvertingMoneyBagsIntoPaperBills: that takes one NSArray argument moneyBags and returns an NSArray.
//
-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags{
    NSMutableArray *numericalMoney = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < [moneyBags count]; i++){
        NSString *dollas = moneyBags[i];
        NSInteger count = [dollas length];
        NSString *moneySign =@"$";
        NSString *moneys = [NSString stringWithFormat:@"%lu", count];
        NSMutableString *together = [[NSMutableString alloc] init];
        [together appendString:moneySign];
        [together appendString:moneys];
        [numericalMoney addObject:together];
        
    }

    return numericalMoney;
}

@end
