
 opcode "trigPhapd", k, kkPOOOO
kfreq, ktrig, kexp, kpdclipw, kpdclipc, kpdhf, kpdhf xin
k1 loopseg kfreq, ktrig, 0, 0,1,1,0
k2 expcurve k1, kexp 
k3 pdhalf k2, kpdhf
k4 pdhalfy k3, pdhy 
k5 pdclip k4, kpdclipw, kpdclipc
xout k5
 endop

 opcode kmap, k, kiOOo ;use an f-table as a transfer function to remap a normalized k-signal
knormin, ift, kDC, kscale, ioffset xin ;normalized signal input
kres table knormin, ift, 1, ioffset, 1 ;read table / norm. index, wrap on
kres = kDC+kres*kscale
xout kres
 endop
