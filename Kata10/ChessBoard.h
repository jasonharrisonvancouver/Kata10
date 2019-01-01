//
//  ChessBoard.h
//  Kata10
//
//  Created by jason harrison on 2019-01-01.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ChessBoard : NSObject

@property NSMutableArray *layout;

- (instancetype)initWithWhiteQueen:(NSArray *)whiteQueen blackQueen:(NSArray *)blackQueen;

- (NSArray *)board;
- (BOOL)queenThreat;
@end

NS_ASSUME_NONNULL_END
