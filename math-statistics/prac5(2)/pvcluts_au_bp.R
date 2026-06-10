library(pvclust)
data(USArrests)
set.seed(42)
df <- scale(USArrests, center = TRUE, scale = TRUE)
result <- pvclust(t(df),
                  method.hclust = "ward.D2",
                  method.dist   = "euclidean",
                  r=seq(.5,1.4,by=.1),
                  parallel=TRUE,
                  nboot         = 5000)

plot(result, cex = 0.8, cex.pv = 0.7, hang = -1)

pvrect(result, alpha = 0.95, border = 4, lwd = 2)

result$edges$au
result$edges$bp

clusters_95 <- pvpick(result, alpha = 0.95)
print(clusters_95)


msplot(result, cex = 0.7)