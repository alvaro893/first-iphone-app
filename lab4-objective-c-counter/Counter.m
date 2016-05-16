//
//  Counter.m
//  lab4-objective-c-counter
//
//  Created by Alvaro Bol on 5/16/16.
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "Counter.h"

@implementation Counter

@synthesize count;


- (void) add {
    count += 1;
}

- (void) substract {
    count -= 1;
}

- (void) reset {
    count = 0;
}
@end
