//
//  ToDoItem.h
//  ToDoList
//
//  Created by Cory Siebler on 1/17/15.
//  Copyright (c) 2015 Cory Siebler. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
