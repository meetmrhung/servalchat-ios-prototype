//
//  FirstLaunchScreenViewController.m
//  ServalExample
//
//  Created by Imane Rai on 3/07/2015.
//
//

#import "FirstLaunchScreenViewController.h"

@interface FirstLaunchScreenViewController ()

@end

@implementation FirstLaunchScreenViewController
@synthesize name;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.nameTextField resignFirstResponder];
}

- (IBAction)handleSaveClick:(id)sender {
    self.name=self.nameTextField.text;
    [self performSegueWithIdentifier:@"launchscreenToApp" sender:self];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)dealloc {
    [_nameTextField release];
    [super dealloc];
}
@end
