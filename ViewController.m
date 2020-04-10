//
//  ViewController.m
//  Homework2
//
//  Created by 谷琪 on 2020/4/10.
//  Copyright © 2020 谷琪. All rights reserved.
//

#import "ViewController.h"
#import "YTKRequest.h"
#import "YTKNetworkConfig.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    YTKNetworkConfig *config = [YTKNetworkConfig sharedConfig];
    config.baseUrl = @"https://api.weibo.com/2/statuses/public_timeline.json?access_token=2.00kxtNXCAz2XIBbabe3e41150n6u3I";
    
    YTKRequest *api = [[YTKRequest alloc] init];
    [api startWithCompletionBlockWithSuccess:^(YTKBaseRequest *request) {
        NSLog(@"succeed");
    } failure:^(YTKBaseRequest *request) {
        NSLog(@"%@",request.error);
        NSLog(@"failed");
    }];
    
}


@end
