//
//  main.m
//  BMITime
//
//  Created by yl on 2022/1/22.
//

#import <Foundation/Foundation.h>
// 导入
#import "BNRPerson.h"
#import "PropertyDemo.h"
#import "BNREmployee.h"
#import "BNRAsset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRPerson *mikey = [[BNRPerson alloc] init];
        // BNREmployee 是 BNRPerson 的子类，可以无缝切换
//        BNRPerson *mikey = [[BNREmployee alloc] init];
        [mikey setWeightInKilos:96];
        [mikey setHeightInMeters:1.8];
        
        float height = [mikey heightInMeters];
        int weight = [mikey weightInKilos];
        NSLog(@"mikey is %.2f meters tall and weighs %d kilograms",height,weight);
        
        float bmi = [mikey bodyMassIndex];
        NSLog(@"mikey has a bmi of %f",bmi);
        
        
        // 19 属性 @property
        PropertyDemo *property = [[PropertyDemo alloc] init];
        [property setWeightInKilos:96];
        [property setHeightInMeters:1.8];
        NSLog(@"properties' height is %.2f meters,weight is %d kilos"
              ,[property heightInMeters]
              ,[property weightInKilos]);
        
        // 19.3 用点号调用存取方法
        // set方法
        property.weightInKilos = 97;
        // get方法
        int weight2 = property.weightInKilos;
        
        // 第20章 继承
        BNREmployee *mikey2 = [[BNREmployee alloc] init];
        mikey2.weightInKilos = 101;
        mikey2.heightInMeters = 1.9;
        mikey2.employeeID = 1;
//        mikey2.officeAlarmCode = 2;
        mikey2.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd,2010"];
        NSLog(@"current EmployID is %@",mikey2);
        
        //21.3 为BNREmployee创建一对多关系
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        for(int i = 0; i<10; i++){
            BNREmployee *mikey3 = [[BNREmployee alloc] init];
            mikey3.weightInKilos = 90 + i;
            mikey3.heightInMeters = 1.8 - i/10;
            mikey3.employeeID = i;
            [employees addObject:mikey3];
        }
        for(int i = 0;i<10;i++){
            BNRAsset *asset = [[BNRAsset alloc] init];
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d",i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i*17;
            // 生成0-9之间的随机数
            NSUInteger randomIndex = rand() % [employees count];
            BNREmployee *randomEmployee = [employees objectAtIndex:randomIndex];
            [randomEmployee addAsset:asset];
        }
        NSLog(@"Employees:%@",employees);
        NSLog(@"Giving up ownership of one employee");
        [employees removeObjectAtIndex:5];
        NSLog(@"Giving up ownership of arrays");
        employees = nil;
        
        NSLog(@"\u03c0 is %f",M_PI);
        
        NSLocale *here = [NSLocale currentLocale];
//        NSString *currency = [here objectForKey:@"currency"];
        NSString *currency = [here objectForKey:NSLocaleCurrencyCode];
        NSLog(@"Money is %@",currency);
        
    }
//    sleep(100);
    return 0;
}
