//
//  ScoreKeeper.m
//  Assignment#5
//
//  Created by yoshitokomiya on 2017-04-25.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init
{
    self = [super init];
    if (self) {
        _myRight = 0;
        _myWrong = 0;
        _myAverage = 0;
    }
    return self;
}

- (void) counterRight {
    _myRight++;
}

- (void) counterWrong {
    _myWrong++;
}

- (void) showScore{
    
    _myAverage = _myRight / (float)(_myRight + _myWrong);
    NSLog(@"score: %ld right, %ld wrong ----- %.2f%@",_myRight,_myWrong,_myAverage*100,@"%");
}

@end
