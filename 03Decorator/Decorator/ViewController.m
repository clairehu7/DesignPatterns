//
//  ViewController.m
//  Decorator
//
//  Created by HKY on 16/2/16.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "ViewController.h"
#import "ConcreteComponent.h"
#import "ConcreteDecoratorA.h"
#import "ConcreteDecoratorB.h"
#import "Person.h"
#import "Sneakers.h"
#import "TShirts.h"
#import "BigTrouser.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    [self expertmentA];
    [self expertmentB];
}

- (void)expertmentA {
    ConcreteComponent *c = [ConcreteComponent new];
    ConcreteDecoratorA *d1 = [ConcreteDecoratorA new];
    ConcreteDecoratorB *d2 = [ConcreteDecoratorB new];
    
    d1.component = c;
    d2.component = d1;
    [d2 operation];   
}

- (void)expertmentB {
    Person *xc = [Person new];
    xc.name = @"小菜";
    Sneakers *pqx = [Sneakers new];
    BigTrouser *kk = [BigTrouser new];
    TShirts *dtx = [TShirts new];
    
    pqx.component = xc;
    kk.component = pqx;
    dtx.component = kk;
    [dtx show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
