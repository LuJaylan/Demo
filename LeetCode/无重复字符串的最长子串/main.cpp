//
//  main.cpp
//  无重复字符串的最长子串
//
//  Created by Jaylan on 2020/5/8.
//  Copyright © 2020 Jaylan. All rights reserved.
//https://leetcode-cn.com/problems/longest-substring-without-repeating-characters/

#include <iostream>
#include <map>
#include <vector>
#include <set>
using namespace std;

//暴力法
int lengthOfLongestSubstring(string s) {
    int maxLength = 0;
    set<char> ss;
    for (int i = 0; i<s.size(); i++) {
        int len = 1;
        ss.clear();
        ss.insert(s[i]);
        for (int j = i+1; j<s.size(); j++) {
            if (!ss.count(s[j])) {
                ss.insert(s[j]);
                len ++;
            }else {
                break;
            }
        }
        maxLength = max(maxLength, len);
    }
    return maxLength;
}

//滑动窗口，01数组处理
int lengthOfLongestSubstring1(string s) {
    int maxLength = 0;
    vector<int> ss(128,0);
    int i = 0,j = 0;
    for (i = 0,j = 0; j<s.size();j++) {
        ss[s[j]] ++;
        while(ss[s[j]]>1) {
            ss[s[i++]] --;
        }
        maxLength = max(maxLength, j-i+1);
    }
    return maxLength;
}

//更新i的位置，统一考虑
int lengthOfLongestSubstring2(string s) {
    int maxLength = 0;
    map<char,int>ss;
    int i = 0,j = 0;
    for (j = 0; j<s.size();j++) {
        i = max(i, ss[s[j]]);//第一个或者前一个的位置
        ss[s[j]] = j+1;
        maxLength = max(maxLength, j-i+1);
    }
    return maxLength;
}

//动态规划
int lengthOfLongestSubstring3(string s) {
    int lastLen = 1;
    int dp[n];
    dp[0] = 1;
    map<char,int>ss;
    int i = 0,j = 0;
    for (j = 0; j<s.size();j++) {
        if (ss.count(s[j])) {
            lastLen = dp[j-1];
        }else{
            lastLen = dp[j-1] + 1;
        }
    }
    return maxLength;
}

int main(int argc, const char * argv[]) {
    string s = "pwwkew";
    int result = lengthOfLongestSubstring1(s);
    return 0;
}
