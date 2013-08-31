//
//  BNRContainer.h
//  RandomPossessions
//
//  Created by Victoria Zheng on 8/30/13.
//  Copyright (c) 2013 Victoria Zheng. All rights reserved.
//

#import "BNRItem.h"

@interface BNRContainer : BNRItem
{
    NSMutableArray *subitems;
}

- (void)addItem:(BNRItem*)item;
- (NSMutableArray*)subitems;

@end
