
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

 opcode "p3fallx_a", a, io
ifinalval, idelay xin
ares expon 1, idelay, 1, p3-idelayt=, ifinalval
xout ares
 endop
 
  opcode "p3fallx_k", k, io
ifinalval, idelay xin
kres expon 1, idelay, 1, p3-idelayt=, ifinalval
xout kres
 endop
 
 opcode "p3rampt_a", a, io
itype, idelay xin
ares transeg 0, idelay, 0, 0, p3-idelay, itype, 1
xout ares
 endop
 
 opcode "p3rampt_k", a, io
itype, idelay xin
kres transeg 0, idelay, 0, 0, p3-idelay, itype, 1
xout kres
 endop
 
 opcode "attackl_a", k, io
iatk, idelay xin
ares linseg 0, idelay, 0, iatk, 1, p3-(iatk+idelay), 1
xout ares
 endop

 opcode "attackl_k", k, io
iatk, idelay xin
kres linseg 0, idelay, 0, iatk, 1, p3-(iatk+idelay), 1
xout kres
 endop

 opcode "attackt_a", k, ipo
iatk, itype, idelay xin
ares transeg 0, idelay, 0, 0, iatk, itype, 1, p3-(iatk+idelay), 0, 1
xout ares
 endop

 opcode "attackt_k", k, ipo
iatk, itype, idelay xin
kres linseg 0, idelay, 0, 0, iatk, itype, 1, p3-(iatk+idelay), 0, 1
xout kres
 endop

 opcode "glissp3", k, ii
icps, isemitonesend xin
ksemitones linseg 0, p3, isemitonesend
kcps = icps*semitone(ksemitones)
xout kcps
 endop
 
 opcode wubenvelope, a, iipoo
iatk1, irelease, iatk2, istart, itype xin
aenv adsr .01, 0, 1, .05
aenv2 transeg istart, iatk2, itype, 1, 10000, 0, 1
xout aenv*aenv2
 endop
 
 
