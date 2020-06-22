//
//  main.cpp
//  两数之和
//
//  Created by Jaylan on 2020/5/8.
//  Copyright © 2020 Jaylan. All rights reserved.
// https://leetcode-cn.com/problems/two-sum/

#include <iostream>
#include <vector>
#include <map>
using namespace std;

//暴力法
vector<int> twoSum(vector<int>& nums, int target) {
    int red = 0;
    for (int idx = 0; idx<nums.size(); idx++) {
        red = target - nums[idx];
        for (int k = idx + 1; k<nums.size(); k++) {
            if (red == nums[k]) {
                return {idx,k};
            }
        }
    }
    return {0,0};
}

//hashmap
vector<int> twoSum1(vector<int>& nums, int target) {
    int red = 0;
    map<int,int> hashMap;
    for (int idx = 0; idx<nums.size(); idx++) {
        red = target - nums[idx];
        if (hashMap.count(red)) {
            return {hashMap[red],idx};
        }else {
            hashMap[nums[idx]] = idx;
        }
    }
    return {0,0};
}

int main(int argc, const char * argv[]) {
    
    int a[] = {2,7,11,15};
    vector<int> nums(a,*(&a+1));
    int target = 9;
    vector<int> result;
    result = twoSum1(nums, target);
    return 0;
}
