//
//  ViewController.m
//  FactoryMethod
//
//  Created by HKY on 15/10/24.
//  Copyright © 2015年 test. All rights reserved.
//

#import "ViewController.h"
#import "OperationFactory.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *numberATextField;
@property (weak, nonatomic) IBOutlet UITextField *numberBTextField;
@property (weak, nonatomic) IBOutlet UILabel     *operateLabel;
@property (weak, nonatomic) IBOutlet UILabel     *resultLabel;

@end

@implementation ViewController

#pragma mark - Lifecycle
    
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(outEditing)];
    [self.view addGestureRecognizer:tap];
}

- (void)outEditing {
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Btn Methods

- (IBAction)operateBtnTUI:(UIButton *)sender {
    _operateLabel.text = sender.titleLabel.text;
}

- (IBAction)resultBtnTUI:(UIButton *)sender {
    
    if ([_numberATextField.text isEqualToString:@""]||[_numberBTextField.text isEqualToString:@""]||![_numberATextField.text floatValue] ||![_numberBTextField.text floatValue]) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"提示" message:@"请输入数字" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
    }
    
    float numberA = [_numberATextField.text floatValue];
    float numberB = [_numberBTextField.text floatValue];
    
//    简单工厂模式： 简单工厂模式（Simple Factory Pattern）属于类的创建型模式，又叫静态工厂方法模式（Static FactoryMethod Pattern）,是通过专门定义一个类来负责创建其他类的实例，被创建的实例通常都具有共同的父类，
//    工厂：这个工厂类是简单工厂模式的核心，由它负责创建所有的类的内部逻辑。工厂类必须能够被外界（ViewController）调用，创建所需要的产品对象。（本工程中，为 OperationFactory）
//    抽象产品：简单工厂模式所创建的所有对象的父类，注意，这里的父类可以是接口也可以是抽象类，它负责描述所有实例所共有的公共接口。（本工程中，为 Operation)
//    具体产品：简单工厂所创建的具体实例对象，这些具体的产品往往都拥有共同的父类。（本工程中，为 OperationAdd/OperationSub/OperationMul 等等)
    
    
    NSString *operationStr = @"";
    
    // 先定义一个 Operation 类，工厂类调用的方法返回值会是 Operation 的子类 如 OperationAdd
    Operation *oper = [OperationFactory creatOperationWithSymbol:_operateLabel.text];
    
    //用 Operation 的子类去得出结果（此时 oper 变量已经是 Operation 的子类实例）
    operationStr = [oper resultWithNumberA:numberA andNumberB:numberB];
    
    _resultLabel.text = operationStr;
}

@end
