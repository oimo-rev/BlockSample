//
//  BLViewController.m
//  BlockSample
//

#import "BLViewController.h"

@interface BLViewController ()

@end

@implementation BLViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self calc:^(int x,int y){
        //宣言
        UILabel *label = [[UILabel alloc] init];
        //編集
        self.label.text = [NSString stringWithFormat:@"%d×%dは%dだにゃ♡",x,y,x*y];
        self.label.textColor = [UIColor greenColor];
        self.label.backgroundColor = [UIColor grayColor];
        self.label.font = [UIFont fontWithName:@"AppleGothic" size:35];
        self.label.hidden = NO;
        [self.view addSubview:label];
        NSLog(@"*** %d*%dは%dです ***",x,y,x*y);//結果は50
    }];
}

-(void)calc:(void (^)(int x,int y))calc{
    int x =10;
    int y =5;
    calc(x,y);
}

@end

