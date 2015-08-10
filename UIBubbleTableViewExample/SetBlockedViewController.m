//
//  SetBlockedViewController.m
//  Serval Chat
//
//  Created by Imane Rai on 11/05/2015.
//  Copyright (c) 2015 Imane Rai. Licensed to the public under the terms set out in the LICENSE.txt file at the top of this distribution.
//

#import "SetBlockedViewController.h"
#import "SetUnknownViewController.h"

@interface SetBlockedViewController ()

@end

@implementation SetBlockedViewController

@synthesize nameLabel;
@synthesize name;

@synthesize forgetButton;
@synthesize unblockButton;

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
    // Set the Label text with the selected recipe
    nameLabel.text = name;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}



- (IBAction)handleUnblockClick:(id)sender {
    [self performSegueWithIdentifier:@"blockedToUnknown" sender:self];
}
- (IBAction)handleForgetClick:(id)sender {
    [self performSegueWithIdentifier:@"blockedToUnknown" sender:self];
}



- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.nameTextField resignFirstResponder];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if([[segue identifier] isEqualToString:@"blockedToUnknown"]){
        
        SetUnknownViewController *dest = segue.destinationViewController;
        if ([self.nameTextField.text isEqualToString:@""])
        {dest.name = self.name;} else {dest.name = self.nameTextField.text;}
        
    }

}

@end
