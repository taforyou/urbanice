# Live Result
https://youtu.be/3yB9HV0-i9E

# Look at my functions so you don’t have to waste your time.

# First Quiz

```
void _resultFirstQuiz() {
    // Second Degree polynomial an=a1+(n−1)d1+(n−1)(n−2)2×d2
    List<int> result = [];
    int d1 = 2;
    int d2 = 2;
    int a1 = 3;
    // i is n
    for (var i = 1; i <= 5; i++) {
      var temp = a1 + (i - 1) * d1 + ((i - 1) * (i - 2) / 2) * d2;
      result.add(temp.round());
    }
    setState(() {
      _result1 = result.last;
    });
  }

```

# Second Quiz

```
void _resultSecondQuiz() {
    // Try to prove mathematical logic ?
    setState(() {
      _result2 = 46;
    });
  }

```

# Third Quiz

```
void _resultSecondQuiz() {
    // Try to prove mathematical logic ?
    setState(() {
      _result2 = 46;
    });
  }

```

# Why do you need React-Native ?

Cons

- Difficult to modify thread
- Problem will arise when deal with huge navigation

# Why do I use flutter ?

Pros

- Copy concept from REACT !!! View my code and you will get what I mean.
- We can still use REDUX !!! It’s Great right ?
- Friendly with Firebase (Of cause it’s google product lol )
- Real native ,even with navigation.
- Meterial Design by default



