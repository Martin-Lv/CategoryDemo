//
//  NSObject+tryDownCast.h
//  CategoryDemo
//
//  Created by 吕孟霖 on 2016/12/24.
//  Copyright © 2016年 menglin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (tryDownCast)

+ (instancetype _Nullable)tryDownCast:(id _Nonnull)object;

@end
