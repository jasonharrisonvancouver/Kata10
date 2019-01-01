//
//  main.m
//  Kata10
//
//  Created by jason harrison on 2019-01-01.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ChessBoard.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *whiteQueen = @[@0, @5];
        NSArray *blackQueen = @[@5, @0];
        
        ChessBoard *board = [[ChessBoard alloc] initWithWhiteQueen:whiteQueen blackQueen:blackQueen];
        NSLog(@"%@", [board layout]);
        /*
         [
         [0, 0, 0, 0, 0, 1, 0, 0],
         [0, 0, 0, 0, 0, 0, 0, 0],
         [0, 0, 0, 0, 0, 0, 0, 0],
         [0, 0, 0, 0, 0, 0, 0, 0],
         [0, 0, 0, 0, 0, 0, 0, 0],
         [1, 0, 0, 0, 0, 0, 0, 0],
         [0, 0, 0, 0, 0, 0, 0, 0],
         [0, 0, 0, 0, 0, 0, 0, 0]
         ]
         */
        NSLog(@"%d", [board queenThreat]); // 1 (1 == YES, 0 == NO)
    }
    return 0;
}
