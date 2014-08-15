//
//  Deck.m
//  Matchismo
//
//  Created by Jon McCartie on 8/14/14.
//  Copyright (c) 2014 Eruva.com. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (strong, nonatomic) NSMutableArray *cards;
@end

@implementation Deck

- (BOOL)isEmpty
{
    return [self.cards count] == 0;
}

- (NSMutableArray *)cards
{
    if (!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

- (void)addCard:(Card *)card
{
    [self.cards addObject:card];
}

- (Card *)drawRandomCard
{
    Card *randomcard = nil;
    
    if ([self.cards count]) {
        unsigned index = arc4random() % [self.cards count];
        randomcard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    
    return randomcard;
}
@end
