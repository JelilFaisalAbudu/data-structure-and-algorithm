## How to solve this challenge?

1. Read the "Challenge description" below.
2. Make changes to the [challenge.rb](./challenge.rb) file.
3. Commit your changes.
4. Wait for the result of the "GitHub Classroom Workflow" action. If it is green - congratulations, you solved this challenge! If not - try again!
5. *You can watch an example of how to solve a challenge in [this video](https://microverse.pathwright.com/library/fast-track-algorithms-data-structures/69123/path/step/113963868/)*

Note: We use RSpec for checking your solution with unit tests. You can [install](https://github.com/rspec/rspec) it and use it in your local environment if you like.


## Challenge description

### Time Scheduler

You're working on a scheduler app. The user would like to attend as many events as possible but cannot attend events that overlap. Can you find the schedule with the greatest number of non-overlapping events?

See if you can find an O(n log n) solution.

#### I/O Format
You will be given a list of `n` numbers. The numbers consist of `n`/2 pairs, where each pair is the `start` and `end` time of an event. Find the optimal schedule of events and return an array with each time like this: `[start, end]`.

#### Sample Input
```
[4, 8, 1, 3, 7, 9, 5, 6]
```

#### Sample Output
```
[[1,3], [5,6], [7,9]]
```

#### Explanation

You are given 4 events:
```
[[4,8], [1,3], [7,9], [5,6]]
```

[4, 8] overlaps with 2 other events, so it should be left out, but the other 3 can all be included.

#### Challenge
Return an array with the schedule that fits the most events.

#### Example
```
p time_scheduler([4, 8, 1, 3, 7, 9, 5, 6])
# => [[1,3], [5,6], [7,9]]
```



#### Get stuck and need some hint?
Check below link: 

*https://gitlab.com/microverse/guides/coding_challenges/hints/blob/master/challenges/sorting-challenges/time-scheduler.md*
