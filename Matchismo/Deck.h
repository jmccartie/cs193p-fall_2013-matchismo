//
//  Deck.h
//  Matchismo
//
//  Created by Jon McCartie on 8/14/14.
//  Copyright (c) 2014 Eruva.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject
- (void)addCard:(Card *)card;
- (Card *)drawRandomCard;
- (BOOL) isEmpty;
@end
