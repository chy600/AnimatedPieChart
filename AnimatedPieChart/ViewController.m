//
//  ViewController.m
//  AnimatedPieChart
//
//  Created by Chengshu Yu on 2016-01-07.
//  Copyright © 2016 Chengshu Yu. All rights reserved.
//

#import "ViewController.h"
#import "PSPieChartView.h"
#import "PSPieSlice.h"

@interface ViewController () {
    PSPieChartView *pieChartView;
    NSTimer *timer;
}

@end

@implementation ViewController

@synthesize titleLabel, titleView, sliceTitleLabel, percentLabel, descriptionLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    pieChartView = [[PSPieChartView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:pieChartView];
    
    [self.view sendSubviewToBack:pieChartView];
    titleView.alpha = 0;
    [titleLabel setText:pieChartView.pieChart.title];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1/30.0 target:self selector:@selector(nextFrame) userInfo:NULL repeats:YES];
    
    NSString *notificationName = @"SliceSelectedNotification";
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(useNotificationWithString:) name:notificationName object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)useNotificationWithString:(NSNotification *)notification {
    PSPieSlice *slice = [notification.userInfo valueForKey:@"SelectedSlice"];
    float targetAlpha = 0;
    if (slice) {
        [percentLabel setText:[NSString stringWithFormat:@"%d%%", (int)slice.pct]];
        [sliceTitleLabel setText:slice.title];
        [descriptionLabel setText:slice.aDescription];
        targetAlpha = 1.0;
        
        [self.titleView setBackgroundColor:[PSPieChartView colorFromHexString:slice.colour]];
    }
    
    [UIView animateWithDuration:0.5 animations:^{
        self.titleView.alpha = targetAlpha;
    }];
}

-(void)nextFrame {
    [pieChartView tick];
    [pieChartView setNeedsDisplay];
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *t = [touches anyObject];
    [pieChartView touchedPoint: [t locationInView: pieChartView]];
}

@end
