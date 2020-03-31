//
//  SKPerson.m
//  Swift调用OC1
//
//  Created by 侯森魁 on 2020/3/31.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "SKPerson.h"
#import "Swift调用OC1-Swift.h"
int sum(int a,int b) {
    
    Car *car = [Car new];
    [car drive];
    [car fly];
    [car run];
    return  a + b;
}
@implementation SKPerson
- (void)run {
    NSLog(@"run");
    
    
}
@end
