//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSString *dDubs = [self summonCaptainPlanetWithPowers:@[@"Wow", @"ThisOneToo"]];
    NSLog(@"%@",dDubs);
    
    return YES;
}

/**
 
 *  Define your method implementations here.
 
 */

-(NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs{
    
    NSString *dwarfString = @"";
    for(NSUInteger i = 0; i<[dwarfs count]; i++){
       NSString *dwarf = [dwarfs objectAtIndex:i];
        if (i<[dwarfs count]-1) {
            
            NSString *formattedString = [NSString stringWithFormat:@"%d. %@ | ", i+1, dwarf];
            dwarfString = [dwarfString stringByAppendingString:formattedString];
        }else{
            NSString *formattedString = [NSString stringWithFormat:@"%d. %@", i+1, dwarf];
            dwarfString = [dwarfString stringByAppendingString:formattedString];
            
        }

    }
    
    return dwarfString;
};
-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers{
    
    NSMutableArray *planeteerShouts = [[NSMutableArray alloc]init];
    for (NSUInteger i = 0; i<[powers count]; i++) {
        NSString *power = [powers objectAtIndex:i];
        NSString *upperCasePower = [power uppercaseString];
        NSString *result = [NSString stringWithFormat:@"%@!", upperCasePower];
        [planeteerShouts addObject:result];
    }
    
    return planeteerShouts;
};
-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers{
    NSString *beginning = @"Let our powers combine:\n";
    for (NSUInteger i = 0; i<[powers count]; i++) {
        NSArray *powerShouts = [self arrayOfPlaneteerShoutsFromArray:powers];
        NSString *power = [powerShouts objectAtIndex:i];
        beginning = [beginning stringByAppendingString:[NSString stringWithFormat:@"%@\n", power]];
    }
    
    NSString *result = [NSString stringWithFormat:@"%@Go Planet!",beginning];
    
    return result;
};
-(NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeses{
    
    for (NSUInteger i = 0; i<[premiumCheeses count]; i++) {
        if ([premiumCheeses[i] isEqualToString:cheesesInStock[i]]) {
            return premiumCheeses[i];
        }else if(i==[premiumCheeses count]-1 && ![premiumCheeses[i] isEqualToString:cheesesInStock[i]]){
                NSString *noResult = @"No premium cheeses in stock.";
                return noResult;
            }

    }
    
    return nil;
};
-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags{
    
    NSMutableArray *paperBills = [[NSMutableArray alloc]init];
    for (NSUInteger i =0; i<[moneyBags count]; i++) {
        NSUInteger numberOfMoney = [moneyBags[i] length];
        NSString *formattedPaper = [NSString stringWithFormat:@"$%d", numberOfMoney];
        [paperBills addObject:formattedPaper];
    }
    
    return paperBills;
};

@end
