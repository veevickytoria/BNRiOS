//
//  BNRContainer.m
//  RandomPossessions
//
//  Created by Victoria Zheng on 8/30/13.
//  Copyright (c) 2013 Victoria Zheng. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

- (void)addItem:(BNRItem*)item
{
    if (!subitems) {
        subitems = [NSMutableArray arrayWithCapacity:10];
    }
    
    [subitems addObject:item];
}

- (NSMutableArray*)subitems
{
    return subitems;
}

-(int)valueInDollars
{
    int value = [super valueInDollars];
    for (BNRItem* item in subitems)
    {
        value += [item valueInDollars];
    }
    return value;
}

- (NSString*)description
{
    NSString* itemDescription = [NSString stringWithFormat:@""];

    for (BNRItem* item in subitems)
    {
        itemDescription = [itemDescription stringByAppendingString:@"\n"];
        itemDescription = [itemDescription stringByAppendingString:[item description]];
    }
    
    return [NSString stringWithFormat:@"Container name: %@, serial number: %@ self value: %i, totoal value: %i, contains%@",
            [self itemName],
            [self serialNumber],
            [super valueInDollars],
            [self valueInDollars],
            itemDescription];
}

@end
