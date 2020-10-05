
 opcode "trigPhapd", k, kkPOOOO
kfreq, ktrig, kexp, kpdclipw, kpdclipc, kpdhf, kpdhf xin
k1 loopseg kfreq, ktrig, 0, 0,1,1,0
k2 expcurve k1, kexp 
k3 pdhalf k2, kpdhf
k4 pdhalfy k3, pdhy 
k5 pdclip k4, kpdclipw, kpdclipc
xout k5
 endop
