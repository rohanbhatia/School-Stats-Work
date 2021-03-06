#Chapter 8.1, 8.2: Qs 1 3 9 13 15 17 19. Chapter 9.1: 1 3 5 9

ch8q1 <- function() {

x = c(1.48, 1.26, 1.52, 1.56, 1.48, 1.46, 1.30, 1.28, 1.43, 1.43, 1.55, 1.57, 1.51, 1.53, 1.68, 1.37, 1.47, 1.61, 1.49, 1.43, 1.64, 1.51, 1.60, 1.65, 1.60, 1.64, 1.51, 1.51, 1.53, 1.74)

print("Part A")
stem(x)
print("yes")

print("Part B")
print("Use sample variance")
n = length(x)
xbar = mean(x)
s2 = sum((x - xbar)^2)/(n - 1)
print(s2)

print("Part C")
chisq_alpha_div_two = 45.722
chisq_one_min_alpha_div_two = 16.047
l1 = ((n-1)*(s2))/chisq_alpha_div_two
l2 = ((n-1)*(s2))/chisq_one_min_alpha_div_two
print(l1)
print(l2)

print("Part D")
l12 = sqrt(l1)
l22 = sqrt(l2)
print(l12)
print(l22)

print("Part E")
print("yes, it is outside the CI")


}

ch8q3 <- function() {

x = c(21.9, 23.4, 22.1, 22.1, 24.7, 24.6, 24.0, 24.1, 24.2, 26.5, 23.8, 25.3, 24.8, 24.8, 24.5, 27.8, 24.9, 27.2, 25.1, 25.5, 23.7, 26.5, 22.0, 26.7, 25.2, 23.1, 25.4)

print("Part A")
stem(x)
print("Assumption of normality is OK")

print("Part B")
n = length(x)
xbar = mean(x)
s2 = sum((x - xbar)^2)/(n - 1)
print(s2)

print("Part C")
chisq_alpha_div_two = 48.290
chisq_one_min_alpha_div_two = 11.160
l1 = ((n-1)*(s2))/chisq_alpha_div_two
l2 = ((n-1)*(s2))/chisq_one_min_alpha_div_two
print(l1)
print(l2)

print("Part D")
l12 = sqrt(l1)
l22 = sqrt(l2)
print(l12)
print(l22)
print("Reducing the confidence level will shorten the interval")

}

ch8q13 <- function() {

x = c(2.0, 1.4, 3.5, 2.3, 3.2, 3.6, 0.1, 3.5, 2.2, 2.1, 2.4, 1.5, 2.2, 2.3, 2.7, 1.9, 1.7, 1.8, 3.1, 1.5, 1.5, 2.6, 2.8, 2.5, 2.5, 3.9, 0.8, 1.8, 3.3, 3.7)

print("Part A")
n = length(x)
xbar = mean(x)
s2 = sum((x - xbar)^2)/(n - 1)
s = sqrt(s2)
print(xbar)
print(s)

print("Part B")
t_alpha_div_2 = 2.756
l = t_alpha_div_2 * s * (1/(sqrt(n)))
print(xbar)
print("+-")
print(l)

print("Part C")
print("We are 99% confident that the new mean is at most 2.8, so yes new algo is more efficient")



}

ch8q15 <- function() {

x = c(290, 610, 790, 670, 770, 420, 600, 350, 800, 920, 410, 810, 620, 560, 550, 610, 510, 390, 480, 630, 470, 380, 550, 570, 730, 680, 530, 650, 1000, 720)

print("Part A")
stem(x)
print("Yes, based on the shape of the stem/leaf plot")

print("Part B")
boxplot(x)
print("No: Q1 is 480, Q3 is 720, IQR is 240, 1.5*IQR is 360, f1 is 120, f3 is 1080. No vals above 1080 or below 120")


print("Part C")
n = length(x)
xbar = mean(x)
s2 = sum((x - xbar)^2)/(n - 1)
s = sqrt(s2)
t_alpha_div_2 = 2.756
l = t_alpha_div_2 * s * (1/(sqrt(n)))
print(xbar)
print("+-")
print(l)

print("Part D")
print("Lower the confidence level")

}

ch8q17 <- function() {

x = c(25, 29, 32, 37, 40, 27, 30, 35, 38, 41, 42, 45, 45, 47, 49, 50, 55, 53, 60)
n = length(x)
xbar = mean(x)
s2 = sum((x - xbar)^2)/(n - 1)
s = sqrt(s2)
t_alpha = 1.729
l = t_alpha * s * (1/(sqrt(n)))
print(xbar-l)

}

ch9q1 <- function() {

print("Part A")
n = 50
k = 45
p_o = k/n
print(p_o)

print("Part B")
z_alpha_div_2 = 1.645
l = (z_alpha_div_2) * (sqrt((p_o)*(1-p_o)*(1/n)))
print(p_o)
print("+-")
print(l)

print("Part C")
d = 0.02
n_0 = (z_alpha_div_2^2)*(1/(d^2))*(p_o)*(1-p_o)
print(n_0)

}

ch9q3 <- function() {

print("Part A")
n = 1000
k1 = 600
p_1 = k1/n
z_alpha_div_2 = 1.645
l1 = (z_alpha_div_2) * (sqrt((p_1)*(1-p_1)*(1/n)))
print(p_1)
print("+-")
print(l1)

print("Part B")
k2 = 900
p_2 = k2/n
z_alpha_div_2_2 = 1.96
l2 = (z_alpha_div_2_2) * (sqrt((p_2)*(1-p_2)*(1/n)))
print(p_2)
print("+-")
print(l2)

}

ch9q5 <- function() {

p_0 = 1/2
z_alpha_div_2 = 1.96
d = 0.03
n = (z_alpha_div_2^2) * (1/(d^2)) * (1/2) * (1/2)
print(n)

}





