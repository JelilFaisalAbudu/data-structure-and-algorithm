## How to solve this challenge?

1. Read the "Challenge description" below.
2. Make changes to the [challenge.rb](./challenge.rb) file.
3. Commit your changes.
4. Wait for the result of the "GitHub Classroom Workflow" action. If it is green - congratulations, you solved this challenge! If not - try again!
5. *You can watch an example of how to solve a challenge in [this video](https://microverse.pathwright.com/library/fast-track-algorithms-data-structures/69123/path/step/113963868/)*

Note: We use RSpec for checking your solution with unit tests. You can [install](https://github.com/rspec/rspec) it and use it in your local environment if you like.


## Challenge description

### Full Merge Sort

You just merged two arrays together into one sorted array. Can you now use your merge method to completely sort an unsorted array?

#### Algorithm
If you just had 2 sorted arrays, you could merge them to solve the problem. You have 2 unsorted halves instead, but Recursion can let you treat them as if they've been sorted. Recursively call mergesort on each half and then merge the results together.

#### Challenge
In this challenge you need to print the data that accompanies each integer in a list. In addition, if two strings have the same integers, you need to print the strings in their original order. This means your sorting algorithm will need to be stable, i.e. that the original order is maintained for equal elements.

#### Details

You will be given a list that contains both integers and strings. Can you print the strings in order of their accompanying integers? If the integers for two strings are equal, make sure to print them in the order they appeared in the original list.

#### Input Format

- `array`, each position containing an integer x, and a string, s.


#### Output Format 

- Return an Array with the strings in their correct order. 


#### Challenge

Print the characters according to the order of their accompanying integers.

#### Example
```
p full_merge_sort(["0 ab", "6 cd", "0 ef", "6 gh", "4 ij", "0 ab", "6 cd", "0 ef", "6 gh", "0 ij", "4 that", "3 be", "0 to", "1 be", "5 question", "1 or", "2 not", "4 is", "2 to", "4 the"])
# => ["ab", "ef", "ab", "ef", "ij", "to", "be", "or", "not", "to", "be", "ij", "that", "is", "the", "question", "cd", "gh", "cd", "gh"]
```

