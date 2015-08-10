//
//  SetUnknownViewController.h
//  Serval Chat
//
//  Created by Imane Rai on 26/05/2015.
//  Copyright (c) 2015 Imane Rai. Licensed to the public under the terms set out in the LICENSE.txt file at the top of this distribution.
//

#import <UIKit/UIKit.h>

@interface SetUnknownViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UIButton *saveButton;
@property (strong, nonatomic) IBOutlet UIButton *blockButton;


@property (nonatomic, strong) NSString *name;

@end



