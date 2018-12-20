# Author: Sara Edwards
# Date: December 2018

# Instructions: Simply select all & run 
# (if you use R studio don't have it full screen)

#   R studio Mac: Option+command+R
#             PC: Control+Alt+R

# In base R Mac: Command+A then Command+Enter
#            PC: Ctrl+A then Ctrl+Enter


X1 <- c(rep(2,4), rep(3,4), rep(4,7), rep(5,10), rep(6,6), rep(7,4), rep(8,5), rep(9,4), rep(10,5), rep(11,2), rep(12,2), 13)
Y1 <- c(3,4,5,11,  2,5,10,11,  5:11, 5:14, 5:8,12,15,  5:7,12,  5:7,13,14,  4:7, 3:7, 3,7,  2,3, 1)


X2 <- c(1, rep(2,2), rep(3,3), rep(4,5), rep(5,5), rep(6,4), rep(7,6), rep(8,6), rep(9,5), rep(10,3), rep(11,4), rep(12,7), rep(13,8), rep(14,8), rep(15,6), 16)
Y2 <- c(9, 8:9, 8:10, 7:11, 6:10, 7:10, 6:11, 5:10, 6:10, 6:8, 7,10,12,13, 7,9:14, 8:15, 9:16, 10,13:17, 14)
  
X3 <- c(12,12,13,13,15,15,16,16)
Y3 <- c(4,5,4,5,5,6,5,6)

X4 <- c(1, rep(2,3), 3, rep(4,6), rep(5,5), rep(6,8), rep(7,4), rep(8,3), rep(9,4), rep(10,9))
X4 <- c(X4, rep(11,12), 22-X4) 


Y4 <- c(12, 11:13, 12, 5,7,11,13,17,19, 6,7,12,17,18, 5:7,11,13,17:19, 8,10,14,16, 9,12,15, 8,10,14,16, 3,5,7,11:13,17,19,21)
Y4 <- c(Y4, 2:4, 6,9,11,13,15,18,20:22,Y4)

X5 <- c(1, rep(2,2), rep(3,3), rep(4,6), rep(5,3), rep(6,6), rep(7,4), rep(8,2), rep(9,6), rep(10,9))
X5 <- c(X5, rep(11,8), 22-X5)


Y5 <- c(11, 10,12, 9,11,13, 4,6,10,12,16,18, 5,11,17, 4,6,10,12,16,18, 7,9,13,15, 8,14, 3,7,9,13,15,19, 2,4,6,10:12,16,18,20)
Y5 <- c(Y5, c(1,3,5,10,12,17,19,21), Y5)


D <- data.frame(X=c(-X1-2, X1), Y=c(Y1,Y1), Fig='Brown')

L <- data.frame(X=c(X2/2 + 12, -X2/2 + 28), Y=c(Y2/2+8, -Y2/2+8), Fig="Green")
B <- data.frame(X=c(X3/2 + 12, -X3/2 + 28), Y=c(Y3/2+8, -Y3/2+8), Fig="Red")

Df <- rbind(D, L, B)

Sn <- data.frame(X=c(X4/1.2-10, X5/1.2+10), Y=c(Y4/1.2+81, Y5/1.2+82), Fig="Blue" )




dev.new(width=8, height=6, unit="in", noRStudioGD = T) 

par(family='serif', bg='blanchedalmond', mar=c(2,0,1,0))
plot(Y1~X1, xlim=c(0,120), ylim=c(0,100), type='n',axes=FALSE)


for (i in c(12, 57, 102)){
  
  points(Df$X+i, Df$Y, col=c('tan4','forestgreen','red')[Df$Fig], pch=15, cex=c(1.3, 0.5, 0.5, 0.7)[Df$Fig])
}

for (i in c(0, 40, 80, 120)){
points(Sn$X+i, Sn$Y, pch=15, col='dodgerblue4', cex=0.7)
}

abline(h=c(80, 102, -4, 20), col='darkred', lwd=2)
abline(h=c(81, 79, 101, 103, -3, -5, 19, 21), col='darkred', lty=6, xpd=NA)

T1 <- c(LETTERS[8], letters[c(1,16,16,25)])
T2 <- c(LETTERS[8], letters[c(15,12,9,4,1,25,19)])
T1 <- paste(T1, collapse="")
T2 <- paste(c(T2,"!"), collapse="")
text(45, 60, T1, cex=4, col='darkred', font=3)
text(65, 45, T2, cex=4, col='darkred', font=3)

points(c(X2+15), c(Y2+55), pch=15, col='forestgreen', cex=0.85)
points(c(X3+14), c(Y3+55), pch=15, col='red', cex=0.85)



points(c(-X2+104), c(Y2+45), pch=15, col='forestgreen', cex=0.85)
points(c(-X3+104), c(Y3+45), pch=15, col='red', cex=0.85)
