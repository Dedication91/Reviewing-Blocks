//
//  ViewController.m
//  Reviewing Blocks
//
//  Created by Shaan Mirchandani
//  Copyright © 2017 Shaan Mirchandani. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

-(void)methodForBlock:(blockDefine) bb;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)viewDidAppear:(BOOL)animated{
    blockDefine blockVarl;
    
    blockVarl=^(int k){
        NSLog(@"Hey what's crackin");
        NSLog(@"this is the second line");
        return k;
    };
    
   // int k=blockVarl();
  //  NSLog(@"%d", k);
    
    [self methodForBlock:blockVarl];
}

-(void)methodForBlock:(blockDefine) bb{
    int g=bb(6);
    NSLog(@"%d",g);
    
}

@end
