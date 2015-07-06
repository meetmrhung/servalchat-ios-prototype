//
//  SetContactViewController.m
//  Serval Chat
//
//  Created by Imane Rai on 27/03/2015.
//  Copyright (c) 2015 Imane Rai. All rights reserved.
//

#import "ConversationViewController.h"
#import "SetContactViewController.h"
#import "SetBlockedViewController.h"
#import "NearByListViewController.h"
#import "Contact.h"

@interface SetContactViewController ()

@end

@implementation SetContactViewController

@synthesize nameLabel;
@synthesize name;
@synthesize setNavigationItem;

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
   /* NSString *varyingString1 = @"Near by -";
    NSString *str = [NSString stringWithFormat: @"%@ %@", varyingString1,name];
    setNavigationItem.title=str;
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"no" style:UIBarButtonItemStyleBordered target:nil action:nil];
    setNavigationItem.backBarButtonItem=backButton;*/ 
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


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.nameTextField resignFirstResponder];
}

- (IBAction)handleSaveClick:(id)sender {
    [self performSegueWithIdentifier:@"nearbyToConversation" sender:self];
}



- (IBAction)handleBlockClick:(id)sender {
     [self performSegueWithIdentifier:@"nearbyToBlocked" sender:self];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if([[segue identifier] isEqualToString:@"nearbyToConversation"]){
        
        ConversationViewController *dest = segue.destinationViewController;
        if ([self.nameTextField.text isEqualToString:@""])
        {dest.name = self.name;} else {dest.name = self.nameTextField.text;}
        
    }
    if([[segue identifier] isEqualToString:@"nearbyToBlocked"]){
        
        SetBlockedViewController *dest = segue.destinationViewController;
        if ([self.nameTextField.text isEqualToString:@""])
        {dest.name = self.name;} else {dest.name = self.nameTextField.text;}
        
        
    }
}

    
/*
    self.nameLabel.text = self.nameTextField.text;
    [self performSegueWithIdentifier:@"toContactList" sender:self];
    //Contact *addedcontact;
    //addedcontact = [[Contact alloc] init];
    //addedcontact.contactName = self.nameTextField.text;
    
    //ContactListViewController *destViewController;
   // destViewController= [ContactListViewController alloc];
    
    //[destViewController tableView:destViewController.tableView commitEditingStyle: UITableViewCellEditingStyleInsert ];
}


}*/


@end

