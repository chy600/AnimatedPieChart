//
//  PSPieChartView.h
//  AnimatedPieChart
//
//  Created by Chengshu Yu on 2016-01-07.
//  Copyright © 2016 Chengshu Yu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PSPieChart.h"

@interface PSPieChartView : UIView

@property PSPieChart *pieChart;

-(void)tick;
-(void)touchedPoint: (CGPoint)point;
-(float)getAngleFromPoint: (CGPoint)point;

+(UIColor *)colorFromHexString: (NSString *)hexString;

@end
