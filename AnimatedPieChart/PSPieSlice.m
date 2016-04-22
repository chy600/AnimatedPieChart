//
//  PSPieSlice.m
//  AnimatedPieChart
//
//  Created by Chengshu Yu on 2016-01-07.
//  Copyright © 2016 Chengshu Yu. All rights reserved.
//

#import "PSPieSlice.h"

@implementation PSPieSlice

-(id) initWithPercent:(float)pct andTitle:(NSString *)title andDescription:(NSString *)description andColour:(NSString *)colour {
    self = [super init];
    if (self) {
        self.pct = pct;
        self.title = title;
        self.aDescription = description;
        self.colour = colour;
    }
    return self;
}

@end
