//
//  main.m
//  RandomPossessions
//
//  Created by Victoria Zheng on 8/22/13.
//  Copyright (c) 2013 Victoria Zheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
//        NSMutableArray *items = [[NSMutableArray alloc] init];
        
//        for (int i = 0; i < 10; i++) {
//            BNRItem *p = [BNRItem randomItem];
//            [items addObject:p];
//        }
//        
//        for (BNRItem* item in items) {
//            NSLog(@"%@", item);
//        }
        BNRItem *backpack = [[BNRItem alloc] init];
        [backpack setItemName:@"backpack"];
//        [items addObject:backpack];
        
        BNRItem *calculator = [[BNRItem alloc] init];
        [calculator setItemName:@"calculator"];
//        [items addObject:calculator];
        
        [backpack setContainedItem:calculator];
        
//        NSLog(@"Setting items to nil...");
//        items = nil;
        backpack = nil;
        NSLog(@"COntainer:%@", [calculator container]);
        calculator = nil;
        
    }
    return 0;
}

