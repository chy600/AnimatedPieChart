//
//  PSPieChart.m
//  AnimatedPieChart
//
//  Created by Chengshu Yu on 2016-01-07.
//  Copyright © 2016 Chengshu Yu. All rights reserved.
//

#import "PSPieChart.h"

@implementation PSPieChart

-(id) init {
    self = [super init];
    if (self) {
        self.title = @"Smartphone Market Share";
        self.slices = [[NSMutableArray alloc] init];
        [self.slices addObject:[[PSPieSlice alloc] initWithPercent:20 andTitle:@"iOS" andDescription:@"iPhone by Apple" andColour:@"B070B0"]];
        [self.slices addObject:[[PSPieSlice alloc] initWithPercent:67 andTitle:@"Android" andDescription:@"Many manufacturers" andColour:@"9070B0"]];
        [self.slices addObject:[[PSPieSlice alloc] initWithPercent:13 andTitle:@"Others" andDescription:@"Nokia, Microsoft, Blackberry and Others" andColour:@"A0A0D0"]];
    }
    return self;
}

@end
