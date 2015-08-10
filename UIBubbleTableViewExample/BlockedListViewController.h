//
//  BlockedListViewController.h
//  Serval Chat
//
//  Created by Imane Rai on 11/05/2015.
//  Copyright (c) 2015 Imane Rai. Licensed to the public under the terms set out in the LICENSE.txt file at the top of this distribution.
//

#import <UIKit/UIKit.h>

@interface BlockedListViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) IBOutlet UINavigationItem *blockedUINavigationItem;

@end
