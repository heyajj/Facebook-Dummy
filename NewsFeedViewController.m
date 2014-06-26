//
//  NewsFeedViewController.m
//  Facebook-Dummy
//
//  Created by Andrew Janich on 6/26/14.
//  Copyright (c) 2014 Google. All rights reserved.
//

#import "NewsFeedViewController.h"

@interface NewsFeedViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *newsFeedScrollView;
@property (weak, nonatomic) IBOutlet UIButton *bannerView;
@property (weak, nonatomic) IBOutlet UIImageView *homeFeedImageView;


- (IBAction)onBannerTap:(id)sender;

@end

@implementation NewsFeedViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.newsFeedScrollView.contentSize = CGSizeMake(320, 1025);
    self.navigationItem.title = @"News Feed";
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onBannerTap:(id)sender {
    self.bannerView.center = CGPointMake(self.bannerView.center.x, -50);
     self.homeFeedImageView.center = CGPointMake(self.homeFeedImageView.center.x, 347);
    
}

@end
