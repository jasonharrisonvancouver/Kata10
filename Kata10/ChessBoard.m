//
//  ChessBoard.m
//  Kata10
//
//  Created by jason harrison on 2019-01-01.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "ChessBoard.h"
#import <stdlib.h>
#import <math.h>

@implementation ChessBoard
- (instancetype)initWithWhiteQueen:(NSArray *)whiteQueen blackQueen:(NSArray *)blackQueen{
    // create board of 8x8 zeroes
    // then find row, column for each parameter queen
    
    self = [self init];
    
    if(self){
        _layout = [[NSMutableArray alloc] initWithCapacity:8];
        
        
        
        for(int i = 0; i < 8; i++){
            _layout[i] = [[NSMutableArray alloc] initWithCapacity:8];
            
            
            for(int j = 0; j < 8; j++){
                _layout[i][j] = @0;
            }
        }
        
        int whiteQueenRow = [whiteQueen[0] intValue];
        int whiteQueenCol = [whiteQueen[1] intValue];
        
        int blackQueenRow = [blackQueen[0] intValue];
        int blackQueenCol = [blackQueen[1] intValue];
        
        
        _layout[whiteQueenRow][whiteQueenCol] = @1;
        _layout[blackQueenRow][blackQueenCol] = @1;
        
        
    }
    // NSLog(@"%@",_layout);
    return self;
}

- (NSArray *)board{
    return _layout;
}
- (BOOL)queenThreat{
    
    int queen1Row = -1;
    int queen2Row = -1;
    int queen1Col = -1;
    int queen2Col = -1;
    
    BOOL foundAQueen = NO;
    
    for(int i = 0; i < 8; i++){
        for(int j = 0; j < 8; j++){
            
            
            if([_layout[i][j] isEqualToNumber:@1]){
                if(foundAQueen == NO){
                    queen1Row = i;
                    queen1Col = j;
                    foundAQueen = YES;
                }else{
                    queen2Row = i;
                    queen2Col =j;
                }
            }
            
        }
    }
    
    if(queen1Row == queen2Row){
        return YES;
    }
    if(queen1Col == queen2Col){
        return YES;
    }
    
    
        if(((abs(queen1Row - queen2Row)) -
            (abs(queen1Col - queen2Col)) == 0)){
            return YES;
        }
    
    
    return NO;
}
@end
