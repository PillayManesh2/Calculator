//
//  AppDelegate.m
//  calc
//
//  Created by Student P_07 on 28/02/17.
//  Copyright © 2017 Rupali Pakale. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
 
    self.store=1;
    self.operator=@"*";
    
    
    
    self.window=[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor=[UIColor orangeColor];
    
    UIViewController *myview=[[UIViewController alloc]init];
    
    self.window.rootViewController=myview;
    
    self.label=[[UILabel alloc]initWithFrame:CGRectMake(10, 10, 414, 50)];
    self.label.backgroundColor=[UIColor whiteColor];
    [self.label setText:@" "];
    self.label.font =[UIFont systemFontOfSize:20];
    [myview.view addSubview:self.label];
    
    self.textfield=[[UITextField alloc]initWithFrame:CGRectMake(10, 60, 414, 45)];
    self.textfield.textAlignment=NSTextAlignmentCenter;
    self.textfield.font=[UIFont systemFontOfSize:20];
    [self.textfield becomeFirstResponder];
    self.textfield.backgroundColor=[UIColor whiteColor];
    [myview.view addSubview:self.textfield];
    
    
    
    
    
    
    int i,j,num=0;
    int x=00,y=110,w=100,h=50;
    UIButton *b;
    
for(i=1;i<10;i=i+3)
{
	num=i;
	for(j=0;j<3;j++)
	{
		if(num<10)
		{
		
            b=[[UIButton alloc]initWithFrame:CGRectMake(x, y, w, h)];
            NSString *name=[NSString stringWithFormat:@"%d",num];
            [b setTitle:name forState:UIControlStateNormal];
            b.backgroundColor=[UIColor grayColor];
            b.layer.cornerRadius=25;
            [b addTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchUpInside];
            
            [myview.view addSubview:b];
            num++;
            x=x+w+5;
		}
	
	}
	x=0;
	y=y+h+5;


}
    
    b=[[UIButton alloc]initWithFrame:CGRectMake(315,165, w, h)];
    [b setTitle:@"+" forState:UIControlStateNormal];
    b.backgroundColor=[UIColor grayColor];
    b.layer.cornerRadius=25;
    [b addTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchUpInside];

    
    [myview.view addSubview:b];

    
    
    b=[[UIButton alloc]initWithFrame:CGRectMake(100,275, w, h)];

    [b setTitle:@"0" forState:UIControlStateNormal];
    b.backgroundColor=[UIColor grayColor];
    b.layer.cornerRadius=25;
    [b addTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchUpInside];

    
    [myview.view addSubview:b];
    
    
    b=[[UIButton alloc]initWithFrame:CGRectMake(315, 110, 100, 50)];
    
    [b setTitle:@"C" forState:UIControlStateNormal];
    b.backgroundColor=[UIColor grayColor];
    b.layer.cornerRadius=25;
    [b addTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchUpInside];

    
    [myview.view addSubview:b];


    y=y+h+10;
    
    b=[[UIButton alloc]initWithFrame:CGRectMake(315, 220, w, h)];
    [b setTitle:@"-" forState:UIControlStateNormal];
    b.backgroundColor=[UIColor grayColor];
    b.layer.cornerRadius=25;
    [b addTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchUpInside];

    
    [myview.view addSubview:b];
    
    x=x+w+10;
    
    b=[[UIButton alloc]initWithFrame:CGRectMake(315, 275, w, h)];
    [b setTitle:@"*" forState:UIControlStateNormal];
    b.backgroundColor=[UIColor grayColor];
    b.layer.cornerRadius=25;
    [b addTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchUpInside];

    
    [myview.view addSubview:b];


    b=[[UIButton alloc]initWithFrame:CGRectMake(210,275, w, h)];
    [b setTitle:@"/" forState:UIControlStateNormal];
    b.backgroundColor=[UIColor grayColor];
    b.layer.cornerRadius=25;
    [b addTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchUpInside];

    
    [myview.view addSubview:b];

    
    b=[[UIButton alloc]initWithFrame:CGRectMake(00,330,205, h)];
    [b setTitle:@"=" forState:UIControlStateNormal];
    b.backgroundColor=[UIColor grayColor];
    b.layer.cornerRadius=25;
    [b addTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchUpInside];
[myview.view addSubview:b];
    
    b=[[UIButton alloc]initWithFrame:CGRectMake(210,330,w, h)];
    [b setTitle:@"-/+" forState:UIControlStateNormal];
    b.backgroundColor=[UIColor grayColor];
    b.layer.cornerRadius=25;
    [b addTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchUpInside];
    [myview.view addSubview:b];
    
    b=[[UIButton alloc]initWithFrame:CGRectMake(0,275, w, h)];
    [b setTitle:@"." forState:UIControlStateNormal];
    b.backgroundColor=[UIColor grayColor];
    b.layer.cornerRadius=25;
    [b addTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchUpInside];
    
    [myview.view addSubview:b];
    
    
    b=[[UIButton alloc]initWithFrame:CGRectMake(315, 330, w, h)];
    [b setTitle:@"<-" forState:UIControlStateNormal];
    b.backgroundColor=[UIColor grayColor];
    b.layer.cornerRadius=25;
    [b addTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchUpInside];
    [myview.view addSubview:b];
    
    
    
    

    [self.window makeKeyAndVisible];
    
    // Override point for customization after application launch.
    return YES;
}
-(void)buttonPress:(id)sender
{
    UIButton *b=sender;
    
    if([b.titleLabel.text isEqualToString:@"C"])
    {
        self.textfield.text=@" ";
        self.store=1;
        self.operator=@"*";
        self.label.text=@" ";
        
    }
    else if([b.titleLabel.text isEqualToString:@"-/+"])
    {
        NSString *a= self.textfield.text;
        
        int n=[a intValue];
        n=-(n);
        a=[NSString stringWithFormat:@"%d",n];
        self.textfield.text=a;
        self.label.text=a;
        
    }
    else if([b.titleLabel.text isEqualToString:@"<-"])
    {
        NSString *a= self.textfield.text;
        
        int n=[a intValue];
        n=n/10;
        a=[NSString stringWithFormat:@"%d",n];
        self.textfield.text=a;
        self.label.text=a;

		//int len=[self.label.text length];
		//self.label.text=[self.label.text substring from index:0 to:len-1];
        
    }
   else if([b.titleLabel.text isEqualToString:@"+"])
    {
        
        self.label.text=[self.label.text stringByAppendingString:b.titleLabel.text];
        
        NSString *a= self.textfield.text;
        float fnum=[a floatValue];
        if([self.operator isEqualToString:@"*"])
        {
            
            self.store=fnum*self.store;
            self.textfield.text=@" ";
            self.operator=@"+";
        }
       else if([self.operator isEqualToString:@"+"])
        {
            self.store=fnum+self.store;
            self.textfield.text=@" ";
            self.operator=@"+";
        }
       else if([self.operator isEqualToString:@"-"])
       {
           self.store=fnum-self.store;
           self.textfield.text=@" ";
           self.operator=@"+";
       }
       else if([self.operator isEqualToString:@"/"])
       {
           if(fnum!=0)
           {
               self.store=self.store/fnum;
               self.textfield.text=@" ";
               self.operator=@"+";
           }
           else
           {
               self.textfield.text=@"Divide ERR";
               self.textfield.text=@" ";
           }
       }
    }
    
   else if([b.titleLabel.text isEqualToString:@"-"])
   {
       
       
       self.label.text=[self.label.text stringByAppendingString:b.titleLabel.text];
       
       NSString *a= self.textfield.text;
       float fnum=[a floatValue];
       if([self.operator isEqualToString:@"*"])
       {
           self.store=fnum*self.store;
           self.textfield.text=@" ";
           self.operator=@"-";
       }
       else if([self.operator isEqualToString:@"+"])
       {
           self.store=fnum+self.store;
           self.textfield.text=@" ";
           self.operator=@"-";
       }
       else if([self.operator isEqualToString:@"-"])
       {
           self.store=fnum-self.store;
           self.textfield.text=@" ";
           self.operator=@"-";
       }
       else if([self.operator isEqualToString:@"/"])
       {
           if(fnum!=0)
           {
               self.store=self.store/fnum;
               self.textfield.text=@" ";
               self.operator=@"-";
           }
           else
           {
               self.textfield.text=@"Divide ERR";
               self.textfield.text=@" ";
           }
       }
   }

    
   else if([b.titleLabel.text isEqualToString:@"*"])
   {
       
       
       self.label.text=[self.label.text stringByAppendingString:b.titleLabel.text];
       
       NSString *a= self.textfield.text;
       float fnum=[a floatValue];
       if([self.operator isEqualToString:@"*"])
       {
           self.store=fnum*self.store;
           self.textfield.text=@" ";
           self.operator=@"*";
       }
       else if([self.operator isEqualToString:@"+"])
       {
           self.store=fnum+self.store;
           self.textfield.text=@" ";
           self.operator=@"*";
       }
       else if([self.operator isEqualToString:@"-"])
       {
           self.store=fnum-self.store;
           self.textfield.text=@" ";
           self.operator=@"*";
       }
       else if([self.operator isEqualToString:@"/"])
       {
           
           if(fnum!=0)
           {
               self.store=self.store/fnum;
               self.textfield.text=@" ";
               self.operator=@"*";
           }
           else
           {
               self.textfield.text=@"Divide ERR";
               self.textfield.text=@" ";
           }
       }
   }

    
   else if([b.titleLabel.text isEqualToString:@"/"])
   {
       
       
       self.label.text=[self.label.text stringByAppendingString:b.titleLabel.text];
       
       NSString *a= self.textfield.text;
       float fnum=[a floatValue];
       if([self.operator isEqualToString:@"*"])
       {
           self.store=fnum*self.store;
           self.textfield.text=@" ";
           self.operator=@"/";
       }
       else if([self.operator isEqualToString:@"+"])
       {
           self.store=fnum+self.store;
           self.textfield.text=@" ";
           self.operator=@"/";
       }
       else if([self.operator isEqualToString:@"-"])
       {
           self.store=self.store-fnum;
           self.textfield.text=@" ";
           self.operator=@"/";
       }
       else if([self.operator isEqualToString:@"/"])
       {
           if(fnum!=0)
           {
               self.store=self.store/fnum;
               self.textfield.text=@" ";
               self.operator=@"/";
           }
           else
           {
               self.textfield.text=@"Divide ERR";
               self.textfield.text=@" ";
           }
       }
   }

    
    else if([b.titleLabel.text isEqualToString:@"="])
    {
        NSString *a= self.textfield.text;
        float lnum=[a floatValue];
        if([self.operator isEqualToString:@"+"])
        {
            float add=self.store+lnum;
            NSString *r=[NSString stringWithFormat:@"%lf",add];
        
            self.textfield.text=r;
            self.store=1;
            self.operator=@"*";
            
        }
        else if([self.operator isEqualToString:@"-"])
        {
            float add=self.store-lnum;
            NSString *r=[NSString stringWithFormat:@"%lf",add];
            
            self.textfield.text=r;
            self.store=1;
            self.operator=@"*";
        }
        else if([self.operator isEqualToString:@"*"])
        {
            float add=self.store*lnum;
            NSString *r=[NSString stringWithFormat:@"%lf",add];
            
            self.textfield.text=r;
            self.store=1;
            self.operator=@"*";
            
        }
        else if([self.operator isEqualToString:@"/"])
        {
            if(lnum!=0)
            {
                float add=self.store/lnum;
                NSString *r=[NSString stringWithFormat:@"%lf",add];
            
                self.textfield.text=r;
                self.store=1;
                self.operator=@"*";
            }
            else
            {
                self.textfield.text=@"Divide ERR";
                //self.textfield.text=@" ";
            }
        }
    }
    else
    {
    
        self.textfield.text=[self.textfield.text stringByAppendingString: b.titleLabel.text];
        
        self.label.text=[self.label.text stringByAppendingString:b.titleLabel.text];
    
    }
    
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
