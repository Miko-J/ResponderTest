//
//  ViewController.m
//  ResponderTest
//
//  Created by niujf on 2019/6/15.
//  Copyright © 2019 niujf. All rights reserved.
//

#import "ViewController.h"

@interface RedView : UIView

@end

@implementation RedView

//- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
//{
//    //首先判断是否可以接收事件
//    if (self.userInteractionEnabled == NO || self.hidden == YES || self.alpha <= 0.01) return nil;
//    //然后判断点是否在当前视图上
//    if ([self pointInside:point withEvent:event] == NO) return nil;
//    //循环遍历所有子视图，查找是否有最合适的视图
//    for (NSInteger i = self.subviews.count - 1; i >= 0; i--) {
//        UIView *childView = self.subviews[i];
//        //转换点到子视图坐标系上
//        CGPoint childPoint = [self convertPoint:point toView:childView];
//        //递归查找是否存在最合适的view
//        UIView *fitView = [childView hitTest:childPoint withEvent:event];
//        //如果返回非空，说明子视图中找到了最合适的view，那么返回它
//        NSLog(@"%@ --- %s  childView:%@ --- fitView:%@", [self class], __FUNCTION__,[childView class],[fitView class]);
//        if (fitView) {
//            return fitView;
//        }
//    }
//    //循环结束，仍旧没有合适的子视图可以处理事件，那么就认为自己是最合适的view
//    return self;
//}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%@ --- %s", [self class], __FUNCTION__);
    [super touchesBegan:touches withEvent:event];
}

@end

@interface GreenView : UIView

@end

@implementation GreenView

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%@ --- %s", [self class], __FUNCTION__);
    [super touchesBegan:touches withEvent:event];
    UIResponder *nextResponder = self.nextResponder;
    NSMutableString *pre = [NSMutableString stringWithString:@"--"];
    while (nextResponder) {
        NSLog(@"%@%@", pre, NSStringFromClass([nextResponder class]));
        [pre appendString:@"--"];
        nextResponder = nextResponder.nextResponder;
    }
}

@end

@interface BlueView : UIView

@end

@implementation BlueView

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%@ --- %s", [self class], __FUNCTION__);
    [super touchesBegan:touches withEvent:event];
}

@end



@interface ViewController ()

@property (nonatomic, strong) RedView *redView;
@property (nonatomic, strong) GreenView *greenView;
@property (nonatomic, strong) BlueView *blueView;

@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
//    UIResponder *nextResponder = self.view.nextResponder;
//    NSMutableString *pre = [NSMutableString stringWithString:@"--"];
//    while (nextResponder) {
//        NSLog(@"%@%@", pre, NSStringFromClass([nextResponder class]));
//        [pre appendString:@"--"];
//        nextResponder = nextResponder.nextResponder;
//    }
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%@ --- %s", [self class], __FUNCTION__);
    [super touchesBegan:touches withEvent:event];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.redView = [[RedView alloc] initWithFrame:CGRectMake(50, 100, 300, 400)];
    self.redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.redView];
    
    self.greenView = [[GreenView alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
    self.greenView.backgroundColor = [UIColor greenColor];
    [self.redView addSubview:self.greenView];
    
    self.blueView = [[BlueView alloc] initWithFrame:CGRectMake(50, 100, 100, 100)];
    self.blueView.alpha = 0.8;
    self.blueView.backgroundColor = [UIColor blueColor];
    [self.redView addSubview:self.blueView];
}


@end
