//
//  ConversationViewController.h
//  Serval Chat
//
//  Created by Imane Rai on 18/05/2015.
//  Copyright (c) 2015 Imane Rai. Licensed to the public under the terms set out in the LICENSE.txt file at the top of this distribution.
//

#import <UIKit/UIKit.h>
#import "UIBubbleTableViewDataSource.h"

@interface ConversationViewController : UIViewController <UIBubbleTableViewDataSource>
@property (nonatomic, strong) NSString *name;
@property (retain, nonatomic) IBOutlet UINavigationItem *conversationNavigationItem;

@property (retain, nonatomic) IBOutlet UILabel *nameLabel;



@end
