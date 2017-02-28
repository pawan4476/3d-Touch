//
//  ViewController2.m
//  3DTouch
//
//  Created by Nagam Pawan on 2/28/17.
//  Copyright © 2017 Nagam Pawan. All rights reserved.
//

#import "ViewController2.h"
#import "ViewController3.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSArray<id<UIPreviewActionItem>> *)previewActionItems{
    
    UIPreviewAction *action1 = [UIPreviewAction actionWithTitle:@"action 1" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        
        NSLog(@"Action 1 selected");
        
        
    }];
    UIPreviewAction *action2 = [UIPreviewAction actionWithTitle:@"action 2" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        
        NSLog(@"Action 2 is selected");
        
    }];
    UIPreviewAction *action3_1 = [UIPreviewAction actionWithTitle:@"action 3_1" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        
        NSLog(@"Action 3_1 is selected");
        UIActivityViewController *activity = [[UIActivityViewController alloc]initWithActivityItems:@[] applicationActivities:nil];
        [self presentViewController:activity animated:YES completion:nil];
        
    }];
    UIPreviewAction *action3_2 = [UIPreviewAction actionWithTitle:@"action 3_2" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        
        NSLog(@"Actio 3_2 is selected");
        
    }];
    UIPreviewActionGroup *action3 = [UIPreviewActionGroup actionGroupWithTitle:@"action 3" style:UIPreviewActionStyleDestructive actions:@[action3_1, action3_2]];
    
    return @[action1, action2, action3];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)close:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
@end
