<?xml version="1.0" encoding="UTF-8"?>
<Form xmlVersion="20170720" releaseVersion="9.0.0">
<TableDataMap>
<TableData name="ds1" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[select * from lxty.2016_2017_11_company_amount]]></Query>
</TableData>
<TableData name="ds2" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[select * from lxty.2016_2017_11_enterprise_amount]]></Query>
</TableData>
<TableData name="ds3" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[select* from lxty.2016_2017_11_enterprise_amount_grow]]></Query>
</TableData>
<TableData name="ds5" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[select * from lxty.2017_11_company_group_amount]]></Query>
</TableData>
<TableData name="ds6" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[select * from lxty.2017_11_company_amount_top20]]></Query>
</TableData>
<TableData name="ds7" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[select * from lxty.2017_11_company_money_top20]]></Query>
</TableData>
</TableDataMap>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<FormMobileAttr>
<FormMobileAttr refresh="false" isUseHTML="false" isMobileOnly="false" isAdaptivePropertyAutoMatch="false"/>
</FormMobileAttr>
<Parameters/>
<Layout class="com.fr.form.ui.container.WBorderLayout">
<WidgetName name="form"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Center class="com.fr.form.ui.container.WFitLayout">
<WidgetName name="body"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="Adobe Devanagari" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WAbsoluteBodyLayout">
<WidgetName name="body"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="宋体" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Background name="ColorBackground" color="-15986891"/>
<Alpha alpha="1.0"/>
</Border>
<Background name="ColorBackground" color="-15986891"/>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="report1_c_c"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="report1_c_c"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<Refresh class="com.fr.plugin.reportRefresh.ReportExtraRefreshAttr" pluginID="com.fr.plugin.reportRefresh">
<Refresh state="0" interval="0.0" refreshArea="" customClass="false"/>
</Refresh>
<FormElementCase>
<ReportPageAttr>
<HR/>
<FR/>
<HC/>
<FC/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[762000,152400,647700,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[5829300,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" s="0">
<O>
<![CDATA[内环: 2016年]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="1" s="1">
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="2" s="0">
<O>
<![CDATA[外环: 2017年]]></O>
<PrivilegeControl/>
<Expand/>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting/>
</ReportSettings>
</ReportAttrSet>
</FormElementCase>
<StyleList>
<Style imageLayout="1">
<FRFont name="微软雅黑 Light" style="0" size="72" foreground="-15225665"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style imageLayout="1">
<FRFont name="SimSun" style="0" size="72" foreground="-15225665"/>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m9=@.;cgQ=QdM49_s'k.:ieW;Vcj<?.11`9EdG)RNYcH077RMK.b"M(M$>/cf^[TW?3orNEY
1X\364oLKLSC'8F3,`'aWA0i>/)KCkW<A#peRq.o%bC3UW/Xd_XCX*rNkGi8/hJ[FY)$n,%R
kg)PEerMjM&H/Y/_P9rH)qDTq]AQo+&Am\EEM2ZIkSpn-GQqIu-?`E00Jn`lU3-!8b8]A=,Xap
k1)W;/FG#.cEO+-LgcEYj^b%!i@RFeZ6.qJ+-cX[Gc/Nm)^mpLe_anHgO0i3N4hee4nj"`/`
*-)UIQT\pq3WX5`+Ka'cNIiR)oPV<nY(%D2"#EfSW#M,-UuXLNb$AEPndEY$QUqr7!PO%g0I
)^.d)@t22^h8OlR\!a3FI*[&Ar1Slf^9/0)4JeOYjrXg-r]A3AT9l?>ds1_n>mB6Xr_mH2T$i
\K5rr+F1HSf\Br2)tXhYZV"NlHf/4LW5FY%jf%QRH_*l>02<%9:]AtmqWkAY>)YW/Nj'`[%,'
6Bjl/-g>%g]ATd.37[kJig'&Qt-6ZI'+:Zm=V\lX\<&j(uZ'b#([1(ng!]Ahb8h;jsj<HABRY8
:3XH_%E#(R5lL6Us2`e_QeJMM=niQN@0VM$PJYiXJ#p\m;(<nS$+3q3RO&[5(0Fr/iTEUoS[
<%7C0uIGr@OL$!pn:WKIM?(LYW2/k/ImT;%7e>#HD(e2u$_1NY9g8W:/C,rbA.DLbZ5VX['I
4T[.Ed/D5uYR@`>Zq@D\+B5?GOtHkj#gM&,\`nFgKt4U!qSS9@`u4F5`4EnJc]A[1`*skp--A
JT6f<=""DSDAMZK9#:H]AnX#s(ZCGif`C;6j/7.F#6=(K@M9=$snIoc/i=C-cliPQ@tCSi)u=
Fk+,_E26WtVk-UWrEd()W9YmaUdEPC0hT;\=kr!=M7ia6uE=Xq_H5A+JWA7uhh>*>cj4V;_+
5aB23@0-<`Uf.cSt'$Nh0gM.^;=LFZp-CV1%XeNGJ+Y;cmktr2EICPXD'(N`C0HTG0J0SH*Y
,E0i"p=1=h<"@ZG:5[1lVi9M`p2+"78tW,,&8YYmMk6r,\p"`r2F_/i8bk(E>D\&=X!2U\U_
"6G[m]ADLh;@-^=]ACA0_)4`orY1G(&4pWW(_XRq8?Q'dFQHd`h#nij`FnQfiP=IQ\_giDXmd9
qm0gjp?3h5Wnr2f`LQmd0'=!-`Vb/$2H2Z^F6N%g2E.TY8J8fcg[I2rQ,RfQ(t9gl?-Ri6WR
;!S]A;b<:?pY\1%m4QcrG2=5tj_d?"S%_cE'O[@E]A#aMkA?kCjO%3+#*!E(E7@`^Fqj>;/_;N
IgK#*I(.^70MhrmS1ZqLff2RSataD8%hDG@5S46UD'8&r2@"_63:g7IYZ\2CRXg@Esk%]AOs-
DU[b"XeH)B4GOg_*rD^a.A87%)(^itI:krEVO2Oi*/]A9qWgJ*XY:7a#1@<JSA(1/sYHZjNke
JnDq/L:U'5G0bHs"kQMelfR/W/8#UQQKmC3;6B#&fDVkXpjlt)Es!(m0d!KB'W[e*%%oIq5f
&3)>-k(31St`_e"DMk?BOb?cB!S[4Ndm++4CrGX5(NU\lhR:e$E=\rpL,$Pa[P#!C(&@_Gu;
4YrrJVdYq2Ccpia6j6:tperaAVOmE!(c45Sg1=<4()BQ@8drJRO@P]A8'BR'D<$5B`[q+i/fI
;'oN)em]AOD5r,_@Kkj9_,]A6s)7JMJ!8?<0U1S.V,J+sTK,&J5[h99T$>,H.cY'5"5mIZUZq]A
TopK1(tidA'!_HBm?,J-\9U9gtA73a`cfD]A$qY&@s_B-F"G@unW'HN6jJ=Z@d41"u)@U<g?.
Rt'E)`DCDp.<NhWTQ_c-IkinnZq!l;Ma6:m4XK&:!j.T1^IoT!p.eslMk'.7gL!S0,te6=GQ
S1oK.7e*4_EkI`ci5ZmIKU&AcA\]AVd>qnVTgEq=jFZGZ#h(g5^UH[M:GW1/sqeZN0ae2:L7J
0Qq>'2fkJWM&i]Aii`acS1b#@'d=hc,"jbauL:f`Wn,kn'OH!WI)9-]AC-@DpC\l_\PE'5b]A63
_AP]An6g!tR)`qSl7<`3_\2QhZXqL3.Zl9P'5s&$/OT8":g4_/AX)6#Vk/<[6`,!Z?#RL82B1
S2B,Yg_BCjU$g0L"Z*S@mJ@p]AL06lYUrP-el8S7e"n0sGJrHnup$,<C@4"ON,(Wt`:c^/@r]A
2.(*?N63,`A)D2apCpc%So\LJKlCm6[8+T,O1QJJ/ii@6M9h+-`@L4;e+^0>pN^unb>!'E"d
sd"D'g,4m;7A]Am6q)9d3!q1%NRcciI7_)2\3L0brdAMbG,`\fRV:_&Q)oN#7h(Pr%QI=NPu6
#OfL=g<8.HH,AkidcZ=otVN#m#1Kc<F<Ye`'9K#k"_o3eq<T'DkZ-2.,3UN[m,2FK-jX$So?
ul88J42uhdW7J*:3YaC]AUZ6+LDag%4JNB$f.adW8paa$<XSiaWVoG3U=9r*YXg`SpZ:Sbb=m
"KW<+oXa=.T8b>Yu,kEmL+;srAgs3opI%a.]A7+G4U=[bCEn\ue)M\[IB(h.=bHo_]A3'prMYG
Ng4N_TE?#c4^[RG1+Ja:Y6,Vu_OEg&;XFr[Q`<G%+q!`D2t4H7k6,uRm"\$c%$/ROWuskDlJ
BdH=0Xi%iWV)HNYWo>YQ**2rA=\*Q[qh4:JnW/aAY3bA36DXH[;@je"Uu-%_!U75SG]Af922Y
Erp/]ABQ0J]A!+C+`K"!&?;VIE<0Z$%IN>>!bW'(,IgmrF6`C:0W^,]AU@'\'=I."7l4I?5C,>.
'`[=kf=L6WogEpcEU]A4<;)'\VN)Z1R0Mko\\`($3m,Qt+GFY,&"blG$m]A`L#fZp[)BF=I]AHb
VbOQC^V[T)ekR@Yj?`0HBCp[95Fn+9@d5LMgSUi>-76!V"ER(BH4S!AeI1(A^%))3Z!Wj%lq
!Tts4cFFN3qVG"S)4OhP+(&V$]AU4.D@WnD".UZrh)2)lF8^gD3&SM>lEF'l/.+K>=MLli,No
8*lEm?VHl"6Uk2<faFWNBq;Sd=h-+u>e#>D%4ol7_.n8q>BmO@\uSUMPtboN06(^4qFPL,2`
J_UjE]Ak4Bh>)eFo^rlag=pE-LUC:7Z^B"+Z$8?hI."[JBN/OprC3;9-Kg!sMJ[I,DuW$W`MO
4r%,R\t))H#(bqdk5]AYWTNZUbe<"$!4GL8Xbp\u45]AOA+Q-1QEi/PmhWlF-4/so39HRs&0J@
r'VJ*HnR_*Gi=8+2rbBP@da5n3)ld#?u;No`rff^ErH8a2O%7+5CGL9E\J_b33j9f6bhlYjs
Fd-YF>.G#/g!h+%D+t,+-K4eaQRdU+\E>0dg8[6S:IR<,=_-]A/6M)QbM)jB.?!\Fpij*W.P"
h@)l+Z+J<`@j*`TMkT(!n<C.SsTp_U:%(:H0Y]A,eFfNgAs-OA277ZTO@=8PDl8^mg8Dr]A\8K
%9u=d?^>&CGP&ZB2l%l9@^Xr&^7,<l?H?ACsm_7;KWL-5GVAcrA>^T\a2!6iiDJ*;5X^QtCc
+a,r,3iVDPlteYhAQBKYa./ZH`*?Q?Xo4cmo"lNPNK/MG_N:c@m!FWHlI)hYd[:E7_=:S^JC
9af,"-%\jbkP9:+qTcVb_8f=ih.65iH!Z395f'&GCPr@(N6Li)sS:BlQKYX)laZn8;f^iY!G
1%%cO=a^DRg(K&qCHHEQE\r?UYgWhc5R#]AVW:"Fl"ML<S'jP/kLN)9uPKX3B>LWkf:8WN+Ke
8mWq\%ff?4IO;DgSQ^JS+_e/@Clfe*nB<oM2&Z>F4;#j+2or\F3cg)85+1VdNJ&goP/..@2E
YimPdt5Sj[Ta[.Xh8oY_Y)()\+N3&#mF!hPh#\Q%Q?%Gh=DG,-2`t1L;n@(aAORn!CG2Q]AQ!
o!<YQ&9+N<i3ZOI00*X.X$*c@jS8Nf*JbQ)JdCA,hooGms(hYS/7*[NT)R#c,acsDu\il$Qp
E<@E%i^Da:Qoa.dAUO^%ScQqk(&pWe;K!p)p[B@!ao*V>]Asr/NK#[4=$VZ8jOb"&8;17..3`
L72Y\WVDbIaU"_B_6?dU:FB#rQN!p4j%FCG;Sp$<9;)Y%]AJDo.dpLW#CE3=+-oD;SpjusVWl
mNXLLJW?1OpgEI\b&gjRQKPiBpcaZ5WK-(]AYf;"H7fJ0T$%1_dEqsQUMrZ7%6M08;RY7l1.L
K<,D)G0GEQN8Z7!n#9Euc&]A:lJ?m"qVfJhd!rDJkDi4+(#q2HjZqE2u=hB[(I,kcOcVANLs&
O=!T,g*`[=.Z(l1aM$f<D0HrU<m9*@e"N9RQ@-\rXfeS&/.?KXZFd9L/i(rbTs3S(th8uN4f
L>;)BgRqtIAJ@d9"%S\9)b&&pY2Q*;Zq04@;g*^mpaL2;M"g['-%bbS^=SQ^2P8RM7QDi&-C
9?i9nL*1'T="5PMWQ$;_9bL;"HTp_)j`(e-+;mQa?GVu9pkT%cSYfhmj5.&'aGmNInmKVGm5
>W+$#[9!SYBT!OhXFq;?(9V5JS,`T%ojPYl%@,lC>ZB^CA1,G$b@Ukm`#f6t0YE/P'Eh0NQI
QquFcLe6d'-R*`VJ8,X).Id?9hj24+C/"<S^lWg!=I,%5hJ&+OUinb9jdI<Z[8jXroVP!fj,
'C,?4ia,c[Us-7!1Enc+on[;A8!,?,`/M3k&!fN@XDC8L,rn?M<S(Gb^\!XCs0.cAAWu7\X1
>#s$6D_eaU"K%9#2[KgcA7YEAspGn6.b/b=Opb^.nb%1pCX?uIQ:/W?:KSr&?Nmu!1k";P:8
D^lB_fN\Wi+50N[MMH3n7bSSiqR'uUbi5/[J'\HcL^TfN#c[]A?rE>T=\s6o^EDl1DV%D,d:o
2W(LMD"5ZEV;D:$COql!^RLR]A3l6^(7t/]A:0#e<t<j!(CB%8_T8_UMFd-49(eVpn3$@@!jJ[
fW0tTCLGUE+;<#NfMgn`N'UBB__Ur;GkXrS_5sT"mAfo1VNC<4gLtoi[R!,J"Cd,LX"eT/[6
f,J!TB/ka]Adp(jhCt+,9jba?TA]A/=d^YNrK>0fBhS4(j/p3c`^A;WNWIc7al+n0Zpja<U3]A2
Z9%4aoeT4MNEf,K-Gjgn=X6Yeq4belXid+54:aTob*NL\K(F(QAJ>Va2P[MpAAJuP2"RBQ9<
N(#IL^fM%JkW5mXG+DOWoKg_J#9Na[,F$0N0N#N;?`RP,R/\1>c/Q6!nStuO2kLW.#nU$"53
rV%TfLMj)J:fXLE9UbePPus<T[0V5,jA^ED*WVW/V7j0<,$1f9=WKmBQjeSgSQP?VNsu7%,G
(><Ei_Lmr(m']AWuN1FHp's#t*>G\b,*Yf-dMc<o4@As+N9lHle8V,6r<qB*DBQY1u4KjL;Te
8T:L`9L41QZm541LTGYW<LY:M@1H_cRP2dr5#u5=A,'L<Y+6*2\?YB37/H5o7TfkQ6L6R6g$
g$i2lSE7&cqNQG7n")s_"]AOm+Xik>JN*XZ=LY@g>Wg`\o*Y5-smqN9Ya,9*Ll9eAnT:Y:!K_
I^L**]AUs7W(DgUDrrX$k)"6-5VdH?RQ/&d&!E$4GTKY[Pn<N\I?[mdfMpn<_jnRjis7]AFA'k
geni$(-.RKTs6hS`kGr1W;%/7&cq[W)ln.-#0V/)bHQ'\bVCh&h'c>=YZab^'PFC0+4CL_h!
HqXrPPn"7_#phjGCCrm&Ppm=H0c+fji?4G5fHBg1A5_JW.9N<H:_oXSi>`KMBKtkaElJihQI
Yml]AYr]A,LTeKW^'uU,E^KE@DX`;5o6GMI;+IV_$8Hf`udoa.c:&!8sH38Wjf[j?-iH8iV'@d
4s#^q2V'?ketW$E'BbrAea4hG.=c>G3281b2uRK1ubP1S&F6!gr-\j[THoPsG"+T$"RJIaOM
9tu0<BMWfu$n8:J7blTCACi3QKi&_GI6>-6_tCiU*,I^`>3PeSKLe9:SC-F>Nl-':Jp.qMKV
%]A#778jo5)FObZ^o"CiU/d^b]APl?0_(bcf9=iT=G%WYWOI0mQk0u80#,/9Ba1Y4rGbhu/rsT
-Sau'4J+guIQ\Y+nn.t"RpNsW%]A9mn'/P%YWq)p4\7J=%O)b.Y=`t2p#"%>mN#9H&EC8$G@]A
m[C0TB'kOpH`mn!\7H'!_L64\4P=<iX0fES*![mK450phuI*m'ZO*plQA-;?qeOnh?HC/i>n
]AC-S39Ve6ODIa/DLll.*p7gi7K^,)%`!W\kkce@T[>o,"77mQdq<E"a%83WcFK1QX.A?>m_m
ak=I9c3Ou(5nLI2L9N$K#b.OX-d8q]AM:plH?K0&f&+s/O:?*Kq*.GYF-"+3l;LcRGpBjh\R:
q8X1!4$68<0djL%GZQX[Yi%[4d0g"PXJ!,+CRI'qsIKl!P]A5gbIpoctWjFN.=G#XTUlF)&hA
fJiPY=%A3E50i@<SH>VN!/m'TV%7rP&>2usg`s5/3RJ3r(a,1uV;7+Y>6oEQ.(6Nn7i?LlM0
,bcfiFZW!4T]AYLHu]A@#YA3f4rJ.Lk+8L7tDc:5J_8f9Yd?P"%rQjs]AE[@-#<cIdO'A85S#9P
.a`n<?Y8=<i>O;j%9oj*hG!s>+SLqAihHl3.EaV.YH"/r6KhEE<%%i;\W]ATU2r)\C<a#RhWs
&Kb^m(#Dbf!DDh8-u<_;Js0(<j;,!j%RE>dbk$/m[5PM.W+$tB@<-/if%N+IB[ZQ'*c.]A1/F
!4G\PR>JS#"rH'W#Si=e;lnCAbsZTB@9mOq<T<n7a9@P`X(;gF$YOJ-Z]Ad430N#bX?\CYshZ
ucUIPI;`oDfLA<UC4]AV"??HYtI_4Qc[_Vs`A[acQ&%-V\WM>?!4e/-,#.&(Oo5.&!b?=llG(
<A(/`)0PP#>_SUO25L\RhXRMFMCQP1#P=^Z5DhSX/ZPI48H4.RS0rik&G$>o?2jc74F0KD)r
to0X4l&&%IiO@9#YB0Ec@TP4-cokMNBaXK1pA02Dq1=VCTnS,j.O[MJ"@SGQ&0$-V;94Mp,:
8<cp1io,bmh3T'5Ur$G<f>L)O*VMd%nURpPafRa+?ETYA^'=0+,]A&B2^OU.G\<q>Nd+2,M=e
-[^W2/_;UW4cKFokQlHh8`WSnSud4]AYkm9MZDg?E&d^Fgq5lXO\i>!fq!P"&?05+L]AQB6+@-
'O_nK+[2[iWGT`!?BP`V1W=Q<F!SOOEkhqF5o=a'qY,4,]AL.(?$K6%Vr_*V0u:tRa*R*.FBR
EZeR43+h(G?ag2Y>jlIRp\,Ykaq[h;rT6:`o24cI$R'Sj?J+s^L7_ud9Q5of2b3@]Aiqtb(Xt
(*m@j9I]AJi,j5EsTtE=-pe;VsrnPr?N=T<X5em`>BD,91NbPaZ\'o1<%Oe^Q9AY[l\%^BGU=
6[.VI#]A0#s(u`$ja,]AD83\r.@aFF(2;?\O@&R6[Sk,@SKd,P2q9!N"Ag$gaI0jP_Q$2e$+gA
2Oss*OY3rrr~
]]></IM>
<ReportFitAttr fitStateInPC="1" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="250" height="150"/>
</Widget>
<body class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="report1"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<Refresh class="com.fr.plugin.reportRefresh.ReportExtraRefreshAttr" pluginID="com.fr.plugin.reportRefresh">
<Refresh state="0" interval="0.0" refreshArea="" customClass="false"/>
</Refresh>
<FormElementCase>
<ReportPageAttr>
<HR/>
<FR/>
<HC/>
<FC/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[762000,152400,647700,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[5829300,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" s="0">
<O>
<![CDATA[内环: 2016年各区域企业数量占比]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="2" s="0">
<O>
<![CDATA[外环: 2017年各区域企业数量占比]]></O>
<PrivilegeControl/>
<Expand/>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting/>
</ReportSettings>
</ReportAttrSet>
</FormElementCase>
<StyleList>
<Style imageLayout="1">
<FRFont name="微软雅黑 Light" style="0" size="72" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m9>!<PLg[bm5CLs/TYuGc2ssmD.uKF`t-,XOgNZ0<%VXuT$^S&WdsjJ3PGM<KTLA"ZTE#VO^
a2W1<8!K.k*MeJL9hhW<=Yu$Rc#gLt"Zq+i0<pPE9<neFfKK:H[=0p7LgZS8dqDmrRC`4MU(
Rr9hg:J"K&WAD*to+X&"iCjC#AC.QF`dZBQG?<R,7r'-0ue_<GX?<FOFoCFUWW\KMs?P$c[r
2j>>S_4W70m;b.YuMrq+6LO+A#Tk3jdtXa[?fkbX@UY09X*@Z.;MfrfTiL%SZ'0Weo%\,dP0
O0d_!qTQ==*ue.5aV3nJFK:m8j-N58!^@"WkQ`>cBBkOj(0*htZ\=C:V_`BF3;o<$mFV'LBY
X5sf'9'Wk>>EZrEA//Y:Za<#?Mn&c[Q3P@NnSZ2Bj'o^!%NB)oA+&EgX,>P9beb@@,I$I+p;
CL51JWGfNY]Agp6!&@VijH1hmVJ*a*8-pk:=WtKLj+;Cq(,:EpWgl86.fnQk7<W-T>pl'WX3I
W"KV0Ir3(52:kbh,.&jUbCC<iShV,a"=VKDj'?cKM0^4a#F;$R?<)XU4o0,2)1uA+n,?.u%n
(,Fg2KFo^WM;r2pD:P>Q(t)rSiG4[s5oPsf/)cfFmig_0iMdlSe48&9u7:t?ap=%?HErYh\l
3Eg/s,E.5tgH6#(d%6QXg3p%5EpYHJLI`jCVF#/]AEBq)df;X/nAE!*T$:AFFPOfU3d=I@Bgd
R^5;DPq4i_LU<U_$\e0ENar?D5c7mE%+[(upc`NcE5SO./+GL\hU^3(SND`?;s?(CI1sp^bi
n"FDKD_peNh_&*i;DmHdp#Wd96B?3piO5p]AK?>DT[4o]AP`;p]A.k*2gPW1GJF%_)2k=d@aN",
3)T/%jfZnu//`0N_Zo]A6YQ(Xn2Ot*W9NK)gfdU`#NW[H$YO,LBp%J5@PXIEh@NgT,*&cB<gU
fPe2LNP8AZ0\=Q=ifSom:i*64F3\Ziq4tDj/",._dO3+/cS)@63Nq.R@_G</J41Vj'NJO;I0
pTck#&hlSA7%oIk7\f=C\A1uV/W4noN4oa-MRpM`9^2;.$7#EF_aAX*kXMqo1.Rkh>K@O;$:
XI^@Xh<h07,WhX3c)'p=h%cp7_KT;Eht&`MIIld[-S;OYdGk(jT'JD8Pp7?2*ITL9h)-!Lik
NjJ.\9/nFd5\PG[fN'4.Dd7'Ka1ROd63G_!.D^I:\KgC2ut)59^N(Z\\uUKN>i;$K"WeE^W%
<T$Ph/)[XQK\eI`ps5p6N(&Z_=+'m25[899m:DY@+(*afVT7/o+qZIMp7/*8tH>D/YEV%'>l
%GkQ?,Z-"nAncpq!_G?IC;s',Y>[1Y=FCeG5;F;Ol:A*j6QJ"NLE;pOJl*H]AG/U\2dGC[#J@
SZcW/Ji1KU-R:Lng^J*B\T9W'i+[1Z'@o\)(7>1MR0)<WuA>uM)5^,*,BO2t2lJe,.Y;H94`
fCWbQ"S=fL.H$F$;j$>>k70XH2rtS@hG2coYXR;Kg2Z,KQX"/JZA`Ph6*S86Jnt0XO`l0qBP
8ggg83LLc"(6$3/s\_:)f6jQ9dEd4"JhCK3I>kn0GY^mmg!fr^sW.l"OFtHD2f^L(\!<YLBg
E.E[Gk2Qi=Hr.$_/PKl2-]A8)#Tg-&F\?R([Jgr'_YrKQhmRUs//BJi4]Ar!jXkX_"'7bOcVid
^UQX``KdT7i]A%2SrUS(I$Nk&El4%[*\gt<FsYNGO=5gB:_-(2W[]A!<bn(`fI"`C`,6NZ1;W?
j>IZd`U&\"-CgS8Go8tWEn#"IJnK\pg(`]A%de`6.F"R.!LnB;c]AXU#p-BcMS#.WB0%;S+'#*
l$'4_=7G-P'c>;djKG49mtmoS'Dku*d+ja>A79<_+hE`^9b-iFE21@r?U,PM.[kiR81#DN49
HbG65elNjQQcj3KdKBZi.H7&W!Er$^LI9P<hR4#/s]A60nq"%s'S5g]AT#mD[kHZi_(*Ho(Z#?
$/[mj9SC8ZX!"e-N$:79m&$uu$CXrW&=;C@RSsCGk$-:"+":r+IVg\Bbhq$S?Hh1`K\(q#^"
V"0We/#!!'d[.O2eIoOLRn+#VF!_$F:<>PN^&]A:V62OlLsU,*Gk2`pM.+@k<iW/J^EKt%@G5
r<B;JmbZ-l$uraL/KO>t!_(i=mMjT4j>3$rH"cSplBPTR%-+7tn4KC4-Vr_r8il$ffB6q"+C
jC;I[-[sf]A=t4P]AoMVX)':;R]A9^fh9@8cb##fhX5dV9-u6Xf^Rn)eULhWoE/ps?$Z9?&jHCK
Z?=f!]At_e8d5Ue3tr5;HlRl8)UZC8Oi@u^`gem!E>Wujq24ZmJs`iqC0Lf]A;(-P*sAitd>i6
q=J$D7#)r/4?PshF>me*q#0kXlOR<#6cS?UW0OL<uQFdTrA?\EQ,HVf[!id^_D"bP57e%`eE
-V3hO]ASB"FmGcD/&&TKp[:0"qrWb(;%+q1OK*+h'Ibp-0*'ri;K?L+OkDNInO]Ar/R#%!dg%i
MZ<O/inNDWjK#MeCX)j_-u]AKB3,5"P8]AOlI&o!@C[^BOuanY,s@:c\VrmVp%PM5b)HArsT&u
9f"#R9%tSQQ1offe"4M@IKm5E!8fmdPOZfV8BMJ"]A*80UBNBSc05V%Lms4?"7\tLt3!bf@>@
iMGEMlqHp4t+]AAl)1h!C[`_\MXS5XbH'JREc?'drgieMr54Ij>j'niCB(MX?oKqR]AK7)M$uj
:Q<fWrHT`eT/4*2i?M^FgWknX:XBmSk9'S4mF-pj#)XKa?4m#Wj@6sB%J\cRcm*C5_o5NMhV
KH3j#08rDDT@/'q4Tf#Z@^_/\Fn@b5p*VS#7S7k\IG@si_NGio\%eiD/pS#kgOFB_p\THOR7
d)H8PSC_VpPTW98Cb!W4*+!!O?WDW!;.%>s),V)&\*6c9\4I"eUR=;WXla?D@`eV5\9atCP=
E&oe((Gi^(f)X"oQ"l\-Rk:Wi-Cb83Oj`ekTa\([,[d#@elPt.\2bQEEaXR$i4_;q)CuQi-k
hIYP+#(oeiF%RF\e6EFLB<J]A&SSQ('&&317d:Cp;[TC`OYomLf*9rE=oI?5KLdd`j9Z<UE2J
YYB!/^FJhB;e4on$@gT[+#9h5-NUEk0.b:mg[nu&#_?Fm=&&L?e.b+8H6P`+&j8&k4EE6.'1
3+"*qs>R62fQUZI$JLa4`&I?mS^KsL61.>Q?RGg,t,a;)+"(3EN2]A#g5Qa%Uh*N)?46:=7V7
kRd?,G3C)k=1cSLZ%C"Rb5.YljP!j9-KbgbR'pJ_ZB%+n,gJZ?)Fargfu69o?KQmaK6B'M>.
L;Xq1oNeLk#EOKVq.e4MfgO24[\K*-UI!p17O6^l0L*&PoC/G?iUf+QcZ'.^;sugg,`IX*5/
MNWW1)a:/eWYi42q$(9QYL:#KRcrV9=:o8;jR)'Wpp#IGrW-5%9kT*L[l"cVM%;-9h7b7G:6
@?umNDkm!@UIf(Kk<-f]A91G'6!Dr)J6Q]A,Lnc6/Ws/9eWZjeJ8]AIL6>]A7uo+X0N?WL(b^VD'
,0!AIk(8tdNN!_8P6?j9"8hp)T-u@>)C*57lNHVSYNrRcd(krD*J>u1#Ea=mJ3o-p.tU"[V<
GXLO<6M?bc[gmOZE=GdU=SH4t7R-7nN@OmmfO>\Tr0"#(fn$lP:Y4lVWsG4T\H8FS>([UTM-
B>-theQH;hOI"I1`ZHm:pObV$Xt+$`qj5DY9$D!*j)a_TZ1_[:Yp7CP[+_`1RKI4HTqW#%o8
4_N&%HDn7O0aQ,*tl+)3aH!d9InI\!rmhRdu&n_r:b(h_d5Ah;s<p2-lN*Kar$R[6hBRYpN#
,O(NtVjN4cW8c;*)YYrN>gP)%%ijF6a`ZVi&/<(jLeuk^hF?nqqF0AkQ(T]AP2WsL_f.n%R<4
g"]AKij=Leal:F#/r<=-%'V;EkH?Vhi!V!D:X$18FsoLb"`P8U@Zagb+$o@^`)G<.%-!3PHH2
`'dAfK\<u-A!d]AS(5K:.?7F4aZ?praX$d`38ER5$3"Nn<lE;\F_>_Y5"<hm!YjmU2nd4UmpM
CmA-]Aqee(d*+TdG,SWcZ1O2`pk9QR-]An0[C8t2Xm5Dq(\XZ[F^b.JsbI!=:6%D&VDR,)-KWH
DSr#LiJ4ZCPkoj%"%#_)E;N#8s`JQIJk3WX.ar)U%=BW9QQ]A6#o&@n56mY%.E;QA0F3S\AFY
@"I$r5ai%0<4pJaLAtO7G.Wq?h>i&o$;juI9=?2I!i$9"*Vu6*ZlNo=gk%3!5aD;kno0%XkC
3ZdVZmL#.C,%MWX4h5<bTMQ`e@JX\3:*j2oCHN#2M.+;lF`lgdV"s_ZGNbb>(L&>C'oBQ/3F
*JKVa<`2RO7#7r*@h#e8l*2c4c'F2qRs6_oZljh@._;Z4XKPS1K]AWBD^3!PZdN:.-e\nQG)L
eGm@aQ7uKm9@<C.5`=?%4=Lbh"6OJ^Bkc]A(_1L/^g+Ln@(nKU#q@ssoORgG#]A%OR[1/8SE"$
<IdfAjs+bWPU/C1YLk+o'BLhkb.,Ic9rar>,~
]]></IM>
<ReportFitAttr fitStateInPC="1" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</body>
</InnerWidget>
<BoundsAttr x="231" y="192" width="114" height="86"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.FreeButton">
<WidgetName name="button0"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Text>
<![CDATA[2017年四季度企业发展篇]]></Text>
<initial>
<Background name="ColorBackground"/>
</initial>
<FRFont name="微软雅黑 Light" style="0" size="112" foreground="-8337437"/>
<isCustomType isCustomType="true"/>
</InnerWidget>
<BoundsAttr x="4" y="4" width="1132" height="25"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="chart0"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ChartEditor">
<WidgetName name="chart0"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-65536" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="Adobe Devanagari" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Background name="ColorBackground" color="-1"/>
<Alpha alpha="0.1"/>
</Border>
<Background name="ColorBackground" color="-1"/>
<LayoutAttr selectedIndex="0"/>
<ChangeAttr enable="false" changeType="button" timeInterval="5" buttonColor="-8421505" carouselColor="-8421505" showArrow="true">
<TextAttr>
<Attr alignText="0"/>
</TextAttr>
</ChangeAttr>
<Chart name="默认" chartClass="com.fr.chart.chartattr.Chart">
<Chart class="com.fr.chart.chartattr.Chart">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<ChartAttr isJSDraw="true" isStyleGlobal="false"/>
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[各区域企业数量对比]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="微软雅黑 Light" style="0" size="96" foreground="-15225665"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="2"/>
</Title>
<Plot class="com.fr.chart.chartattr.Donut2DPlot">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isNullValueBreak="true" autoRefreshPerSecond="0" seriesDragEnable="false" plotStyle="0" combinedSize="50.0"/>
<newHotTooltipStyle>
<AttrContents>
<Attr showLine="false" position="1" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${SERIES}${BR}${CATEGORY}${BR}${VALUE}${BR}${PERCENT}"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
<PercentFormat>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#0.##%]]></Format>
</PercentFormat>
</AttrContents>
</newHotTooltipStyle>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name="">
<AttrList>
<Attr class="com.fr.chart.base.AttrContents">
<AttrContents>
<Attr showLine="false" position="1" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${PERCENT}"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="微软雅黑 Light" style="0" size="72" foreground="-1"/>
</Attr>
</TextAttr>
<PercentFormat>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</PercentFormat>
</AttrContents>
</Attr>
</AttrList>
</ConditionAttr>
</DefaultAttr>
</ConditionCollection>
<Legend>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr position="4" visible="true"/>
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
</Legend>
<DataSheet>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isVisible="false"/>
</DataSheet>
<DataProcessor class="com.fr.base.chart.chartdata.model.NormalDataModel"/>
<newPlotFillStyle>
<AttrFillStyle>
<AFStyle colorStyle="1"/>
<FillStyleName fillStyleName=""/>
<isCustomFillStyle isCustomFillStyle="true"/>
<ColorList>
<OColor colvalue="-14922612"/>
<OColor colvalue="-14918269"/>
<OColor colvalue="-15963469"/>
<OColor colvalue="-12551496"/>
<OColor colvalue="-16671280"/>
<OColor colvalue="-16681047"/>
<OColor colvalue="-16345416"/>
<OColor colvalue="-9990519"/>
<OColor colvalue="-13150859"/>
<OColor colvalue="-6187579"/>
<OColor colvalue="-15714713"/>
<OColor colvalue="-945550"/>
<OColor colvalue="-4092928"/>
<OColor colvalue="-13224394"/>
<OColor colvalue="-12423245"/>
<OColor colvalue="-10043521"/>
<OColor colvalue="-406154"/>
<OColor colvalue="-13031292"/>
<OColor colvalue="-16732559"/>
<OColor colvalue="-7099690"/>
<OColor colvalue="-11991199"/>
<OColor colvalue="-331445"/>
<OColor colvalue="-6991099"/>
<OColor colvalue="-16686527"/>
<OColor colvalue="-9205567"/>
<OColor colvalue="-7397856"/>
<OColor colvalue="-406154"/>
<OColor colvalue="-2712831"/>
<OColor colvalue="-4737097"/>
<OColor colvalue="-11460720"/>
<OColor colvalue="-6696775"/>
<OColor colvalue="-3685632"/>
</ColorList>
</AttrFillStyle>
</newPlotFillStyle>
<DonutAttr innterRadiusPercent="0.5" seriesGap="0.05" categoryGap="0.2"/>
</Plot>
<ChartDefinition>
<OneValueCDDefinition seriesName="区域" valueName="企业数量" function="com.fr.data.util.function.NoneFunction">
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[ds1]]></Name>
</TableData>
<CategoryName value="年份"/>
</OneValueCDDefinition>
</ChartDefinition>
</Chart>
</Chart>
<ChartMobileAttrProvider zoomOut="0" zoomIn="2"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="475" height="276"/>
</Widget>
<body class="com.fr.form.ui.ChartEditor">
<WidgetName name="chart0"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LayoutAttr selectedIndex="0"/>
<ChangeAttr enable="false" changeType="button" timeInterval="5" buttonColor="-8421505" carouselColor="-8421505" showArrow="true">
<TextAttr>
<Attr alignText="0"/>
</TextAttr>
</ChangeAttr>
<Chart name="默认" chartClass="com.fr.chart.chartattr.Chart">
<Chart class="com.fr.chart.chartattr.Chart">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<ChartAttr isJSDraw="true" isStyleGlobal="false"/>
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[性别及年龄分析]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="Adobe Arabic" style="0" size="88" foreground="-1"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="2"/>
</Title>
<Plot class="com.fr.chart.chartattr.Donut2DPlot">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isNullValueBreak="true" autoRefreshPerSecond="-1" seriesDragEnable="false" plotStyle="0" combinedSize="50.0"/>
<newHotTooltipStyle>
<AttrContents>
<Attr showLine="false" position="1" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${SERIES}${BR}${CATEGORY}${BR}${VALUE}${BR}${PERCENT}"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
<PercentFormat>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#0.##%]]></Format>
</PercentFormat>
</AttrContents>
</newHotTooltipStyle>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name="">
<AttrList>
<Attr class="com.fr.chart.base.AttrContents">
<AttrContents>
<Attr showLine="false" position="1" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${SERIES}"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Adobe Arabic" style="0" size="72"/>
</Attr>
</TextAttr>
<PercentFormat>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</PercentFormat>
</AttrContents>
</Attr>
</AttrList>
</ConditionAttr>
</DefaultAttr>
</ConditionCollection>
<Legend>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr position="4" visible="false"/>
<FRFont name="Adobe Arabic" style="0" size="72"/>
</Legend>
<DataSheet>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isVisible="false"/>
</DataSheet>
<DataProcessor class="com.fr.base.chart.chartdata.model.NormalDataModel"/>
<newPlotFillStyle>
<AttrFillStyle>
<AFStyle colorStyle="0"/>
<FillStyleName fillStyleName=""/>
<isCustomFillStyle isCustomFillStyle="false"/>
</AttrFillStyle>
</newPlotFillStyle>
<DonutAttr innterRadiusPercent="0.5" seriesGap="0.05" categoryGap="0.2"/>
</Plot>
<ChartDefinition>
<OneValueCDDefinition seriesName="type2" valueName="value" function="com.fr.data.util.function.SumFunction">
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[Embedded1]]></Name>
</TableData>
<CategoryName value="type1"/>
</OneValueCDDefinition>
</ChartDefinition>
</Chart>
</Chart>
<ChartMobileAttrProvider zoomOut="0" zoomIn="2"/>
</body>
</InnerWidget>
<BoundsAttr x="2" y="34" width="565" height="326"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="chart2"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ChartEditor">
<WidgetName name="chart2"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="宋体" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Background name="ColorBackground" color="-1"/>
<Alpha alpha="0.1"/>
</Border>
<Background name="ColorBackground" color="-1"/>
<LayoutAttr selectedIndex="0"/>
<ChangeAttr enable="false" changeType="button" timeInterval="5" buttonColor="-8421505" carouselColor="-8421505" showArrow="true">
<TextAttr>
<Attr alignText="0"/>
</TextAttr>
</ChangeAttr>
<Chart name="默认" chartClass="com.fr.plugin.chart.vanchart.VanChart">
<Chart class="com.fr.plugin.chart.vanchart.VanChart">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-1118482"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<ChartAttr isJSDraw="true" isStyleGlobal="false"/>
<Title4VanChart>
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[各区域企业增长率对比]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="微软雅黑 Light" style="0" size="96" foreground="-15225665"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="2"/>
</Title>
<Attr4VanChart useHtml="false" floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0"/>
</Title4VanChart>
<Plot class="com.fr.plugin.chart.custom.VanChartCustomPlot">
<VanChartPlotVersion version="20170715"/>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isNullValueBreak="true" autoRefreshPerSecond="6" seriesDragEnable="false" plotStyle="0" combinedSize="50.0"/>
<newHotTooltipStyle>
<AttrContents>
<Attr showLine="false" position="1" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${VALUE}"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
<PercentFormat>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#0.##%]]></Format>
</PercentFormat>
</AttrContents>
</newHotTooltipStyle>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name=""/>
</DefaultAttr>
</ConditionCollection>
<Legend4VanChart>
<Legend>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-3355444"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr position="4" visible="true"/>
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
</Legend>
<Attr4VanChart floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0" isHighlight="true"/>
</Legend4VanChart>
<DataSheet>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isVisible="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
</DataSheet>
<DataProcessor class="com.fr.base.chart.chartdata.model.NormalDataModel"/>
<newPlotFillStyle>
<AttrFillStyle>
<AFStyle colorStyle="1"/>
<FillStyleName fillStyleName=""/>
<isCustomFillStyle isCustomFillStyle="true"/>
<ColorList>
<OColor colvalue="-14125656"/>
<OColor colvalue="-16737844"/>
<OColor colvalue="-9254518"/>
<OColor colvalue="-16750485"/>
<OColor colvalue="-3658447"/>
<OColor colvalue="-10331231"/>
<OColor colvalue="-7763575"/>
<OColor colvalue="-6514688"/>
<OColor colvalue="-16744620"/>
<OColor colvalue="-6187579"/>
<OColor colvalue="-15714713"/>
<OColor colvalue="-945550"/>
<OColor colvalue="-4092928"/>
<OColor colvalue="-13224394"/>
<OColor colvalue="-12423245"/>
<OColor colvalue="-10043521"/>
<OColor colvalue="-406154"/>
<OColor colvalue="-13031292"/>
<OColor colvalue="-16732559"/>
<OColor colvalue="-7099690"/>
<OColor colvalue="-11991199"/>
<OColor colvalue="-331445"/>
<OColor colvalue="-6991099"/>
<OColor colvalue="-16686527"/>
<OColor colvalue="-9205567"/>
<OColor colvalue="-7397856"/>
<OColor colvalue="-406154"/>
<OColor colvalue="-2712831"/>
<OColor colvalue="-4737097"/>
<OColor colvalue="-11460720"/>
<OColor colvalue="-6696775"/>
<OColor colvalue="-3685632"/>
</ColorList>
</AttrFillStyle>
</newPlotFillStyle>
<VanChartPlotAttr isAxisRotation="false" categoryNum="1"/>
<VanChartRectanglePlotAttr vanChartPlotType="normal" isDefaultIntervalBackground="true"/>
<XAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor lineColor="-5197648"/>
<AxisPosition value="3"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=1"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="2" secTickLine="0" axisName="X轴" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
</VanChartAxis>
</XAxisList>
<YAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartValueAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr rotation="-90" alignText="0">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="false"/>
<AxisLineStyle AxisStyle="0" MainGridStyle="1"/>
<newLineColor lineColor="-5197648"/>
<AxisPosition value="2"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=1"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="0" secTickLine="0" axisName="Y轴" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
<VanChartValueAxisAttr isLog="false" valueStyle="false" baseLog="=10"/>
<ds>
<RadarYAxisTableDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<attr/>
</RadarYAxisTableDefinition>
</ds>
</VanChartAxis>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartValueAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr rotation="-90" alignText="0">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="false"/>
<AxisLineStyle AxisStyle="0" MainGridStyle="1"/>
<newLineColor lineColor="-5197648"/>
<AxisPosition value="4"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=1"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="0" secTickLine="0" axisName="Y轴2" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
<VanChartValueAxisAttr isLog="false" valueStyle="false" baseLog="=10"/>
<ds>
<RadarYAxisTableDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<attr/>
</RadarYAxisTableDefinition>
</ds>
</VanChartAxis>
</YAxisList>
<stackAndAxisCondition>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name=""/>
</DefaultAttr>
</ConditionCollection>
</stackAndAxisCondition>
<VanChartCustomPlotAttr customStyle="column_line"/>
<CustomPlotList>
<VanChartPlot class="com.fr.plugin.chart.column.VanChartColumnPlot">
<VanChartPlotVersion version="20170715"/>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isNullValueBreak="true" autoRefreshPerSecond="6" seriesDragEnable="false" plotStyle="0" combinedSize="50.0"/>
<newHotTooltipStyle>
<AttrContents>
<Attr showLine="false" position="1" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${VALUE}"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
<PercentFormat>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#0.##%]]></Format>
</PercentFormat>
</AttrContents>
</newHotTooltipStyle>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name="">
<AttrList>
<Attr class="com.fr.chart.base.AttrBorder">
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="3"/>
<newColor borderColor="-1"/>
</AttrBorder>
</Attr>
<Attr class="com.fr.chart.base.AttrAlpha">
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrTooltip">
<AttrTooltip>
<Attr enable="true" duration="4" followMouse="false" showMutiSeries="false" isCustom="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="宋体" style="0" size="72"/>
</Attr>
</TextAttr>
<AttrToolTipContent>
<Attr isCommon="true"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="true"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="true"/>
</AttrTooltipSeriesFormat>
</series>
<changedPercent class="com.fr.plugin.chart.base.format.AttrTooltipChangedPercentFormat">
<AttrTooltipChangedPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipChangedPercentFormat>
</changedPercent>
<changedValue class="com.fr.plugin.chart.base.format.AttrTooltipChangedValueFormat">
<AttrTooltipChangedValueFormat>
<Attr enable="false"/>
</AttrTooltipChangedValueFormat>
</changedValue>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
<GI>
<AttrBackground>
<Background name="ColorBackground" color="-16777216"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="0.5"/>
</AttrAlpha>
</GI>
</AttrTooltip>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrLabel">
<AttrLabel>
<labelAttr enable="true"/>
<labelDetail class="com.fr.plugin.chart.base.AttrLabelDetail">
<Attr showLine="false" autoAdjust="false" position="6" isCustom="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="宋体" style="0" size="72"/>
</Attr>
</TextAttr>
<AttrToolTipContent>
<Attr isCommon="true"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="false"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="false"/>
</AttrTooltipSeriesFormat>
</series>
<changedPercent class="com.fr.plugin.chart.base.format.AttrTooltipChangedPercentFormat">
<AttrTooltipChangedPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipChangedPercentFormat>
</changedPercent>
<changedValue class="com.fr.plugin.chart.base.format.AttrTooltipChangedValueFormat">
<AttrTooltipChangedValueFormat>
<Attr enable="false"/>
</AttrTooltipChangedValueFormat>
</changedValue>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
</labelDetail>
</AttrLabel>
</Attr>
<Attr class="com.fr.plugin.chart.base.VanChartAttrTrendLine">
<TrendLine>
<Attr trendLineName="" trendLineType="exponential" prePeriod="0" afterPeriod="0"/>
<LineStyleInfo>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
<AttrColor>
<Attr/>
</AttrColor>
<AttrLineStyle>
<newAttr lineStyle="0"/>
</AttrLineStyle>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
</LineStyleInfo>
</TrendLine>
</Attr>
</AttrList>
</ConditionAttr>
</DefaultAttr>
</ConditionCollection>
<Legend4VanChart>
<Legend>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-3355444"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr position="4" visible="true"/>
<FRFont name="Microsoft YaHei" style="0" size="88" foreground="-10066330"/>
</Legend>
<Attr4VanChart floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0" isHighlight="true"/>
</Legend4VanChart>
<DataSheet>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isVisible="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
</DataSheet>
<DataProcessor class="com.fr.base.chart.chartdata.model.NormalDataModel"/>
<newPlotFillStyle>
<AttrFillStyle>
<AFStyle colorStyle="1"/>
<FillStyleName fillStyleName="新特性"/>
<isCustomFillStyle isCustomFillStyle="false"/>
<ColorList>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
</ColorList>
</AttrFillStyle>
</newPlotFillStyle>
<VanChartPlotAttr isAxisRotation="false" categoryNum="1"/>
<VanChartRectanglePlotAttr vanChartPlotType="custom" isDefaultIntervalBackground="true"/>
<XAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor lineColor="-5197648"/>
<AxisPosition value="3"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=1"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="2" secTickLine="0" axisName="X轴" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
</VanChartAxis>
</XAxisList>
<YAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartValueAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr rotation="-90" alignText="0">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="false"/>
<AxisLineStyle AxisStyle="0" MainGridStyle="1"/>
<newLineColor lineColor="-5197648"/>
<AxisPosition value="2"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=1"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="0" secTickLine="0" axisName="Y轴" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
<VanChartValueAxisAttr isLog="false" valueStyle="false" baseLog="=10"/>
<ds>
<RadarYAxisTableDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<attr/>
</RadarYAxisTableDefinition>
</ds>
</VanChartAxis>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartValueAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr rotation="-90" alignText="0">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="false"/>
<AxisLineStyle AxisStyle="0" MainGridStyle="1"/>
<newLineColor lineColor="-5197648"/>
<AxisPosition value="4"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=1"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="0" secTickLine="0" axisName="Y轴2" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
<VanChartValueAxisAttr isLog="false" valueStyle="false" baseLog="=10"/>
<ds>
<RadarYAxisTableDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<attr/>
</RadarYAxisTableDefinition>
</ds>
</VanChartAxis>
</YAxisList>
<stackAndAxisCondition>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name=""/>
</DefaultAttr>
<ConditionAttrList>
<List index="0">
<ConditionAttr name="堆积和坐标轴1">
<AttrList>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="0" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="0" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="0" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="0" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="0" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="0" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="0" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="0" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="0" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="0" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="0" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="0" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="0" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="0" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="0" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="0" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="0" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="0" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="0" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
</AttrList>
<Condition class="com.fr.data.condition.ListCondition"/>
</ConditionAttr>
</List>
</ConditionAttrList>
</ConditionCollection>
</stackAndAxisCondition>
<VanChartColumnPlotAttr seriesOverlapPercent="5.0" categoryIntervalPercent="20.0" fixedWidth="false" columnWidth="0" filledWithImage="false" isBar="false"/>
</VanChartPlot>
<VanChartPlot class="com.fr.plugin.chart.line.VanChartLinePlot">
<VanChartPlotVersion version="20170715"/>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isNullValueBreak="true" autoRefreshPerSecond="6" seriesDragEnable="false" plotStyle="0" combinedSize="50.0"/>
<newHotTooltipStyle>
<AttrContents>
<Attr showLine="false" position="1" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${VALUE}"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
<PercentFormat>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#0.##%]]></Format>
</PercentFormat>
</AttrContents>
</newHotTooltipStyle>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name="">
<AttrList>
<Attr class="com.fr.plugin.chart.base.AttrTooltip">
<AttrTooltip>
<Attr enable="true" duration="4" followMouse="false" showMutiSeries="false" isCustom="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="宋体" style="0" size="72"/>
</Attr>
</TextAttr>
<AttrToolTipContent>
<Attr isCommon="true"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#0.00%]]></Format>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="true"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="true"/>
</AttrTooltipSeriesFormat>
</series>
<changedPercent class="com.fr.plugin.chart.base.format.AttrTooltipChangedPercentFormat">
<AttrTooltipChangedPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipChangedPercentFormat>
</changedPercent>
<changedValue class="com.fr.plugin.chart.base.format.AttrTooltipChangedValueFormat">
<AttrTooltipChangedValueFormat>
<Attr enable="false"/>
</AttrTooltipChangedValueFormat>
</changedValue>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
<GI>
<AttrBackground>
<Background name="ColorBackground" color="-16777216"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="2"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="0.5"/>
</AttrAlpha>
</GI>
</AttrTooltip>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrLabel">
<AttrLabel>
<labelAttr enable="false"/>
<labelDetail class="com.fr.plugin.chart.base.AttrLabelDetail">
<Attr showLine="false" autoAdjust="false" position="1" isCustom="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="宋体" style="0" size="72"/>
</Attr>
</TextAttr>
<AttrToolTipContent>
<Attr isCommon="true"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="false"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="false"/>
</AttrTooltipSeriesFormat>
</series>
<changedPercent class="com.fr.plugin.chart.base.format.AttrTooltipChangedPercentFormat">
<AttrTooltipChangedPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipChangedPercentFormat>
</changedPercent>
<changedValue class="com.fr.plugin.chart.base.format.AttrTooltipChangedValueFormat">
<AttrTooltipChangedValueFormat>
<Attr enable="false"/>
</AttrTooltipChangedValueFormat>
</changedValue>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
</labelDetail>
</AttrLabel>
</Attr>
<Attr class="com.fr.plugin.chart.base.VanChartAttrTrendLine">
<TrendLine>
<Attr trendLineName="" trendLineType="exponential" prePeriod="0" afterPeriod="0"/>
<LineStyleInfo>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
<AttrColor>
<Attr/>
</AttrColor>
<AttrLineStyle>
<newAttr lineStyle="0"/>
</AttrLineStyle>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
</LineStyleInfo>
</TrendLine>
</Attr>
<Attr class="com.fr.plugin.chart.base.VanChartAttrLine">
<VanAttrLine>
<Attr lineWidth="2" lineStyle="0" nullValueBreak="true"/>
</VanAttrLine>
</Attr>
<Attr class="com.fr.plugin.chart.base.VanChartAttrMarker">
<VanAttrMarker>
<Attr isCommon="true" markerType="RoundFilledMarker" radius="3.5" width="30.0" height="30.0"/>
<Background name="NullBackground"/>
</VanAttrMarker>
</Attr>
</AttrList>
</ConditionAttr>
</DefaultAttr>
</ConditionCollection>
<Legend4VanChart>
<Legend>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-3355444"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr position="4" visible="true"/>
<FRFont name="Microsoft YaHei" style="0" size="88" foreground="-10066330"/>
</Legend>
<Attr4VanChart floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0" isHighlight="true"/>
</Legend4VanChart>
<DataSheet>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isVisible="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
</DataSheet>
<DataProcessor class="com.fr.base.chart.chartdata.model.NormalDataModel"/>
<newPlotFillStyle>
<AttrFillStyle>
<AFStyle colorStyle="1"/>
<FillStyleName fillStyleName="新特性"/>
<isCustomFillStyle isCustomFillStyle="false"/>
<ColorList>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
</ColorList>
</AttrFillStyle>
</newPlotFillStyle>
<VanChartPlotAttr isAxisRotation="false" categoryNum="1"/>
<VanChartRectanglePlotAttr vanChartPlotType="custom" isDefaultIntervalBackground="true"/>
<XAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor lineColor="-5197648"/>
<AxisPosition value="3"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=1"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="2" secTickLine="0" axisName="X轴" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
</VanChartAxis>
</XAxisList>
<YAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartValueAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr rotation="-90" alignText="0">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="false"/>
<AxisLineStyle AxisStyle="0" MainGridStyle="1"/>
<newLineColor lineColor="-5197648"/>
<AxisPosition value="2"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=1"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="0" secTickLine="0" axisName="Y轴" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
<VanChartValueAxisAttr isLog="false" valueStyle="false" baseLog="=10"/>
<ds>
<RadarYAxisTableDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<attr/>
</RadarYAxisTableDefinition>
</ds>
</VanChartAxis>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartValueAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr rotation="-90" alignText="0">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="false"/>
<AxisLineStyle AxisStyle="0" MainGridStyle="1"/>
<newLineColor lineColor="-5197648"/>
<AxisPosition value="4"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=1"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="0" secTickLine="0" axisName="Y轴2" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
<VanChartValueAxisAttr isLog="false" valueStyle="false" baseLog="=10"/>
<ds>
<RadarYAxisTableDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<attr/>
</RadarYAxisTableDefinition>
</ds>
</VanChartAxis>
</YAxisList>
<stackAndAxisCondition>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name=""/>
</DefaultAttr>
<ConditionAttrList>
<List index="0">
<ConditionAttr name="堆积和坐标轴1">
<AttrList>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="1" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="1" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="1" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="1" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="1" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="1" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="1" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="1" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="1" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="1" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="1" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="1" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="1" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="1" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="1" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="1" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="1" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="1" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="1" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
</AttrList>
<Condition class="com.fr.data.condition.ListCondition"/>
</ConditionAttr>
</List>
</ConditionAttrList>
</ConditionCollection>
</stackAndAxisCondition>
</VanChartPlot>
</CustomPlotList>
</Plot>
<ChartDefinition>
<CustomDefinition>
<DefinitionMapList>
<DefinitionMap key="line">
<MoreNameCDDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[ds3]]></Name>
</TableData>
<CategoryName value="area"/>
<ChartSummaryColumn name="grow" function="com.fr.data.util.function.NoneFunction" customName="增长率"/>
</MoreNameCDDefinition>
</DefinitionMap>
<DefinitionMap key="column">
<OneValueCDDefinition seriesName="年份" valueName="中标企业数量" function="com.fr.data.util.function.NoneFunction">
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[ds2]]></Name>
</TableData>
<CategoryName value="中标区域"/>
</OneValueCDDefinition>
</DefinitionMap>
</DefinitionMapList>
</CustomDefinition>
</ChartDefinition>
</Chart>
<tools hidden="true" sort="false" export="false" fullScreen="false"/>
<VanChartZoom>
<zoomAttr zoomVisible="false" zoomGesture="true" zoomResize="true" zoomType="xy"/>
<from>
<![CDATA[]]></from>
<to>
<![CDATA[]]></to>
</VanChartZoom>
<refreshMoreLabel>
<attr moreLabel="false" autoTooltip="true"/>
<AttrTooltip>
<Attr enable="true" duration="4" followMouse="false" showMutiSeries="false" isCustom="false"/>
<TextAttr>
<Attr alignText="0"/>
</TextAttr>
<AttrToolTipContent>
<Attr isCommon="true"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="true"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="true"/>
</AttrTooltipSeriesFormat>
</series>
<changedPercent class="com.fr.plugin.chart.base.format.AttrTooltipChangedPercentFormat">
<AttrTooltipChangedPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipChangedPercentFormat>
</changedPercent>
<changedValue class="com.fr.plugin.chart.base.format.AttrTooltipChangedValueFormat">
<AttrTooltipChangedValueFormat>
<Attr enable="true"/>
</AttrTooltipChangedValueFormat>
</changedValue>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
<GI>
<AttrBackground>
<Background name="ColorBackground" color="-1"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="4"/>
<newColor borderColor="-15395563"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="0.8"/>
</AttrAlpha>
</GI>
</AttrTooltip>
</refreshMoreLabel>
</Chart>
<ChartMobileAttrProvider zoomOut="0" zoomIn="2"/>
</InnerWidget>
<BoundsAttr x="475" y="0" width="477" height="276"/>
</Widget>
<body class="com.fr.form.ui.ChartEditor">
<WidgetName name="chart2"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LayoutAttr selectedIndex="0"/>
<ChangeAttr enable="false" changeType="button" timeInterval="5" buttonColor="-8421505" carouselColor="-8421505" showArrow="true">
<TextAttr>
<Attr alignText="0"/>
</TextAttr>
</ChangeAttr>
<Chart name="默认" chartClass="com.fr.plugin.chart.vanchart.VanChart">
<Chart class="com.fr.plugin.chart.vanchart.VanChart">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-1118482"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<ChartAttr isJSDraw="true" isStyleGlobal="false"/>
<Title4VanChart>
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[新建图表标题]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="Microsoft YaHei" style="0" size="128" foreground="-13421773"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<Attr4VanChart useHtml="false" floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0"/>
</Title4VanChart>
<Plot class="com.fr.plugin.chart.line.VanChartLinePlot">
<VanChartPlotVersion version="20170715"/>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isNullValueBreak="true" autoRefreshPerSecond="6" seriesDragEnable="false" plotStyle="4" combinedSize="50.0"/>
<newHotTooltipStyle>
<AttrContents>
<Attr showLine="false" position="1" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${VALUE}"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
<PercentFormat>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#0.##%]]></Format>
</PercentFormat>
</AttrContents>
</newHotTooltipStyle>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name="">
<AttrList>
<Attr class="com.fr.plugin.chart.base.AttrTooltip">
<AttrTooltip>
<Attr enable="true" duration="4" followMouse="false" showMutiSeries="false" isCustom="false"/>
<TextAttr>
<Attr alignText="0"/>
</TextAttr>
<AttrToolTipContent>
<Attr isCommon="true"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="true"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="true"/>
</AttrTooltipSeriesFormat>
</series>
<changedPercent class="com.fr.plugin.chart.base.format.AttrTooltipChangedPercentFormat">
<AttrTooltipChangedPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipChangedPercentFormat>
</changedPercent>
<changedValue class="com.fr.plugin.chart.base.format.AttrTooltipChangedValueFormat">
<AttrTooltipChangedValueFormat>
<Attr enable="false"/>
</AttrTooltipChangedValueFormat>
</changedValue>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
<GI>
<AttrBackground>
<Background name="ColorBackground" color="-16777216"/>
<Attr shadow="true"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="2"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="0.5"/>
</AttrAlpha>
</GI>
</AttrTooltip>
</Attr>
<Attr class="com.fr.plugin.chart.base.VanChartAttrMarker">
<VanAttrMarker>
<Attr isCommon="true" markerType="NullMarker" radius="4.5" width="30.0" height="30.0"/>
<Background name="NullBackground"/>
</VanAttrMarker>
</Attr>
<Attr class="com.fr.plugin.chart.base.VanChartAttrLine">
<VanAttrLine>
<Attr lineWidth="2" lineStyle="0" nullValueBreak="true"/>
</VanAttrLine>
</Attr>
</AttrList>
</ConditionAttr>
</DefaultAttr>
</ConditionCollection>
<Legend4VanChart>
<Legend>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-3355444"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr position="4" visible="true"/>
<FRFont name="Microsoft YaHei" style="0" size="88" foreground="-10066330"/>
</Legend>
<Attr4VanChart floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0" isHighlight="true"/>
</Legend4VanChart>
<DataSheet>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isVisible="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
</DataSheet>
<DataProcessor class="com.fr.base.chart.chartdata.model.NormalDataModel"/>
<newPlotFillStyle>
<AttrFillStyle>
<AFStyle colorStyle="1"/>
<FillStyleName fillStyleName="新特性"/>
<isCustomFillStyle isCustomFillStyle="false"/>
<ColorList>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
</ColorList>
</AttrFillStyle>
</newPlotFillStyle>
<VanChartPlotAttr isAxisRotation="false" categoryNum="1"/>
<VanChartRectanglePlotAttr vanChartPlotType="normal" isDefaultIntervalBackground="true"/>
<XAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor lineColor="-5197648"/>
<AxisPosition value="3"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=1"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="2" secTickLine="0" axisName="X轴" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
</VanChartAxis>
</XAxisList>
<YAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartValueAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr rotation="-90" alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="0" MainGridStyle="1"/>
<newLineColor mainGridColor="-3881788" lineColor="-5197648"/>
<AxisPosition value="2"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=1"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="0" secTickLine="0" axisName="Y轴" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
<VanChartValueAxisAttr isLog="false" valueStyle="false" baseLog="=10"/>
<ds>
<RadarYAxisTableDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<attr/>
</RadarYAxisTableDefinition>
</ds>
</VanChartAxis>
</YAxisList>
<stackAndAxisCondition>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name=""/>
</DefaultAttr>
</ConditionCollection>
</stackAndAxisCondition>
</Plot>
</Chart>
<tools hidden="true" sort="true" export="true" fullScreen="true"/>
<VanChartZoom>
<zoomAttr zoomVisible="false" zoomGesture="true" zoomResize="true" zoomType="xy"/>
<from>
<![CDATA[]]></from>
<to>
<![CDATA[]]></to>
</VanChartZoom>
<refreshMoreLabel>
<attr moreLabel="false" autoTooltip="true"/>
<AttrTooltip>
<Attr enable="true" duration="4" followMouse="false" showMutiSeries="false" isCustom="false"/>
<TextAttr>
<Attr alignText="0"/>
</TextAttr>
<AttrToolTipContent>
<Attr isCommon="true"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="true"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="true"/>
</AttrTooltipSeriesFormat>
</series>
<changedPercent class="com.fr.plugin.chart.base.format.AttrTooltipChangedPercentFormat">
<AttrTooltipChangedPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipChangedPercentFormat>
</changedPercent>
<changedValue class="com.fr.plugin.chart.base.format.AttrTooltipChangedValueFormat">
<AttrTooltipChangedValueFormat>
<Attr enable="true"/>
</AttrTooltipChangedValueFormat>
</changedValue>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
<GI>
<AttrBackground>
<Background name="ColorBackground" color="-1"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="4"/>
<newColor borderColor="-15395563"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="0.8"/>
</AttrAlpha>
</GI>
</AttrTooltip>
</refreshMoreLabel>
</Chart>
<ChartMobileAttrProvider zoomOut="0" zoomIn="2"/>
</body>
</InnerWidget>
<BoundsAttr x="572" y="34" width="570" height="326"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="report0"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="report0"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="1" left="1" bottom="1" right="1"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<Refresh class="com.fr.plugin.reportRefresh.ReportExtraRefreshAttr" pluginID="com.fr.plugin.reportRefresh">
<Refresh state="0" interval="0.0" refreshArea="" customClass="false"/>
</Refresh>
<FormElementCase>
<ReportPageAttr>
<HR/>
<FR/>
<HC/>
<FC/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[1371600,1955800,1524000,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[5600700,2895600,114300,5524500,4343400,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" cs="5" s="0">
<O>
<![CDATA[成交量排名前二十的企业]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="1" s="1">
<O>
<![CDATA[企业名称]]></O>
<PrivilegeControl/>
<CellGUIAttr adjustmode="2"/>
<CellPageAttr/>
<Expand/>
</C>
<C c="1" r="1" s="1">
<O>
<![CDATA[成交数量]]></O>
<PrivilegeControl/>
<CellGUIAttr adjustmode="2"/>
<CellPageAttr/>
<Expand/>
</C>
<C c="2" r="1" s="1">
<PrivilegeControl/>
<CellGUIAttr adjustmode="2"/>
<CellPageAttr/>
<Expand/>
</C>
<C c="3" r="1" s="1">
<O>
<![CDATA[企业名称]]></O>
<PrivilegeControl/>
<CellGUIAttr adjustmode="2"/>
<CellPageAttr/>
<Expand leftParentDefault="false"/>
</C>
<C c="4" r="1" s="2">
<O>
<![CDATA[成交金额(亿元)]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="2" s="3">
<O t="DSColumn">
<Attributes dsName="ds6" columnName="company"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<CellGUIAttr adjustmode="2">
<ToolTipText>
<![CDATA[=$$$]]></ToolTipText>
</CellGUIAttr>
<CellPageAttr/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[row() % 2 = 0]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.BackgroundHighlightAction">
<Scope val="1"/>
<Background name="ColorBackground" color="-14407863"/>
</HighlightAction>
</Highlight>
</HighlightList>
<Present class="com.fr.base.present.FormulaPresent">
<Content>
<![CDATA[=if(len($$$)>15,left($$$,15)+'...',$$$)]]></Content>
</Present>
<Expand dir="0"/>
</C>
<C c="1" r="2" s="3">
<O t="DSColumn">
<Attributes dsName="ds6" columnName="amount"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<CellGUIAttr adjustmode="2"/>
<CellPageAttr/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[row() % 2 = 0]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.BackgroundHighlightAction">
<Scope val="1"/>
<Background name="ColorBackground" color="-14407863"/>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="2" r="2" s="3">
<PrivilegeControl/>
<CellGUIAttr adjustmode="2"/>
<CellPageAttr/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[row() % 2 = 0]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.BackgroundHighlightAction">
<Scope val="1"/>
<Background name="ColorBackground" color="-14407863"/>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand/>
</C>
<C c="3" r="2" s="3">
<O t="DSColumn">
<Attributes dsName="ds7" columnName="company"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<CellGUIAttr adjustmode="2">
<ToolTipText>
<![CDATA[=$$$]]></ToolTipText>
</CellGUIAttr>
<CellPageAttr/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[row() % 2 = 0]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.BackgroundHighlightAction">
<Scope val="1"/>
<Background name="ColorBackground" color="-14407863"/>
</HighlightAction>
</Highlight>
</HighlightList>
<Present class="com.fr.base.present.FormulaPresent">
<Content>
<![CDATA[=if(len($$$)>15,left($$$,15)+'...',$$$)]]></Content>
</Present>
<Expand dir="0" leftParentDefault="false"/>
</C>
<C c="4" r="2" s="3">
<O t="DSColumn">
<Attributes dsName="ds7" columnName="money"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[row() % 2 = 0]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.BackgroundHighlightAction">
<Scope val="1"/>
<Background name="ColorBackground" color="-14407863"/>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0" extendable="1"/>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting/>
</ReportSettings>
</ReportAttrSet>
</FormElementCase>
<StyleList>
<Style imageLayout="1" lineSpacing="10">
<FRFont name="微软雅黑 Light" style="0" size="96" foreground="-15225665"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="0" imageLayout="1" lineSpacing="10">
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
<Background name="ColorBackground" color="-14407863"/>
<Border/>
</Style>
<Style horizontal_alignment="0" imageLayout="1" lineSpacing="10">
<FRFont name="微软雅黑 Light" style="1" size="80" foreground="-1"/>
<Background name="ColorBackground" color="-14407863"/>
<Border/>
</Style>
<Style horizontal_alignment="0" imageLayout="1" lineSpacing="10">
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m<a7d'3G%6gMV.<CXQP@U,F[6F^);NRRL0]A$-@)8]A%1W)[1t8aMH%ut7#2$K+]AE/6<KsS]A()
.q"[UlQoJYF>$13HNOneQmnJj:La(m)Op"HlGbB'qpr?#/iO^"%#tgT,i!&^QkdSo`3Oq**^
!3JUmi>IJ4n6dm+q2f@EH`ID1_b.)H+Q&HZ+?c2?Pj8\_FXlnY_j$Z7m(]A<CFoL$%eR/BP5J
SQ3pDbSKlhm3QZqV/m]A*aUs*5.B[nSuM2)?$CeZ]A0!4E:H_^jD/RVGQX654?d7K\2s+_J?2A
S9`O%R:k5t,ACNSfLZcu=cXD9\C?1lpOf0K'kW\e7d#3jVdb:OU1)ma"I4grcb0`5W.43c>E
';t#,QDm%]AZkW8B$ubX\ah%=F<\ai*++l6M!6XZYDn!GlC\D=W88P)Ck3.j:m:p$iofL6!3q
h6`-@NP`[dJWI+/h+>!\lV\%kgE$'SUEl6UO3ZQ>!:VD4*gGC9o*rN%5f,pR/rZ4#;;_EDG1
pP;=[Q/*LO,jFW$hFnONukspIB6UC)0,=sg,J@Ms"HVY\@31onb[r11b:$t=1e\Tlaa5@Hk>
)YP^<:LIa=fn0sMsIo'l*H^Vej-npAQWF<dP*'1`2O&4gqrYX<kWeaDP1NP(?OW)]A'W'J`1&
^Q4o)'TWKo)@b,F+;1M6QVHZgcTK#M0#.poXZI*h?*J1!rBa0s5rm0hWCiV3E.dP/1&=!ilu
E,o?,6'CsUptBh.CeUuQ[r*.CCQU/Rc%oZ.g7FP9AS.7c!_G</5L3sl$Ho24Vu#>&.3*1g^'
UPZQ7#2T%_3W]A"qmK+lcb-JYa&fR4)TCCjt>9ZUgESg0p<q$4e(S-0K);M%\D^Pr=&`%9(2*
&fJ`]Ai;>]AlH;<f(SBTf:XMSdf!1TSj4NkDK06rfe!)sTG]AR^&:7cNG1)(hgQGh+Pr0nrrpY9
Zj)Cej,^`?[&-742O1.joo8$*m7/6?GV+4Q>/G"YA`?IATbRH;73l1psS\@nFnDmn]AVW@r:c
[TX]AUtQZNF+EM@>j![B&8.`D3"u/U$qEgu)roc8/$N*7k[HBsBB_P5;92A#krWDTo&9ZfEJ1
m_V"-['VjW0t8p:mF*=GrpLkU0luq5Pps-aaX1>?@X,emlh,MZ11nVCSNI6LjSP#fUi7mYM7
Xnh9D.KNeJ7)?Q)>>D0l3<gRhjURIr<!:rJ#+\fq!_S-O8A27sC)AZLedD3-4i1aOSI68cB"
ns-0RN(Z>2WP_i.Q:n0XV31[H)$g-]AuS/5/D3E`X^?Cu/TF(KVU]ACI6&`3:tX9."5@*4c!f$
-"=Ui2C"<%&]AIZ/#QAWUN'?GM"R!eck+kK1$-$]A"0Xkb>WlGZFI/P7Yf&O8_VAOL=YhpD:W:
?['=.c8^Hu`,(\dR?@-[+p?Z,N"cWkc+8%.Q\rgQB53GbXkDu^u9$:fHaMGm3s[YIhR_YO5/
X&Ds0&[p'f-gne]AEJ<R+R!,NqGjD@gBG0p)Ig4)iVLPl+6/JIZphA]A!e_b#YJMDjkk:"(Cm(
3_E>9B>l]A>f]A$>o*/./5thSnCFlu,A`fC3s>Q&_r'KMRUgMo&(JNbRmLZ;djX)keCV"#f30r
@Rcj['6RAUN1+;R-q/57LcSH;X]AQN&=?dVa\:%;%U:X.PUXduq.n1pSpQ4s)=*'F2eQTaH.>
Hj_P6*2ad2H&>MVkZuudgtY`q=+JQ)rO_)r@Sg'35p(L!2Rr[j;15b;T)tPZg\/GQI2N9!9e
r3Q0Ei25Fh:?RN07NGo4g+LVT!5Er\tOh#%i^H!t$(W*$%]AW`AVK7G0j9j3.AC[(o_de'a;"
9MJVJm70l\cki>U;*!dt;^ZrH)8(Lm'i,$,R-\m!hA'2P;CVnW$l]A95@ck+nqVi<qJSGS2LN
B$s:2='@6fI5ZF6L;+oDBet*!A%h?oa7KFo-*,ripE)j92\&+bMt=U@.O[n%e9\GoPZr)Gu]A
`FTkf@^]AluZ[e\I=gWtXrCc"a$Fqndo;T"oi_dUBK]AYK=g4tu3oQ02R(F\s1f0J%uSc*,lp.
)aDOY&s/o/]A.3X-WCqeNL-hK>MOl2E";..r3gIir_`$aplS8f&l_Yf)Ur_C>ZhCV)pES(:C2
Y:Y!Z5EmK.-P<+Jifo+1&hrDJ%#`H\<le7[*Gl?$Z@f/p@694"4B)\9=t[V`0;A0s2qYY#@r
K*2MnQsnSW$;7jQU6Je(();lHGjKN3Q%PcY0NJRbh%Q5;rC6i,+u+j)U2ncSr_'-4()aF;P@
4@D3Z%s_nZrh(4i2rOE2XFnW<Tb7HTe'.I*9U.KmIF@ic#d#USMitfNa-W="XKgiX'nH(rC<
o]A9$K8P,_,_Lf"jUd>`K>5J+UMMq9Ece!G8(3pjoNeTJh^5?47-76f\1j9GmD_jAO/.B*\`T
$?^3*8Ad>]AtKu'T+]A:Td#<[PIAb*f=T`N-(]A^Je.^DIR%-I\I!#))c7LPW8\X4@`lOXWdWbK
m[jt!/gIL$3YWO.(XQkD2Q`35RYhJmno6C'&-o.8!.Rq645X$sjKRt@e>L$dO.LfFscE9>R#
pW7+*UFTKi.1dPFXo!ViV':5848fJ2L@;N@+Nh+i#QkHJ45qD^VOs>(;Pbn)<!#5HMW7`qAA
hF+A>Z?@A:$8KXO^^5RbW>G?i^o[W3\]A_jTL33P_[i.@^g!0PLl^OPY.s+nu-"e9eP`kCoQd
#/&13gp+,rf[PI#!$J!61]A?$WsiB*Xe,63_Vi=/rG.lXB.o_KFFToqUVi7J:cWi2%2mFpFG'
u"<ef:*0!#HLQsHd;l>eWoQA\ChK6@]A3NZ3/AYY2)itUFZ_L*Tm,r1HUDjmc_HS_-7R(uN*a
gH]A6=CLZ&BKC);#fbBqur!UF+gMAXJPiM2M5K]AgF%5M6@2b,@sM#iF)'`?J-oTf:/Nn*GrLH
O:.e!,uuF)gUOJ_<q(5WqH9:!o0uY=Bs;0,D/$iCculACT3$_If*JX9q2D72BEo71ImY6E@%
c_EOEM)_@G*e!KLRXM$"/oW/arp'/.`>#=g"0B]A3eFF9iM\'Yr$[E+?)o_K")I#HOd-lI5&b
&gM"ZVrk?;+SSe2_j(@"L!eNY/b=oE0=Z[@K6R7V^]A$da>O&#lFej^B1C0>'uSSti[@nN)mD
)CjY^<VJZKnpIQ8;ap"h@uo#C=pM[TC=DecBP2JFPp.XXE/JX:%9c`H%[nB"o(Sk<:]A"K.UT
<N-8NJlpa;EJBb1N=5Nk=+dBC.rD:9VR3Z^cBD7TTXK(q5AE\s5bQ68Y(pjB3iWWHiTI\==!
f;6SKP`Aqte3sNJVO6P;nN"l:=$jhGMF(*Jf#XR]A_'fn$0cHg6cJ:ZbM-G,GWh('k@/@ODKk
e?FO+_%?6sP5P6/BJF4Y#pKn&'m,Pur815%r:koTf..g9EDZJEulFghJmmUnWm:j'$OTMu#p
Zd(BuA9BO7t?9N`?o2?AG/lE\>'eI7E:()/(r*t$KOffRZ'+k2M^j]AmbgqPZf7gAu`OFcRG6
TZs"l-jT(7ESu_6=$2gX*`P!Xs:NN<Zoj-F)hib)u*Pp!;(s8\`-(LpJ3t)l=qk2Kp/D65[i
2GXVZX?oQRI7BSRm@**;E).a_:53,$0nKK[D6Z@<))]A6Tl9"c3R->$d*PQ)Wc$;ZBsCoi5_H
D;p^q9[i(SiC^]AM2BLDDT^p@u3lJ+7RZ;S#0m)P!0ZlJsKV/cF7_M8k1>"12"mbpBU[3bD[*
Fbc7^D6jd-FoN5?%Y^6@"fqH?HfDd.F<lh;!72,?\riQA?(.<`K!QjLs1.?CtS++#["@(5n`
!Bp*f:<3j5d,u/r==DI`h.aB;cU*R%+&!=AT4L8T*#C!;flubAm)fK?[1"Mo!.(jXI8!h\n8
iC-s6gc.0UmNTnBDV7;Hj_t@=WFY/]A?Lt-K'fLH25%=`UNR@pp6EJV%@,"EQ,CWF=hmQM(21
*`/m"c\.uH$E0oo+TaH_U-WN7qW&PMf]AKn(XJ/>mckC:Z<(bZ?2Cq=90(/FQa!j^$)(-4`OM
\t_qa+R-K25nl*$_/Eak8@]A9`!rRKL,*TXpU4B`oDIE#i9-,(W(%E*Z(#Q;j3($8='FIg;!:
Q-&TnO<QUr'O_B96US+^!_AIK43uIRHO@jXP,]A[!Q8j$4&WQY'ta]ANY_Y&MoD\!1&m9:*Qm:
$H/EnRhr9U7r'Lus=G'e@^V^,5]AYr"I`rmtFAl/Z+CGZG8?"@[JV+6&eNhF,hB/=b3)rMpCd
iR\r)I;Io`_7'#&+BTOkO17aG^b!=?+J+[R&h4jnG>j"=/#66J<!AU0Pk:pVIjZ?Z@^!83p=
IXK`OH^[N"pkkb),UKg5[M<A8_q(dL6_-K:0Q-i,H>pj<.E?A2^7JJ.]A%QupJ7N3`9XkerB1
eOfgq(P-M#c^?G6(%m=i0SZ5J4AGSu=hoeuGNC985RV?;XSq#cX;B[NM$)!o_Du`*h`6_^.g
C9b2eZ20d%CSg"r3`GiEENUN&^Z"`4s4&&+"R#qS&n/<SHrY)qHA7[Bp$M"&6h'Bl8m_F@fU
=14:L0l_/s2/7*Y7gol@)?g?Q"FeO4UK5d$\cVW^r7"uk,cja#a:09^<%-,`uPD/oYrse.d^
%ROC\]A`%&"H!1^pWBTMlO$qDIU!AJ(n&#\2"SY&]AqHT.>$g%;&N#W,D=3j;6!$!9`Nfa<$nW
38/eZn162MCE\5Vd1m8S7.AQYo_mE2cf)Q+s-W*"5b>=Sp)7YVto=G_;,L-\bb.[Zd1M,]A)q
A]AaocWHlO!58ISD9Z<iOQT`h3kZQ.J7b0[!#r"DNT;::)f_J]A]A\O$!,kB_X[Gc]A2DVEi3l*g
`cn;6&BVCrDA5eN'p"7Obn)HYfbWnj<)F6DK]AVFk264cJea6aqRT):cd[)\3hos=H7daBiT_
io0]A)d;&o9a*%hBojr%K=[78?M]AQ*=AV:)N'[4LuldYL-_;=o'",Hu+)c-oeeBd.8Nm$Os'.
)`.QDQd[u&DGfEL/o*<B)3n?_9DS'Y#QM#ldtF]AThG9U6darg%UT\/%kGuD]AJcX?+V+^d%<d
rl]AJ&!_eQhLESgBSEf.,MFeGm`$m,toF.!L,g*mg*0+]Ahb-mjLXXk5rdoNZCuL<EW4`eDk-@
lApgEE9<-i&mSf9goN0CWMt\h23*B:h;b`jCCGIbIE+1IL#!d>LWp1ld#O^CW';&KWRk>P%[
@ZO"hW_TBA;2YA`IC%5N'_H&$oEU/SLe0H<!%GIZ#Q"&bNd<I)+J3)FK(dh*N9Ji`S(e40-&
GjgZ:%%J)cc&^r&3LZL3/.WJcjJF2Nn:'96JRKd'E>Oq3sppd#u^L/OI6;b%;UI*qJ<qru!q
El#Y!X13o0Y"JSg-FUn7J?to:>ga7aG$RDJ6N]AKW'+5e#&O2*^RA]AcB=pfjI8b-#]A\rPY#pM
0qfsR*t;]A^&?DQE8,H,.S>inVD;bZT'q(9!]Ac%3:$,)?,>L/F%m/Qt'f<G@u(b\TZag[+-mb
,:r-$MghuQpl/oSC'Kh0*F^\M=lL9AF(i[9A-dT'B>q&=&`T4T*:YKQBRta7Eo56M7Ck0KF`
+S=hiS<5e,qB-[s#cU11!JJqKZZ&+VHBoH*'Qc+G0EK4K[MZM9n5.#64,T9lQlBF!rNU5F6`
BHu?:sqZ_!F=kld)NO\p-GmSUeXe-c2j51q-@S1m4O26+<$8M<kn2q?ncm=Z97.YT\-ep*W(
V#9d@VZSJo!h-H5@itu0b=1V^[CW.1G?)9_e=LG,S:/AV\Pq=&FW:><W-%2o<ef`q4^heKhp
>1A9M7="Oi.Rk7#/u/%U-lX^uPQ9K#hj4'%c:ijmBiPZp$0b!LP=R%ebnfUZiKL;2T$V^[Y[
%l<l@f,u.e!eh)pbYF..:F8u/7l=C.:off?dW-&Q9/&_[3pBh)1JNR'W)0Zm)9X*.cD\U!OH
uf:\8@1"*6S8rWo$heo`jgH"0TV7Naj&S$FVph.S-2TH3"6-QD$LVhlaDHrrRAUdlm/A<<32
m^gb)$(F^%ffobWNPfre\3Zc&PP9"8NC[JRRi<g.)6E*?(ZSN>M/UEpg$f&0;Vn3hg..R(VT
5C&KIht*hMYB.ERemaZ+[aNk_)Ns5b+GkhVJq'm/u(,ii(B7\*RSGV)DWS,aR8`PR*p7MIW-
\kb!q!VX6&lNhOsgH&2m^r^2gF7d0c9<"^TPpCi'cdc1#TX<NmMX+RerG:3s1[2+hq=O9l&O
LnV!M%k'h8G'@?5)<;2IH;2._DGM6c3U.T%fV)cU)H>!2#&I03+[2Y6DA*,%P%MAfFk"p#/3
g&/]AqT(/)!2"C-fG,kV5/([)PAO?c>i*,YdqS,M+6clr,B:*4?8X3)['V]Ad<iB$l]AiU&q[9e
GRh_b#)F\W#K49&JIYP<.\he#NYc'd#Y?%uH0MoL/59#"I*-QF(RdeY9N+H`$`Vh9f]A=KQ:1
Tq(in/U'7JFTX+?"8dU1u5eLDM"UpA[;4lT5p9KRAm"-9f"aj08D+<]AB$]AoW&+j8$)k]A"7U;
.kdod`UKu_jcF_Z6Wh?69@:tAg4.E(/5go-)]Akn[udc$rW?gik3YQ%ls,B>>?8Zq0&6I/&>J
616"XfmuQ$d*ZQM]A%nF2GnM0g!'_a\!;!B^KBk7^)NO>0mC'$JfZ0"Q^@+)]A5,`P^qe:W1Bu
3Z5aPo3&jts+!cCrsEM2L]A#/G)iL+GWZs<-1P#Gp`$'"Yd^Ga+oGM]A3,t[:s'kp;8G9QWM86
CgGI:CT9+,$fGHPVe'*R^i=F+;V='K(f)p/@,.@7:^);5!%suXcj1CkUUQIle`;N[>jpS\hO
$]Ac"-E2X<;.9bIE_PEGCoUH&@iEsY![/ReU"5/$=("S5<$7fMda-k+qZe_@Tkjhm05B3,#52
g-Eo@>f&5?>QPCE>)?lj)HjEta4!=K<q02[C4IOjdY'ep+n<TP"r`'JtD[g_>CZjqEd*LcdB
W+LdXftQsB;#eDUJY891.`Ri)5Z&7U\)4?cbCAgeQd=kT5iDi#RG1m1[O;?6PMCE@/l/h'%T
b!WGnnVu;YSO*#:c"37I.1U!F$,9^'/oB.(0KKmcX?1[e4f=GsR;'?WdA8]Ag&`>`jI%=ppAe
'1!>pOWtfll_Zjat`%Z;o`%l%"Qi;/*+K)X+hhc9sWm8]Ai2r>b5lgpb7@q_MjjdNu?f'M:Y?
,!9kS%E@@YVA#Z(u$p%6Ugm'JD+Ji=`&'T1fTmR6!n&9U+u/=U\U3J9-$`iN+-L1GP.:6-He
&Uj4!6)T1O4f1#.eR$PbFH6i?=lZ66T8.slB:$]AFR7A;+?;qs%+")01p(jT><L^W<Kom%!jZ
!c`n*X8d/=>C#I]AV@\TCk(r&k4XIQf!Zbe*^5S2nZ[8D\o^oghOF>m<4pP?XoS<^X(Q\TBQM
hQ#^2X@<_VXfm]Ai,Z"$%Q.Qdd3%9QP`8E2H)*goUKNj;;c[fcSbF/+6;)EiO7mJ$Mp/Ls1`=
JGMU'P+R8[(P/4.GT$3,=X,4'G4N3^E_,,Fc^DJH.;sN?WnG-46nVNT'el.G=>&FAY@9nnlq
Kh9?9+knNe,/cigEG%JE@=4aRT);F-=/F5oe8HjBB_#:95)8g)X6T\!ZREK[)QY*VkFgM`f$
(9oAYb=,Ql>UU?Y]AVB4_I$JanVXHd2SSRf?ATAhTNM1KHFUrN"2i:p-YBdAKVY^r[aR2%YoE
CU6+MKDT;K/+<6Xqs'!KotDi7\.N-gWZhGO[7!N<Ha.(1:Zk5m-heM\#@AI!:p6cGkh7-\%p
[,\EE11X&DO9&<3II>-E46m34#&_ftMbnDUaGdeDogY]A7np\C=BQ=cS(Z^qf0>Y.d3%&W``?
;jS@8Q1SI;kI0[?PNVp<7Z%MgQ0`U+;-lgu:JlViPc,"KnEcQ2*rQuAK?!'`*Q[#HdU^mdk7
[\FG.Ilr-d]A1m^1MoKVK]ABkEA;j4q;O2$ddZnok3'e?:Aj*]Ake31%lc0"hZ_LdAkb%YB/aAp
P`;Boi<$`?+T3_cngO,akE`I.1eXl,LumEh0:e$A[+-A3r6RS?%!dirY#(!gTHM(*8J$R$W^
:9:71A5iVWd]A4fb;T-p-W-0jS1',3&)GIoWE;bgk@XkXM,&%PMb<0rL9]AHd.LOL%C>NM;2@r
[LeDU&jo'G:)G2WKSIhVQO@5Sg)eeS8"i0sTX;3\9r>p.Ae"XONBj@/mgsIu$aH6#oi!"jT.
N-1RI31/k1IjpcVdjjCd!iN1mISMCCEkLhu>Tt6j-Jpu;5d1G![do3`2"<F83$IU$MB5N%[d
>E^/3ilm9NtJ-<*\mce3g*'*7Nm>gdS5+JdjghE\iX-Yce=m?pC(10aq)a(n6HHn=r-n!a16
hpd\5F$1qjuk'9N"8g3cG'Wi2j]AB$VSuCsDj(OO1qKZXn@!1TF2U@rHVo$$D9B$"0E$1)9%9
WS60fV]A9Udf+aC^,([sO/=o-g(V/>6-fG!]ARRIWI>DPY=;$\uLb=RlH?riXY-X7@)6R2mOk2
/l\aY83Ap#&!E;P1jm\$P\W&\th,mm%^m$N-s*La]A%=\>J+$G;Ws_:SIf\Ze8//RP%]Ang*@5
H-QrU_Uc?4bj':'CqXl,D]AYedMc]A0l81.!#NL6?4+p;#DO`&j0V5O[QZHefioDuFm22;nsB4
XM!9oi7okZ+i=d%]A=?a_cbUs3d"DM$jgY0jrI">(R1[Y0j4&rYKkNm/D10-$@>ho?]ALS`P@V
9D?\u;dA`sSdj:IV=]A1=^uS(f27;hh&T<%?Qn@,M-a<(iC[Qf_H=$,*t*XHDL/:Pok8j9+r7
01beD;buG@2'Wl:%,$n?>\TQm+&/K##01UuRL*qMhgJ#/eu?h!(\D7(&n(>FeaBQJHu"u-ll
72uW3&:kiEj4YDDmup[e=kR>5U66Z\0<AP]A/KcF@-pgL9.ZgY/*!<Otrd.MkX#k'Uq/@-fS'
rNJkXf:@.jG*#NDMW^pBLae+_jW0hQ%NEl/0E/r"dP=YJR.bH?IR.%16?\R!I;$fd2TET=NF
6La.a=_?jq8GZE=^'L7XuK1Bej-ZW>Iot]AX-t;FAdV,J=Yr^=5J4Z$7[A^lpe.#(,F!P/]AXu
k`lkqD9GuUc7&L2$7]A3VpK=.c9Ad"AJO.>]A<i8>eAN]A3gIqP,Ybt"l6JrqU8K>il3q'.L:Sd
p9<M@T,tmM\ajC:,jFQ4WU;2:>JaW$:7C53L#BQbK)NkATI[^A/GFQn>hb+E/h&*\g0f+TU[
IX2U6<YJVJW0bff_#l)800LSM@@I8@=0T;T5[M)b]AVLp\l,sHXp1q3:99.9Tmmp.3a4L6M<=
?YBUMIdk_os)[K3HS/%@bqRsJ`Im`$<OY0dk8</ls1)OG=e,d1QoX[??G_&Q\)-SW(7m82f&
6F<@oX&2r)`0<%HE+`/g<WC2G=^gjSUr9l]A4k&9s,I-O#JMe*r]A4EE"cm+I>hJY!OM?f$ri"
l.jj:t*N5@Zh@*:DT5^#67NGpb[PDJG%1s+G.'?LHHZ`@?f5b\Fnga;99O\S$'UVnV)$'^UM
6_B#>GkudOn(hgJqW8e!c'M7#p6=L&nGo@5csqXU#mR[c"0$;45lf7s<q\]A.kZRH2a_aF$+Y
GL0F"P8;GlpnVO7Z\1OTa*C#=mg]AJ<`aHqhd^2Cf=B:,nku4[[r9CV8IM`3Hsi?*_Tb=As+j
=.XG&-Z:FcAX6qOb=:CNWYM*d7f;'rE//'%36_s1L<8eUq[*,Bnqd"r7pmbF8+;sK<9i<&.!
Y)"fdCl(FmP[/@q;%<Ia@HB#(;$i[`tV]A.&'Q=5M*.8>"H"D(*KEU&dhj&`&AqB!T8pO(lu"
$8e4L_bi&2T%BFP7bYGsUkc-HsA#m:bO+u1]A%()=r384;Vo)=Q;X6_4'3&R4e^^RljSo6ji5
P.!%&1p6ebdJ-.9@m`UNSod4(XsKEk7EeIdJM[OYejTY%@Ho>fb.UB)+8b*a(oE\`M=ENQ[.
f^/:V7O-29;2OoTqe_,S.VO\EBDa>2p?7,tjD?Dn/Cf4O<i;Bp66!@62Gj_kh<]A0?uV0cPFa
X1*6FDe6UeolsBQ,Y6)1Y^TDcBY"ug"T/^qN_nF5,b,(+d^+Ws_o*\=5k?Yo"0p`rl4mi.'p
@PR'iCHc]A(A>\17KTp-ier'eXHPZL%0T]Ahk61taGMe>/rHKF>k"V^KkMl.-VP<T!rVK]AC&Ef
.]AP:BAe*)^HcR\oo[-I3Wj466Sq8MPA5,M3MQP7IfC4Qg35'm+7ce_!@sh0<[?H2$KtE8#N=
IN;ef1.grPk3op*_.YUQ7_%WC4l(V'+EuLI*m+4sX(l3NP92[gl)D=JO6fO9ad[*K&q/.(g2
ZdYmp2;RKJ)%5Z;RAs'q]A"pXl%OF_X>GFr=o?T*,.=6Y<ka9/g]A;6<d1/`LQ5,oCtPe`E*<d
-V;L::c`9eCf5IlaN5),t_1hL@5<_<'/g_7ihs%C-NA/-`h(0[Gql[2bUm<;HD;AKio8\2n^
lU77HBm!F-9OP@cp_s?G`5@/$u*]A-H=@X<PF86&b9PuB`5ff"]An,?n2b-tur@NU'B<f<Q=fH
`?)S;*he7;,E7:DiQ??(p3$#sWRTptN-7>rq'9m4U.%YdZ+16oqAY4>L\Jt?;q2>rk%3"k56
qE7Ba)a%)KF4A2l?]ABK0JNou8f)DQRRb0-CW>qbkC>eq"4m6*G'%8W0,IVu4/I!;BnBhSp6(
o,aTfOQ!7!q\.4Db-Fih(1m,G#Zjb]AXaCBe1BpZ]A6=s$c#FJH!F[,T`Bp`>hdm.Uqm]A"AV,n
AY>3Te'@6An`\Crn;X'Gr:la'tZYq==]A9IoPNuECc=7*'gdj.ZIGE*;K3Z"n/iF=,ik8^)\C
rI&*1--\K0@$%S#Bs6Z'1bZU/i$r0_32.:8[*C`&J)n3G92^F1@h(LkB1m_q0/Q'ISNXhlrH
Yo_,AN:=1A@BbT6Z'WQgXJnpY/q_R4A$9"qX_^aBkMoeK,;;&*4uP5.S804=7R@M2W&ZUFS`
E`D[A1NNq`*.JIt[1_:^U::`t)\`$bopV,C#_`Sg;%I8>PPF(dXZ_a&Mo'Zu$>UVV",Y#5N&
$Rk#"7%'Kg#=,Ne5M%:f;Rr67&#Q?(qE,=R01prJ>FTEP+l!!>Pj.8%aX.Q@npFmOlsnX/0P
?RF3TRda(N?-rF@DIt=sAoScrd^?FEWK;T@7%YCM\hoSG6a)DBm)9@a?7LXu?rc[oHM7F,hR
_T5=_>+I2,mI_:H35^3k08$`5-K(p,<0as54)E@a;8uY<kB_QmIuBuUj"D5oniN4?A,Ce*B<
mWP5nJ9X?4-uhH`bomL5+`8PoIJ5a#?M.3(3TX-j)q(=^`#<oBspg(BsWarr/G&9gfWK#g@>
:&"mMBO&+*5N3>7`nYrm%*7"YI:RL[kJ4j<$;mt#:iE`h`Z[ks8a9BIGJK<X*c[A9b6+X6\,
Jim>l)h,Pj@'GK'+">RH1iKq\*7r-0QL5B=(!qr80tdfS$$U/9Q3_ZQnN"5Dp=1>B'0/2r=?
p~
]]></IM>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="475" y="0" width="477" height="293"/>
</Widget>
<body class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="report0"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="1" left="1" bottom="1" right="1"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<FormElementCase>
<ReportPageAttr>
<HR/>
<FR/>
<HC/>
<FC/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList/>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting/>
</ReportSettings>
</ReportAttrSet>
</FormElementCase>
<StyleList/>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</body>
</InnerWidget>
<BoundsAttr x="572" y="367" width="570" height="348"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="chart1_c"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ChartEditor">
<WidgetName name="chart1_c"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-65536" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="Adobe Devanagari" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Background name="ColorBackground" color="-1"/>
<Alpha alpha="0.1"/>
</Border>
<Background name="ColorBackground" color="-1"/>
<LayoutAttr selectedIndex="0"/>
<ChangeAttr enable="false" changeType="button" timeInterval="5" buttonColor="-8421505" carouselColor="-8421505" showArrow="true">
<TextAttr>
<Attr alignText="0"/>
</TextAttr>
</ChangeAttr>
<Chart name="默认" chartClass="com.fr.plugin.chart.vanchart.VanChart">
<Chart class="com.fr.plugin.chart.vanchart.VanChart">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-1118482"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<ChartAttr isJSDraw="true" isStyleGlobal="false"/>
<Title4VanChart>
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[各中标区间占比]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="微软雅黑 Light" style="0" size="96" foreground="-15225665"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="2"/>
</Title>
<Attr4VanChart useHtml="false" floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0"/>
</Title4VanChart>
<Plot class="com.fr.plugin.chart.PiePlot4VanChart">
<VanChartPlotVersion version="20170715"/>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-1118482"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isNullValueBreak="true" autoRefreshPerSecond="6" seriesDragEnable="false" plotStyle="0" combinedSize="50.0"/>
<newHotTooltipStyle>
<AttrContents>
<Attr showLine="false" position="1" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${VALUE}"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
<PercentFormat>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#0.##%]]></Format>
</PercentFormat>
</AttrContents>
</newHotTooltipStyle>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name="">
<AttrList>
<Attr class="com.fr.plugin.chart.base.AttrTooltip">
<AttrTooltip>
<Attr enable="true" duration="4" followMouse="false" showMutiSeries="false" isCustom="false"/>
<TextAttr>
<Attr alignText="0"/>
</TextAttr>
<AttrToolTipContent>
<Attr isCommon="true"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="false"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="true"/>
</AttrTooltipSeriesFormat>
</series>
<changedPercent class="com.fr.plugin.chart.base.format.AttrTooltipChangedPercentFormat">
<AttrTooltipChangedPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipChangedPercentFormat>
</changedPercent>
<changedValue class="com.fr.plugin.chart.base.format.AttrTooltipChangedValueFormat">
<AttrTooltipChangedValueFormat>
<Attr enable="false"/>
</AttrTooltipChangedValueFormat>
</changedValue>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
<GI>
<AttrBackground>
<Background name="ColorBackground" color="-16777216"/>
<Attr shadow="true"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="2"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="0.5"/>
</AttrAlpha>
</GI>
</AttrTooltip>
</Attr>
<Attr class="com.fr.chart.base.AttrBorder">
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-1"/>
</AttrBorder>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrLabel">
<AttrLabel>
<labelAttr enable="true"/>
<labelDetail class="com.fr.plugin.chart.base.AttrLabelDetail">
<Attr showLine="true" autoAdjust="false" position="6" isCustom="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="宋体" style="0" size="72"/>
</Attr>
</TextAttr>
<AttrToolTipContent>
<Attr isCommon="true"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="false"/>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="true"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="false"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="false"/>
</AttrTooltipSeriesFormat>
</series>
<changedPercent class="com.fr.plugin.chart.base.format.AttrTooltipChangedPercentFormat">
<AttrTooltipChangedPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipChangedPercentFormat>
</changedPercent>
<changedValue class="com.fr.plugin.chart.base.format.AttrTooltipChangedValueFormat">
<AttrTooltipChangedValueFormat>
<Attr enable="false"/>
</AttrTooltipChangedValueFormat>
</changedValue>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
</labelDetail>
</AttrLabel>
</Attr>
</AttrList>
</ConditionAttr>
</DefaultAttr>
</ConditionCollection>
<Legend4VanChart>
<Legend>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-3355444"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr position="4" visible="true"/>
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
</Legend>
<Attr4VanChart floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0" isHighlight="true"/>
</Legend4VanChart>
<DataSheet>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isVisible="false"/>
</DataSheet>
<DataProcessor class="com.fr.base.chart.chartdata.model.NormalDataModel"/>
<newPlotFillStyle>
<AttrFillStyle>
<AFStyle colorStyle="1"/>
<FillStyleName fillStyleName="新特性"/>
<isCustomFillStyle isCustomFillStyle="false"/>
<ColorList>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
</ColorList>
</AttrFillStyle>
</newPlotFillStyle>
<VanChartPlotAttr isAxisRotation="false" categoryNum="1"/>
<PieAttr4VanChart roseType="normal" startAngle="0.0" endAngle="360.0" innerRadius="75.0" supportRotation="false"/>
<VanChartRadius radiusType="auto" radius="100"/>
</Plot>
<ChartDefinition>
<OneValueCDDefinition seriesName="区间" valueName="求和" function="com.fr.data.util.function.NoneFunction">
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[ds5]]></Name>
</TableData>
<CategoryName value=""/>
</OneValueCDDefinition>
</ChartDefinition>
</Chart>
<tools hidden="true" sort="false" export="false" fullScreen="false"/>
<VanChartZoom>
<zoomAttr zoomVisible="false" zoomGesture="true" zoomResize="true" zoomType="xy"/>
<from>
<![CDATA[]]></from>
<to>
<![CDATA[]]></to>
</VanChartZoom>
<refreshMoreLabel>
<attr moreLabel="false" autoTooltip="true"/>
<AttrTooltip>
<Attr enable="true" duration="4" followMouse="false" showMutiSeries="false" isCustom="false"/>
<TextAttr>
<Attr alignText="0"/>
</TextAttr>
<AttrToolTipContent>
<Attr isCommon="true"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="true"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="true"/>
</AttrTooltipSeriesFormat>
</series>
<changedPercent class="com.fr.plugin.chart.base.format.AttrTooltipChangedPercentFormat">
<AttrTooltipChangedPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipChangedPercentFormat>
</changedPercent>
<changedValue class="com.fr.plugin.chart.base.format.AttrTooltipChangedValueFormat">
<AttrTooltipChangedValueFormat>
<Attr enable="true"/>
</AttrTooltipChangedValueFormat>
</changedValue>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
<GI>
<AttrBackground>
<Background name="ColorBackground" color="-1"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="4"/>
<newColor borderColor="-15395563"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="0.8"/>
</AttrAlpha>
</GI>
</AttrTooltip>
</refreshMoreLabel>
</Chart>
<ChartMobileAttrProvider zoomOut="0" zoomIn="2"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="952" height="293"/>
</Widget>
<body class="com.fr.form.ui.ChartEditor">
<WidgetName name="chart1"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LayoutAttr selectedIndex="0"/>
<ChangeAttr enable="false" changeType="button" timeInterval="5" buttonColor="-8421505" carouselColor="-8421505" showArrow="true">
<TextAttr>
<Attr alignText="0"/>
</TextAttr>
</ChangeAttr>
<Chart name="默认" chartClass="com.fr.chart.chartattr.Chart">
<Chart class="com.fr.chart.chartattr.Chart">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<ChartAttr isJSDraw="true" isStyleGlobal="false"/>
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[学历分布（%）]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="Adobe Arabic" style="0" size="88" foreground="-3069334"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="2"/>
</Title>
<Plot class="com.fr.chart.chartattr.Bar2DPlot">
<CategoryPlot>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isNullValueBreak="true" autoRefreshPerSecond="0" seriesDragEnable="false" plotStyle="0" combinedSize="50.0"/>
<newHotTooltipStyle>
<AttrContents>
<Attr showLine="false" position="1" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${VALUE}"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
<PercentFormat>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#0.##%]]></Format>
</PercentFormat>
</AttrContents>
</newHotTooltipStyle>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name=""/>
</DefaultAttr>
</ConditionCollection>
<Legend>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr position="4" visible="false"/>
<FRFont name="Adobe Arabic" style="0" size="72"/>
</Legend>
<DataSheet>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isVisible="false"/>
</DataSheet>
<DataProcessor class="com.fr.base.chart.chartdata.model.NormalDataModel"/>
<newPlotFillStyle>
<AttrFillStyle>
<AFStyle colorStyle="0"/>
<FillStyleName fillStyleName=""/>
<isCustomFillStyle isCustomFillStyle="false"/>
</AttrFillStyle>
</newPlotFillStyle>
<RectanglePlotAttr interactiveAxisTooltip="false"/>
<xAxis>
<CategoryAxis class="com.fr.chart.chartattr.CategoryAxis">
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="0"/>
<newLineColor mainGridColor="-4144960" lineColor="-5197648"/>
<AxisPosition value="2"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Microsoft YaHei" style="0" size="72"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
</CategoryAxis>
</xAxis>
<yAxis>
<ValueAxis class="com.fr.chart.chartattr.ValueAxis">
<ValueAxisAttr201108 alignZeroValue="false"/>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor mainGridColor="-4144960" lineColor="-5197648"/>
<AxisPosition value="3"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Century Gothic" style="0" size="72"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
</ValueAxis>
</yAxis>
<secondAxis>
<ValueAxis class="com.fr.chart.chartattr.ValueAxis">
<ValueAxisAttr201108 alignZeroValue="false"/>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor mainGridColor="-4144960" lineColor="-5197648"/>
<AxisPosition value="4"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Century Gothic" style="0" size="72"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
</ValueAxis>
</secondAxis>
<CateAttr isStacked="false"/>
<BarAttr isHorizontal="true" overlap="-0.25" interval="1.0"/>
<Bar2DAttr isSimulation3D="false"/>
</CategoryPlot>
</Plot>
<ChartDefinition>
<MoreNameCDDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[学历分析]]></Name>
</TableData>
<CategoryName value="学历"/>
<ChartSummaryColumn name="人数" function="com.fr.data.util.function.SumFunction" customName="人数"/>
</MoreNameCDDefinition>
</ChartDefinition>
</Chart>
</Chart>
<ChartMobileAttrProvider zoomOut="0" zoomIn="2"/>
</body>
</InnerWidget>
<BoundsAttr x="2" y="367" width="565" height="348"/>
</Widget>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="button0"/>
<Widget widgetName="chart0"/>
<Widget widgetName="chart2"/>
<Widget widgetName="report1_c_c"/>
<Widget widgetName="chart1_c"/>
<Widget widgetName="report0"/>
</MobileWidgetList>
<WidgetScalingAttr compState="0"/>
<DesignResolution absoluteResolutionScaleW="1920" absoluteResolutionScaleH="1080"/>
<AppRelayout appRelayout="true"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="952" height="598"/>
</Widget>
<Sorted sorted="true"/>
<MobileWidgetList>
<Widget widgetName="button0"/>
<Widget widgetName="chart0"/>
<Widget widgetName="chart2"/>
<Widget widgetName="report0"/>
<Widget widgetName="chart1_c"/>
<Widget widgetName="body"/>
</MobileWidgetList>
<WidgetZoomAttr compState="0"/>
<AppRelayout appRelayout="true"/>
<Size width="952" height="598"/>
<ResolutionScalingAttr percent="1.2"/>
<BodyLayoutType type="1"/>
</Center>
</Layout>
<DesignerVersion DesignerVersion="JAA"/>
<PreviewType PreviewType="0"/>
<TemplateID/>
<TemplateIdAttMark class="com.fr.base.iofileattr.TemplateIdAttrMark">
<TemplateIdAttMark TemplateId="b361fdb4-fd0f-42e3-9df0-432def4fa35e"/>
</TemplateIdAttMark>
</Form>
