library(tidyverse)

# explore dataframe
glimpse(mtcars)

head(mtcars, 3)
tail(mtcars, 2)


# glue
# string template

my_name <- "toy"
my_age <- 34

# tidyverse
# dplyr => data transformation
# 1. select
# 2. filter
# 3. mutate
# 4. arrange
# 5. summarise + group_by

# select columns
select(mtcars, mpg, hp, wt)

select(mtcars, wt, hp, mpg, am)

select(mtcars, contains("a"))

# %>% Pipe Operator
# Data pipeline in R
mtcars %>%
  rownames_to_column() %>%
  select(model = rowname, 
         milePerGallon = mpg,
         horsePower = hp,
         weight = wt) %>%
  head()

mtcars <- mtcars %>%
  rownames_to_column() %>%
  rename(model = rowname)

# filter model names
mtcars %>%
  select(model, mpg, hp, wt) %>%
  filter(grepl("n$", model))

# mutate create new columns
df <- mtcars %>%
  select(model, mpg, hp) %>%
  head() %>%
  mutate(mpg_double = mpg*2,
         mpg_log = log(mpg),
         hp_double = hp*2)

# arrange sort data
mtcars %>%
  select(model, am, mpg) %>%
  arrange(am, desc(mpg))

# create label
# am (0=auto, 1=manual)

mtcars <- mtcars %>%
  mutate(am = ifelse(am==0, "Auto", "Manual"))

# create dataframe from scratch
df <- data.frame(
  id = 1:5,
  country = c("Thailand", "Korea", "Japan",
              "USA", 
              "Belgium")
)

# case when in SQL
sqldf("select *, case 
            when country in ('USA', 'Canada') then 'America'
            when country in ('Thailand', 'Korea', 'Japan', 'Malaysia') then 'Asia'
            else 'Europe'
            end as region
            from full_df
      ")

# case when in R
full_df %>% 
  mutate(region = case_when(
    country %in% c("Thailand", "Korea", "Japan", "Malaysia") ~ "Asia",
    country %in% c("Canada", "USA") ~ "America",
    TRUE ~ "Europe"
  ))

# summarise + group_by
# aggregate functions
result <- mtcars %>%
  mutate(vs = ifelse(vs==0, "v-shaped", "straight")) %>%
  group_by(am, vs) %>%
  summarise(avg_mpg = mean(mpg),
            sum_mpg = sum(mpg),
            min_mpg = min(mpg),
            max_mpg = max(mpg),
            n = n() ) 

View(result)

write_csv(result, "result.csv")

df <- read_csv("result.csv")


# missing values
# NA (not available)

v1 <- c(5, 10, 15, NA, 25)

is.na(v1)

data("mtcars")

mtcars[5, 1] <- NA

# loop over dataframe

data("mtcars")

for(i in 1:ncol(mtcars)) {
  print(mean(mtcars[[i]]))
}

# apply loop over dataframe
apply(mtcars, 2, mean)

# join dataframe
# standard joins in SQL
# inner, left, right, full

band_members
band_instruments




















