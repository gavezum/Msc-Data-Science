library(tidyverse)
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = hwy, size=hwy), alpha= 1) # alpha é transparencia e size tamanho
# Left
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))#pode colocar uma var

# Right
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))#por defaut apenas irá plotar 6 shapes e o resto irá ficar sem

ggplot(data=mpg) +
  geom_point(mapping = aes(x=class, y =drv, size=hwy))

ggplot(data=mpg) +
  geom_point(mapping = aes(x=hwy, y =cyl))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(cyl ~ .)
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = drv, y = cyl))

ggplot(data=mpg, mapping = aes(x=displ, y= hwy)) +
  geom_point(mapping=aes(color=drv),size=3) +
  geom_smooth(mapping=aes(linetype=drv), se= FALSE)
  

ggplot(data = diamonds) + 
  stat_summary(
    mapping = aes(x = cut, y = depth),
    fun = mean
    )
    
ggplot(data = diamonds,mapping = aes(x = price, y=clarity)) + 
  geom_smooth(mapping = (class=clarity))


