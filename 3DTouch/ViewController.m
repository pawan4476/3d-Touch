//
//  ViewController.m
//  3DTouch
//
//  Created by Nagam Pawan on 1/10/17.
//  Copyright © 2017 Nagam Pawan. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()<UIViewControllerPreviewingDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (self.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable) {
        
        [self registerForPreviewingWithDelegate:self sourceView:self.imageView];
        
    }
    
    else{
        
        NSLog(@"Force touch not available");
        
    }
    // Do any additional setup after loading the view, typically from a nib.
}

-(UIViewController *)previewingContext:(id<UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location{
    
    previewingContext.sourceRect = CGRectMake(0, 0, previewingContext.sourceView.frame.size.width, previewingContext.sourceView.frame.size.height);
    ViewController2 *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController1"];
    vc.preferredContentSize = CGSizeMake(0, 300);
    return vc;
    
}

-(void)previewingContext:(id<UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit{
    
    ViewController2 *vc = (ViewController2 *)viewControllerToCommit;
    vc.view.backgroundColor = [UIColor yellowColor];
    [self presentViewController:viewControllerToCommit animated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
