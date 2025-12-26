sets p  first row entries     /P1,P2,P3,P4,P5,P6,P7,P8/
      c  second row entries    /C1,C2,C3,C4/
      t  first column entries  /Apr,May,Jun,Jul,Aug,Sept,Oct,Nov,Dec,Jan,Feb,Mar/
      f  factory /F1,F2/
      m  DC       /DC1,DC2/;


parameter dem(p,c,t),cost5(p,f),cost4(p,m),cost3(p,f),cost6(p,f),cost7(p,f);
parameter capai(p,m),capaif(f,t),rtp(p,f),rti(p,f),cost1(p,c),cost2(p,m),capaf(f,t);

Table dem(p,c,t)   demand at customer zone period wise

         Apr     May     Jun     Jul     Aug     Sept    Oct     Nov     Dec     Jan     Feb     Mar
P1.C1    1500    2000    1000    1000    1000    100     50      50      0       100     100     50
P1.C2    2000    1500    1500    1500    1000    50      50      50      0       75      50      100
P1.C3    1500    2000    2000    1000    1000    50      100     50      0       50      50      150
P1.C4    1000    1500    1500    1500    1000    100     100     50      0       75      100     100
P2.C1    50      100     150     150     100     100     50      50      0       100     100     50
P2.C2    50      150     100     100     150     50      100     50      0       50      50      100
P2.C3    100     50      100     150     100     50      50      50      0       100     150     150
P2.C4    100     200     150     200     250     100     100     50      0       50      100     100
P3.C1    50      100     50      40      20      10      0       0       0       30      100     40
P3.C2    0       50      50      30      40      10      0       0       0       30      100     40
P3.C3    50      25      50      40      20      40      0       0       0       40      20      60
P3.C4    50      25      50      40      20      40      0       0       0       40      30      50
P4.C1    200     200     200     200     200     200     200     100     150     200     300     400
P4.C2    300     300     300     400     400     100     100     150     250     100     400     300
P4.C3    200     400     300     300     300     300     200     250     200     400     150     250
P4.C4    200     200     200     200     100     300     200     200     100     200     250     150
P5.C1    1500    2000    1000    2000    1000    2000    1000    1000    500     1000    1000    2000
P5.C2    1000    1000    2000    1000    2000    1000    500     500     1000    500     2000    1000
P5.C3    2500    1000    3000    2000    1000    1000    1000    500     500     500     1000    1000
P5.C4    500     3000    1000    1000    2000    1000    1500    1000    1000    2000    2000    1000
P6.C1    200     300     400     200     300     200     150     250     300     200     200     300
P6.C2    400     200     300     300     100     100     250     150     250     100     300     200
P6.C3    100     400     300     100     200     200     300     100     150     400     400     400
P6.C4    300     300     200     400     400     400     100     300     100     200     100     200
P7.C1    100     200     300     100     50      100     200     100     200     100     200     200
P7.C2    200     100     400     50      250     200     100     100     100     200     100     100
P7.C3    400     400     100     250     150     100     200     200     50      200     300     300
P7.C4    100     200     100     300     250     200     100     100     150     100     300     400
P8.C1    300     200     200     200     300     400     100     100     300     200     200     400
P8.C2    200     400     400     300     100     100     300     200     100     100     300     100
P8.C3    300     500     300     400     200     300     200     100     200     100     100     300
P8.C4    500     300     400     100     400     200     400     300     100     100     400     200;

Table cost5(p,f) production cost data
         F1      F2
P1       1600    3000
P2       1000    3500
P3       2100    3000
P4       2500    3500
P5       1300    1500
P6       2800    1600
P7       2000    4000
P8       2500    4500
;

Table cost4(p,m) unit transportation cost data from dc to customer zone

         DC1     DC2
P1       80      75
P2       50      55
P3       255     220
P4       175     200
P5       65      80
P6       140     120
P7       400     450
P8       225     210
;

Table cost3(p,f) unit product transportation cost data from factory to dc

         F1      F2
P1       20      500
P2       25      600
P3       15      550
P4       35      650
P5       40      35
P6       20      25
P7       15      550
P8       20      750;
Table cost6(p,f) unit product inventory holding cost data at factory
         F1      F2
P1       24      50
P2       15      60
P3       76      55
P4       52      65
P5       19      22
P6       42      40
P7       12      75
P8       67      70;
Table cost7(p,f) unit unfulfilled penalty cost against the requested quantity from the DA for the product at factory
         F1      F2
P1       1500    5000
P2       1000    6000
P3       2200    7000
P4       2700    5500
P5       1400    1600
P6       2900    3200
P7       8100    6500
P8       4700    7500;
Table capai(p,m) available inventory capacity for product at dc
         DC1     DC2
P1       225     200
P2       450     500
P3       225     250
P4       120     100
P5       150     120
P6       75      100
P7       450     500
P8       450     400;
Table capaif(f,t)        Total available inventory capacity for factory in period

         Apr     May     Jun     Jul     Aug     Sept    Oct     Nov     Dec     Jan     Feb     Mar
F1       6000    6100    7200    7000    6200    5000    5400    6200    7000    6100    6200    6400
F2       1100    1200    1000    1200    1000    1100    1200    1000    1100    1200    1000    1200;



Table capaf(f,t)         Total available production capacity for factory in period
         Apr     May     Jun     Jul     Aug     Sept    Oct     Nov     Dec     Jan     Feb     Mar
F1       15000   16000   15000   14000   15000   16000   15000   14000   16000   15000   14000   16000
F2       16000   14000   16000   15000   14000   15000   16000   15000   15000   14000   15000   14000;

Table rtp(p,f)           production capacity utilization rate per unit of product at factory

         F1      F2
P1       1       2
P2       1       1
P3       2       1
P4       1       2
P5       2       1
P6       1       2
P7       1       1
P8       2       1;

Table rti(p,f)           Inventory capacity utilizationrate per unit of product in factory

         F1      F2
P1       1       2
P2       1       1
P3       2       1
P4       1       2
P5       2       1
P6       2       2
P7       1       1
P8       1       2;

Table cost1(p,c) unit tardiness cost for product at customer zone in period

         C1      C2      C3      C4
P1       1200    900     1000    1100
P2       750     1200    900     1000
P3       1500    1000    900     500
P4       1500    800     1200    900
P5       100     1200    1000    1100
P6       1100    1200    900     700
P7       600     700     900     1000
P8       1000    1200    1500    900;
Table cost2(p,m)         unit earliness cost for product at dc
         DC1     DC2
P1       800     600
P2       500     800
P3       250     230
P4       800     500
P5       700     800
P6       900     800
P7       400     300
P8       200     250;
display dem,cost1,cost2,cost3,cost4,cost5,cost6,cost7,capai,capaif,rti,rtp;
positive variables
tar(p,c,t)
ear(p,m,t)
td(p,f,m,t)
tc(p,m,c,t)
fcapa(p,f,t)

tarc1
earc1
tdc1
tcc1    ;
variable
DAC;
Equations
         objDA                   objective function of DA
         demand(p,c,t)           demand constraint at customer zone
         earliness(p,m,t)        limit on earlinesws constraint
         limitearli(p,t)       limit on earliness
         tarc                    tardiness cost
         earc                    earliness cost
         tdc                     transportation cost from factory to dist_centre
         tcc                     transportation cost from dist_centre to customer zone
         eq4                     rcapa
         desiredeq               desired equation
         eqrcapa                 equation for rcapa
         limittar(p,t)
         demtar(p,c,t)           material balance equation at customer zone;
tarc..                   tarc1 =e= sum((p,c,t), cost1(p,c)*tar(p,c,t));
earc..                   earc1 =e= sum((p,m,t), cost2(p,m)*ear(p,m,t));
tdc..                    tdc1 =e= sum((p,f,m,t), cost3(p,f)*td(p,f,m,t));
tcc..                    tcc1 =e= sum((p,m,c,t), cost4(p,m)*tc(p,m,c,t));
objDA..                  DAC =e=  tarc1 + earc1 + tdc1 + tcc1;
demand(p,c,t)..          sum((m), tc(p,m,c,t)) =e= dem(p,c,t) - tar(p,c,t);
earliness(p,m,t)..       ear(p,m,t-1) + sum((f), td(p,f,m,t)) =e= ear(p,m,t) + sum((c), tc(p,m,c,t));
limitearli(p,t)..      sum((m),ear(p,m,t))=l=0.3*sum((c),dem(p,c,t));
limittar(p,t)..          sum((c),tar(p,c,t))=l=0.3*sum((c),dem(p,c,t));
desiredeq(p,f,t)..       sum((m),td(p,f,m,t)) =e= fcapa(p,f,t);
model DAgent  /objDA, demand, earliness, limitearli,limittar,tarc, earc, tdc,tcc/ ;
positive variables
x(p,f,t)
i(p,f,t)
b(p,f,t)
prodc1
invc1
unfulfillc1 ;
variable
PAC
TCipdpscm;
parameter capaPAMin(f,t),rcapa(p,f,t);
Equations
objPA                    production agent cost
invbal(p,f,t)            inventory balance constraint
invbal1(p,f,t)            inventory balance for DPDPSCM
limitprod(f,t)           limit on production quantity
limitinv(f,t)            limit on inventory constraint
prodc                    production cost
invc                     inventory cost
unfulfillc               unfulfilled cost;
prodc..                  prodc1 =e= sum((p,f,t), cost5(p,f)*x(p,f,t));
invc..                   invc1 =e= sum((p,f,t), cost6(p,f)*i(p,f,t));
unfulfillc..             unfulfillc1 =e= sum((p,f,t), cost7(p,f)*b(p,f,t));
objPA..                  PAC =e= prodc1 + invc1 + unfulfillc1;
invbal1(p,f,t)..         i(p,f,t-1) + x(p,f,t) =e= rcapa(p,f,t) + i(p,f,t) - b(p,f,t);
limitprod(f,t)..         sum((p), rtp(p,f)*x(p,f,t)) =l= capaf(f,t);
limitinv(f,t)..          sum((p), rti(p,f)*i(p,f,t)) =l= capaif(f,t);
Equations
eq3(f,t)                 equation limiting desired production capacity ;
eq3(f,t)..               sum((p), fcapa(p,f,t)) =l= capaPAMin(f,t);
model  PAgent1  /objPA,invbal1,limitprod,limitinv,prodc,invc,unfulfillc/;
model DAgent1  / objDA,demand,earliness,limitearli,tarc,earc,tdc,tcc,eq3,desiredeq/;
solve DAgent minimizing DAC using mip;
set iter /iter1*iter29/;
parameter results(iter,*);
parameter  capaPA(f,t);
parameter  capaPAMin(f,t);
parameter TotalCost;
capaPAMin(f,t) = inf;
loop(iter,
results(iter, 'Lateness Cost') = tarc1.l;
results(iter,'Lateness qty') = sum((p,c,t),tar.l(p,c,t));
results(iter, 'Earliness Cost') = earc1.l;
results(iter,'Earliness qty')= sum((p,m,t),ear.l(p,m,t));
results(iter,'Transp. Cost b/w plant & D/C') = tdc1.l;
results(iter,'Trasp.qty.b/w plant & D/C') =sum((p,f,m,t),td.l(p,f,m,t));
results(iter,'Transp Cost b/w D/C & CZ') = tcc1.l;
results(iter,'Transp.qty.b/w DC & CZ')= sum((p,m,c,t),tc.l(p,m,c,t));
results(iter, 'DA Cost') = DAC.l;
rcapa(p,f,t) = sum((m),td.l(p,f,m,t));
solve PAgent1 minimizing PAC using mip;
results(iter,'Prod Cost') = prodc1.l;
results(iter,'prod. qty') = sum((p,f,t),x.l(p,f,t));
results(iter,'inv Cost') = invc1.l ;
results(iter,'Inventory qty') = sum((p,f,t),i.l(p,f,t));
results(iter, 'Unfulfill Cost') = unfulfillc1.l;
results(iter,'unfulfilled qty') = sum((p,f,t),b.l(p,f,t));
results(iter,'PA Cost') = PAC.l;
TotalCost = DAC.l+PAC.l;
results(iter,'Desired prod. qty') = sum((p,f,t),rcapa(p,f,t));
results(iter,'Possible Prod qty') = sum((p,f,t),x.l(p,f,t));
results(iter, 'Total Cost') = TotalCost;
capaPA(f,t) = sum((p), rcapa(p,f,t)) - sum((p),b.l(p,f,t));
loop((f,t), if(capaPAMin(f,t) > capaPA(f,t) , capaPAMin(f,t) = capaPA(f,t)));
solve DAgent1 minimizing DAC using mip;
results(iter, 'DA Cost') = DAC.l;
display capaPAMin;
);
display results;
display capaf;


