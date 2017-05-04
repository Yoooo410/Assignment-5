//
//  InputHandler.h
//  Assignment#5
//
//  Created by yoshitokomiya on 2017-04-25.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject

@property NSString *finalAnswer;

- (NSInteger) convertToInt;
- (BOOL) exitCheck;
- (BOOL) continueCheck;
- (NSString *) inputUser;
@end
