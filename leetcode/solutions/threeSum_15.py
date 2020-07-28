#!/usr/bin/python3
import random
import string

def threeSum(nums, target = 0):
  result = []
  nums.sort()
  print("sort_nums:")
  print(nums)
  n = len(nums)
  for first in range(n):
    if (nums[first] == nums[first-1]):
      continue
    left = first + 1
    right = n - 1
    new_target = target - nums[first]
    if (new_target < 0):
      return result
    while (left < right):
      if (nums[left] + nums[right] > new_target):
        right -= 1
      elif (nums[left] + nums[right] < new_target):
        left  += 1
      else:
        result.append([nums[first], nums[left], nums[right]])
        break
  return result

def random_str(slen=15):
  seed = "12345"
  sa = []
  for i in range(slen):
    sa.append(random.choice(seed))
  return ''.join(sa)

if __name__ == "__main__":
  for _ in range(100):
    nums = []
    for _ in range(8):
      ran_char = random_str(1)
      nums.append(int(ran_char))
    print(nums)
    result = threeSum(nums, 10)
    print(result)
    print("\n")
    for i in range(len(result)):
      for j in range(i+1, len(result)):
        if (result[i] == result[j]):
          print("Error!!")
          break