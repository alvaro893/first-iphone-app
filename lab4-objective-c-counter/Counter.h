//
//  Counter.h
//  lab4-objective-c-counter
//
//  Created by Alvaro Bol on 5/16/16.
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Counter : NSObject
@property (nonatomic) int count;

-(void)add;
-(void)substract;
-(void)reset;

@end
