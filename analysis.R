mydata = read.csv("timesData.csv")
attach(mydata)
###scatter plots#################
plot(developed,world_rank)
plot(teaching,world_rank)
plot(international,world_rank)
plot(research,world_rank)
plot(citations,world_rank)
plot(income,world_rank)
plot(num_students,world_rank)
plot(student_staff_ratio,world_rank)
plot(international_students,world_rank)

################################
fit1=lm(world_rank~teaching+international+research+citations+income+num_students+student_staff_ratio+international_students+developed)
summary(fit1)


################################
fit2=lm(world_rank~teaching+international+research+citations+income+num_students+student_staff_ratio)
summary(fit2)
################################
testdata=read.csv("testdata.csv")
attach(testdata)
rank_estimate=round(359.3-0.9811*teaching-0.2762*international-1.346*research-1.385*citations-0.2133*income-0.0003155*num_students+0.2148*student_staff_ratio)
diff=rank_estimate-world_rank
list(world_rank,rank_estimate,diff)

plot(rank_estimate,world_rank)
plot(world_rank,diff)




