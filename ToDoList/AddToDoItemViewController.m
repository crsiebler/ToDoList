//
//  AddToDoItemViewController.m
//  ToDoList
//
//  Created by Cory Siebler on 1/16/15.
//  Copyright (c) 2015 Cory Siebler. All rights reserved.
//

#import "AddToDoItemViewController.h"

@interface AddToDoItemViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@end

@implementation AddToDoItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    // If the Save button wasn’t tapped, instead of saving the item, you want the method to return without doing anything else
    if (sender != self.saveButton) return;
    
    // Check whether the user entered any text in the text field.
    if (self.textField.text.length > 0) {
        // Create a new item and give it the name of the text in the text field. Also, ensure that the completed state is set to NO.
        self.toDoItem = [[ToDoItem alloc] init];
        self.toDoItem.itemName = self.textField.text;
        self.toDoItem.completed = NO;
    }
}

@end
