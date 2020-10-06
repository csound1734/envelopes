
 opcode "trigPhapd", k, kkPOOOOO
kfreq, ktrig, kexp, kpdclipw, kpdclipc, kpdhf, kpdhf, kshp xin
k1 loopseg kfreq, ktrig, 0, 0,1,1,kshp;for ramp set kshp=0, for triangle kshp=1 etc
k2 expcurve k1, kexp 
k3 pdhalf k2, kpdhf
k4 pdhalfy k3, pdhy 
k5 pdclip k4, kpdclipw, kpdclipc
xout k5
 endop

 opcode "kmap", k, kiOOo ;use an f-table as a transfer function to remap a normalized k-signal
knormin, ift, kDC, kscale, ioffset xin ;normalized signal input
kres table knormin, ift, 1, ioffset, 1 ;read table / norm. index, wrap on
kres = kDC+kres*kscale
xout kres
 endop

 opcode "kmapi", k, kiOOo ;use an f-table as a transfer function to remap a normalized k-signal
knormin, ift, kDC, kscale, ioffset xin ;normalized signal input
kres tablei knormin, ift, 1, ioffset, 1 ;read table / norm. index, wrap on
kres = kDC+kres*kscale
xout kres
 endop

 opcode "kmap3", k, kiOOo ;use an f-table as a transfer function to remap a normalized k-signal
knormin, ift, kDC, kscale, ioffset xin ;normalized signal input
kres table3 knormin, ift, 1, ioffset, 1 ;read table / norm. index, wrap on
kres = kDC+kres*kscale
xout kres
 endop

 opcode "p3xfrom1_a", a, i
ifinalval xin
ares expon 1, p3, ifinalval
xout ares
 endop
 
 opcode "p3xfrom1_k", k, i
ifinalval xin
kres expon 1, p3, ifinalval
xout kres
 endop
 
 opcode "p3tsegnorm_a", a, i
itype xin
ares transeg 0, p3, itype, 1
xout ares
 endop
 
 opcode "p3tsegnorm_k", k, i
itype xin
kres transeg 0, p3, itype, 1
xout kres
 endop
 
 
 
