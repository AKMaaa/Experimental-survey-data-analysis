# 問1
A <- matrix(c(1, 3, 5, 2, 4, 6, 3, 5, 8), 3, 3) # Aは3*3行列 # nolint
B <- matrix(c(2.5, 1, 0, 2, 3, 6, 3, 0, 1.5), 3, 3) # Bは3*3行列 # nolint
v <- matrix(c(5, 4, 2), 3, 1) # vは3*1行列

# A,B,v確認用
A
B
v

# (1) AB
print("(1)の答えは以下の通りです")
A %*% B

# (2) Av
print("(2)の答えは以下の通りです")
A %*% v

# (3) Bの逆行列
solve(B)

print("(3)の答えは以下の通りです")
round(solve(B), digits = 3)

# 問2
# Bx=v # nolint
# invB*B*x=invB*v # nolint
# I*x=invB*v # nolint
# x=invB*v # nolint

x <- solve(B) %*% v
x
print("問2の答えは以下の通りです")
round(x, digits = 3)

# 問3

DFno3 <- data.frame(cbind(c(160, 180, 175, 160, 190, 172, 165), c(80, 90, 65, 57, 70, 60, 75))) # nolint

colnames(DFno3) <- c("身長(cm)", "体重(kg)")
rownames(DFno3) <- c("男性1", "男性2", "男性3", "男性4", "男性5", "男性6", "男性7")
DFno3

# BMIを計算する関数

calc_bmi <- function(height, weight) {
    return(weight / (height * height) * 10000)
}

# bmiの行列を作成
bmi <- matrix(calc_bmi(DFno3[, 1], DFno3[, 2]), 7, 1)

colnames(bmi) <- c("BMI")
# bmi出力確認用
bmi

cbind(DFno3, round(bmi, digits = 3))

# 身長の平均
round(mean(DFno3[, 1]), digits = 3)
# 体重の平均
mean(DFno3[, 2])