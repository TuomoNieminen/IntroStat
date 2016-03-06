---
  title: InroStat 2
description : test (plotting)
---
  
  --- type:NormalExercise lang:r xp:100 skills:1
## Barplots

This exercise shows how to create bar plots with R, using package ggplot2!
  
  *** =instructions
- check out the structure of the iris data set
- check the first 10 rows of the iris dataset
- activate the ggplot2 package
- create a bar plot of the factor variable using the `qplot()` function

*** =hint
- `str()`-function gives information about R-objects
- `head(x, n=10)` will give the first 10 rows of `x`.
- use the `library(name_of_library)`-function to use a library
- use `data_frame$variable` to  access a variable in a data frame and then use the qplot()`-function for barplot
- you can always use `?function_name` for help!
  
  *** =pre_exercise_code
# no precode
```

*** =sample_code
```{r}

# check out the structure of iris


# display the first 10 rows of iris


# use the ggplot2 package


# draw a barplot


```

*** =solution
```{r}

# check out the structure of iris
str(iris)

# display the first 10 rows of iris
head(iris, n=10)

# use the ggplot2 package
library(ggplot2)

# draw a barplot
qplot(iris$Species)

```

*** =sct
```{r}

# Test whether the function str is called with the correct argument, object
# If it is not called, print something informative
# If it is called, but called incorrectly, print something else
test_function("str", args = "object",
              not_called_msg = "You didn't call `str()`!",
              incorrect_msg = "You didn't call `str(object = ...)` with the correct argument, `object`.")


# Test whether the student correctly used head()
# use the automatically generated feedback here
test_function("head", args = c("x","n"))


# It's always smart to include the following line of code at the end of your SCTs
# It will check whether executing the student's code resulted in an error, 
# and if so, will cause the exercise to fail
test_error()

# Final message the student will see upon completing the exercise
success_msg("Good work!")
```
