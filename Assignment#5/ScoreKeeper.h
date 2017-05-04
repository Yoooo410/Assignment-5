//
//  ScoreKeeper.h
//  Assignment#5
//
//  Created by yoshitokomiya on 2017-04-25.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property NSInteger myRight;
@property NSInteger myWrong;
@property float myAverage;

- (void) counterRight;
- (void) counterWrong;
- (void) showScore;

@end
