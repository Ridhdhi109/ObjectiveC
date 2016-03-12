//
//  main.m
//  RandomItems
//
//  Created by Ridhdhi Desai on 3/5/16.
//  Copyright © 2016 Ridhdhi Desai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Items.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Create a mutable array object, store its address initems variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
     /*   //Send Message addObject to the NSMutableArray pointed to
        //by variable items, passing a string each time
        
        [items addObject: @"One"];
        [items addObject: @"Two"];
        [items addObject: @"Three"];
        
        //Send another message insterObject:atIndex:, to that same array object
        
        [items insertObject: @"Zero" atIndex:0];
        
        //For every item in items array
        
        for(NSString *item in items) {
            //Log the description of the item
            NSLog(@"%@", item);
        }
        
        //commenting out below code to use designated initializer
        
        Items *item  = [[Items alloc] init];
        
        //The below will creat a NSString "Red Sofa" and gives it to Item
        
        [item setItemName:@"Red Sofa"];
        [item setSerialNumber:@"A1B2C"];
        [item setValueInDollars:100];
        
        // You can also use the dot . method.
        
        item.itemName = @"Red Sofa";
        item.serialNumber = @"A1B2C";
        item.valueInDollars = 100;
        // end of above comment
        Items *item = [[Items alloc] initWithItemName:@"Red Sofa" ValueInDollars:100 serialNumber:@"A1B2C"];
        //using overrriden description menthod from items.m
        NSLog(@"%@", item);

        
        Items *itemWithName = [[Items alloc] initWithItemName:@"Blue Sofa"];
        NSLog(@"%@", itemWithName);
        
        Items *initWithNoName = [[Items alloc] init];
        NSLog(@"%@",initWithNoName);
        
       // NSLog(@ "%@ %@ %@ %d", [item itemName], [item dateCreated], [item serialNumber], [item valueInDollars]);
        
        //Destroy Mutable array object
        
        */
        
        for(int i=0; i<10; i++) {
            Items *item = [Items randomItem];
            [items addObject:item];
        }
        
        for(Items *item in items) {
            NSLog((@"%@"),item);
        }
        NSLog(@"Setting items to nil...");
        items = nil;
    }
    return 0;
}
// you can not use fast emuration if you want to add or remove the objects within the loop. Trying to use fast enumation wil cause an exception thrown. If you need to remove objects use the regular for loop with counter variable
// for (int i = 0; i < [items count]; i ++ )
// NSString item = [item objectAtIndex:i];
//NSLog(@"%@", item);