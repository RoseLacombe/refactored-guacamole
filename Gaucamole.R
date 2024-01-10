#### Just a little test for the GitHub workshop

#What happens when collaborators modify the fileset.seed(2820)

library(ggplot2)
library(stats)

#Simple t-test just for funsies
nachos <- data.frame(dips = c("salsa", "salsa", "guacamole", "guacamole", "guacamole", 
                            "refried beans", "7 layer dip", "sour cream"),
                   tortilla = c("corn", "corn", "flour", "flour", "flour", "corn", "corn", "corn"),
                   protein = c("ground beef", "black beans", "chorizo", "chorizo", "chicken", "black beans", "chorizo", "ground beef"),
                   weight = c(1, 1, 2.2, 2.4, 1.5, 2, 3, 1.1),
                   numberchips = c (20, 24, 35, 30, 27, 30, 45, 15))

t.test(weight ~ tortilla, data = nachos)

ggplot(nachos, aes(x = tortilla, y = numberchips, col = dips, shape = protein)) +
  geom_point()
