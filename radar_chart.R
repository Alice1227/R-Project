library(radarchart)

data = read.csv("testdata.csv")
attach(data)

#Harvard University
harvard = data[data$university_name=='Harvard University',]
tmp = as.data.frame(t(harvard[,4:8]))
colnames(tmp) = harvard[,13]
tmp1 = data.frame(item = colnames(data)[4:8],tmp)
chartJSRadar(scores = tmp1, main = 'Harvard University', maxScale = 100, showToolTipLabel = TRUE)
print(harvard$world_rank)

#University of Cambridge
cambridge = data[data$university_name=='University of Cambridge',]
tmp = as.data.frame(t(cambridge[,4:8]))
colnames(tmp) = cambridge[,13]
tmp2 = data.frame(item = colnames(data)[4:8],tmp)
chartJSRadar(scores = tmp2, main = 'University of Cambridge', maxScale = 100, showToolTipLabel = TRUE)
print(cambridge$world_rank)

#University of Hong Kong
hongkong = data[data$university_name=='University of Hong Kong',]
tmp = as.data.frame(t(hongkong[,4:8]))
colnames(tmp) = hongkong[,13]
tmp3 = data.frame(item = colnames(data)[4:8],tmp)
chartJSRadar(scores = tmp3, main = 'University of Hong Kong', maxScale = 100, showToolTipLabel = TRUE)
print(hongkong$world_rank)

#University of Tokyo
tokyo = data[data$university_name=='University of Tokyo',]
tmp = as.data.frame(t(tokyo[,4:8]))
colnames(tmp) = tokyo[,13]
tmp4 = data.frame(item = colnames(data)[4:8],tmp)
chartJSRadar(scores = tmp4, main = 'University of Tokyo', maxScale = 100, showToolTipLabel = TRUE)
print(tokyo$world_rank)

#LMU Munich
lmu = data[data$university_name=='LMU Munich',]
tmp = as.data.frame(t(lmu[,4:8]))
colnames(tmp) = lmu[,13]
tmp5 = data.frame(item = colnames(data)[4:8],tmp)
chartJSRadar(scores = tmp5, main = 'LMU Munich', maxScale = 100, showToolTipLabel = TRUE)
print(lmu$world_rank)

#National Taiwan University
ntu = data[data$university_name=='National Taiwan University',]
tmp = as.data.frame(t(ntu[,4:8]))
colnames(tmp) = ntu[,13]
tmp6 = data.frame(item = colnames(data)[4:8],tmp)
chartJSRadar(scores = tmp6, main = 'National Taiwan University', maxScale = 100, showToolTipLabel = TRUE)
print(ntu$world_rank)