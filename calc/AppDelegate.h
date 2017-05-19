//
//  AppDelegate.h
//  calc
//
//  Created by Student P_07 on 28/02/17.
//  Copyright © 2017 Rupali Pakale. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UITextField *textfield;
@property (strong, nonatomic) UILabel *label;
@property float store;
@property NSString *operator;
@end

