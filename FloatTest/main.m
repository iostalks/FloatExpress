//
//  main.m
//  FloatTest
//
//  Created by Smallfly on 2017/3/1.
//  Copyright © 2017年 iOSTalk. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        void floatToBinary(float f);
        floatToBinary(0.2);
    }
    return 0;
}

void floatToBinary(float f) {
    char *p = (char *)&f; // 强转为含有 4 个 char 类型的数组
    for (int i = 3; i >= 0; --i) { // 小端模式存储
        unsigned int mask = 0x80;
        char oneBit = *(p + i);
        for (; mask; mask >>= 1) {
            if (mask & oneBit) {
                printf("1");
            } else {
                printf("0");
            }
        }
        printf(" ");
    }
    printf("\n");
}

// 0.001      100110011001100110011001100.. 0.2 二进制表示
// 0 01111100 10011001100110011001101       0.2 位级表示

// 00111110 01001100 11001100 11001101      0.2 打印位结果

