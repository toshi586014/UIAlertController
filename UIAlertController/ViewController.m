//
//  ViewController.m
//  UIAlertController
//
//  Created by Toshiaki Nakamura on 2016/06/13.
//  Copyright © 2016年 Toshiaki Nakamura. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSArray *count;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    count = [NSArray array];
    count = @[@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"11", @"12", @"13", @"14", @"15", @"16", @"17", @"18", @"19", @"20"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushAlertButton:(id)sender {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"UIAlertControllerStyle.Alert" message:@"Test" preferredStyle:UIAlertControllerStyleAlert];
    
    [self makeAlertController:alertController];
}

- (IBAction)pushActionSheetButton:(id)sender {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"UIAlertControllerStyle.ActionSheet" message:@"Test" preferredStyle:UIAlertControllerStyleActionSheet];
    
    [self makeAlertController:alertController];
}

- (void)makeAlertController:(UIAlertController *)ac{
    for (NSString *number in count) {
        [ac addAction:[UIAlertAction
                                    actionWithTitle:number
                                    style:UIAlertActionStyleDefault
                                    handler:^(UIAlertAction *action) {
                                        // otherボタンが押された時の処理
                                        [self otherButtonPushed:number];
                                    }]];
    }
    
    [ac addAction:[UIAlertAction
                                actionWithTitle:@"Cancel"
                                style:UIAlertActionStyleCancel
                                handler:^(UIAlertAction *action) {
                                    // cancelボタンが押された時の処理
                                    [self cancelButtonPushed];
                                }]];
    
    [self presentViewController:ac animated:YES completion:nil];
}

- (void)cancelButtonPushed {
    NSLog(@"Cancel");
}
- (void)otherButtonPushed:(NSString *)number {
    NSLog(@"%@", number);
}

@end
