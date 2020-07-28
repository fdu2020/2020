#!/usr/bin/python3
'''
2 ptr
'''

import random
import string

def maxArea(nums):
  result = 0
  head = 0
  tail = len(nums) - 1
  while (tail > head):
    new_result = (tail - head) * min(nums[head], nums[tail])
    #print("head=%d, tail=%d, new_result=%d" % (head, tail, new_result))#for debug
    if (nums[head] >= nums[tail]):
      tail -= 1
    else:
      head += 1
    result = max(result, new_result)
  return result

def random_str(slen=15):
  seed = "0123456789"
  sa = []
  for i in range(slen):
    sa.append(random.choice(seed))
  return ''.join(sa)

if __name__ == "__main__":
  nums = []
  for _ in range(10):
    ran_char = random_str(1)
    nums.append(int(ran_char))
  print(nums)
  print("result:%d" % (maxArea(nums)))