//
//  UIView+Responder.m
//  ResponderChain
//
//  Created by dangercheng on 2018/5/24.
//  Copyright © 2018年 Responder. All rights reserved.
//

#import "UIView+Responder.h"
#import <objc/runtime.h>

@implementation UIView (Responder)

//+ (void)load {
//    Method origin = class_getInstanceMethod([UIView class], @selector(hitTest:withEvent:));
//    Method custom = class_getInstanceMethod([UIView class], @selector(Responder_hitTest:withEvent:));
//    method_exchangeImplementations(origin, custom);
//
//    origin = class_getInstanceMethod([UIView class], @selector(pointInside:withEvent:));
//    custom = class_getInstanceMethod([UIView class], @selector(Responder_pointInside:withEvent:));
//    method_exchangeImplementations(origin, custom);
//}
//
//- (UIView *)Responder_hitTest:(CGPoint)point withEvent:(UIEvent *)event {
//    NSLog(@"%@ hitTest", NSStringFromClass([self class]));
//    UIView *result = [self Responder_hitTest:point withEvent:event];
//    NSLog(@"%@ hitTest return: %@", NSStringFromClass([self class]), NSStringFromClass([result class]));
//    return result;
//}
//
//- (BOOL)Responder_pointInside:(CGPoint)point withEvent:(UIEvent *)event {
//    NSLog(@"%@ pointInside", NSStringFromClass([self class]));
//    BOOL result = [self Responder_pointInside:point withEvent:event];
//    NSLog(@"%@ pointInside return: %@", NSStringFromClass([self class]), result ? @"YES":@"NO");
//    return result;
//}

@end
