
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
 
 opcode "p3lattack_a", k, i
iatk xin
ares linseg 0, iatk, 1, p3-atk, 1
xout ares
 endop
 
 opcode "p3lattack_k", k, i
iatk xin
kres linseg 0, iatk, 1, p3-atk, 1
xout kres
 endop
 
 
 
