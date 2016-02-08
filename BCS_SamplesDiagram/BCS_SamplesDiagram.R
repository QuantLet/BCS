graphics.off()
require(diagram)
par(mar = c(1, 1, 1, 1), family = "serif")
fromto = matrix(ncol = 2, byrow = TRUE, data = c(1, 2, 1, 3, 2, 4, 3, 5, 3, 6, 4, 7, 4, 8, 5, 9, 5, 10, 6, 11, 6, 12))

elpos = coordinates(c(1, 2, 3, 6), relsize = 1)
texts = c("Combinatorics", "Arrangement", "Selection", "Permutation", "Variation", "Combination", expression(paste(n, 
    "!")), exp = expression(frac(paste(n, "!"), prod(paste(g[j], "!"), paste(j, "=", 1), r))), expression(frac(paste(n, 
    "!"), paste((n - k), "!"))), expression(n^k), expression(bgroup("(", atop(n, k), ")")), expression(bgroup("(", atop(n + 
    k - 1, k), ")")))

textarrow = c("", "", "", "order is important", "order is arbitrary", "different elements", " identical elements", "without replacement", 
    "with replacement", "without replacement", "with replacement")
openplotmat()
nr = nrow(fromto)
arrpos = matrix(ncol = 2, nrow = nr)
for (i in 1:nr) arrpos[i, ] = treearrow(to = elpos[fromto[i, 2], ], from = elpos[fromto[i, 1], ], lwd = 1, arr.pos = 0.1, 
    arr.length = 0, endhead = F)
nt = length(texts)
for (i in 1:nt) {
    textempty(mid = elpos[i, ], lab = texts[i], cex = 2)
}

for (i in 1:nr) {
    text(arrpos[i, 1] - 0, arrpos[i, 2] + 0.025, textarrow[i], cex = 1.5)
}
