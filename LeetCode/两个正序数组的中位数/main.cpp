//
//  main.cpp
//  两个正序数组的中位数
//
//  Created by 鲁俊良 on 2020/5/10.
//  Copyright © 2020 Jaylan. All rights reserved.
//https://leetcode-cn.com/problems/median-of-two-sorted-arrays/

#include <iostream>
#include <vector>
using namespace std;

//二路归并
double findMedianSortedArrays(vector<int>& nums1, vector<int>& nums2) {
    int length = nums1.size() + nums2.size();
    vector<int> num(length,INT_MIN);
    int i,j,k;
    i=j=k=0;
    while (i<nums1.size()&&j<nums2.size()) {
        if (nums1[i]<nums2[j]) {
            num[k++]=nums1[i++];
        }else{
            num[k++]=nums2[j++];
        }
    }
    
    if (i>=nums1.size()) {
        while (j<nums2.size()) {
            num[k++]=nums2[j++];
        }
    }
    
    if (j>=nums2.size()) {
        while (i<nums1.size()) {
            num[k++]=nums1[i++];
        }
    }
    int idx = (length + 1)/2-1; int iidx = (length + 2)/2-1;
    double id= (num[idx]+num[iidx])/2;
    return id;
}

int main(int argc, const char * argv[]) {
    int a[] = {1,2};
    int b[] = {3,4};
    vector<int> aa(a,*(&a+1));
    vector<int> bb(b,*(&b+1));
    int result = findMedianSortedArrays(aa, bb);
    return 0;
}
