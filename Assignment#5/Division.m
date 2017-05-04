//
//  Division.m
//  Assignment#5
//
//  Created by yoshitokomiya on 2017-04-25.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import "Division.h"

@implementation Division
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion {
    
    super.answer = [super rightValue] / [super leftValue];
    super.qusetion = [NSString stringWithFormat:@"%ld ÷ %ld ?", [super rightValue], [super leftValue]];
}

@end
