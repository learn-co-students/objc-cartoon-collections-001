//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 
 *  Define your method implementations here.
 
 */

- (NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs{
    NSString *rollcall = @"";

    for (NSUInteger i = 0; i < [dwarfs count]; i++) {
        NSString *dwarfName = dwarfs[i];
        if (dwarfName != [dwarfs lastObject]) {
            rollcall = [rollcall stringByAppendingFormat:@"%lu. %@ | ",i+1,dwarfName];
        } else {
            rollcall = [rollcall stringByAppendingFormat:@"%lu. %@", i+1, dwarfName];
        }
    }
    return rollcall;
    
}

- (NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers{
    NSMutableArray *powersUppercased = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0 ; i < [powers count]; i++) {
        NSString *power = [[powers[i] uppercaseString] stringByAppendingString:@"!"];
        [powersUppercased addObject:power];
    }
    return powersUppercased;
    
}

- (NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers{
    NSString *beginning = @"Let our powers combine:";
    
    NSArray *shoutPower = [self arrayOfPlaneteerShoutsFromArray:powers];
    
    for (NSUInteger i = 0; i < shoutPower.count; i++) {
        beginning = [beginning stringByAppendingFormat:@"\n%@",shoutPower[i]];
    }
    NSString *fullStatement = [beginning stringByAppendingString:@"\nGo Planet!"];
    
    return fullStatement;
    
}

- (NSString *)firstPremiumCheeseInStock:(NSArray *)cheeseInStock premiumCheeseNames:(NSArray *)premiumCheeseNames{
    for (NSUInteger i = 0; i < [cheeseInStock count]; i++) {
        for (NSString *premiumCheese in premiumCheeseNames){
            if (cheeseInStock[i] == premiumCheese) {
                return premiumCheese;
            }
        }
    }
    return @"No premium cheeses in stock.";
}

- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags{
    NSMutableArray *convertedCurrency = [[NSMutableArray alloc]init];
    NSString *currency = @"$";
    
    for (NSString* dollarSign in moneyBags){
        NSUInteger count = [dollarSign length];
        [convertedCurrency addObject:[currency stringByAppendingFormat:@"%lu",count]];
        
    }
    return convertedCurrency;
}
@end
