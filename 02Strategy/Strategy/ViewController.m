//
//  ViewController.m
//  Strategy
//
//  Created by HKY on 15/10/26.
//  Copyright © 2015年 test. All rights reserved.
//

#import "ViewController.h"
#import "CashContext.h"

@interface ViewController ()<UIPickerViewDelegate,UIPickerViewDataSource>

@property (weak, nonatomic  ) IBOutlet UITextField  *unitPriceTextField;
@property (weak, nonatomic  ) IBOutlet UITextField  *merchandiseCountTextField;
@property (weak, nonatomic  ) IBOutlet UILabel      *totalPriceLabel;
@property (weak, nonatomic  ) IBOutlet UIPickerView *pickerView;
@property (strong, nonatomic) NSArray      *dataArr;

@property (weak, nonatomic) IBOutlet UILabel *discountLabel;
@end

@implementation ViewController

#pragma mark - LifeCycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.dataArr = @[@"八折",@"五折",@"买三减一",@"没有折扣"];
    self.discountLabel.text = self.dataArr[0];
    
    self.pickerView.showsSelectionIndicator = YES;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(outEditing)];
    [self.view addGestureRecognizer:tap];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)outEditing {
    [self.view endEditing:YES];
}

#pragma mark - Btn Methods

- (IBAction)confirmBtnTUI:(UIButton *)sender {
    
    //策略模式
    CashContext *context = [[CashContext alloc]initWithCashSuper:self.discountLabel.text dataArr:self.dataArr];
    
    _totalPriceLabel.text =[context getResultUnitPrice:_unitPriceTextField.text merchandiseCount:_merchandiseCountTextField.text];
}


#pragma mark - UIPickerViewDataSource

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return 4;
}

#pragma mark - UIPickerViewDelegate

- (nullable NSString *)pickerView:(UIPickerView *)pickerView
                      titleForRow:(NSInteger)row
                     forComponent:(NSInteger)component{
    return self.dataArr[row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    self.discountLabel.text = self.dataArr[row];
}

@end
