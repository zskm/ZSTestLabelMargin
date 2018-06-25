//
//  ViewController.m
//  TestLabelMargin
//
//  Created by zskm on 2018/6/22.
//  Copyright © 2018年 zskm. All rights reserved.
//

#import "ViewController.h"
#import "ZSMarginLabel.h"

@interface ViewController ()

@property (nonatomic, strong) IBOutlet ZSMarginLabel *label;
@property (nonatomic, strong) IBOutlet NSLayoutConstraint *labelWidth;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.label.text = @"aaa";
    self.label.marginWidth = 10;
//    [self resetLabelWidth];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)add:(id)sender {
    NSString *text = self.label.text;
    self.label.text = [text stringByAppendingString:@"a"];
//    [self resetLabelWidth];
}

- (IBAction)substract:(id)sender {
    NSString *text = self.label.text;
    self.label.text = [text substringWithRange:NSMakeRange(0, text.length - 1)];
//    [self resetLabelWidth];
}

//If view controller has constraint for label's width,reset it.
- (void)resetLabelWidth
{
    [self.label layoutIfNeeded];
    self.labelWidth.constant = self.label.intrinsicContentSize.width;
}

@end
