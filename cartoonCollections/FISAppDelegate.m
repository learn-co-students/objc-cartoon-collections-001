//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs {
    
    NSMutableString *rollCall = [[NSMutableString alloc] init];
    for (NSUInteger i = 0; i < [dwarfs count]; i++) {
        NSUInteger lineNumber = i+1;
        [rollCall appendFormat:@"%lu. %@", lineNumber, dwarfs[i]];
        
        if(i != [dwarfs count]-1){
            [rollCall appendString:@" | "]; 
        }
    }
    
    return rollCall;
}

-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {
    NSMutableArray *powersShouted = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [powers count]; i++) {
        [powersShouted addObject:[NSString stringWithFormat:@"%@!",[powers[i] uppercaseString]]];
    }
    return powersShouted;
}

-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers {
    NSArray *powersShouted = [self arrayOfPlaneteerShoutsFromArray:powers];
    NSMutableString *powersCombined = [[NSMutableString alloc] init];
    
    [powersCombined appendString:@"Let our powers combine:\n"];
    
    for (NSUInteger i = 0; i < [powersShouted count]; i++) {
        [powersCombined appendFormat:@"%@\n",powersShouted[i]];
    }
    
    [powersCombined appendString:@"Go Planet!"];
    
    return powersCombined;
}
-(NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock
                    premiumCheeseNames:(NSArray *)premiumCheeseNames {
    
    NSString *message = @"No premium cheeses in stock.";
    for (NSString *cheese in cheesesInStock) {
        if ([premiumCheeseNames containsObject:cheese]) {
            return cheese;
        }
    }
    
    return message;
}
-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {
    
    NSMutableArray *moneyBagsAsBills = [[NSMutableArray alloc] init];
    NSUInteger countOfDollarSigns = 0;
    
    for(NSString *dollarSigns in moneyBags) {
        if ([dollarSigns containsString:@"$"]) {
            countOfDollarSigns = [[dollarSigns componentsSeparatedByString:@"$"] count] - 1;
        } else  {
            countOfDollarSigns = 0;
        }
        
        [moneyBagsAsBills addObject:[NSString stringWithFormat:@"$%lu",countOfDollarSigns]];
    }
    
    return moneyBagsAsBills;
}

@end
