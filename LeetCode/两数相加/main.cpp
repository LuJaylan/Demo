//
//  main.cpp
//  两数相加
//
//  Created by Jaylan on 2020/5/8.
//  Copyright © 2020 Jaylan. All rights reserved.
//https://leetcode-cn.com/problems/add-two-numbers/

#include <iostream>
using namespace::std;

struct ListNode {
    int val;
    ListNode *next;
    ListNode(int x) : val(x),next(NULL){}
};

ListNode* createList(int a[]) {
    ListNode *head, *p;
    head = p = new ListNode(0);
    int i = 0;
    while (i<sizeof(a)) {
        ListNode *node = new ListNode(a[i]);
        p->next = node;
        p = p->next;
        i++;
    }
    return head->next;
}

ListNode* addTwoNumbers(ListNode* l1, ListNode* l2) {
    int carry = 0;
    ListNode *head = new ListNode(0);
    ListNode *p = head;
    while (l1 || l2 || carry) {
        int l1Value = l1 != NULL ? l1->val : 0;
        int l2Value = l2 != NULL ? l2->val : 0;
        int tem = l1Value + l2Value + carry;
        ListNode *node = new ListNode(tem % 10);
        carry = tem/10;
        p->next = node;
        p= p->next;
        
        if (l1 != NULL) {
            l1=l1->next;
        }
        if (l2 != NULL) {
            l2 = l2->next;
        }
    }
    return head->next;
}

int main(int argc, const char * argv[]) {
    int a[] = {2,4,3};
    int b[] = {5,6,4};
    ListNode *l = createList(a);
    ListNode *ll = createList(b);
    ListNode *sum = addTwoNumbers(l, ll);
    return 0;
}
