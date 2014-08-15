//
//  PlayingCard.h
//  Matchismo
//
//  Created by Jon McCartie on 8/14/14.
//  Copyright (c) 2014 Eruva.com. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card
- (NSString *)contents;
@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;
+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;
@end
