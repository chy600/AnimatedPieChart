//
//  PSPieSlice.h
//  AnimatedPieChart
//
//  Created by Chengshu Yu on 2016-01-07.
//  Copyright © 2016 Chengshu Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PSPieSlice : NSObject

@property float pct;
@property NSString *title;
@property NSString *aDescription;
@property NSString *colour;

-(id) initWithPercent:(float)pct andTitle:(NSString *)title andDescription:(NSString *)description andColour:(NSString *)colour;

@end
