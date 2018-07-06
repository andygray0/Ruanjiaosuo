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
<![CDATA[select * from lxty.2016_2017_season3_project_market]]></Query>
</TableData>
<TableData name="ds2" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[select 项目类型 AS `项目类型`,
(2017项目数量/2016项目数量-1 ) AS `项目数量`,
(2017交易金额/2016交易金额-1 ) AS `交易金额` 
from lxty.2016_2017_season3_project_type]]></Query>
</TableData>
<TableData name="ds3" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[SELECT * from lxty.gov_investment_2017_season3_Top20
]]></Query>
</TableData>
<TableData name="ds4" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[select * from lxty.2016_2017_season3_project_amount]]></Query>
</TableData>
<TableData name="ds5" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[select * from lxty.2016_2017_season3_project_money]]></Query>
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
<WidgetName name="report0_c_c_c"/>
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
<WidgetName name="report0_c_c_c"/>
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
<![CDATA[685800,685800,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[7848600,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" s="0">
<O>
<![CDATA[内环: 2016年]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="1" s="0">
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
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-15225665"/>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m9=p:;cg^,eo<J!>F5o/3!uJ5NobST9$pL,J7R#Q);ER22AO5`6l4SPNcG1E"HmK(bug5F?c
XGpC*a[qTV>m&,W`<.#UEM[+S#fZirmF*#YE,/gk/@;g[XXc"_2]A+_EYi?ce<`<]At`J!ID=[
r3V(auaQF<i?8-$;SEDg.iUs\CbkW,tcCANbs5N5*?`6.Q5;Hls[^S0-*q<!GT!mt9JR&&>K
'hC=SQj;$_R)SL;tB+]ApS_`6r+o7-8"<r#F>V[oo%1&:3U(b5?6ArgU%Q@'ohKXLR-2;pG1I
rO!YZ'5LI<`jer^;?76Y2",Ai@3YI'UVRO<:5I[??fg*eGF1lI,1I(\3#Wc[5@AAj:Gmdjj.
PAlGi&a\WZpg=SGruO;J2u^e/@bP%++9/ijl=96fH%c+^4Sl;VWN8mFgc4u3aF'p8ke13R[W
qu<234-Me`&E-$<n"cA.#Of!i@+f)S,B#3N4Gh\?bFNOdo/P%nM[V+edp$UTU[5<Gu2aZ&.>
KL(dtO;Og>4ruoK>6-ru=HfKA#E1^=`*4>h3>#ENp[a`"BG]A^^4?RUhXXJjt,&k1@1M*k"gg
l-?oh=A=,T;o%[dZ\#DQlp&MQ16Ki\'m$#%4<jTP;jkhh`WW3mKm"?hXr%k`,De)8lO$`ES5
K:C8Tj7f*Id?+Al\R<Ms0-IGWE(ZlmW[YW)Hin@o@@,=^j?m1iFhVm>]AFrKSi+?X&*Te5lWm
Da.;u<dPF(1'tKU7.Y\;8Qs&uTqf3e"_gh\a7&csi<<4aO`GZfr@)[eUp9AC:8>Q;,o(?VW`
p9Hr.]A[&q?urq03i=V8&/Om?RX$Oq)?]A8Bn;?$&//!@Hm@EVC(`:B,Jl)UK'lsRn@+p+7_;E
<&fBfZM%#_P]AR+P&D:6uQ23PcMOMjZ]AT==/Q#A`q3Wp1[<K^]ARWa[IIkE9qZ;]AR`ot"'t9o;
[BtMiJ?gbl(#!(-o$DWb:)o$0Db(QGnAs(q?XVJ&a;-4rhZfkI.1Q7Y-j,^4<BB<oB9Ace'C
P;Y&:[^0=D:2^QE,gg3`K%]AY-2F.=48Trc2;N%hok5F)/]A#@HZ$E7d'/T[G]AfeQcph6XVS/p
$ALWhd\=n9MDtWPhCV]AEcT4e5fL#Tf*.;@'^bll'X&g&Vi!d<qY,F3lh['(]Ah*0VBHXeV,d-
EMLms%n"YKOPUqVCrLn=nZ$h!E>nR+RR]Arb]An;6$c#IZ\k'arsW04K2=tFNH=&b+c;"=rfa(
5jNBYN5]Aec7+#J5\a?[t.g-tPPK$YSKk>Y`q%I"[k[JLm=HZ(mW"#iA`#kmA%"WfBAa+CsbV
(:1t=c[YJAm?t)$&qC/>A;8&aYP!Vg>B&!GB9PN"8gi6SF2:Y)@,$F*,*]A?j*CdAWQ5htW=2
id@VpVuTYX&C*lQ2Rr>M1[R+GJ8(paFiO@,>J>SaNJN(7or[orV#YQ[Mql58lNdu\mDg0%2u
.9pL5)U#4WNA*;F2n<#GjW#;BWK=r>^.`s5>jm9,"KaGu.I(l*f1*PU`O(9)7rZbBCW`i"6>
$j'n0!TDQK)r)nQ`-_NguSJJV/5j:90,\K#4r*eAu@DhQh4qG-[^/I./_W[8B]A%G9UW8AARA
(G^=!Uq?W71YfSp,GmN!lS.+SVk"gi/,KC+KJBJkp3ipE!H&>K*j+eAP,?_Ch&<3"-]Auh^#l
KXDjb+.q<iYqi-5=_;MKT(`\,'K,"00Nh/:_SC7m+qIcCi.\(Z5"2]AgSj[ASh.1JDqpt=p1<
IUE_bnHMuo/foHc/9[KWkt&foL0kMg_fI0BHum-W2G&e.C;j2u"^SC#,G:##4t:KmKRfVn/P
s#8Qt=S]A^oOe2gdp/22$=0fa#&cjqLN&>'!P>oe*O@_&_(GYs<1qDs9=ZH/3WXQX6b5]ACp57
U(LUF/o,4*-\]Ani`LO*H]AJ_BGX$@7iF-lQ5A29Wpr>#/V?=KFa86Dac=)m8s*Ek@M^D2XleV
03TW3d[IT.c9jY'g=oFh6*YfKkd/kP_(&X4/3N@eZ.E"heW$XC`jZZHY[h2rEJEJBeGe75pE
(G$,5RB"cZ!YVE$ps2Y#OGH"X,PlWBd'9/Yq*n&qJ_PO5_JhW:+.7&=a%_@>*m:M)m%UK0D-
iU0+n.ZH3:o[`(b<cg;($TNFZ.]A7I?8Oo6FSmWU\6E"uWEXMHnmubG49PC6(4m<_s#A\P)JG
e>[lTEb0N-P^>So/]A/>>/G_hiO3Nc()<8:JNYBB_'YRP,%.YVlc!daid:BEM6jXR<N1r>u#=
N2fT%WLM[8C#X`S8"Q8?Y>ne^2"PfP6FXi43?B784Pnj!b*#A.s_'IA.p(Sf$+Iacl?UB)=@
`#`e]Akd<P81=X;7/?-gi=L5e'>''tPJD4VsJQG=G(Ut5"Y_,m3rAZ,iR:rE>dNAdr.b@/poO
J>1a,Rs!?"PjCmdqE<Zrm%+UK(uAdo6oY)elj^NXHOqPb'=[W9G.6Nj,]A`hf+9f'M#JF#N6S
XFTA^N*]A2cL?1U!+R!\+4?3A_L;YNSLj)Ftd%9<[O-OOOST<BNmKp\@`?i!BQBr>iFJJS1*V
AAigKfKaK1BJ-3Sjr->"A[=l#P#@8P;)d?S=26TsWfnE^A[4-/)eWt4GPqIYF?NB$o<MhJU_
"PNUin"dC2RSm)W_ZR?%N0)aI_D`DIdQW3Sr?"ekYWE(gN(5a?o]Af:@NUm7j+DaK)$d*8-Mf
J.H38JVB\j*W>6Jl4U'2C6A`q(-Q7[f1A4ptAspl+WFkXGX@&cSo;P9`*VGR_H"=3Zb,7pfB
[/qPHjs;KXPI$a3a0p!T>B"LN4nBjj468bgi1YSKd,P49I%6;#IpR)kG4bWe7l=1A/po3Y;0
BT[^DmX*6bJ^Q;nqSnRh8m(Xa&MjEYcFI$tAIZkQ-@h/\IFggapp;M@p?PHl+o8jeoL-BK!E
A2;ColeL?(TaXW(RG(HNk,gmC:q(L^dNY)-0K(g&G`?1ULiq(4^pQrda*%)gdR$jG>fforiR
=7-Pf@D[KP@Hf.EPVc?;-1i"sVWL^am(ehCH[CX3'#fIfJVZTorbjcXQYnV-E/&I1SM=Ak+G
[;W^"sEMO^ZOKgOT.4?/Anb`\XU)KjJ`aJD$?Qk8sPNH.?3#J""TIH8LLl9n-QEn.TgWJ<*6
LsfhP:5DDrm4^X?g8"-/T3c#@nO6+N0%"=mS\)j"h=:P5u#d)NC1=!iWJW\a0-3#)>d>/?S^
=k)%>+f<Yj5R0^;l5;;FI,RrooZAp;/U)`'poq*HrR/e7S&TD0#Cp)2NFjli?-P0<;S;n9ka
cBFrFMp0oPJb[Trd[;(U(nUljWI7U,$4g]AI_2WXI4%sf97H1i"1\T=SG@jBKRo6Rb=9cHS!0
;)+;fc(Xn3$%3(fb/S`at>Cgb4D3O04R2q%#[]Ai<C7iTiBsB6*O#S)m[2Q==D.L,j\_fC^,-
IUo'eg<'Xq(@"P;HA$Y@1?DW_(I^<S8:,D;19kg0UZ7A#4159u=]A'ITk6.E^dl"I]ApW:rM/n
'hD\3XSoirqCiM,2ea7;QPQA:S1VT[f)C/77TM=/E]AQ?r16@E-a93m?,_lKgRCL)f%`B_h:V
Yh[g3pV(@=CM(h50:HF/_d-#/V/?E!^E%TX(3ht6n1<GiCLRK."@/,K+j9:5ZMpCi#QFn[-;
m65BZN(Z]A(?G(^@S!Xl`@;_"uW>h&DiagT)"5944`4GXn]AS*#iq#TU^KKOh*fX)ujY11/oLl
BtS+WB9&bT?@4#>#ZeY79::@0/]Ag+l:PGk>oqI3>aW=Hg-FEfKC@Qj4+5>?JL+b_$7p"gA/H
A?H!%N1q=1/3")QsmP5H0;NbGWD(q8RS(JOS^Vop]A-VF+3n[Z1b=+WA?aMhfkbUU=sk8?rSo
WLH"3s'W!*fEkurh(.1O>\A2qBcl[Vs)QoXS<g9#BcC9UjHM@fjebr4t+D4V*+t/,%GBFr5Y
O)1JkF`7?hD.MH71.e!&/@P?@J)ql^&lAL4.I&j/+)n,g!eaPSQ9g"DD=b@EorZKT\hkmM-+
iS8&Hj0L#kI`0X!f_mlnU:9Olo%oS_WNMCBL>`-Kr`\]A5O;aY36ifXBnH9b-H_"-h'atfZ8L
K#IE(2mE1eKleD*F%!Lc;!GOUMmH>nERs"SP^RT@P_,Akc6MTDb`.^GXpDLB+=`;^\cf@8"*
mihp^bnf7rbm)6?=Mgp0rql*@]A)LA$2F3Z4<?G!R\H;KSoQj;W-#e6EqV???%./@8^%bqROZ
aR".r,&bK1_U(.PLKYriOtNE+UE'8Bjch''gTA,;QqM%_O5_gINJ7qq\thHU$;LcJB>rkh$T
H]As6BUB`GQ>aE)8]ASE2Qop9c]AKR$IX,V.K1/g3d1:r[qoG:Va=P.1+Ce;PK5G>g/!$-a%,8Y
A.m7Q.U+>?@"ri<g<'<c)^Urq=PqJPPLg$LL13caK!n&#4FPY+9T>=bAa8]Ad"S;>B0PW9_pO
<8/,Ht&(LN6<8H([S9G0),,Z^l:EgNs00jFV2Ua?G%ES!I&Pe(7\Q^omeD^eTG1Ps:c9:TlK
+>bb"+n8>kt/J-P8Yql\X<sb2,Fl5$+o=c<m#Kk3rAQLM2PL\WFDe9P??kotbbR@_c6j?<(<
tN0rS_.-2kBG".X$+;O8cj1%.-LrK2+q",TIW$J-Z[m8!'4Oce^m!YGOt02L$mAQ`G1OV%>]A
C/>MX9:1WPnJrF1O0Z$YH5%k'0KZ<f[Jh#=sVK*jDHI=f8XZu,r>o19M1h[cnjr.cmS8/[rt
"AAs&Ohb[/kr']A_Cn9*ATStNU-b&7Nn$^#\3FK3VYYjf?eiEkU`Hr.,0#9_a+_ee5QVmJR#b
1d?R3#gV6=1UWlN88:D5n@^pbR9J?unBtbJDPbZW2YB<=Q<6[i3,#A%eeU^fh.\[mBjT6bC.
e<-TPh53.m\QUQN?!Flp71KD$KJrgda[fV<cf.ug!,Sr"UgedTuFD%Z+Cc,r3\-d@Uc$6Nc_
?X]ACF[mC.cSa8ZKV?<!eV6b(`2p2l`[7?/Toc-HIlfGOS5e%R!;fk%[8Hn3,B3H&9W\H/gA@
,rRlGPto?f+r*ZMIG%MW*:OI]Ad#<?%EH$.W#mqlk5G72%a8iCr-qKNS\U]A#Ri)(EJdl[h^d.
EfU4RDFN[SfpqP=,prgs^Y.WZ@M/b)3+)b.(ueK:7nic"b`=_fWVY4;rCXV9;)SR<?7]AIG$F
ZrL\6j!7+42[?-q$e2d5jYdp&JJPP5_fL_;I(LFLL/9g"Qb\;hZoiYq!qi3]ABK&\:=Hbqt"8
0p\+6Sft3]AVW&]A&A=QCsP#pGfL%V46-dcKL%!C:eU=H3]AY0odU,FsGffN/Z#s9n^0(;(+E.N
cm(_Eb=.XoG[ZM>h/JOG:j!/FoqOt+fmiN0in4X1<@`9=TP=`Mqub"k1Zfh/V!oDBgUegeB;
8:\01C_9[UA>A4&*ic7F*!gf.,XTFa,?"Z?HciU7Y4Vgf!KQl8uT.8I5K9Y'=R!fPB;!41W3
&I^%,_QF!,`"gip0R!#a7.OZBS<?&&o2k]Ac9+rK=lI^rD)p_r1-9Z=E)JW*"bOjNDV)747]AN
]Ab4dN#1?ila/J"a?b,Pj:P\l9)aLMVj&e%/kTp0^XfPKsZ?'ilU+@ZG_q4F1]A7PD+0>[0KsL
`YQPK)QU:OSW1@lPPUc@N#[G(T>N"#si"ijVZc@r/<(U0`U)`Uh32l%VFo:TSRHZT7VsY/Gi
"fGZeqB%^#us5u0ccW[9OWi/pVlr[)9h_U#-]A"QcM0A!)pbFn-*Vb9"KpCRD[J^\_YAj=^c!
ee\'3:PN9H1-^0IH*"lBN_gY:(Z39ZOC*[1G!grRnTWIY[+fN+>cB2^7sGr@SflT^HGMCnL"
KaPUSII(T);eD67R3e!5&F<FBP<W\Up/)Fb=`C?lUkp+A8)^=+`Y9'0Y@hCbh?"Z3F#"'ac_
d;eO.?j7MnXp;K*?=]AfVO_6%#)^K^3n9:6.C_A&Bkd.N>IM0$D5!?1!R`.K(9DB<)G3^F7nG
uP^cht4<l,p;$D\NC0Lhrl)*Mo3nh7W/uHEfn<YWK99%p$]AP=p/7O;3Q;tlUJ("Yi/N1-)ka
'i8b9>(81\)'C^rqub_Dg!u9a.hBELU8AW9.qo.VW&J[$=EUJ8+=!MfqLSHWjt-A*?hN5f(@
th4`<G_4+4fZ,#C`ZU;'KO<DTC$?Jf\I?R7J#^9&+([uE!lB73pa'VOe04j@a=E%&%B@31%!
FcB#^m-8YO8gTq!/$TVaoN=i;p'+JnZ)MW^cpY*\Jf[3bqZ,HFeq7>@-#4t#<Qf._T.[#,kc
i7h!'&p6[]ATF@/=gog:K(jU/O7BBadK0UHS'1^W]A:+/]AFJKC-'AFI.M,kd&2t2C_`":[PJ.*
Bk]A2gs2SCc`0$W*:R:_U.+F8,aW2L;3JL&bI_#p%,jIq;[p?=>KB!Z9sHJ?$hq_b^Xmg^3"L
p-8K6\EBt<#nbEWhWAF%Wb*qadNO#LJ>(-JV(E<p,.\!S?O6L`/!#U_Am7o!LU:%#5^Z/;O%
6dXj(F^iHt8L]A('mm/9EpcTCK;YL$oiPT?=J*rXLBW!fF<ll2*,iF3/1)grZ?BJak:g8M85`
J0dY!\J?J$"85g-VJQm/lY%AA=Y*sVqq4s/2M*Xf(c6NnJ`6V054Kn9-L>4Zn=m5$ZL8UHfM
?!$\Z`mj:+*#BJXB`r]ADat2?`5/2(bHC%d2p5'"8:?:3DIK?-)djogQ'rW)b&fI9\TRl#nc'
I8/DhN5Rk.?;/$0J<#P/9"/aPX?_d`n;hlGKrd!(u5C(!RfhRm(X#Zd>&LIQNhmit'Mgl.B+
-J8S2*`"DB)oe.b>L-.WCV[M<]A%O7G"6pi[i-Qd`A;I/BO4chM"&b:IP3%5=\W5$M[oiKj@@
^AD?Ak42fLq%VYqJ'XZV_o&q=Lhi[hGX+1+#%/ltP,OQ8RIJh$OU#U3j9PcP)Sb0\57F:SWM
*Befj?!j.a#f\W\]A2m5*gb`IJS1+Nj_FQ9j?V9%m>$qEb7ZN=H8'W[V(=T>bc:@r]AnLEcgP>
QD.6$ISc<_"@ai!7XDb/q7]A0YX<T!(4K,>1"dIf4;PDG<-iaqrlE`]AQ!.e<rk9#\.,NGQ,sf
A]ASN=31GeP2]AmkmrCis/UeV+=1:=b[4p0!;NT1(HV.bud\FK*q<fTP45@nSeL`GHE=Qp%LT0
9A1(/$e1M=js8Z5M+XOE5'HHa488GFf/NT;!\pf1C*lf@K!(T9@n(Yi;Wc~
]]></IM>
<ReportFitAttr fitStateInPC="1" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="250" height="150"/>
</Widget>
<body class="com.fr.form.ui.ElementCaseEditor">
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
<![CDATA[685800,685800,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[7848600,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" s="0">
<O>
<![CDATA[内环: 2016年各项目类型交易金额占比]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="1" s="0">
<O>
<![CDATA[外环: 2017年各项目类型交易金额占比]]></O>
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
<FRFont name="微软雅黑 Light" style="0" size="72"/>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m9>!DPP*Y]Ab3FhHj/E-Kb#4;b;eugj%?[bLYXH=o`>;jXi;j\G@Y<LPf^@UP$3adO'4IAB\r
(#H0B6Y\b6X479Ud_ED^p_#!S`:4NP.QO:7nFSn%7b-:AKtAkARt^]AC,!3IBVs`?,%JRCe.\
"a?r`c1i:sR7p^W*jc.`dh(+pPm@H6X]AK`XKh0Pc8g9apW]A__1lDraufZnG;>W7dYIlRZ1G*
]ApU>rSUcW^$RQD61U.lZ!WX;D[O4N\*!V"IFG&XHYWS1rUhNk.l42AT_-FWNKqb8<ihjhnT\
kf_Zd*b2r]A<2mB+Z=E`3&>7&!Re<)2e#4i]AZY=O1>dlW`Q(K78Tji6l6.hCV-0_=Km@nD!CL
H4R^=^0Gp#UF-]A?1f$MGRiL_hc-e9&?mhf,5>U0Wj$&,KC1cXkJ]A^\Gm%Y82+n(tm>@cQ<_`
k7"C:OZC["G+k7NkgnB@ZZdq-<Et)T@@*Q4pQXK#e&#>jLCTT3K9a9t`/s1ihVCB)dM-R1g<
#hi9AM(>?bJE:[jdp7@%8GO/jpMu;a6C!'m#(0M.qq_/O#Hi0i%+2LX&ea]A\#j>gSjcb.,Bl
Ib]A(**8Y_jfJdc7qn0VfJ7B]A+m2s/p"o9X?\WR[Y!n@2"C,<Aj->I,$R]APYm.`VL7?J\7rY"
t@6<hF#hOU8N(4mYL[UWVl3SmDg2Xd'tb5AQ@EpfOj)>-c3VD\F<Qbh3ARWdljKYX``YHD3D
pt/!RSr8>??P3iTG[g,;)>1ALD326&bWtpH2HHh7I\/[ji5Y?_KbG2bDIo?!A!qJ!VU\dU?"
4:&i"HJq[.cM?%pBZUCeo#8*:36pq;onea-bFiNuh7baG_(`g%?NI;%W)DAUT/-)0]Ap?atIf
3B^/YsB#Y9Mc9?M^#r@T,12D:3_RW/U1hBP4JqdF28Ks2cZ`iA3;g87,=P3,,+RhHc2f_+7*
rmJU\[DA6$BDr_=iLIt[?>gB\B1H-LTR15'sRENN@Q6B:+KZ()`JCTGa<.5SkD.0,]AHZ@L7d
5AT;CauOI<?I@f"MQI(=(h6LVSWg)Xo%F(\&Pp9+:0!!T$TP<9L9ql&LZ\EN:s.rL<r!#B'U
p+q8<V*iS,T+:pF6^SaVLsJe4SHCSO4lq,?l0P*WR,iI2,0iBD[O39t9NE#%JRJobJ[:s3@-
\+kC9ldtd_NSOPI,28glsCEQJ\pI*;f4c.\i/9^53%[pR]At"L+4'"&7J<PV"Nh2:O-[42.D;
e4O&Nsjb8M!eVNB"(H.\pBoRAV-GiS;O#.O1o$'aC<1DrYlSJ=9&N;@?#FK$7rumZbiHn?0_
jn=5.dsH<U+4Vi,YJAj?8nNJ`$[=tA%'8WmE(IXF8oCTNN&(P.D_-d"i8S'bZ:d&BTsH,=Ns
\^94n&_%!3([\p7Kh2MraJ)[/sENJWRMLRcAbbsM4`V;'6>i8_d+L"1G@;(]Aj=dFUgLhQ[=Y
-k@,TgK[?1f8p1B<%[/,VWPW@"MGHYeB',EH@j@F0p?]AQCL9/Dn/nNaXc*/G>"pJ^]Afo`UP7
n+G_g.YI-Y9=nP^)5AXYTbo:]A#K.>5jC2SYU.TAK33ZOTA71_7iUHWOr8YD[c?na&mVK(-b;
#hl5siS(@@C$go&>IoD1?K]A@V-P$a`8M=7C8A8.!&ls>Gj9t"\_OLC-qBicC_q=GVlckFtuZ
i-JPrp=='Y5U5SlN819LC*P77#<jP]AEp*_!UmqS\-sLOK,6NtHroJ-Na=W(A"HFI"$TZYT8p
2Ok@Th@<'nbrKNK2`SU.&<qB>X(`#$'Sm8]AR`ne]ADBC;/g+RTcL`E'FGdM:_mD\N,@?"d#Dp
dQ1$m-TR`G5ljA'Lr'c"YWXRi-gk86OW3\b`Zb!URcY2jb[^>Q=p6m"mBc%:c!+htJDN9cS8
]AM[*"B;@#4qNY^L?+TDkFumrC)MU;1cGU:1:`?a<-8&d_ol,^/FogI"JFA1:DDffi9c&[fM1
,'Y#V<:,n#baiU,aX`V?Y4rl75rI>U8fnTuqluRRZqUW/f[%P-io=Eq+MfITVW2*kc-a-fF$
l`B,h,Ua>=!S/gOu0;$_'[$LA#<M_DVZ/r2o,PmaZ0EZq5s%*K7/h.9dZnHi<;J>RWhHOA3=
a2Wa"^SAf"YR0hKu3YSSbYQ9J6.!?_K/(h1^hbK<j<d-_PIY6A]ASb"YC<3,E`QN?U6W%N*$>
7*Zt3%I)fGc"+YLZ(`u)k0N7b_2igo`Tk]AD&P.R6o"T?92d#U*-H75D.^lpR.kONuh8QqumE
M,JRa=l#auNa0>dP9H@LGUM)>4;hZ8A#^Ej>;9gluLfM%A@4]A]At;jDP&EZ&n#-S1)Woq\+u8
hjbX,T!_D8('ueV`b64"'Fn\eK/]AImSeE#QGm0%&Y>Ae1[/V8CPhOXh(Q2rgNdJ@f-dsXD0,
C_r8&XliNCKCOI5o[6$]Ad'YWF%jRAf3Il>jj@FG=u6Q`<WhH;UgZ/fj:5J#6GqRlatM97E9f
tQC3Q=7N4FX?&/a/G`@L#9/!e4hcM0#PS2X42e!QZV%hf96%+fVhh2H_g_+B)jrU-AXedV&!
J8a6ZL/&\,SkN7$q2iuX\E8+(jG%42m4ls.7Am;LL=R:AQ\>Wjg?]AP':U6fk(NUVKLP&o,$%
Ks!V65V<WrrY3gC<%4BFJK["[ha0QYNq"ENZk`K7*iO.(=V=!GbA>n;b!Jb:IsGb]A:=n\=O8
_cg9Bm'Z/.rR&:Vi,4KNGM2G*AS&pM9kuMj%Q(.Oo*pG\X_DTlc:%bobdM3R;*4;d$>"ij]A6
sWYFRkM%8[^Rh(Z98l@fV:FSL>du@7WmO,\+Q.c780k$NQrC$eo^4GCA^@DXc/mf(DT\7`40
=Uj8W*iGa9=HN[+fj[Aa;JZ>Z9;&iZ@JA/S\7ZpO;r7BQftWA1)4K5I<B;9VY&fq-pmK"'fH
CWU</Ypb)M_9\@8bU1Qr+fT?6Bd$@tWUBl/QAS<4&mL-Bl?55_*HW'PVf!?sRido9T'4Gaf/
aWXQdM['N!DJe)?kn,rNquFO3@.^;p4.NYZ-['+K[`t$j4CRklh\[B3U'(F&NWS>n0(g+bn&
Xd6FSkdFA;,<fuuVK7c]A=-leGr:>,,]A?hnp\@9k%<I"^_>UG5r$]A#k[JA?nU]An3./R_V;ff@
'h#\BWT42.)89C,P\s>dF[46I0t+(kjkiLfT$b,BZNNqhRlQJ1mjEc<tCE3o'Hr:,(h+f';(
k#N0,j2a2dDerSROWM1m`]A7*W^+58VhW<\FWQ8s\eq!?L@)dF)`O/s&e0UHB7uZc6h75]AKn^
nn+:)oK;]A'=i9jo$d-YdVM!gZ^q3.;;Kc7(HX/-rHNXPY\_N=:bm/<`kKco)X-%@82l#?.\u
dFiB2,j!p$k1?TYgJ5.RX,l>W@jSjnkT(;HOXSf`(6!rZ=q8FPW%`1/rB@3VFD<6`79V1q3S
\g7)XGpID55&_&_uZC<!rBbW!p\m`h?V>.<IPq`+\YqlUV6%!2$jQmfX5]AD_6^[b8L`\GhXD
,Y9"9!UjCM9G:]Af&k)+(6q\_0(587-CF2GIYBLfh"iJ(SDXq!"o_uNa9)e_M66KnLeTaW6'a
;.LP!7nD)PQH&P;[tZdi@G[&QB";6I4mg0_D09NT-.Mh_)CTKu)Z$;rof/%M6"*j3N1]AT41t
=cCr#lPX">:C">Z5KgHA;KRFlZ4/N9[k&[/A!hpD"FCfQCO<ln8P]A(3m$iK9<#bXkB#&#F#j
#U:EGNU/HJutuIcb5t?H/a.lA(k/A?6>26e,?!6_f+%`2>D'/luDO/AG6m?dCl`863^Z)3WW
eX]A_'I'Gt\-P@9_9rJ]A>AS*qYl8YMa^jGQ^L#KC%Z$GJ\jr1n9\1CR4YZY2$-V%iKBU&2L'Q
8-Q^QEr^?a6mE3B7Pqjnb)I1f\O0[SYYKV3r>mR%&^8835:4e%4n)-r]A'>iGq\YKbS+CPa5E
-YB$ZoA3<Sj]AF[Z*4*9iIJAm88%dg_J6I'FS7!',:Jp_L0l=2Y..6g1[HQ>huW5gJW,\X[Di
30Ol#$lSD#&JA*(Z"hH47/_h*7L`/9FJ!kQOTHU=)04R*,\qQnPkcP(fL(T;8VP#@>%iag_3
S3BQAN?bWpWq"mA1:%<TKdQ@"6e>^a"7_22/+BERc?jao@E8^r-)!>7!Ua.4HhPF"`ppr"7[
cVmo9+"2r"KlJQmgl$aXC/-9!oWtcL<]A!8V-MV^5*Y7pdDALeu>-P6?b@Ik.?U"ZiGJ-FE!'
EjUbHBQUl=j6KiP&g>B=Nr9t[5XEjl9+j#gsc?\+AE;do=-efj;O,:6$<--l\!`N`X+aqF%a
iW,^lM%lg!!MEf7r=.l?jNTI3=-4lnW">[/jqV)!3tNuRFMEn)L`]A1;/gOLg0T"5WUXHP`KC
@+Sn?X]A7sKKTI[#>O-#JrIQHo;oRCD.haH7h%tF"5T"MO;59O:1eKT=.iJ5YfMQZ4!Pf!M,:
4-OBZrMW2'G?7;085kmWY.8dUPJ4oTkndpb<E8$Lm*Vea9^-;gd"kL#:#^U^uc'+g+D111-8
hK%[thXf>7S]A)#6tO(Ft>`m1%rY\EZ+QS;\*#60/>J_b2hZB@-42SC,M&\1#1mabFj[I([p,
O7(t7F$+3Nn\-2nX=5+J=JoY%<@Z9\83LB)/']AQ7"QPXb@$[&/-7uKC5Y8ejc4`g#WuL#*t6
Zidq,q=@'#qi9Um(rCD6o8#YFL%I$Mkl>Fj&t/@+#di?F3(;?3LY>]AUQRqP^sf!%.EZT`j1;
,Kn)B#EQu8#e-'m%/E6#k\XgD]ASSFB/6pUY(aZK-O1:oQ.Lm88FQ#Y\D&6LhEP3/hg"q2n#X
90I;Fro3a^^k5RJLT2$IUFL"%Tbh]AlX:j_u!?B;MtLJ975TkmSb%Tb&r-^kU16L2UFT`V2^r
3Q@7TX)sH^@U8'.tXn8=SB1#\p/&6m*5pH<e4@m@^V%[FtrR=YA_p`1penLp7D_MNp@nNNhX
^L.F%+ub[n=I<%1F'BUCRd$c']AZogSgOkrk"OB[r>;HP^I03%r_A"DCP+S/e;FGudC^BW8Wo
A!$D%_4Qa"9Il^]AIgG9C2%(PWF)*]Ajl?pJXuAhrHCics!<QgLMr+rU"GF/sah5e7n)I,lMt1
`pm$CS'RL!7T[DoQu7A:Tj[W>M'$[X=1*Ea2O(qq,nAYLS[Bc;TPO+[2>4VaA5T(.X#rRhIA
@Lg3^[e"VgU&3Pj7)rY*odS*p'81d\9+hDEaX&1H\)nUcdi()Wt@TWjsZo6GVJ#m>]Af!TfIL
N_s%'s#_9,M+,]AR5`Z94H`#m'P,Xq;.Y=HT>n0JKHl1Q!+Ds8E`.2aX6=3%4QHaMW*/K0,6E
taieq;0i9H4NlY@(`8*U;t3[BY.eNO+#;,(&K3g91l(jo,ZGtl/Z&Do6jtokr>85QtM#QYq.
+nRuHED+g(aBcE%9(H(`;E3Tht'V!W&>3Rk+U.EmG4.+-:<!adlf%3A(e?\sG3+H-l'?%T:s
Q^\\bWQME'h=HOA3.#=5pJ>>Mq<q@+Y=Ft)D;Xhq/YCfj?=)<Me!k[@k&tDSC6>jA^2$(I'O
ph1%X(a!35RbkKboHJ*sOs(.;sgeHqU3QqYirP-[M(@q=nS.]A*$"@!`SHtH2m^or#s6u]ASHi
>=TsHD6N7AVj(Vq!JQI9o2B*jcKX=mqh@S+`RhZ3bp&qsq93]AM>`r>WOP8Z8dm&b<p8fiSr9
0$`uEA'2J*7d6-Ql:=8&OYkE+oC4/W8sG5M)k2a.NB'J8$H98f'$eR[a"^$RJ)Ce,LWtN>4h
0F\(QiS]AVr,O8GOk0?u6b_'ELo[6ufXTqs]AY;%`PYVljFAgNg:"Gd`>Kb+gSiF!*42i1W!'%
/I2[4llL&-!\,P*hjP"(B&YUde9i-,[ZYs2oUfsU'2^q0+E)c"G%]Aa_W=7!;bJ8&=9u`1V)*
"Ta;^4kC'HjaAGEQo&4"3/g,;_foT]A1+t*4r^PLcMr5K^B-MMrG`[k\UYtijb3BrOKf=Tog,
;6OfLQe"W-QBJleLrD_"C0fkEQqqLK+r/""nm!J-=9`.'2%c!TC%i[k'2uH7jr@H%U*-'%9A
i,#8COrmbbCN%K+2#jQHt/i$p!(`Hd22mNVW-ks6^!St0+)UC"h==?64>[d6<pu`*f'+MP!u
L^,,D58aEst!it#;lhpGQoXC(c`[""_fqs_/NCe,\dVUn7ZpQnVoGl[qsHq9F5;\e.7IBXJY
s0.WV$=H;jR)>\M4V=)V,7")`?-!WM469K.XW;3`S_figUmjsl#pgu[jpm`r8bF"m1-T\JTm
Ad>3R[4DjX/58N"Hd6`Oe"TU-PK[nobC)g"(/fWf]A0fcO:qMk-]A(?E$mG#2Se*=s*U)l!$E(
?1/=XX-X-.0.`:(m9^e\C5L2MMZeL0",3U#X9m:Rdi+dD;4s?A]AhLUh7+\ao(<lBk]A!T)U*b
7$pD)KMFf([-k"qmq9OMKb_-Y'RbAaMl'<R+\_O.#!OpbS5tpWu/"Z7DtVW!r3#9WpC*u[A=
0iH_XQ-5@iGaYerdj^:_Uui7ACn\Ze5io(UsP6V?%sXs%T&3_FMW!Fu_iBb34;)oZ#p7Vu8l
?#Jf+D(u;-8F&-eS!U9/qi@XPi_7Gerl4:"#R4[>%>.LI<7@@i<.f4"HSk.#QH`b>A2E;9Dj
)ZunR\aVK<cbgEFa`j`pT%FO>+V=Q(r4sLPr<"NYE<>)P4.))H;.h_()SBAC*.X'/((^)t?Y
*DMje7>ET!WQ&*%;,6Qb'jKbKUFZDr$)/QuZUX>76PU8kf#VkGC#<4-bR0(c*U.!VHaK/*UZ
VW\<!4d$?U3!$RFPq%rr]ATYF<!uS!W_FfJZ*aXj\Da`/_0:T(hoLH7*SPs&8khHdk\WJ5Qqb
O.aB#nTn_c]AJQo^FuADP+EEiaR!.I!B?3$bR?ktM2aCu>dE?t#r;=:38MM(+d]AK%`@.0_A1o
oLL>>@Z(GG._*iCWr/Fuq`!TEWI6fCV)^.cCKTtJS)Z`23F3S`>XCGeFeR]AClud+2Na#DA,]A
!MWW3%NuIkHoXejA4KjReTF'dJ^nrfH52&fL>P]A]A80)E,Yc&B!d`$JVp?qh.B#t6J<slG]A'7
\2&nq9a#!(q65Wk4oVV\"X9_\n1(0b>naeh=:)`Xjf\Z):,EI_[K\'Xf)n@Nt?Bl&*H)9^[D
G+"aE\QA?SQ#U7WLJ$g-o*ih]AV5W,W1>01]AN[EA#RQ$Lqd+p;qZ5b#P;IB!-!tX:I<]AVKEO)
AJV)Z,eJ0]A<L**Yg!*oCo\*R[A)8<3qVA_QS1_App(;g10TFJ9(P0,UVrW.jDUomb:ATh%"s
VVBja6N!nR<7C3eJuf93fMcUNS1?U?0ubDT5rke("k:4eJ5T!oW/N-n,me^WEoc5W48J6Bl^
+rU%^cj:M'\AEOT%R9at4VP[KT4SptaGMj<Na5N%hoL"K`3'EP/d"gQ-@lAuefW;1tkW^SD4
]AeG;*$&mN[&>dsmmd:OtGh_K)q7&C;L:pu9$FfB&Cb[BmVmm;)u@VV2E'0[@TQkF*":<r(b,
54pd_O%u3$:f!?Vr5jrLc"!NBQpHSmnk%lGG?UZA26>J"d+t0a%g=5h@kF8[)RXEg<-b0B;V
gRTJ1^`7un:V</5C"NQrPqE[ht=+jI&X]A!7&)f2C%OiG.GX%EJ[J%fHo@cB`0l;ubsl5;M>U
?OM(o?kY-U?L$o8,esP&?WL=*UJ^GM&L1@K8<\om=[LPT9o!Y$Q8hmOHdUAbJD(I[9e+Y6PG
uui7@Ba;/F58PLm!j"hGc8>HaYDcmg\*<C;3<I)@6T/5YH"!;fcE\[K\r09r^'aE"M;/YE5_
FgBf6#(:>?X'^p^biX\MeG9G`lpc50LlB'J<Fq9S&W&Fs[bXUa*]ARlhI)j3tA3%ceqK.h$F)
OS[MTbgZhQ;\,6qhQg_Bi^&q#DQ('/;Kuq.Q(KtNX78;gEZg*;-RJ/qfC91@/lWe:Ekh.;hN
4)gP4)$>f1dV"`-^s?<0&t?@[45s"i`7Z5?<':.G20Q]AmE1d%M?NM/4sTKeES2eJ;1(6DT!>
U_tKm9$Rt./UW;@)3<>lhM(f%Jm&^BC@F0ViCT"E[IA,Em!hg*6R#";Nr4Z0"tha1o_@6nbO
8GN2JTuW2pfZ::Pr+bh/M`k3S"jt4AWe'=BW^H<mY_iUC7-$2`ucGG@5%<LO;%qomi!I[n$a
-dmCEmW?aJ]A&S,K\Oe@Y4hhh_qf\.Sbg'h3adkVXkJ%-^%D!\OEhlF!g0A!;ZpAY'l~
]]></IM>
<ReportFitAttr fitStateInPC="1" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</body>
</InnerWidget>
<BoundsAttr x="765" y="198" width="119" height="99"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="report7"/>
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
<WidgetName name="report7"/>
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
<![CDATA[3086100,3048000,3581400,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[3276600,35356800,8458200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" cs="3" s="0">
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[="  政府投资金额前二十的项目"]]></Attributes>
</O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="0" r="1" s="1">
<O>
<![CDATA[序号]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="1" s="2">
<O>
<![CDATA[项目名称]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="2" r="1" s="1">
<O>
<![CDATA[成交金额（亿元）]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="2" s="3">
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=seq()]]></Attributes>
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
<Expand leftParentDefault="false" left="C3"/>
</C>
<C c="1" r="2" s="4">
<O t="DSColumn">
<Attributes dsName="ds3" columnName="项目名称"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<CellGUIAttr>
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
<![CDATA[=if(len($$$)>42,left($$$,42)+'...',$$$)]]></Content>
</Present>
<Expand dir="0" leftParentDefault="false"/>
</C>
<C c="2" r="2" s="3">
<O t="DSColumn">
<Attributes dsName="ds3" columnName="成交金额"/>
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
<Expand dir="0"/>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting/>
</ReportSettings>
</ReportAttrSet>
</FormElementCase>
<StyleList>
<Style horizontal_alignment="2" imageLayout="4">
<FRFont name="微软雅黑 Light" style="0" size="96" foreground="-15225665"/>
<Background name="ColorBackground" color="-15986891"/>
<Border>
<Top color="-1"/>
<Bottom color="-1"/>
<Left color="-1"/>
<Right color="-1"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="Microsoft YaHei" style="0" size="88" foreground="-1"/>
<Background name="ColorBackground" color="-14407863"/>
<Border>
<Top color="-1"/>
<Bottom color="-1"/>
<Left color="-1"/>
<Right color="-1"/>
</Border>
</Style>
<Style horizontal_alignment="2" imageLayout="1">
<FRFont name="Microsoft YaHei" style="0" size="88" foreground="-1"/>
<Background name="ColorBackground" color="-14407863"/>
<Border>
<Top color="-1"/>
<Bottom color="-1"/>
<Left color="-1"/>
<Right color="-1"/>
</Border>
</Style>
<Style horizontal_alignment="0" textStyle="1" imageLayout="1" paddingLeft="0" paddingRight="0" spacingBefore="5" spacingAfter="5" lineSpacing="10">
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
<Background name="ColorBackground" color="-15986891"/>
<Border/>
</Style>
<Style horizontal_alignment="2" textStyle="1" imageLayout="1" paddingLeft="0" paddingRight="0" spacingBefore="5" spacingAfter="5" lineSpacing="10">
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
<Background name="ColorBackground" color="-15986891"/>
<Border/>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m94d7P@qV,Fk#9BcoY`/;1TT"D3^qT-k_3?:o+j,8$n'RYpr.0Llt#*P?K;2Mo(9BaqE-%,s
!NsD?qCS`/#QE7#_aE5aEZ\&hoDq\KT1^Uj&>-B?n'.1T,`agYV\6]A[-'B4n&.,m-_*NjmT@
"f>bgBH12WBn$0.n*Q#hYm76Ur0jTW<^#Z8Sc*kO+T7=:.]Aj/FP-G(]A[%o-bdZWQ2OnAE]AQm
jK4&A_=NDQ@hA(ImACSmH:p.GE]ALjXeWiW\,H*K#4IVrO8\#hgCN_"\oPddE^ol1X\h;lT.n
jR]AK$#_-AUR7[;$Z%\K(e1Om3IL$$W5C_R#?R.'c]AWBI):=UKrM1ecl(t#oNZK*\[dVb)KE?
[a["n51A&V'c5@bVup]A<]AP?m$l??NYT/u[9V=;[*ZZS?i)S/Np@GU$(kKZ7p,DS&1&DrO#9G
gQ]An.KW/48]A#NY,&30_t4^Tf-Q9ie2*IGN`W#rA_;u4Ub@W;P!3B,/59"_<-7fCH!DBb]A>MW
WeT3Z&&Ys)@UfNd%>Z?D5GnZ[q0R"0shIr@(cP\[[\mQ*%A@eBU0,,>>NYJ5npMGfs/ufq3N
@\7g_j^`^hI0bn-Z0LL3<^3R=h56=-V4uiaE.=&r8^_lg>F$[ambZ<%fKMmP4?78qQ"N2FL'
-$]A8!KFV,Xm*E&hCW"#i5Q[<U`IfhK;0.S]A/h(Z##2-ZUiZ4eIe?b+h?T(ac.T$!FSP4k:?5
4SHocniRIZ-`KQNqMVmWlbq[u8VEY8dP!P??:S_BB6&>96G5's(>Q7+Q9B`)Yo$DI51idi(]A
3"*hoD,dQoisdB'Wtk\9^,,1dCC)oRJ(U_2\C'+S.m<a++"dRQCK\"PojpAM>+'8fiTiV@'W
X`WXc(N-:XUa,LfZq9/C4XB$$8XlE4;eS5mfF,'/5oX12G3L9b3X4#M'$meM@O$Mq71Rug*E
cNBgX&B=;.aa;T?2S5UBN-_<^o)`BXeghSRU+Wl3Kq7`)h:cpn`8Nj=lY/5L5PCWACJ)JcGL
lIYjS[&D[[p0$kQH<"BiOoWOojeBC'[sS/9deWj7W%pNM6=a8.oKcA!)@hD_i?f#hpY[j/f`
0=4]A.UHDLKRdR[EfPm?1]AcoP7e5Q"-r+cfJ*Sh,A.h<-Z:S:q0o]AiC/+2rsJjY,Of+[$O%^r
;h_nZW*>YL!P'JMV9sUFt]Ah/q0<qU=pj?\p-TJWJ:c.5@Kq67#EtY%gV&kiUJS<8r#pih6it
CfkMW)($^qRThc5M*e8^[A&Y`?Cd^6d2Z.#H^Vg$.*OgZqam'jK@R"%>-,5!h+eS]AnAq(@Nh
@Sg0^J6r(o)TuUB&Tg1U2TRs,#$V\c[Lbrf3&3^%VrJM>O,8%p1#r?&r%@Bg#(FTV?rKn6ct
f,:<XXF/'-6M&@j!qkd9g1r]ACli&DHTq))r..;4Or^Sg^57ZKV@N/;VFhWiIiK"Z8Q]An?dH@
>U@>RSNqSnT.?4$V5a(keL6e#EnTrA5:WV,7sHP2laH]ALDMS<"p(J@O:(OOmH=\STZ(3L[Ye
-6"PKBjkZ'4jh(s+q7GVl]A;c2IIpn]Am6Ib5<Ya90*++Ho:1!><G.PT#=):Ke7bnRZ??EIb;<
pRC5bV"Sm*MrK7^ZQc=_M;@[>O^i_NPfJ!2lNY1PcR-385[gr0Fa4+N4AMi;.RE0UMg_2GG:
W.k6noQ$B-sIe*odSUM9if>WdR2Jf1dtEpe;<aVLJFOoT"^k>S!fs-M<!9\]Ar']Ak"`=j/h%;
_S^@7V<d=UbXYE;LNLF4:[,!Vq$[,DQ^5-,S1erp&8:qSVd[f<TW]A*X'7BA[jUro95P_Bo/l
Uf[7+"<qjkoE+OMY.MC##$$.%8bg["^p+R*:Lm!lmW$#P=XHcgG!jnjj!YaV[t#.`r)OKc&[
e<%/TgLr\,r/B9-?.<`X5h!K;[Rmp@k9jdFcOm)7Q.$ae"lbdH`0HcL?6`3`1)qODah;.NJ@
s@frLH#$L`FVQ-uDT[NAN9p1'.7Y]AK+E1jlGl\7CZY^n+u6"btbP3;2[H:t>Ke]A\[pa39VMU
65EkrKNp`=W.5YK0&Cq;)--C@e#+7#ZQtL-1Kdp-,1gJ%sVK\WY*gnAW*Eb!TTMopF[?Y8f)
F4\LfYH:l]A?g4+Z>:fq,i6?t61C"P:jEq(tkm*$`7q_"ePARk>%;`ueXrX2%1d#sRCV\j<aH
o+\\(;]Acj!'5>)WA,R!Qf!No(hEd6H2RahA\Wf8@j<&&n9.S\srCSp5Np_;3-:9$\Vs".JFd
DIbGhdb`IaQt:1LiS6?1gW?5E\$XOp^TkW(>7H!@_,'TX]A1<+A"(@P`)t_0";*&\V2)U$<Cp
H;O(pV1+EQj"AW>:;Cd_@32O`$Y4mKOeEZ8MhN02lb$m5<9WmhU'ZhS9EAZY:N)"Gd(-hNm%
`<tBqE!=;m;lp&H*H%fQo&+F9\:Dgh,<9Im$F[R&lH?A4,;u89,86UQV8nL5nk).n7@NleZS
SEm(lSpra*6.S!a_q<C>%`E:3!]A@rLKRT?XKXM-:-9Pg)$qM0W82=9e9UiCh=,Ecea"ffYBE
"BVK5lC@]AU"<$54QTjJM:c@mUJm[*\oNu:6l32as]A@RPYFbJ<2W+j&L#Cm/D\,3L[F^L+38H
p5I.lZ>tN]As$qGYC[\&<95Q#saK9kQ&J"'4Z3WTN:_pMaR$PD#r!$G8A,9;IkYanQ?A5fp,.
R0sJ8g>LX='I#)s?cffF_*^@h\NrqYbOu#F#NGZ3I[o#6`8AVqer=n&&/kKC_#.m`rZYCt68
(V_W)(Jf[/i9(Kb7hrCS:fEur&A26.3+L&;"li<hu6r:,)P[Pq,V*#SP\\lM0$@+B&[('1.c
'+V%9jiW@f<16]AcT;/oidD4tEZh(?U@Yn:*)PH$4l1E1X!*mpMNATq;$F3S?@8f`:b@8+V_)
]A_q5#afS^Nhp)5W_c_\&J&p9ATheR<\kp(\h2,$Y^t2+.9rDfd=Vd3Ah1ZgSSLj:gp19(*Td
GNiBbG2WJNhfU*b*KiB'c[U.#NBac,^E:;"2)D`Sg(,!i\]A#30C"\9]At^>V"6$T;P&(3H`J0
Brh_!CVL&!phf"B2DeVNfbI3KIhB/3,c1E#8%"f"jG_Uoeq[+OqWEJEc>n^C_et`.M;T_7/g
qTd:s(-3LS&p/tUjic,8_(f1WB&UYPf2$I?_UL,P#3YFfb%pTPcDe.W`%ob`IdVOV1qG#pEp
i!j=k(eTCTrpK>0\]A<mOZ,>BcNQV1s59X(-O&a[-IYArt++lASsFBKZgl,EqdVg[^&-5.;]A+
_!tl%>Q]AL7XA0o\]A;qK6!MW(`Z7B'X1jU&4"KG\\p4LZ*&\;,:$WL#eYs+[i8@p]As<]A-E)l<
oX$^NrRpRE',Q_.Ro&o_Ys1"iHiR4_^08TqnK#>r*I_fH!5QhY2l=!InQOp$;Il9Oi*qPhhf
S.KJh!d"Dnp4JP>N3d)/%eBoe[7_fc!,#I<H7J#p"7'BGOZHBGM(WUi9X4A'%;EceYOsB:7M
?F)dDi4_)+Gc)K5ibUC>c15]AiPC`g)_FASPm=JC"#Xbk1pIbEhMu#.4"QD-W\RWo;mt!cYlq
T_:bLESl/ub"66JXbV\=8@^3rm7)icrmFor]AN(K8'#2ZGJs6rZ>(;)9KWK+toj9T9^AkAj'b
F%5'OX8Z9`Mro$Z'UIhJMoJ-)kK:AK<\k!]A*KeZgpg0%m<)6X,*erCG;b8WlW\%FR=YHBbY0
PCUm@h[\%NqJNr.Q(ViM'>]ArCI4*#\qI%&RM0'8K^pKUoq4R[b0Vra'H-KTDT&C$'ka>/26?
hOFg1/H8Caq8khTb)WA_u4.S/s4,7=SU33g/8W??#emgdC3AnF4/psdK(G#"La=sF^"^VIq)
7t2kU^P:R01+fmgT$&^SNs20bdXe.(<9:3U=Clu`F+=Ig,7;"!n3n6;GAg5!VP>c"uN&"FuF
kQ#>@Y$s!>&&\_3=J>hs045%%G#]ARj+c:@$XKOTncRZ.M!MftC,k+iWl=c8]AW)/,ObXaZS]A^
i"[He6W3:f/_Zdj6#.`UJ05Uh6^N\*_SunCk(/tDgD8E'/J`OB[,eF2?nXoRO+FO#1Gd0o1/
ZOcF2nF3l:1kOPt/An;8H#jB!UVOQ^a*jWPL8KgmJHlL=oT6]A8V_]AJ3X#PQ/)fsPAUDtY@k6
LK_+"3EBA=f!30FmL<=nD,N(>pB/D$C.R_Dp;u`NW[,4^acXT/9?aBjI#8OnZ)>RFrXfSOA5
_JTrk<rkjqD#!(fE"B?EMQjD4$n"mCI!E?Z&(Dls,1VO!PWt2'"LR!PGL72fBD:fO6d"hD86
>p]Aip8eJJHY%!78]AtS4<haMUNbfnVZ6;UQ$;hGF<,WgLuQkaQRaRYjXT<Cu4.34\di18`7S-
6$\Ak_^Ukn?/2mF#5FpQmZ_s<7)s^.4/NMh!9rNGh->B#N9u7T&!8<DrW0X@^%rG28\a(_a\
4SSfGSP7)brH[%Wr$_*'\=YFe*]A^2iBEBa0+8uC)fL%kj;]A7m(;K?^i=WW]A$J)`nik,?9DZc
)DN?mhr?j3YO1C,?)f,IdR%2bHM4Q<jWl64RTbFA@N,cou8k!"h:/jndULnH,_NVDH'CR3@)
.rc6TaX'8d-!Vke]A9'd]AONBJBL3s%a_%lV5nGNd_IKTa\fn*GU!tlHE5"(,Z(B+]A5@.gM6d<
4fjM\&h<Ih;L0U8#UY*)UGf2d.o/^>o?_uZaGRpuc5\3tFEoaTN`ht(HTROHR>gBdpd!h3nK
il<oQG8:"BDhMr[Jf`7VR-h:Fphd-_1MLRo`,ku6Tp04W#C^+PhOcK1kd0bKHY=8;#)bF\Fg
3B8"M!=*DV+teHKW!LM_"c+f/>S@"kK^&CDe(!9Jm"9:"ANSN1`_:Z[!,3jAX'R01)u*AIOu
VNf&^4($Gfc;N\P(hWP'oHA<4f0RpK:+"r8_l0#]Af/qt,bKW6(K$u'kKWb"i%`HcDm0qAT)C
:KFlg'VJWbhcYkZX8WfPmJVVDBd:D^O9]ANdN5S4T@R%"-b"*ic:,KN0eUrU;CRY)]AOJtC4\!
YDHC?!BGc.c';`1?h+22-GLcXcsSrfQ0;Gl'\EhRH/Ts`6ScPR!+]AibV+`K823.pJG#ID.(q
T\*ph+>NsWeK=rEa+bq([GrVrlXH0Mp\=H$oo6L9j!I]A-Z_!=R;mZ3DeZpuKTpGrm3]AUUZLj
$=!oXR2YW]A`D7Q&K"XLlUl8`Xpna$CqV.<5363rWMp&MG+lp/)f]A5pm<`eFI=b2VGh)f5#4(
TV/dVT`^toF(t]AJ]ANt*:5P>B)rC0Dc3ccG%kd)nBO7Qdnq[Og#g24OJ>GPLtT5CB1V;)b'l9
3eU!+?)+t?_4Whk)Vi.l@I^P3bSU8XfB'@h7W"Rs6]AT$f1>Oea4\1Zm,h;i-FZ!IAsjUNU9u
,)V3am!N4&3\oZWNX&rIOSIQ,ZelAfs>/qgeVW4EimWc)obhIf'CM``atC_+h5N+2AQ?uV-J
k\]A/:E'&2%mfmrb#N^"TZDnIV6l>$>7o1:4nD.B$5%KFS\^\;1(cSb%fbVVMqS\)^:*5m7Ap
6H'<i/]A'RR;)7B+No]AQEk\_S5GV0#EUit0j#Gl!:nd%'2VgIEWk@9orcbs+&I3'f_,7)o:^[
[<iRur2/gW5pZ$GrKpa<qG5CrMfKGCpUKZ>"dBWuW&.8h`__;OtrsWe-;4&`7k>@rB]A//`Q3
PA3KG]A6=!g#gF;kZk.XK'O@B[cX<ng#DWkBn@0V<9>4R\>k)k(Z'sV%PF_u\g0VK-u#cT*;<
P&lBeC)q18/\5WCq!+PcR/=ZYdtATG=*Yr?;n1(6ZR(^K\XWdY=>9ZK)1BMVu!?:BkBN1Z!/
A!c7u5&%(CBmD'bUl8>:a5TNH?,=/FZ4'Uen4c5l`oPL!M#<EEJ[0u8![;^T"A\9FIG.+tQ0
5hHl3[#pW0-RGb6"HVoqOt.kdbMDmaSKtgj5;)NgmEJ9K-V)1Q#^$*8;[*D/[nL$p&t[S\NM
%D*di.<u+\f#24gk23N;V[>fg'-5W*<YNPjcOCFZb25d+FCU6R%.GedO[W.NA!,8Kh:UYQ5E
`TZr0B]AGDRBuNAI2`thN!?<QlIZF:\)ka/=A=@GK$j*33;?`R<R0#smDMP)3q%cRq^gp%K!"
AuU9s`_6Xcm=['MlrG:LgN_ECjA>;J?UWaci;YPo$s7D/0NkPT7TqNYGCQ2]Aj,/WPY4:tXb3
,U`.F`T,WF?Lb\q&0Mec@J;OpO;l&HO-*RUTRZ^KU7k*p%?2s.)4M]A'Mf\\sT=BQ.l?pIblc
UOY0,5C/-%[[JQ<e=LP6@/3:X.drU)7XtMd4]AKp5okdpbrNe((3/VN(4,\.`336CKnmm6BSQ
Bbo!2daHJ(_"o/3dSIs.7UKS:kM3V[RG1gqH/DQ<V2[@]AabJL_ZeJ%Ob*<lAC[JbmF_n)cp/
bW]AZo6hRIDr*33@%&UBb/VH`o8h:/7gTcoi/;GgrqNT6\A:!tq'ORMs#,.4EdT_?/K:2J%N2
jr,FC/[\`.#(.Wnskl2I+n^i3,%0?41_L.F?#O/=+En4N=gBE9'<$K&7rq=JlOBNT^.ORHA'
$+#!CLP'<ilTTWu\t/K%NQlfe\rqtBd`+fWHbtWFhiX5FSFq/A;/M)H+AGS#HnF5;",J&5oR
S1Elf/k2[\!)/pZSAq^Li^ER9hpObPl1k_k6)*<<lZ\^j1rKOt?3828I^T5o<h+h92dkI)<*
4Lb!k@l!)q+;5.b%bHR'D:*iTS56)m*:Ao,/#Qla.IDdmjR'8fihCAO<.p1]A\`J.Bi2Rju(.
sob%"e_A$<Z)*Yc7b5,#'oDt05#7mlRL5>%)Z92_DJc6A>B))?iZkPPfrkU+Z1qGEaDMrDi(
r]A"/Cp-L_hGrgt\:6$0A7k^\!HG5@PL.=KJI6[O^<:+=CK3";3lU#:q\,X&'1m8>:kM]AlD`X
Sna7L,cE'NQUnBM+f&kh-DDjf.KZqO%<71&iI*5K=I)sS^afHBI?Sp:q&GHKj6g=uGqYM1#H
u)8Hf:f:"dXD<>13l]AI%4MS`Q;jbOOi&n%5A4g1<,JG-X7mQ-S:K.^4hQT2Jjp#l\0WOL2hi
6+U`0VAIY%h<Y9r5s4Sp1%(.o]AjMdM[9E7#gXO;*.<=.V&UE?SE//Z;5-]AeGOk8t?+YC\oWL
Fd"0rVc!#;=4MYU=RHh?G#PT9h1TN>#hK1(Gc$4."rB1.n75#@4sAtTl^RG=Y]A;^\Pha_2G8
AUO.?>%VZ12km_<D9?5->7TpO:Dg07T^6>t:QcbVPs<9e:>Ps,CR#u/7?E\q>ZYeIh>/$qoK
=DORp5(QU$NctgF<qV\GW&n2"8[5@_ah0L&<Xh88:B8hE.T_r,,j%)ggc0>D*b.4",d$FXig
n0k@R:)V=Bgsk[g]AmUs5>a-UbMt.A]A5!S[a1o-&l^gtHb/G'`6/<'Z$Wm-/BD$?*.5:>h;me
]Am\dJu$CbBdc[[$qI;!'Xoi^:!Z:sPSpbXnbS=F^V*lur-L_YI#9cXRS#c[H7&m?p^aNhqqB
BS'6.fHnY0^(r_p5>ZM$gBE`rsMP!Y&L(["$h6U,Fdc,!',7V-If&HOe^eU[ER'E^EAsYLcb
P*R_b[+@#;qUO/nL8ehTi:!3u-&Z*ADKf;/R"ZKsGa?t2FfHRi^jrBS.PqVNY!*sc#k?Vf-7
GI;!Z`b+BK5Xj(GQ:W<q"tXb&V2.hp$M=dY>'0um-16WMX!IJD$Yi?Y7Ff@M0\H2N=H99>]Ae
6Wo+uUU(_!u0;?Ic*J$(HEABI4u^]A9F<U^\`p!(*\/P[cST(!B*!Y$=BYg]Ac\>*F[_d9E=7t
4'r-+&p1DRW\]Ac\AOY]Afq^?ghpBu?#Re1KMal^mfALr36uOJQLX720A^ZX-':-=Vl/-SjE@=
`\>H4<RZ3..1ILi8gA.AZLeZMBgh09;Hfp/iXp9ldE]A@<Z<K=Bif:/pLUk+QFlEg>MKZ'dP<
[)Y*#pAh]AbWB%m3WP_b=?t@Y0@eIsmS-rDdi#mN:B)T&-28c"En6>5Gh`YZa8G#GQ<6KroRX
H!>FMcLY?.Sp2\jCFtY8S8<2G?OiqQ,Lh^k79W^m7H=_8JsTWjhCT0-,<XEF8r"dnFP)cUc)
DV*M]A/Y*[!/25ElM=%P`h%BH%jB_(]A?\B+\Vt%IYgPe_5hsc2e@\mmC_Q8)cM6>gTIu\*&$^
I&^jq1>?HRh(>D]A5(W3W<]AP,^:.S[YmlT=mD:qOG=N1FGW+&*mWTG9&#hqj(dR\L\M\?atto
UgCoZqN.Q^j7XQf.sYZAO2b+/?.knO0Pd^S.B!%i$U(,Q7rb9K^!Uo<h7_ULC1td=b3]A@G9Z
bD2b>O%2t,lJ7YV!s=)fPDUa&Z8qYNL%Q*9VDB:."k*e[Kmd2#.7c7rCHH*LojlKi`iO'9kX
5dq.l.P.rmq#h1DI/$8))m-Y@bTAd%Za7EQN:;^=-gSp&9VYbVJ,lO44);sgF*/<:ZHAB\m'
2YC<@+GVkC!qB$NQS']ADshCf]A$d$$riX.c)$7kqWGrr.;o[g05hK:LRRG?1?8/**<$=Vc!\!
`)G^q&I]Aqh5,BOUN:RkUM(Df]A4,A7+pb_=p4^EQ$e6sjYroXR?r%4eO`#QPQiI"'[f\)O"Ti
JWdV&6ENBT,RU/\7oU)-i+hl"((2q/a$,K0;1IEm^&qd-BS8s*<-4>_6Ot:QSF3m*B*0<Kf=
:SrNG4F<?E?g*OB5<e0b/(<gt@ug)R_%_d`P<'653k&]ATc$YZ6H8m9l>Nj:j-;I\7bFfY!M^
+tpM2H,Y]AYS4r&/Db47Mg)hkMi#Hr4Bme)?^F"d$chL]ApR/bKsBoLnE[cu(+\U'VqfECXKqn
+E:d's#W~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="0" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="465" height="292"/>
</Widget>
<body class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="report7"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="1" left="1" bottom="1" right="1"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="Adobe Arabic" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Background name="ColorBackground" color="-16777216"/>
<Alpha alpha="1.0"/>
</Border>
<Background name="ColorBackground" color="-16777216"/>
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
<![CDATA[744467,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" cs="3" s="0">
<O>
<![CDATA[敦煌智慧旅游分销情况统计]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="0">
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="1" s="1">
<O>
<![CDATA[序号]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="1" s="1">
<O>
<![CDATA[分销商]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="2" r="1" s="1">
<O>
<![CDATA[订单总笔数]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="1" s="1">
<O>
<![CDATA[订单总额(元)]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="2" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="XH"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="1" r="2" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="企业类型"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="2" r="2" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="DDS"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="3" r="2" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="YYE"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="0" r="3" cs="2" s="1">
<O>
<![CDATA[总计]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="2" r="3" s="1">
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=sum(C3)]]></Attributes>
</O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="3" s="1">
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=sum(D3)]]></Attributes>
</O>
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
<Style horizontal_alignment="0" imageLayout="4">
<FRFont name="SimSun" style="1" size="88" foreground="-1"/>
<Background name="ColorBackground" color="-16748090"/>
<Border/>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="0" size="64" foreground="-1"/>
<Background name="NullBackground"/>
<Border>
<Bottom style="2" color="-1"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="0" size="64" foreground="-1"/>
<Background name="ColorBackground" color="-16724737"/>
<Border>
<Bottom style="2" color="-1"/>
</Border>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="0" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</body>
</InnerWidget>
<BoundsAttr x="2" y="366" width="553" height="345"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.FreeButton">
<WidgetName name="button0"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Text>
<![CDATA[2017年三季度行业发展篇]]></Text>
<initial>
<Background name="ColorBackground"/>
</initial>
<FRFont name="微软雅黑 Light" style="0" size="112" foreground="-8337437"/>
<isCustomType isCustomType="true"/>
</InnerWidget>
<BoundsAttr x="0" y="4" width="1141" height="30"/>
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
<Background name="ColorBackground" color="-14407863"/>
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
<![CDATA[项目数量和投资金额同比情况]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="微软雅黑 Light" style="0" size="96" foreground="-15225665"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="2"/>
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
<Attr lineWidth="2" lineStyle="0" nullValueBreak="false"/>
</VanAttrLine>
</Attr>
<Attr class="com.fr.plugin.chart.base.VanChartAttrMarker">
<VanAttrMarker>
<Attr isCommon="true" markerType="RoundFilledMarker" radius="4.0" width="30.0" height="30.0"/>
<Background name="NullBackground"/>
</VanAttrMarker>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrTooltip">
<AttrTooltip>
<Attr enable="true" duration="4" followMouse="false" showMutiSeries="false" isCustom="true"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="微软雅黑 Light" style="0" size="72" foreground="-1"/>
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
<OColor colvalue="-16737895"/>
<OColor colvalue="-1814682"/>
<OColor colvalue="-13312"/>
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
<Attr rotation="30" alignText="0">
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
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
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
</YAxisList>
<stackAndAxisCondition>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name=""/>
</DefaultAttr>
</ConditionCollection>
</stackAndAxisCondition>
</Plot>
<ChartDefinition>
<MoreNameCDDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[ds2]]></Name>
</TableData>
<CategoryName value="项目类型"/>
<ChartSummaryColumn name="项目数量" function="com.fr.data.util.function.NoneFunction" customName="项目数量"/>
<ChartSummaryColumn name="交易金额" function="com.fr.data.util.function.NoneFunction" customName="交易金额"/>
</MoreNameCDDefinition>
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
<BoundsAttr x="464" y="0" width="486" height="292"/>
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
<BoundsAttr x="560" y="366" width="580" height="346"/>
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
<newColor borderColor="-1"/>
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
<![CDATA[项目类型交易金额占比]]></O>
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
<FRFont name="宋体" style="0" size="72" foreground="-1"/>
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
<DonutAttr innterRadiusPercent="0.5" seriesGap="0.05" categoryGap="0.25"/>
</Plot>
<ChartDefinition>
<OneValueCDDefinition seriesName="项目类型" valueName="交易金额" function="com.fr.data.util.function.NoneFunction">
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
<BoundsAttr x="464" y="0" width="486" height="567"/>
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
<BoundsAttr x="560" y="38" width="580" height="322"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="report0_c_c"/>
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
<WidgetName name="report0_c_c"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="1" left="1" bottom="1" right="1"/>
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
<![CDATA[11315700,0,0,0,0,0,0,0,0,0,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[25488900,0,0,0,0,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0">
<O t="CC">
<LayoutAttr selectedIndex="0"/>
<ChangeAttr enable="true" changeType="carousel" timeInterval="10" buttonColor="-8421505" carouselColor="-5197648" showArrow="false">
<TextAttr>
<Attr alignText="0">
<FRFont name="宋体" style="0" size="72"/>
</Attr>
</TextAttr>
</ChangeAttr>
<Chart name="投标项目数量概况" chartClass="com.fr.plugin.chart.vanchart.VanChart">
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
<![CDATA[投标项目数量概况]]></O>
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
<OColor colvalue="-16737844"/>
<OColor colvalue="-16737895"/>
<OColor colvalue="-13312"/>
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
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-10066330"/>
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
<Attr lineStyle="0" isRoundBorder="false" roundRadius="2"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="0.5"/>
</AttrAlpha>
</GI>
</AttrTooltip>
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
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-10066330"/>
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
</AttrList>
<Condition class="com.fr.data.condition.ListCondition"/>
</ConditionAttr>
</List>
</ConditionAttrList>
</ConditionCollection>
</stackAndAxisCondition>
<VanChartColumnPlotAttr seriesOverlapPercent="10.0" categoryIntervalPercent="20.0" fixedWidth="false" columnWidth="0" filledWithImage="false" isBar="false"/>
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
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-10066330"/>
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
<DefinitionMap key="column">
<NormalReportDataDefinition>
<Series>
<SeriesDefinition>
<SeriesName>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=B5]]></Attributes>
</O>
</SeriesName>
<SeriesValue>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=C5:E5]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
</Series>
<Category>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=C4:E4]]></Attributes>
</O>
</Category>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
</NormalReportDataDefinition>
</DefinitionMap>
<DefinitionMap key="line">
<NormalReportDataDefinition>
<Series>
<SeriesDefinition>
<SeriesName>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=B6]]></Attributes>
</O>
</SeriesName>
<SeriesValue>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=C6:E6]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
</Series>
<Category>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=C4:E4]]></Attributes>
</O>
</Category>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
</NormalReportDataDefinition>
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
<Chart name="投标项目交易金额概况" chartClass="com.fr.plugin.chart.vanchart.VanChart">
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
<![CDATA[投标项目交易金额概况]]></O>
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
<OColor colvalue="-16737844"/>
<OColor colvalue="-16724788"/>
<OColor colvalue="-13312"/>
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
<VanChartColumnPlotAttr seriesOverlapPercent="10.0" categoryIntervalPercent="20.0" fixedWidth="false" columnWidth="0" filledWithImage="false" isBar="false"/>
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
<DefinitionMap key="column">
<NormalReportDataDefinition>
<Series>
<SeriesDefinition>
<SeriesName>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=B9]]></Attributes>
</O>
</SeriesName>
<SeriesValue>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=C9:E9]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
</Series>
<Category>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=C8:E8]]></Attributes>
</O>
</Category>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
</NormalReportDataDefinition>
</DefinitionMap>
<DefinitionMap key="line">
<NormalReportDataDefinition>
<Series>
<SeriesDefinition>
<SeriesName>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=B10]]></Attributes>
</O>
</SeriesName>
<SeriesValue>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=C10:E10]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
</Series>
<Category>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=C8:E8]]></Attributes>
</O>
</Category>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
</NormalReportDataDefinition>
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
</O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="3" s="0">
<O>
<![CDATA[项目数量]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="2" r="3" s="0">
<O>
<![CDATA[1-2月]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="3" s="0">
<O>
<![CDATA[1-5月]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="4" r="3" s="0">
<O>
<![CDATA[1-8月]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="4" s="0">
<O t="DSColumn">
<Attributes dsName="ds4" columnName="项目数量"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="2" r="4" s="0">
<O t="DSColumn">
<Attributes dsName="ds4" columnName="1-3月"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="3" r="4" s="0">
<O t="DSColumn">
<Attributes dsName="ds4" columnName="1-6月"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="4" r="4" s="0">
<O t="DSColumn">
<Attributes dsName="ds4" columnName="1-9月"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="1" r="5" s="0">
<O>
<![CDATA[同比]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="2" r="5" s="1">
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=C5[B5:-1]A / C5[B5:!1]A - 1]]></Attributes>
</O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="5" s="1">
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=D5[B5:-1]A / D5[B5:!1]A - 1]]></Attributes>
</O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="4" r="5" s="1">
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=E5[B5:-1]A / E5[B5:!1]A - 1]]></Attributes>
</O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="2" r="6">
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="7" s="0">
<O>
<![CDATA[投资金额]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="2" r="7" s="0">
<O>
<![CDATA[1-2月]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="7" s="0">
<O>
<![CDATA[1-5月]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="4" r="7" s="0">
<O>
<![CDATA[1-8月]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="8" s="0">
<O t="DSColumn">
<Attributes dsName="ds5" columnName="投资金额"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="2" r="8" s="0">
<O t="DSColumn">
<Attributes dsName="ds5" columnName="1-3月"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="3" r="8" s="0">
<O t="DSColumn">
<Attributes dsName="ds5" columnName="1-6月"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="4" r="8" s="0">
<O t="DSColumn">
<Attributes dsName="ds5" columnName="1-9月"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="1" r="9" s="0">
<O>
<![CDATA[同比]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="2" r="9" s="1">
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=C9[B9:-1]A / C9[B9:!1]A - 1]]></Attributes>
</O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="9" s="1">
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=D9[B9:-1]A / D9[B9:!1]A - 1]]></Attributes>
</O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="4" r="9" s="1">
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=E9[B9:-1]A / E9[B9:!1]A - 1]]></Attributes>
</O>
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
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style imageLayout="1">
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#0.0000]]></Format>
<FRFont name="SimSun" style="0" size="72"/>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m!O.>P\]Ap"G.[+`Tq+N1[8e\Jja7t<,q3S%c4lO#N5K$WQqF<1,3587W%aFR(ul1M31nHK)3
`'cQuO0W`q\Dag:MO9p[>`.lh^VU^4#gPlh0]A=XQNpa>3fM@o@BHg7f*&K`RaYMnF.Be3;P!
5c``p&4MTDE[MF*s,-ghO%hE-hi2H'(T;8a?F\.`sVY'"KOWq87R+ke5^[;$^O2qZ2J_TK\m
ET&/\LTK[3j\,>mF;8M^[iN&W6\U+/4J?VCt*'i!H!bHJ3jJ3g.*'S)UhmH`U2-'"k9>komf
7ul<2,tQ<9o4o$lfU*@!D>dJ,9#e1B5>KsrsOiW1@JF0)IdGiQ!=b<HLk]A4[/\hq)el4-cRr
nI5n8<AZRAn#Qg-d/ETo"[AWTA5/X\^BH9_jNVPVXo)#P['\\OTH6kuHIK1ue$GMK"TFIqqQ
-j=GP$/]Aj_b9*<!2XL<oi=)8$+8L..Gr-B73E:8M`e&RFCETEUW<+?/!ckdd7X<V?cmC$$<t
HCPmE^/<-sija-f$996>pbo2qW2\S?7!AAOSDs"!!0;rk"N?&hq:O]AEN*q=PA/N8)jF$tYJL
@qj?FRAbA"dVHa\CF0uZcsG:nqPSC=sNd<IDdA>QXB$fFCCOE&a3me?h-^Xp7pFbf(8D!L61
$c>n=O-4GsF3!o#a:J&jq3S"8WSfl^(^9Z(R7Y.B`q;gXb(rY9lRj>&-#;X\dW>&T=tL.;#7
>f8g'IaJ%$/ViF6PXR@O#2EZg?>qshg#g1-53Pu+IaG(AbAo(H";_HJhsrd<7qWnLlcG1EGE
AoJ(KcE1jeqrEg=+U;p`!Ddlc]A8\s'1cgf)*RiB-*j;?d`,JC&d`cmL&\8mtHTH(e"%JIc]AP
f[k4[ME!1t9JFp`I7m>&VLY$H-Q>Qdu/;J]A)ntQ:1JL:GtXnK`;dc4V^nj[_04*U4+-7hC?E
>T2Y":X+1PW[m7o&O-2rr\!jdaP(+18n,bCnq'34.S.VT.F%l(m\o<@++,t7:n*lTJZtKXlc
-!B`W$Kl2t(?=1[V*)X3BaD4*JRn8uh61$ld91ABa_rn")[Y<L+F,O<Bsb?fbH&k8Iar%+3r
k)nOkp*7ogm^e04LgBfB>d>+k,%W9R?BaplX[8AXDfK+k,^8!&*&<e88_A^3HT^%!>o>gH,i
3rS_D*_4@mo$5?)D`.WpcO<V^OXRAq/+V&>RAAaZ$lqn]A<<mMZ\2J$U`g7W;@&PGmo?$KtH3
b>AMJJ_]Arru*+H92Q*i4$EJIBeUMG7?W^oEWk7+?XhottBlG4&DE<pR#L3brBFPeWD<8,eOU
7Mc@']A-G[bRWjYS&g(7Ab4p,dmYLu!>F<)XKSc&]AUR8H>;b!q%="EZmuNmVo4+[R3^dm.&m^
PbY[6Ed[AefEM\gQmD<9NtfIH+:S0t1r6%L24X/GRu<U.cJFgc<c?$&8Gp7&&!n7G'+X!H-$
>7Mg"0;G;]A*UTgYs+E'$#`!J8-uFPgWki!9b_?lSl3d&7e[=a(itpMC,X7<lGkO,jM!Se\gr
\BpSp+&M4Xu<SqsMGW-Q/F[:d!La$VmUEi[1[d-.3M!esk&Gn$^d^P'sh*Sp6VHN&Xt;U1VT
Q#]AAM^Llu"OcEfB0YC!A_kE,#6RY*u=<>)Q>^&=q.TK$cG7)eRWA(7Jpd#@]A0mi:m\I`V3h6
nisA<\@AA,r%m:::!A]AWlM8=C)r<UfXph/R\9;5%a.,_[B@I8ERePG,,)^Gn!3U4%ZL*/,L`
+[morUh8:B=bqWFMgT+3TufZY^o53lC7^3`+h=&ff.o*@=RiQZGCm]A#5o8X3Ki1js>@0`<@Q
mD^U'Ie6YUjo'k$4f-+TiM?!Eb.SgSY)JHuT$<XZp]A50PF8j"qkDFS).s^Ugp=K;Z_jaG-YK
VA=Zh9ZDaSdgBU4#gDb@YrtU<hIo!1f^P7QD4>L'uLt[&UXDLBBbcQ3'c<ofI:3^.)CJ31FJ
Yo4m"GLr3%h`T.f?`rKI%H9^Z@V<T893r`J+e3r!%j!O1C0+O!oBA^GDX72aempR+<H$#,=Y
L^XKaObT)caTP>q5'iJN)5AJ&crhQT!t*U<j>aKJif)C*I25kTiCuI&>K=%E"O>m&/a=U#dG
ORdI,+>)$VlAnIH5-j^-AIbl"gWLNoZlX>+=*`^KgZ,-0S\n<7'D"Lq+&oDbAe6i%#s:6l8(
kdjcafWBOX=<<bhGj^+FPMW2Ne"'qdSQZ+Kk""G]Ab=P$'lZ%$\3+W[9^\3X'&+aVd9Ff\TZt
se:7[3*4ArgBUiU>_;%o$)\F$`ag%2W#PU%h!Hl]A3O%1QLdEQu6]Ank`L]A`EW"IK2QP&cW4&g
f/ad05EPkLalRgP.PLQLXHXZA<GAPY6DO.H_![O!m5]A5o,F75*.:1oK.,*cR)#32=J#k9JOc
gaZt%X?iQ93eN3dO,<a\6!/9ic*bS5FmjQhQ>d/A0`6Zb79&"j&cVF\k218*1I$Q,.ROc_rp
=8U.*t#^al-fW>_X_-,Ge4Sq8=2rFI/V9_X<V-Fa"3alMUA9+1i*l:#e/Y."&MM!fiRI_YeA
-K.RO3n.SfC"mYKGU**0=*AA]AGqjfWpZuL3NO*EnT'QA9^Qjq8?)Vpl;*l/F]Ang^T%#3[2km
JW!P?8>=*9sl@ouWK]AamK8]AQMt]AVF)^narU(Q\o]AEgqVa&esiSn\sX8?>?im*?@9Q!^S#QGg
.*W2]AVmit7B'\h2k0!\i-_*@"!L$f#+R@X&%1AAT?bX5*E5WmPp<a<RS4XtVN^nGgpBdQ:Hf
nVYb'EnAl+0sP'gto/.J#E`<HU$J4%_KbkdO.&Y^O!9@_T1QCmoo(M-FK\3FBip`GHfK9(>X
1H_p3T`LRu1T!n,D<.'Up4^hD.sYDGb%i0X$Gb;.F_Qi#5/>5jlD+qNnL9Kl%bYbk+j"gK73
:t"f\HsmQ\ibgMU4U9_F#Z"?79oHmSNa^-=e<6?I*f)j`.B/ZsF:^+g=_Nfj>q/k%ojkRkl7
TGq;2;-e]A="O^Ng?POm>(:["Sl1!$t]A&sBV/(&pd)s/UGetIDT/.6@T$Rr);:W3)'P`tC;BN
2Q1Fa:UqDu,=g35Brec?/<t^/KqS=&_:Rk]A>Z918"?f]A1[iKYdbH919j`lhh'p%":SI/c,7M
7/Vh$H<Y*?3TiKqi4jd&(,e;c&u4u[QM#f^6&F+8I"l@piDp<5-)-FINo-d9eP!C[JB`op:^
JZLHcsN=.Zl?^38uA62Vj4Lqn0#Dg\WE:K.Jr2#",I%PCJkTAG((m0iXqe:Z1M?P*/8`rEgD
s&Y1!:%8Mq=A&VQ,OkZhc3Wpi4Y]AgIgiS>:OUZZDi:]AY/g\f;pEBN.s<Flh>Bh4C^J8_LQBf
_>rokO,@E[a1oD2RcU]ASYLS_5LH-&9Rk]A-[l.]AFNsR;'%2mn?2]AY%7":f5'o+%r%^S_=ct`O
:b.dna+DER/XWpXQ<&@dSKndO2fT2n':^P+BrghFj_0GWb1%HE*Ut8X]Aq>%GUgMPF:&S[)Wb
!V9e/:9`HAN%")=imbie9f0Gju<mrde)jl[VVtQF4Clmk?$`@Kml2`]AFb<7fBQof,-J)"=jn
GWFSR#fm;5^7GjAQu[Q)g-/!=68'Xr$hqrR99m3/W!**-))C>2YiHZWnHF9Gnrk;m63<$s;u
q7#R[BeP'^V%W`egRb#eG:X-Q"Mp7OU<9eO%T(%,OQWt?1YI8aJ+tk>-p>UqGjd[q#nP@1m@
;1@V6(XVhTnmq(<"7]APD]A_C8]AmS75;V@3YXp\f5\fY[92g.R9-1CP_u%CK^X_X_:-$<9e4*L
1>k`KbA]A1qFY8GlbKU6gSRT[UN=FHUN*SrIL%cB3!WfW[s!Y<UeM4DSfI$3)<^S7uRq!:$Jf
`5FV&6M\a!m.^^NMAEFWY^,DL^*D=m,mC6+gbH]AmMk>=_&5f8n2q-=&k1-#(]AMtao0>5_l%2
#[FVW_(#%;65RKp"LAj%6N^\KD@bu<N0F#DRb"dc*3k@$Qg]A/et)gWRum%nh;I+O_7,>sd!^
s2_0S<B\A)\+/.n;uLs[WB)DO"'Dfn;X)6jMs(V`c\4&9l@")]A)?QqA;6i!u+-aP747@#FIL
,UfnFuH#"3EKe$<O0cCt)>*OU<B+PG[@8ZS#5]A7naV/__J>kSUcE$IV@[tJ$QTXih*I6]A56K
IWi:h!\FP<V(Uj>mfVk[L?+#Rir_r#l]A5.JB?[mmZ<Da3pJCTFRo3TY.!F1*j`@>E*2udLcP
/fsVHj)k^.+QoY3<iM:OGpdM,::@,o-KaZcufBn(kN)"e$T`/O_L,?1E2\%:T=otIFs/9-.u
T%=!MJXP-D$Jl4&nT?/\rb4*O/3?#'&o*RL4\Ne/UEReG?uSN#fd^@$cH\5Ur+"jJn-Q&k,'
)qR,MgZ^t%rLXUb879"S:&]A9X@,dK+_!6&U`S4X]A$4u@jn95o,;aXS[2+Y:=9r/$]Ab!-6RhJ
f%[52@-DJI6V75i'AQA'I<O^ln\L'XG:`g>?ggNs.(RhP$Cd*"u.Ph/[#G[qnB#q#Ih#:WAP
]A1L'1&[,+/6CSu]A'EdkMff%;bDG93>Me\14]AB28D;DmU+(oDQLH=K1YYSP.noFVatOR56oo5
4[7E">kSbo_]A8L6f5_Vc9djIUF3$QB!SFcIeOQ.naICJ]A=pN+Y%ZRT[<[+;Nuq:)ld$AH3tV
7J[RP.oe1mFk(>%UF#@'\Fm4Ya`-Q\CsM#Lq;fnfL7n5$K=2^bVZlg>Fn[kc%4'S!/`9Cae(
Ff:A(rLmjf/R(&4#6heMNLEc5rPEW#dsH(WP9=qO\$8d<Y<fYLkaj8t.shAkGDU)4PJ<ua>Z
47sr-6hj5=M&mMQW?_Kf4M$`A=*PC.fCAnf7MWc(InaHWV[XeY[aW4E'\Ahbd@fI8&7<s)S;
4+S/)rS/N+<LTn&>A=I50Gf<[DK6do10-'+Z_$Tlph-/EC0VbQ3IqeVF]A#SoiT+OnU"(t@T)
<`QPa\,8C^rSfOIr.>)#O`S0/&(!sI/)'tjiu#XW4n1YmT.NR4f`T?7-N?g8h)lkU)`A]A595
#F>W28a_5>p-oToFJ4?W&Z3Hlm5\-2'*`DI$=b-s%iSs!u(FT\Kah_WOPi"h029\!!9fhU;n
a$<:9lh4:NoR8)^+um,B3hB]AkIk4`DS`=<'Su?LW6<Ot_-9HEtiO![0Ab;nQ.O/:W^T<Ld)@
+X!oIUuC)06236fUYTY]AKe\YSk)9F#ZIr:YqTW+I.=>(PMM,[iQJO\bdi&\pg2tU_\p$LQZn
e#NLPh<AuqiDUk>+F;tQ2Opm#+n(TON9,NC$h+`7t)M'7'=K8N^dA&MBD3Fi"HW2\J$qS:e2
*BK74DV6G8"Ys*@nA1k?>nE*U.+,=b)cF[YPU21Kp+GFgmLlTf#G$.qlNh03!t_rcB]A22Z\T
6\mA+uO?=nKH>u&Gr__suG&=Yc*0&nSn?PpKeqURNeo^lFaO>pD32Y;7K:?K0ZL*7]A)Z05K$
Al_r4qG2VSN-OR]AA@%M0g%0<(k;l#H%.9\hf+Ro6d(g?OS2H2QZ5!qErjL:&UX_k\h"kooB.
DkP^Qr2p]A#:t_9(\XEICGjZFA>CFEEV#;`&1E]A5O@3!T<So)6o@@i5,`qrhE^24dfFa404T&
.G6^)h^QK$3d`p0iTC4AD:si`+0>u1$A]AL5qJ0>J6WBdGDR8-r[/o_9MZ4At^YONm7W99VZ.
A&Sl,bJU?n@)Oq>^@sF@<=%M:ljd0K,hr*WI(3&eUZ%NC?MoZ:IhVK'g,';F4`[!!tPnE3`0
a(JOn8=n:OapPXLR.SXJBJ(Uh>'7-MVdaK<l=8G=mP;IB8"5335CRt'%?Ys54(D.9Ku#dh1B
,[,BLFM=MXo#(%B]AX)&Z&e?r:'lS5jH+$T'("M\MB*'"a,7df(h..?m.g>\3S3JBW5=%A%$&
hsG,'72OlP5RU0Vni_#*&RP>;WER2+PSR,p$)Ki;-T:%AFd+LoQ2ST]A]A$E^j1/_lASANlWl7
!*XEjkSUcniDRNFA%;I$f+Th95?YL`"=U98FGNi7MJ3]AfH5T<#^^p[nWku]Ab%<01`,-O;bX_
?>n45R#;i+gnY5KjV3n%G]A"l,mqaPS/1-OrA*ReW#)4/d*3:olrk\.>bM'XqScshDm&uDhQ6
9rfC<*AQE$_=R^,^&]A%2G!BA5&R"lB61E-Q%Kb:=9PMp)OO[;,WB<K^2;'o_0\6X8ImF\pKp
Bq-6RPRg-HGh,#OMk3STFtG2E3>E!$ijjM5nNIB5gcH.D6h32HHF7_XPbt'8]A/s=4edi>j:@
Q)m1ghR84T(J_l`KQ'ng'ZK9\I+=cpa%%.Ya]A!A_!E=[n-GlmM5?R0rj)FSeF1aakfKuR&-b
^4)#"XLXM#?AE)X,QAUu.<aR_'"3uorRpZo;FYL.qIG("OZC]ALmWI\/[hhqMn/I$$96K7+#(
cbtjiOLV-d-Z,eba+r)?=J"#=_4a@71N-eql@O$JDVobnR2#+$!EtR9ta'tNF7*)nq_[K:b@
?Khh[83/T7^WS2LC^+YC]ATSKLed.3D,HLOe&=B\V;.X^#;WX2k+FDV\ltQo/mOffEE@jS7po
3>fF^g'V*jV0YOQ#40&UQts5g'LI0R+Nd&)lI";IRLJ(c9dZ3f%C^jE17!'iW5^bO]A/Jmc-L
:ZnP[=ZWk:KSIUWYP@-VrtSWmp1kL88!5'1M=f<a\8MU_Pp\OIt]Aq32i'_Y,DmtT@*?\`?O0
9k&\N=!RE]A&?`B0K3dZ02+2&Ni_17A]AA>Ra<p%;Nqk/97iL.a;-=D4!)cf%tR2%OtJ6E54^0
lPeYM-7l(Y)ilZoTd]Atn1h(C3C18-!W/X))b/+GD+*doZGG@5\4Fog3eA3D8R!hOgF:3b)#k
XXC'a$c/P%AeY0SWI4j1]A,7,Y8Zi;Qcj/1fdS$?mK,[p63*d,+ipVl>e*O3G>_$La*s4Mod&
+&C/mO"U=c%6d[cm3Pc!3e8mU-DkHCk`S%l#=sc2I7_-gH9p\n@o#;u;]A!u7TlXtV+sRr;TR
T/u^;o*iJs7"?^RQf\iKJAB1)H?B=Xg=hc</7C-^H/Z93O8tW`K!c;KNdp?V96Ab"YgB8XM6
X_mm.b[G<"a.ZZ1Ce0aJNdO7'0#):l?A*EaLh[%]A2%7H<]Ac%-851+ShuSb$E63//DpGq;V[H
U4mFBW\+G)(eh&Bp(:<f5>ESoCXacZRmE1rIK^@Es;Bs)#BR@b#1k-/OG+Kfshl#<P[`Hp,C
r/W)Kni^TS&7?d9ms>OqL^DaoPtBYWK^HAD?P-Ru,n7%pbd^+?Em`&M>c&g"e<3?S;mNt5Ia
Vu77Hi8jW`9V\=^YH7#q,YQImJod2Q7FU`nNnd4eYDY9[aOMp`SM;hj\OH`3-^Wj%;%"d(M1
*LArCe?5o/A`d2D.7SB?FJ%`9GuX^dh%"WdjVUm61sh0V.P>/1h-IC*P=7mr]A!Tk^H"\H5ad
$nEd\"(f5Km;fdfuT]A_r_Ijrh&'q;9WUN=L6A[>L#fr=&G`fb)k8llO^X0+LIrQ5&XD<;kP4
oS()<JX;]A2\'T;Iq)WX1]Adsh4O0MJ5$ruUBphqIm'jHq3OeBJ^[X=I:bM`%]AWrqDlZoI(mic
r7B!GQ^Yk(57:dIJ5C4T$IWOoN5LR0Kp9rPmGMh/"pkLG">cJmqdi((CM\]ArCFJALd!'niN?
'^n%l-I^^/-9a`9+ErIOG-Thr")>I>,Ga@q+/ta2&$Mc5Q)dMk$3poU1]A6>.KlKcs0Q[mC8r
#JH&!f`b(m]Aqse4/7m9rX25f%\@^MmquMmH3#]AVu_g5B=&X,nXX`]A7nfadTH6;s'%5@fn_OU
VQ>^B9Z'2H'Z.W.+WY9:?6`6E+VT0SfmkCNkpZO[(_?A[s_l)"3cIaVY,]A"5(Pto^`MbO5+k
H.dFoSQDcXR;&Ljtu3kE+kM<cf,5NL*&(7B`Op29Z:?`ICsi'UNSbS@WX*QrFM`]Ae5JC051P
K,mu]AJ.;EBq`_hWAUc)V#B3`,6?n?%5S'.=^]A.p+f-@Z3dSII>&W:\;d1`&Gp+B,C/0ieECf
P)e/d1sR.T4;\s47\^:tC(5BD5f2J-"2.q=kjmuM3LdJBD8_=lld9;V<[^kL3^bZ)m3VbIl!
c/pdl#AjCHeZnlAu;,W_T8KSh3h/*>m&gaYF_3Ql^!%9e[4t&^%\spF7F:)6E"NLQ1%1,8mC
e,qX;mGpSXEC@51S.?l>IJVkqYG20^H&ZQHt0]A)`ndKE(N5)R`R!J9uh@Y=5k7\4sUQ9JAPQ
<^Z/\F_VY5;#\SXq48,$MNLq3JfOab&cC1%)G!@B'kT!::^gHY:1_oOUo[nSrWJ9c7IKBo1P
fb)"s(OUKn&j53M`3nQTcj:K0qEct.sY0%%2Vd?)t<NA5GUDo0JE6pGYPPA1%I<R9Ka3@R_m
IS6&6%c-6%Gg")E_@/Mif^#,;40Jft$AYGl7'OZ/cpZF\Va;G]AeiHur,_+uH0m.DL/:dN+Hc
q6"7Q]Ak0K#'8=3-<DM4j4supp'"L`X'V6@h<?U9m3;`0h/nrHmf'cDlk[ASesfP:,_50OQ<4
b@A$1uJ!IK:EcBm`JrQrc$0`5N)<>%k)gh7qTXpJ!XZRe=@'V5g\o=jhKI9k&=]A]AXFnZUl_M
OmD0Agna)c3;@1F`Nf^:r!7l()n*[31tBdl.8Q\%[OX/E$e&.2Gjh3X+&,/LEYuLU2m0B0t)
XC^ddk6fqYd%#\(msBo>k^WB+&Dk4f%i*9VWVN'@CN5]AlJg1.37_,i@hkS[+La9\q;,%?8Ko
5@/m"f('U(r44XQ4Z_f?1NI,JcR\jD(NVK(/u.No((+bTp+cX9ZUNrdlO##7#H_)8U!tLr0C
2E:FLfub+2S\T:RSf<7+Oh/#rP>QlKHGZZS<'01r3EQ<#mJa55L)p<98]ARo2!7XioioS&:j-
u$o3&bIF=84.cRb08n7%>/:PP63cj2h*%f+L[hCj#j'qc'BEeSJMESeQ3gY.2"CA1cZq"gX=
ktNa>u)^<dJ9pq06\U@H;Q=eJZK_s>dOmt\%!f_q=Te,0VCs^T9glT*oP^"2Bl9[%_[t9]ApR
?[YX,'LH%X2[1j,[r8S/E`7ZrD/=?mB[ZpIU9]A!Z=7op1YE/WqUXU><>PI0)`1ZHlZkG[:^V
.)N^t%cjq&e#l?8os#SkZ$R3]Aj<u+(/\.4kdmfJ`@.`qR?t:.&oGeOj=_q#agg7=%ZNDX>lZ
o)l9gi'uG3^hrP\Z3hH?QIW8!3TF(^s9EL%3;<a[rO@+,.@N_[T&qCKAMJ>0Cm3RbiDmRFo]A
N1[_I9@NKB+;FGi[8!C%Rd(q'NL#dsEOnQs?e+D?\o2ac!!YUYFQ4dD-L.*),VX/O`U&@TOG
GHp0T'0KSO^,AcL]Ao6qGjd!EA'r%=]A?GT-;n6=c48U4$f.HL_%^]A.@TrF5'>1c93fN9e5D;l
=8W,^76eYWK2)*#6QX5]AuDeu*q<ahsT+P6ZjcgB21CPSuPAciFHKN!1Jgk,.5E!LBPBN$f3Z
&,s9<k\i(X&i=XWqH^t'=B%FO31od]AGtD:T=&%f3>QR33`dKOGd6/r8A3ReU=/7&<V:W0S`:
6)lP)?o8>H\[P:nl$:L:r*^+I2?:jjqP%ejZe`.j<E@[cgRY"kiqCi`n!Cf_rJhZsF$Vn/4g
*GeMk(N2'9(<s<MuDil#\6X+![h@R`PK#pbAX&uIs"pa"u);-EJ,@[(LB?s:@kZpM<9Yj1L0
VBq&E=e)se?E/4Vg9Y?9+""?,A:Z<PVrJCbTj_4Od?NkMMR9k<N8Uk'+R1UHr!U"i@VbWb9+
Ek]AE]AX%)&Bl^g8N@]APDj32El*&@MbVXPknP\`4X_/'<,ma=>@S0=7s-VV+)NBt[?KbF(<LET
Ug:$9Zc]A`,%e,t>G$H^kOdrRLj:J8)"<T=IX!B-ETY9<b,25_8WR*:<]AJQ6r23h!D4gA\fi-
FOdpT&D\q&jW&l"MA6VJ/CX77U6iN%43q+I^$\Z-A"qMd7U$l:7O8Ps+ap4C4C%4di2Vm^Fp
0X\!VNNf?,c@bhs$g+8q-CO=Fo`G:k(X]A,WQIkQQjH9QP$3G>DL@(JUeT0Ho<:NB"M'hHNG=
F.74Wimi6-SZERNL`>hQL7ad<,Lc44mOl5.^V/@5ocS98BmPqNo%aiLg3!hddN(dXBfMMYW3
#AK92hE7J>=Y$-Dn-c]A(G]AGNJ(?$6[G:.#baF6W2f@c6Pj(E[WAt_O$F#=(2Xh^(S_'`l_*)
?!Ila%\L/uR`cSd#213OJdI3JX1KP"&rm#1Ws)t1<a9Wa-#1PN6CI]A-I*\EMBu;(2.Vf=%8[
S$-FP6s'Lg:eUWmfN&D6HOVjn^2WRloNR<QQ)V^:/7<^+c>CW(C=3]A"$:g6!3lZm"N$<.?i5
YVn/piqf:QMfog,\A-+jd(jgO-od5;oFZQd7)E,=dosk>(4N8k+R!ZR>TFS\[&S-IXEH:pMT
N_Va[8.=BXqRgGb^XkGWg@u-b$!@b.[<Dj,4qPoVZD>[a@M?k!9q'lkAL!n.!p![(+W'7l#>
t'c*joMA9S'Q4m:*2(_Tj\8Ca+)=;ri))+dMhdVdA>Ak=XN9asd)WJ#Tgq"sGOYbf-[fMoG'
REn0.H"K7?fm*u:p.c1JU<[L1.JI$2H0W;g?Hp64<=!3d`\q4bpIW7L*Wr7^H@A0CIF2S.cf
S;sRd%JF8(?8ie9r(d`_diRDTeui>"U0@6\M_tA(LO6.=,6QNM;Wtm,")^J:?ssc;7E@[i0#
@=4Ke,crmAULH]A(@^Vkt.LK8"-?(C45R#:2YX@8(jab8[uK$>&V9AK1_1Ge:hX2.bHc-u\6D
6;MaH:"cd#RU&&UAZWa<BgCI;`*]AkaH39rT&N]AcZd_*/\*m:`L['h\&8`+k+t;3cd60WV51O
X_oi/p7=s+r'Qu;uGKJj+f0U,T&*0-F9`!C@jAa]AY5-@>+$Z)KneCh"43=9QPg#+.nI,A2?*
B!9J*?o\J2b0''DY@Kf"aL=T8X=:\F$h@i\0_QOdH`oIK=]AKWPeo[KoWeOd?NH/C#E5j!g3=
7jAfebg`lpV@LWjsL;CHSGP-#;L-<VA?<E5-E`nT9r_+m)1bS'Y0U(M_<@nb\cFIF#?6[LBg
&;Fcd5EUd5o`V..7_##&j3GLl<n[_Ga4k.I:j^S[9c6afLY&3k_NIZbYnJb'%,T%u&kH!12/
\jE1EjQ@CQr&a2/P_"f.2=F$>9pDS@pI047+l7"b,+d\%fhbJ2"Q_]A9d;Pn>MEYtRbr=?m2P
LXAj67L>dJ4,E,T>Q`68<8O6MLb6@O`UAaH;A;`%/MI;%3GY0_QG%oT[%c?>Re$oYSTA30e5
pHVr*iX:uc0DmcQE&R;Gd0q:)`m=('qi`"BQiJT&ME;g<J&'UCfI_)/=NY`u5n^lRXfjG!UG
3Ba<]A6Xf[GN<g.;N1DStj=Td"m$HD9G5`H%HFMR*%)Za/C<rIks#rf=enfd63QI]A:9asBQl3
*htcdnnVlOYb7*:(@'[s6QH\u/YR[FFO3&\7N81X&r8[>8Jei"nl7e"8k9bW;-Qr;EHLcnIM
?8a)S;]A#ZqR:dErMc)J#>oVHc_$M<>BIkc#F\fdEnGeNi0NA:4&q&tP,HWshENTTQ-^//WbT
*f:u#">0lXJa_oSIi;t#d/-H23@5/-)^GK[[KO3F63b,m>G\[mjO>bnJqPi"8:OVY(#i<QR7
5r`r<(T4=C.R\eYUqZ%o`tKJ,.dtSV-OQ4!QE1IbJ]A14@@>Xku+&XT@`=DLO+hOS#RYIO)q'
@$d0+@;'A*8UB=9g(>$c%0dmuSB^'M/lGc.9j6Z2nTa8db1Fhj:jBN>.Xi/DTm&KBBMd[luC
dP1CE7:%7sT*Bp`7$KCYD5)1hhV!R]AJ(1)(c8%C2d)R(5^38n'%VCU1jhXqI)m[j4M#qO)Ai
GkQp#8M`.H;M5Y&Kgl8EH>*Ge$X\/`grSZ_;jR%iq\-AQl_X5M5PQ<Q1%GF$XSalW2Q(CfXF
i<R`ZYJQutq=U/]A@UTDSCdAk_:mEu(cBX*RMP$%\,4ig2T!Mh1[Q=sH>hR@YmU;uP#\raXW;
ba;M,dR\[WS4#rnN]AHgVjnctqZh?VH2.P(^Wpgdu=E`8&HYN3hq4-R&n[uI'%o2YXncPAAIQ
7^]ADh?cFlug+M:@:pU1&mb8TRUTJ^<\m@*75I%)I]A>7^?U%#93W*J';EDo)X,tPD.[isDegs
T%dW2c=rd&n=8<4ZRkR>PpYA@rZ$l+Vs$qi+6_0dUG82,WF`QU&(QWB-ZesVEF(f+DilJ[uN
h0%l62"Rm#,%h^()F"M7hN(ME\@)f5O5%NAQbjA]AYLjJ*!j3p*HKJ!?/#JL+'ZnTbj?+S[rU
>KV$V%\0u@$)*oI-<ds6$(D&VT;(&4Dk!,^]Aa?Hg*M"E5/F=q"U6Gi2SX$<6oo;<KU%?eXZ&
MOS!0F*4sDGR%KNLBLbnO_^8qm9jJmD<nPI&r9/F;C;mG*_G&hbl<aD7Ehc:g:"<]A3aDRm]AZ
,6bLO/7en(i&^Blt&mi!A\A=VH\"odRm/3sBmcjP*1F/>bB-8Ag>lUY$Y468RjnCrD63qmQ#
):foI;)3[SH8pJne`)S&WU>mGD9Q9%&-L>Fe/JqC/lbdiho&GYhVQs4N)"F="M/<Kj)X&UPr
Yjime+T0XSBQP]Akqq`1BkJCJ>)CT5cI[f+dN!DPk0fYDiD?<bpeg/TKKBN)Fii24#LQ]A;k+u
u2KXdr(kVB]AB3Pu@]A]AT)2pAs[g9g[AB#`i\\UA%k8Mg7QGqe2O8#n<W%qK?P6gS;C(jrr?dV
=$j(kiDV'WK2a!OWK=8I'N2;cLJ(RIb[emi]AlU_fC$J-mNL@dOlT4i-W!Wt9q;4G+R-G3@O%
N<=]A6(8Y>@0,eg;ge%&9G2q5j7kuPD2Te#YHrQTa"Xd6"4nrg/)cTLsl_m*Z2h<]A('80e76M
79=j7nd3/VVLQR*7!hDRe[6dUR6[Bi?^FqLQrR8*Z$+fHPrQ&4O)7oVgm%GTZTs;-+.`YKks
-\jR`hCoT90k'SA[aM*9"q7nCRi#,9]A%=GhZ=TsO,_u)Fj<<-13"D/k7!KdV-oB8-&IKq>Bg
3Nk=4_%o?3D^PH_e!RlD0Q;V;Kh,5l4Y#re=ee7R^0V0"uo;"'D%`Z\Ci+FJL`?IJ+NEuIh2
GHCY=:<BSZrKN9A4IYGbAeW121_A!>NGX#HKU\^*>sRu07O\k!=`CPe^ZJ]A:*<1"_iM5Od]AI
#9cImA@2&pO@_T;&H$a4%lcjf7k'TDQX7[8c7Z/?^g^gR1=JA=m'/:lP&#1u7@4ZZ/RY$3KI
+Z`LBAIF5JR#.,2gP(V6&;#iE#N/Mh-"7s]Ai`u-mk8`23pYSL`\nf,8;L!_HSs8C_a\T\p\o
V(d[p63o7rG=t5h)f>g&.Wlp=5K&tF0r]Ab;;./"ZedmAT.db'rU_FN<4=Ji1_9UAb%LJ9@p+
m)>j9b*L%!Hjb>VibjOXo!)Us"WTJgeea0K#cpj;s1BhKSqJ(c1B<dj+[JAk>i11lG:ec,0T
+sNLM8$"iX_r3Dc!NhPiOPL[-+R=V%>,OaU`LW29nZ5=fO>!Y2bOQ:NaD.h[P.FI4h(2SmQ#
MQZ]A:sZjfHSYg\sGZt8JB8j3(r;"m?61%+)A,]AR)t<>l)4L3?MbLOglC9K)ndW\3:As7!@l$
,&8f4se5dZHhhF(c?-CF<h7(dO8"aL)k/=#G$$?b?%d."ki<7r=X.\>GVd%^:$D#?:]AK"HBb
jiQ<5^uO_Rk;6-9'4IO/k/?nFn'X^(QpJPBgAd^f';pR\0<(tq),m.dgY1blnW!Nm<IZ,CQH
[M`,/sFdG#Q1^I)WJ_h<Y^,n!*LX,IW3JB<Os8cq^@Ytcn.P86o?g"`=k9(9$YJ>]A]AL>r<ms
m[0Ohai)Ti['uIB1aitX@XF2);pBOUnR5WSl9aV0c^GH'aO)0c7dCsZZ,tVcp>;qCNDf]A1XN
&)73oKH4=iqpm@_IOeSE\TnB8RL-)4J%ZN)Ln@b@7(#P6%:rE_Pr*S/fo&@Em-0J[D*L@6i)
\\n<&OeHCOhrg]A.%j&FD@U@N-f37f)_M^C9!hH>mi]An^@1\%3DnCnG$io_3*j+GUmi#n=<(\
6!Kk0r%f]AoO%uQj?]A5%q>8GhTX<K5d]AVDmOACjo=e>MD^B[Qn\+#ocZMP8C")ERkWgFIJnGP
*3g"1spqd)gfSNJ5n2/-]AYO\XtZ'd-2J9EM#PWJX(<20jspn'l31X$\&&f.XBJfMiJ6kI6LI
GGoYp%rh6@Ip;oAP3kfS?K+&eESJh-^.UIc=/`hHEu-<+g]AOgIdD9)YLSSg2'RgGW'I\uW*q
-N(Jh7c,dgiT5$i"\ss!#XU3@s=fAd]A6^eZ@IF1d%3\IW.k.%B_hnh]A6)X"YO%X'=:b^5S6L
V:ts2&)@^)@X.?^d7#SA$'%4Cu]Aj%l:a`"=0N=Ok/(YN0eqPjGoGH=UT=/fUS,S%oY44[>B1
D7qW2q+qCGTMR@WuDSBbe8!d2e'/MP7/FtT)!X]A8>eqiqrKnRq[WX#4g]AegUGP,X-EV0GIqd
PpoJ1iZSN\lT_JHk5>J&V$dn&+)AnGpJVo=hC:j#Q-ZBgud*Md>7Zu)dRi2c#F[d#IO>$A9?
1P-A\Bs^"nJ87(uqhr.b11Gs0lhHrr(ajJWA[5HmeQ1U@g19GP`]A3ka2$&'n2bbD2dmPkThB
Jg,&NHWKl,AEl9?I;CZhg<SVO@\QXS/@MqM-j&rGl$/=ut),JSn\>Nl0#EQt"qbP+K-n]A[#L
X!CeuF.[4F*17$7\AkV*L.r(j649k4WA)OT#<qO`0KCTRYrBH(bP0.Z9$1rA6oM.*+KT+<@#
L.q"4)G<Q&8M-8;7s-YLn59aRI&tc$lH+3nJ\Q%b(bIB,C_I]A(1u#b-k4Ub^EaU!=S]A()>Fg
dGVUag&i\d5E),g^F6g"9[]A%).Z]A4b9pIa/fJ=UZ0):*;4kS`a=\@o>MJX39\.FIQ_TD\0Ha
Z%@EZnZQ:`I@5[#UR$]Al;+NS'6&L%R_pFA?4ol.ZLDlX.aAke:B^9s]ATBm>)-?)o*+eoR2l@
D-Wl$6$G0r<..-j14[NuK$^M-FPZ0]AopO>'U[.\U+ARA"5<Y4fWEOE@6<S`r^!&Nco#MduHP
<?BcC(4F!1JBg/o2Ub,Ij;1s9ENTnm*d[7(?,1:Q(C+Sm(.L`>%g;@`s#`i`$EQB@EF<XR3D
<]A70#.0T"*:ghqDY"5)0AGXTOOJM8RM<_U?Fm*W7^&$!1f>[5,5ODnX#N;:L"E8(-Dqm\Ht'
4hT#s`sd3p*A%g?^CiM.N<=eo1)VBD\B0*SmHTX.3B'-_9b+JgCi"R%j"4mMI?:3o>9_8@^&
^a(j[)YTBU3r)WR=CSu6"Nm32YF-M0X(OQ1@JI)XjSI(6N)N^^Rn-jQRcd"f>!2r7L.*K;JL
45%1N)"5RbHe/>ceDj)rN6]AL<HD]A9_&OnV6\sh3IH?+.BfEL_MU>7!>W@7jkF-#omk$'J<Wi
NrE8Lijpg9V6bsgfb;j'rnfBlrhB^Zm2GgC.bHb$C5R]A=I=Vk:"PL9]Ap9-52W=o6!ok\B:(`
c(5Po&Y(]Aj\lYc>.3P)[B@=%%HQP;lq42%]Aqi1GPVWXR<E?c*DJch"%Y&,lTBaN8q&sm%FpJ
nIq')6'NV[`tDj+FH+/;m>L;]Akr,?;ijSTN0h7`?Wrpb/n8LT1iMqb0<*8ZgD*NFWL<@@mbK
rH;`Z#W`eH:l^!-8chsXc8=C`>+#BPE^]AoIo&SlPH?m^YPaM<m%ag_oIUlROId[_OhkjTnK7
6V#^&D:,!p!,E&7j73!&NK3cR"!hll&:`PJQD:St,ls)M)"tW]A<A2^HNC(Ni#AI=Vr$]AjZfn
Q&.YlN^JAnG%Io=$Y9\&uj?$>?pT!\<^07W(G^7_8='!Zm#Z@g-<p)+=`#8P8cn,,Nn.a-L`
/a&n^HDV6H8@6PUhX2B0o*Ida=Hc&b?ifQhA`LLm0$RVPHtlEc_r,n&akXb7.[[U.8h9W-:W
^cQ9N7$;L]At@S8BRgDSSJ.[?JGjJ*[BsUX_9<T(-e(,fu*JX\L4^"@L<X<:Qr2r]A>r4ZLnMb
Ll]AUqGJ:K!b_a`m6&j+3a_:T<+GA`_V%HJ)58Ha,/B(GN(/Mkt5's>2YdKQ3IF$cU><BC1q'
uh$8T`ZD4]AN`H,rrss3MigiaOT'Cjm--q^Su!k'(r-tNiMSZ;r(@W$0!4&4'2,VoabMuIXaj
%;QW%ei_#dHZGt]AdV)`bfmGp2bi.$$^$\_UQ-K^ckK_7B2hAG(KI<cQ/'2M>daL_[l)Bm=\"
h`SQ4#$C%i8k/Ng1YulAG*:6aKO6`ce`B2jqOB'Z'K^*I`OF+#5\!40[]A\jPKJ)^B"K,P4Tn
9RPmQm-fel>o0M+q\gnZ7oA(4,MQD%F/`.NB#-4tMup;bCVU'(Q[-5.j'`$.TSZ]AU)jMJ_Le
R`=l1aPI*sm@9Y%b)%OE$=@HuBips?n\5$RZ$d\<hDn23>^SCiehuuEenSet&::Rl@.9_Q4M
Y3,OjV&&Ah<Y;,DK"ES%(m[W0Pk]A*LKN(+D!_42su>C6R[DT8&ATeNZXfu5KFjZ/VeA]A*PMY
*Vt1e"ER4!kBs@de'nIqgYl3.ITW)(4=&d:7gSMMj9#?-eH&BUt31N@AeW:1)-'&j=k(q@V@
*QI!!%)q+'7t'fgJFZ":;,Nt!NrMc]A5$)5%>=^;Q$XqRoi:NNJ&q9'`1s0P$l\I"n4/\D9)@
PfW1AQV[/#8)eH9$%6)`.:]AOokY<0ZLK'0KlEc`MS@Qd*@ac2NAe/+(<TiiV^MK8Xg,d<B8\
-=I3`VD,QNIr:/S9+d+n\pBDPTl(h6paNIp6dOp:;AaT2bm*Hb=.;a\'YeP2rWOmoZ$h#n^D
+SX/X)^R#V2I<NPSUh!n&lDA5)pjoYDViW>Z^'[4]AlD2c)_=;rk*jAnH)"&(Aq:-'/V_104A
.>35Y9Djm0>@'"s_Y.*"4L8V5Ve\k"&#ZQ]As3TV5ZV+Q6S'HJYUN>Sqq:6_ccqlVLT7naVZY
1.D$co@Wi_Wj=Lj7<FW!YP_P#+bIhX;%!(C(g1m*hH-PUEnp4S!KiLb$Rn"@n1*X'rI,O-s;
SSnJT(KP_=Y@n#^4rM.rSD)WB%b7gMq)I`?_1_Y^i3,eC)7b9PCL-)V=uYM0V0m@L-4E^Ad;
UNT']AANcKK&F1ZoGWkWo<HkZi(Kco0N@$&gItn?u7jmcsIMklemGR"D`U?8U68q4amAl9BbN
k9YHKQk1U%N(8A9>to>aP>Bd*&AGekhNHqb.7]AVmRn_(jk'"r'p4\#dDFjr/=>[\4rUYmOHO
07UC3`>Ei5Q3a6u"YWep@`4aP+I_+?gSGTVpMA[o2<7:#@\05C$HnasK1,C"lR'r)T$=["_G
tE,U_E2nW\CYHT!:EGHp,tX-M8=KlQt\sLYp6X+*>s&h-BqOmZJ=SJ)Ap--9)DVI@CYm/_pn
;?<08=(6P\uk')/aUrHjNN*ba@",a(hG8a'aEAk>tJ$"&[$fbKYb.$L9(`aaY-53?aRe!A1F
%>,jOW/2tHVggo^[J3F!dsI!i$r1&G0R,''%Gn>%;tIrl;RP0VaI`1dWmnnd_$,DX9j[=>If
lel+)nPnjZ)M;-_#i-c[#XW[:67N3oEW2]A.oVsqRfP1J(\F$#iM%2grW\b%(Fif[/5-/[sQe
qf0-fY$A)\t`_l6jnXDD8H'O]AWC-Xg;NBHBqj*ge^a^7P@Kq>4Pp3E.H29YTgMT3d@bq*J=>
F-ee%CA1TH@@3[7epQ#`Pl)o,_1!dIj86.Z)306*A*8XSJ'1n]A)J:\ldYm=`CY(jT5E.TiJJ
(,bUC\e-EED+C]A)qa?dTkX1Ne^-8PtN,c!*%MmsuPt,JeA@&Q52--7_0%/ShMScGGSc06X-,
I+ir9^[-AqEEH*F8LDuc=Bin231j/)bn;rB%M:7P7"2".<_[:hlk!i>./,#oTa:feq>)\8]Am
cHogdC,'k7cV`a\_TM[fX6H39mgn<]Agc%PA71^qS:H)?l3u!(bbr)2>P-lK?eVfPc7`m%\G.
;b-i6=Gkn\!BjD.;Z_9nBg%kJO/W&g6O(rjgPTpl@'YV7\+L#>nW^3)$]AJa)[K:Mq*LrTIXL
og]AE]APU+Z16eU]A`>GfhFI`[g,s"nMEEL#M&r>-aqXcU^:s&oo)'aOgJ7#(6IBrD>T<VcK8\+
q@#j\rSN8P(N3YlQmOD:b66D&^Octce+/kuXV"*=cC"oEs\q8K@(EhrKVXk#RsQib"um:g9<
-'tJO9Zs#;,GWr1pN`Bl0i'P%!BNS.71"!cV-B6/a<`g$H\(njm+>=a'6UKfg\E,=:=hmegM
U_8V:W,2EU5m;@Slu[?CPY<\Ei;,9"/U&JWV7S!O]A6.0o:bm(ZI<JH%4,E8:F(W4q0.Y%PDJ
'T!*(qCMiKH>9&dtH(!jb\[OfgAbJ=;O[?Yu/O&I%>5u^Saq)6CpuJft&?.tOh546_]AQ>LI[
_9aU/AaH:;t1u8o'^`#3!QT[Gso[N=1aU-NkM>IrD)+I3mc3KoH&O[2J<6I4PB`nR*#?,U2O
PpH2E\uV)^'*;0q?'AhaZ"(]AH]A9+(b5+Ll4G"FBKX%Log@_-(U9=QdG,G+qO>_%S.p`Y0g;Q
+T]Ajue6+6O<iE/ChJ=ZY%O;UjZ9'Uf]AW5mH4Kt=1NNag`?gB`$)sGtUCZ.F$r`L[O\M(FXi^
)-cp;%q5cX#]AM"$]Adjg\`/M`g2I#Y`#Q[XMDg^e52TgjjHu/i=n:n9WF+h]AL@05lh%LZp)@O
"4E5Tk<=f*rjPrJ95@n!D2oFb\[&4Zn?J#I4OHQsgrgND_Z>F.FOd*NB6EY]A!+?:GReXpkn!
//^AVLqqW"BAV&7pf$<^jY9/Ajf54G1_Nr\ZG<+2J*keJ8H7HlqDhtAQ.U2aTc'f6&/,`;l<
BgQ>.tu!CC!8a-?%DItk.^oS03&VhG'#Fn->q"(.&C[iQJO`o%d?D>LlC)Is@E"J4u#1C@4K
mVG3LD4$(VhL*@g5(U[U/A8sal`%3OJ2*_>g(Q(5Q\J[;U$#4L@UsA3]AI/pCQ*/'88jn,o?#
R?i;F;fcK(Ou-p@H0bQ&>s:["/TlF>M`;<T<BcgTg#8LIJ*qb+kSt%';qA&)-e22?[8Y+W`;
ZDC-BZ2-2ErVG_6@>mdjhe/#f=C!.:dO=uAm/^6s#k]ASqlfdc)HrAqFQAGALbbsAf?+`mQfa
<3D4EQOT=$9>9ed$\VVf"cYc`051Khf=/l)qa=7m-KWQ!/iHVdH.6($ZnN9NEdB1!$5u\Wkp
=[HN:eUhnp8DQVI(#JL[mL(lB9"R[1"8X<$bH7K(6n/2#*n#Q^RCQ'SO"!l[<f!^S1Z4e(Ko
6eie2msXdr:OQ@1G<`u+elU_'ZVB-`m]Aft2JYaX^4bPp)U=fb>jPCUA!t<@\SZ?nD4pH$ih`
(tb[BiUFWj^MFE&.q&]AaX3:?F"`BQ+1c_%`iZpRKX2o'Y^/sFt78Yi*S!+43AYf;+psoIb?h
>lpmNmlsoc<O<;E?^(+cO!+iU`Y<[nSZ72)$YGqRb#c1C9RO9>G]AV>8Ge3V"P_*?-$o"H#R?
dBsOO2>9sP#:!eT(:t(>G+H[.kL@84C.9qd62.#Il:4)K/E`C%]A;YFf7P!6VT#DaG`V32XHN
'`m+n#;&tKeB`e]AC#3GE8V$d#]Ae8?"WI>p/;::fDGL=&YmgYuU`<#3'*gpi/qa7Dd87:Al=N
3F5U$eS"eb]AM`r`Z9=#FrD!$"T340+nfq24SEnYoT15+L%[OYb.AW21iKLM)[&kq6laXW,4@
f3i4)$f3?Y(Yi4MB5Ynm<phm;iF7(ttFB`?JF"S6^WBLGYO,MA0@l#sh:Ka:R#^X<6+m)t>$
:8NHL\cmF\?Sn#JuerYXW=6rFFg:0=6N1fS1fuMZoj.'"VYBp)>/1aUYSU_SrOaRY:a;3\3W
69:S4ssHb_^A$3dE1E`Z499g-qToSn<:Bm67M-,$^5S40)`Q[Vr+C>k`XCl=h:9WKH'Te*MX
0L[9"/s0*42-k<a&)Op4KPRUn6*jFp`ho8ip(K4\0UBU`HK5`l12pjXWuia_>X:FS4`g7*bO
4KWt1-KdTQBR@<DeYE/`Z8s@SO*iaF+OB39[-g^Mngo\V`hifC_PC$Hh=6ne[e`4g#Yaj_Ln
tWCg!!Pe4U9Q^Jk;FC,=HsIB$*9FaI!AALWeU&$^oJ'?:SGb6.WqjKgU#Ec.9%*;XS@giAC9
OnE:C,0#m!3aY<:OKAYV"0XI:G+T"L9R.WP&d,kNY0?[%K]AOl'?8f<q7*R\MG'DHk2>,%!RU
BrD"$/dnPZ3D-Sgf_l+Rlph6#CXEXj+dpe(KNW*W&PSenX]A"o:!GA=mYp"tEOb1]Ak;Ot-Zg<
)Yq"9cW1)(8+$u#6:Oht)so%oC5#]AaQ4lO_aNheqYB,V&l[ht$67q(hi/qeEM<A2LHb`1:ZV
aU3"/r%.3o]A$u=nR(#e1R*ucU[jKBh3s:5Dh]A9/3GB>)k'IV4.VIJZgIBibE*W*fs17j.5qX
bKE*Gorq+JDHh5@>BWZ=+"7ifFbYEsjW!.;[bl!.@,nO,_M*.gq\@D>F_p]AkIbN.c]AS`b-u(
+fF;?\<gN'<#9%Io^M,<Qa]A9-7K[;ENTim,k8O@.@C/X[K3eTh^A.fg+GIGEgK+jAFZkkY*N
`"#EXG9G=hC]A)uC*fR,5[]A&O4';X9lQVbF0H8EM=[<bcpV=b1BsX97Ka5O/90)[qNo8hp9#L
<kh&J_-duF$=)]AOX2dePgD$,93l<rE^?RgqDeX3$`H1o6XkVuHjGC\f0S/`LjR@9.;A9ll(u
'i,&4<\sJHI#A<kQ?]A@j?qSi?<3l8o;$!-kAN+_?MFpDJ(mm0pji.nobnYH<%*tDZ1^l.sqR
/Pe#CIC1N9c6e'-ADjiMhHG<`:6[8<3k$lH26+:`I:&:QD`MOjXJi5e"3"3usqoOZ'o.M&<!
2U;]AcKF,qThBRqTG(1;22p8.KM>PDR#)Af<(ZHp9Y&&h:DgYAG150*YRZ\bS&>MQE8/+P"b:
)t=8?q%TL\='JV6CoYdb/k[50<1DBb=>WGH.u_QZFj[F$6ggd)4Bi'p#oXW-98RtJc>,@d3I
1)k^.RljU5D.S%3/l<\T3s4>7MCBb6;%/5]A"I;D*ooNU05Y`:Vq#LLm!cN:tkXqM4l&3`MJp
(uG8?7f@mOCA.]A8SJplVL>@t6Bbr]AYU=!>s#f2UK'KUYa!.gPtX[c>q89C<:ITZ/2it_8HEp
kc4s&!V@<$2Z%);^@g=?M/9"+#&hG6_i=9<7tICa,.A@YgV'L"ufj.$?Xu68N!G?gV+=N'A(
]A'qQV/Em<Dla;#h>0MtRmn&(QfZj"%Ag<QN1&)1j@P!:ks\CSpT_tlOh,<ZoTf0sbbBI[j`C
/)<]A*j6k_PPjm>+0&RFi$>PuMO0@"$si"%Em/eI0.5R08:ltaS;WKonf*G<VrfKsr,'8HIV:
uDgo-Mt<]AV/$TXGf);J)5hGgYlF3kR?K4SN1bR`Z-S#YdEi"VqQD60RRO6%\5U@KGd5+h5bn
6,0#r&;kXMDNN.Qg%@H"$?H;_aI#Pfi!rTo<AmZeG*\[!\O;J3"KTY<&-f(PKj(/)`>EBQp=
#QtHX2ioLM_BBG"(7$+#ut5\bg$-`lr3eFJ4g0Tq0$\$6c@VW\@]AK#=<*R57N+oL$@N`QtA0
T4CJCOf.>4A!a2GaBe4sUSJo9J]AGe(4.pA4qF1VfN7>daQEg`uf=E_ZY?@r2S&,>X@l:<*N_
jl(`qNLj6(H-d7#mG';NrK[+"^K$qR(Nhe,`#[i'_\MEP(K,S?"_d<2Y8#.-%k"&Q!S..('_
DcY<2m,Y9i:V!RhW'ktj.N[*\`sBgMN"O7ngaZ.;#G:,8sl'a/W99In+Vatf&.ga6%.GY<X+
kO&):Y]AR"FCP"Sd.[^!</9_>/6+=Op%N^bE;Ia$P$^73L1#n2`"4^2$/CS#DcM65N:"h;FEZ
Ehaj*hOMQ#?mQ7I6ok[dS970E8%,^V(f28&^!:q0%F<esU6hQq@891djtEP!p?3&QHFUBM4e
UKeM#AXR7ktZnB)2rLO7R5P41i%2^!Lru;r\DAcB6JkKK.Kc.eHicA@J[:d<]AP5YZCXH,E?F
PQl\6kKcY.o^I?h\s"<-ndeuRAnC.b?tWU?jNI_riXDqD[YtS&'n#n<_LMi>4h<Nj1;G?kgn
t@?d[4RUO:p@B_Rp06p*mS?`ngKk^grZAMYgS<VnLW%]AZZ,l.@XjOP^:6VY6'jZ.mFFAsh7J
K-?RA#:,36]Amhc7>5S^Z9EJjoF`2X;^CM0&0)h+(-XIcN(9i#@jJ1<J/D\:YG2lD9'4q,,l*
i$Bd(^:M#=mTKIXbSC*^[jYUN<V%"Ys[,9e1`q3j+:]AmDW%[:W(56puF%_R/*Q2HL'>]A"E)!
kZJdEC!e-WIn9OU%&a7e]A]A!eW]Ah$(>q4O&lK@_9)Ds1nZloadpUric$u5,sGiMl3u=p4.bL"
gNs'[b?U2W*0Sf.n?gA7AZ;MUdejf86o%U!X9&VSpCHD'r(+FW!#)Z"Y(YBd`RnJC_6^M#pL
)55`,RH&;Wo>8OtViR=%8S>,kkSc>L7D-1`nd^3f>;^>HVB-HY&EdK3:STa."q$<k,+T0^;R
6a,T(\s]AOWLpD;3?$HZn/_PfW#U<h%Ru$hL_69+",3L&hb<Ye]A&;j^&Sl=F^+[KL7a1&*CD>
m!3X^l#R%pN=4+jLTXfhFU87=Ia)?!dPJ]A6EqSG]ABr8+h4GGJR;OH&[AM>8VA<gpX>Em]An4M
<Eu]A*6BJkS-KmqO4aM2M,L7]A7$aqlM+]At+%;\g.195<ch#Nks)[d6K[]A:Rah%G4uBY"@M*(C
-l<%8,u_ZpTF,"*abJK6>,(;;6oWZ/j$5O=8?G"?9!IP\%>%lHg+lBERW&\IlkA+O$7T$l%'
3Pa]AKei%1bt(T>?(![I&a0>[O\<C>Q1;NU&P7BjUehhBdLQ/%/PE,W9m[Lq*aCpGrHu-4SFo
OZW/gebY@,BjumL;Pn/8pIccGB/NYn1t,3tD:Ne<>B9n/HUOle^h:KXo\B/,6ao@3\/e@_5$
?,r<$Wdn#!]AMQ'BQAO_%38Xl'iGFN9#\T`&&:JQQW:;59rP]AT"K[H,R&`sEd",C&h;G(8K8S
=VtYI`KjlmrIi5c$po*c,;:Fo1+2a.F&7V/T1Kdda./RHfg+YL>4\`b<fqjY3Qhp3k5B5"Kk
&`%qn+C@7HjH(TE8k(YjC3HNEi&TtlC"Ao8od..V,olO`f6=85I.;UUrWl`E:6KVP=F1<<cb
O7=g_msKi<VO?-D^bG@_mKqUV(o*YA.TB[VW#^E00d5.ukn1M=s+W]AdQSk[)^7re8&E$Z5n6
r\3L2S5!43^Td,sND1e\r-men2`'X312"F!chW;:leSjVdt5LrQan_mir^oPGMG8ZnF_Y7'2
93flKe:7Vnonof7nLK8rG;/Jbj[U2"#j]A8(H<[6[;H'OcpcVmN,Edqj,`SJCDE/:Z-hI(S`?
o\uM_Dfr/e>N&C_(l;C[cC[''j0!7UYQ-?LnnIs3c]A@hJ>\I0JNP9;0Bk7*ULC9:_DNV:F^H
AI7)pCOoY($uW)Oi?B[k56"V*d!+*?D2+WP9c3761QdnPQ$\/@1dnsh8NB@#HScZddBp9\dc
g)'4lC'nfa^F4%i;-LNR7PFABH//WMnt?cd2bm(rFIFB+=U6.%F\"+cb=4A's(/%c5\"BoS`
jO'P]ASfd/0#0U^U%=6%;\:^55$%OS9;<qLV!E0oQ'\h.s@$t?k#6WsUX;!%YCG0<3G1nLOY!
CRT"Uekgm5]APD:'ne7CKr,'mjf5WjttbP9s,X8,W5*fo*ZP28HI4!GhVS%*e,O@)Qdh=>XZ5
!Q@Uud7q@;E(rCQm6"#]A/(V6hH<G3.%fL_)%+*K3Kg,U2m&Epg#:l(tI?7)IC,\[q"$nYe2>
`qH7$_P]A>=P0GfoB(Jlk"&jgNlDn()qB+o@qAe_1,'$:kWsmY#Pnj<iH)giV<Y5KUmg)2fY&
/_$9o8$O[3fs(U]ADmQai>oH.#!Q=HbDhd(1T1O<1jQETKRdpDqtl@[4Zplm7e#"NoL6-PB\u
3cTO%Be0AUbZ,Q]A#"hA9K;7'*;-=YL"Ee_68gQo*b9c!(8q8>rp?cB@n)QcO$c>`AWEZ=.8h
1<)k,Z/9.OS#q"Zh$%qp'8-'16dF^8c?mc0$p/XTObOdEX1KDAZE3#^#HQR0\)AU?GR@>YSJ
o+TeibNa?*g%3)cnCiZ,<#IrIb1'_#q#,Pp9d"(mCL62,&q;m@HKQH-JL/<o\LpK'gBL:RlL
E=@>0@?DKrk=i:f8W1.l,mha<p]A?O\SNIJP_,gX%2EuDF(dLO>/Gl`;H^4Cf8G#`_I3'nL]A'
o7K>CsXQJ&E"c92DbH+V1rc"&+)F5q,^#H#.ec`?lVd$',>GPG@%/8_33'9;Mgj<(f0_BnlY
8@TEfMlNt>NFaX;HUag!j<6j'SM@+d!'KZ_^r`_HSGgEm29*IR[H.,1fH37rj\^TGoDl0m<-
!^uIsR5C+De);E9+EBlq]Aj"'s;%W=Mku9T(+B@6Y9^NcTPEU!;hiRb1D/C"2*f1?c-ebMli:
Q0ZQ?uB,dL&R$N%WD39s./VNE'nHECWFY81XI;f:9dWh>1p%7>SiRMl:42ibNp;1hEKAgp9i
pQh+XQfQY^7cH6^KB4Kp]A>8PZq4a$\4o_/AIJe7e%R2tqO@CM$TU1k6p#Pg*6&AH)rWK(5=)
j`0mrLkUTMsFQG)DMD!+Zm]Agl7c5SBDG>TJt]A+81;%ROAU,KVED8D0_qPW8TMSJAFNVQjL)#
6<liE7kPO!QI6R/]A,&2s"?YMOfJM-jq@@o,;'XtS>,G"T(gVEOIksZG2'=3=dZ@aAR%i-`bp
L%^^o!#kc.]Ab.W+\b#4rTK!`&leFJtQYZ$j!L%F48?9r?\E&hZWX+$XG>u_)qKYRF3c\EtKn
4"0?Npns^"1D(B?\S*(%78X(:K/+,?[nJ3g8nDmp#-DtFiCeD.LLQC8lE+6".RBp)[&mVrc0
b9,pUNaq=_=[mo_Du'Z'u@6=.XJAO15+=pjifkSq9ljrkTB"\9LJ='A;9<=#_qI2/<agp3()
=3"7=4$\4<uU*eV#_Ar_^hHj6@VZF0]AFLYKET(8mVm]AjK?r"4:`kFo"#^*19_:1;o&(STB<)
eBiE5L'ed7['Bq&RSkGO02CON0ed!W5KR^G2,3idd2djriVZFO3,+rDAfH^]AB1Y%L(VmnlVC
K+cJms&(&\-JG67^7>fquVUX.5WM8%8'q/:/'sAD2;C>%Irm]A=WC(%/\UmRf4el,[PQ$*''d
pDauIP]A:SQ7a:fG/*&Q=]A[;3PcI#,pYA#q&W&BZOVo^RuU8!TZb=\E<QMMYqjrD+/?YKnQs3
#1Fb-uE&bC,-:N*.g5Cj\@$OKM?W&_'C90GiNG7ZOf.3=i7$M[Dek"#He1t74B_p<AlqB\&d
G4L?/N^RdZWB.J\Q5)(*`K$,C`5))\!63ZKXtk,_0/@eY4%"6fnpTXj4!^]Ad9!5KWj3b77lL
T#%]A3%F`P>$Y@&<a0SKl8B7K'mE&aV$*.m>&J35Jb$]A\Wh5Rd%WM^=C\s=VHad^U,=XX8_-p
:,&2=5gmd+%e;iZ)YhhIjL%_umt2?a\g9hFen&9d:[G;%*qHR@9BZ6X!9g+LpOD`8RJ+74K'
uIcHWi&"kki?[>-PJLVsq,-jek\d/GOm%$B$q^pKP3d!WtF/5[E+:_.i/B\mIjb+k,5<O]A]A7
L_:G@$BSM%tFnY\LW#XLIb^)$7O+^QdKasMdU)tcC(1q7eNK0hPI/"Ag-D86:BhKoqXuM7A$
>lkgVZg0qEn!/*`u\-N_B$/<=Fjn$r84!CrV9)/rWl_-;X?2?E7GD^Gq8,A3[=Z$#TmY(oiS
!X;_Ol$7bhp)#UG2u;1+K:"(8%oYt,Yc't>BlKoR"kl"\/OAdA-J7u30p[OVO$Z)4L8IJ]AR^
dPLQ*e@;*nUYbb4KFX"1]A<"Mnklq&=kb?C.DJsVLg=UQmsQ'fSdh`M3\,m-W(gZgA:Bm8hl)
$U=>b,"`!Of^RMY_;cY<ts7%Uk#nWgt[3"FY.5$)H([ck2.3k/KS$nAQ8JP:7eeq']Ab6!M.d
s&WrZkWqR'>GV(FbQb_h'VN.67)Vd"3Ecs1d)q-,'i#rDhJ&tgS2$qKqMsCQ<+E>"Vej)@(@
tI8O?d%..[Uo,TqE&*'iuqrdI]A/?O@>+>-qL"q*osI9odo@#PIAC)%+SC1J2a+:4YR.qtd<]A
*OD;[W;TMN#Jf@/Tb=gThUR?>?QuR<7"nFN^6ZedQ\p![2T%3WQRG3O/;:t/VS/RFFLWYCee
2,".nf=B)-!hcj6B'Ea><6B^UJW$WUKi4rXA~
]]></IM>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="950" height="567"/>
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
<![CDATA[13068300,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[27355800,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0">
<O t="CC">
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
<newLineColor lineColor="-5197648"/>
<AxisPosition value="4"/>
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
<Attr enable="true" duration="4" followMouse="false" showMutiSeries="true" isCustom="false"/>
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
<Attr class="com.fr.chart.base.AttrBorder">
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-1"/>
</AttrBorder>
</Attr>
<Attr class="com.fr.chart.base.AttrAlpha">
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
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
<newLineColor lineColor="-5197648"/>
<AxisPosition value="4"/>
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
<Attr xAxisIndex="0" yAxisIndex="0" stacked="false" percentStacked="false" stackID="stackID"/>
</AttrSeriesStackAndAxis>
</Attr>
</AttrList>
<Condition class="com.fr.data.condition.ListCondition"/>
</ConditionAttr>
</List>
</ConditionAttrList>
</ConditionCollection>
</stackAndAxisCondition>
<VanChartColumnPlotAttr seriesOverlapPercent="20.0" categoryIntervalPercent="20.0" fixedWidth="false" columnWidth="0" filledWithImage="false" isBar="false"/>
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
<Attr enable="true" duration="4" followMouse="false" showMutiSeries="true" isCustom="false"/>
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
<newLineColor lineColor="-5197648"/>
<AxisPosition value="4"/>
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
<Attr xAxisIndex="0" yAxisIndex="1" stacked="false" percentStacked="false" stackID="stackID"/>
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
<DefinitionMap key="column">
<NormalReportDataDefinition>
<Series>
<SeriesDefinition>
<SeriesName>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=B11]]></Attributes>
</O>
</SeriesName>
<SeriesValue>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=c11:f11]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
</Series>
<Category>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=C10:F10]]></Attributes>
</O>
</Category>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
</NormalReportDataDefinition>
</DefinitionMap>
<DefinitionMap key="line">
<OneValueCDDefinition function="com.fr.data.util.function.NoneFunction">
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
</OneValueCDDefinition>
</DefinitionMap>
</DefinitionMapList>
</CustomDefinition>
</ChartDefinition>
</Chart>
<tools hidden="true" sort="false" export="true" fullScreen="true"/>
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
</O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="9">
<O>
<![CDATA[项目数量]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="2" r="9">
<O>
<![CDATA[1-3月]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="9">
<O>
<![CDATA[1-6月]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="4" r="9">
<O>
<![CDATA[1-9月]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="5" r="9">
<O>
<![CDATA[1-12月]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="10">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="项目数量"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="2" r="10">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="1-3月"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="3" r="10">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="1-6月"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="4" r="10">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="1-9月"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="5" r="10">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="1-12月"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="1" r="11">
<PrivilegeControl/>
<Expand/>
</C>
<C c="2" r="11">
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="11">
<PrivilegeControl/>
<Expand/>
</C>
<C c="4" r="11">
<PrivilegeControl/>
<Expand/>
</C>
<C c="5" r="11">
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
<StyleList/>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</body>
</InnerWidget>
<BoundsAttr x="3" y="38" width="552" height="322"/>
</Widget>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="button0"/>
<Widget widgetName="report0_c_c"/>
<Widget widgetName="chart0"/>
<Widget widgetName="report0_c_c_c"/>
<Widget widgetName="report7"/>
<Widget widgetName="chart2"/>
</MobileWidgetList>
<WidgetScalingAttr compState="0"/>
<DesignResolution absoluteResolutionScaleW="1920" absoluteResolutionScaleH="1080"/>
<AppRelayout appRelayout="true"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="950" height="595"/>
</Widget>
<Sorted sorted="true"/>
<MobileWidgetList>
<Widget widgetName="button0"/>
<Widget widgetName="chart0"/>
<Widget widgetName="report7"/>
<Widget widgetName="chart2"/>
<Widget widgetName="report0_c_c"/>
<Widget widgetName="body"/>
</MobileWidgetList>
<WidgetZoomAttr compState="0"/>
<AppRelayout appRelayout="true"/>
<Size width="950" height="595"/>
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
