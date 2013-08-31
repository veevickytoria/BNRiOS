//
//  main.m
//  RandomPossessions
//
//  Created by Victoria Zheng on 8/22/13.
//  Copyright (c) 2013 Victoria Zheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "BNRContainer.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        BNRContainer *overallContainer = [[BNRContainer alloc] initWithItemName:@"bigContainer" valueInDollars:33 serialNumber:@"12345"];
        
        for (int i = 0; i < 2; i++) {
            BNRContainer *container = [[BNRContainer alloc] initWithItemName:@"container" valueInDollars:10 serialNumber:@"12233"];
            for (int j = 0; j < 10; j++) {
                BNRItem *p = [BNRItem randomItem];
                [container addItem:p];
            }
            [overallContainer addItem:container];
        }
        
        NSLog(@"%@", overallContainer);
    }
    return 0;
}

