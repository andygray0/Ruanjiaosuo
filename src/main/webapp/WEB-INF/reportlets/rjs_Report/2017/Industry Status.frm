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
<![CDATA[select * from lxty.2017_season4_project_market]]></Query>
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
from lxty.2016_2017_project_type]]></Query>
</TableData>
<TableData name="ds3" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[select * from lxty.gov_investment_2017_Top20]]></Query>
</TableData>
<TableData name="ds4" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[select * from lxty.2016_2017_project_amount]]></Query>
</TableData>
<TableData name="ds5" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[select * from lxty.2016_2017_project_money]]></Query>
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
<![CDATA[m9FL1;b%T-Z(`")Xf[HlZBb-glXqqPa9@`9UhFU6lgD&BT[@5.>u?7X0dR,U0&#krf+4Me!b
Hf4Y16(BfSCepBu0A&`**Hq(_i,P#SQ%s+X&+X"']AR,S\'r![tY5Spqb`IF6:b0mlBj)1OQE
U?&7h=\^MQ=**h*s?M1aZ_dp3._kcRs;p`9qoUPK'K0q'"Al[2"p?-NUYMHO5>3sfLWf>Cp^
)K[/I;.j`PB+r(5FrcQUHEgFq;dbt-9/N/NdhCZR'Ol<i/KNA+)Q8+^PTken.LDbej5GKVpb
JYI+]AsLO@=qgAZc(FaHsS1gS>AsjWeN(o]AnoG_+O?=-:V0V(N8&iHgnjAo$MY2P@\W.A_+9/
$ST\1qe6T:X@PAcIBurnp#d"4]AS?_?:.k96_-XCFRQT<U"3h:4`h9=lAB88HgAQf#mPdXM47
aXph$'r1]Ae2NQnt5%ZCs,'bP*'EqAKY/>O^/pP&k?&MXY(NSY]As$Q:8O2]A<\W:=ELM4G\#(p
>H&l0-&,FA^1FC5$,pe-$]A&L4#"6XiN\F9p$/?o]AOE[Hs9]A0R?k\`lL!_b0ca9N_a]A2TOpfl
L,6&0<7$21dVU:;1CK7rPJ;d\iR7%9&2))aL>;ig-/9T,([D@s(jDodVBEg(o</h4Tlh)"dL
B#_&;=pE"aO&7:>DjEL$4@%eFg1:oH;<R*i+^:Rb@s\@OY=Ja!Zu6c20oXTsH9CI1<NEeRaR
gporuP*lMLS0c3ITV$<LfrOW4DU"*8C8+UP9,YUM2F53$\hJ5"[@UB<gtPg/o*jV)bRWJY=k
E]A^NoJH,c65.%_hF^,)ah%1CJGdd(eq"1o*m4JQJp#G35J/H9gN,>3R=pt/=!+J?Q=M.Y1s-
hV&$!/C^/cQ[JO$+R6.q.]A7*q))7/=dJ>?ZJ!5XAV-q'Cn<fbO:+#TRBIY82K>`"+ZX#G3tS
s+Yb0)Tmgs&77jG&nP6.&FCRc]Agb3iIq?c37Kd0dhm4&hI'#GQ`FTEa9kM+3aRZ%fh>k`Ri<
=0g.YF;X3bF9(,)_9;mpD+]A!;43&4,3U%6_BBI;gnH]A.p3o9\uS*MG92t/frU;.=<UDA]A_cY
.1^<RO_,-FWllVcXCdick#48f1=c*!2EI`_d/mN4_Ao->R2141gJ1Fe4/IDo1`)o[J#u((kC
I0f?!.*3IpP=i/ouB9qA1(tPfR0oR?HX^r>as-8;4B8k>N,V]A`/[CJ[MOkr]A4Wm^BS_LVXA+
KO<q(_O4j7GrF*]At$Zd&IAKLF_Wu<".eo.iFbuI#>+4u,>,"cu^:LHsZaEc(CcEC]Aoa78gm*
!WRFdG5^U1Q/?PN64/:8A+#c;.ug&8?&"88k6-423E?Sk$tg1Yg,Hbi*^YulI5M8ZblJ*jG1
Hm%Q^n;^9aIf3I:AE8UGP/lFcElh6-,tR*4I1T'IPF6#[D,lQiTj`#R77_Qf!mU'?h7;]A[]A[
7+FaXaeVq2Qi_G=<Wp7M)/sabHK%Fd;Vs33:E+J4DT=pU:_?Z/FN<E'pP0NBhiW\9g9A7,A?
+"`^5\OHEJ"aO%-;6GCesbU&;p23'jNf\oFPsJ,dns=h-O#GF"k$9Jd2dtFh@SJ96:j2j1!U
VKriQeRkX_nD;O!6:j4-`KFI7fr,>;qMPBdaOYA<aN/pGmXZL'2O1UJ<'q+G<f,2DYPEf;!*
IO&-EC[r`#^L)u)'np5<Kkj@'^Z>G*udA'@2O'0&0*2YqoB_JRH>m7IRFdG)1a^VD:,,tYmN
uSCn<qdgU]AAG]AGTDegdc!#-L!l6^rI<B;M2J<s&)6m,lP[t5Pn[lmRUHMZg5RPTSN+(:utB_
7F%:u2[T07YiR18K+hRW7G'T$SG]A=g[6g:P6+;uC$[+U;R4Ss>F=+H+@mg"s!Fih`^m5G%=:
"E#7`CL8#qJjXJ_f$DT:L?!KkL/Br;YUE0,k(RnffT$qgC_!nl>Qgg9&%u(rhr8,ZD`%Y6Xt
/8.;r"ZG=KI`K(;u,I_1[;dGG)BE^6U.XKmDEo>,VeTjmjJ?:a>31i8iWH*]A&q?9Ps8_0It&
oIc-hN!F;1K/S@n?)KYANp/,outeaq0$QB=?Q-J,G'-]AD@qs\N-BBO0O7-X&V+:YfXrGq[fA
#b5Cn]Aj/*c@!M.F8_P^Y'u0r+hkLCq\YeNk=P"03q_,>DIge2kZ8T7H%5KB6csGRKQUoB21U
$@kXEC'.SGij#R</Pa)!aC>*?c4d)(9$H^HYIu0nh=!ji=Xr=aEThP]A_sdp&C^JQAB%55MSk
SK@Zk1Z8'WKp(*(qiDl4=Ls3=GJ,SfF\KR*jnbO8K<;5VA_K$Rf6H=,h`c@;OVk\ih.,qsAg
SX#*Iq%Z`t7JtjW^"Z>T%WW98.[)iVO8.IEr)?XE`K`jq!\VJ)$f7j#kO"Os%E#2@J2P(.p0
']A>rE1$!ACUW8:^:2]AN5c#l1s6,J#L:$d:O9`V>ke0e!9sYnim38gNA-JTsSZP[p@Gk@.i8g
>\MAV%Wm^C/.ptERj?MrD<OYm@E0rLVJSUV*mb4`H%Ot0TZAYHEkJ%MnU;iSH@C#]AbG?m7,/
&`jS+pUZ@cjsg]A#UtBIl`4sFLB8QpEl%I*J=W"tai,*ilB`hL\9,m5!X?6gW\N*6YmY,A[]AR
,cHNPMCK,4goYCRX"(.9Lqaqdr1QA>:`/F&bd8a.cP9K%#H%:lO4#k0\/Gr6iMo=WlAIP"`V
$'5%"G)$t.'RF0rS\1?^Kdo]ALIO*r>)lMc.Cf^m.4bV7W54[R2_9El$&$IhNr8[N^mPuLI13
%O%$FIA#r]A5-&>(,ogGdHGNN2pt6/kO:-JphfF,W]ADo]A8WK?:UnKNA`;f7u$aF7I[X/j[S^$
q=,5#fF_/`Tg*,@BC1mr5&_1e^@W@g$gF?!bY$I!"(7Pd;[X<E^#h83&LFqnH'Lo2qq':an2
?@_B?P"[<R(G(i*Ytop-2@<9pachMnM?+8ndb[8f-CE8BR5:$bCsb+g%ed,qjdOVn\hYX9(_
/8)js)iU0iIVBZO("R=F4[I<4_[fhgd[!DA7Ymo)LK<1+P]A1Qhr4n!@QRN(%Na3"oDlX-V3:
9nqIN@]AFl2,#&=PRl<n0>0b-]A;$m1d\LT7mErH&9EKqHEE;O`RL:jSug<h8F'oZe;(BPRQ;/
"(f.!IKUCLTg\u,/U_e#ZJGS9S1Yr,/#B6IThM"%7$)p<BK-`K*IoR'MZO60t[kMG=VGY2aV
5Fbqj>2;/*H6&=D):G;5_C@\7lHPZ]A6<?L>Lp+U4Rh+E]A-@nKFeDUfP-MGc2Cs/O5%9e3"9<
b(FsjSPBHFjhRjLA'S2f6fm1W'/qIJ-J^\%[.@hkNhgIpVen@f9UaU/B(J_D-;N&_AEOk*i;
>`j?ZY8B,`bpC3.,2tG:l.P[U[AW"B8KBOjPuRO=aM'$<rZF58:H%b]A8(>rXPV0o+C$.ei]Aj
\$>^XiGqAoF<ab8B)9T^/Y\Ekq!"EjiLM17)i:f5=,Ga>T_b#@jGVAfK)CDJ7ll)XFahUdC'
%45$/+JLk=tPHbEh"?g&qo7]A8;L@,Z+sBo%aniqfg7W)2k^&-V`eZ\j4IRDipLDn",?XY32*
Vo>9\u<Pi@?JOVs,lTr5RJgt*<fW\ZVOrH^0?/3TqmT)mR0BT6N$:$Y.aO16,Dj'Pgf.!6T:
YUTl*SSnUF[Sg:f;su/:L^g4Xn5`EjBXr_6O```&W2tq^Sei_onFi9&f8SS#agbdli6gh5M>
uD/pP7qlgmasORtb$)L[]A[CR4[sD\\I;&m\t`X32O'b^fE$#%YebcoO*j:hBX4INU:`2`0OO
+V3`H+)S:1OV)u*W@u9*qDm@?H:gauS.kmtH+kN!*0JAl!K/L4a9rZ8WGdN'dfV-aP_U`fC8
/ZrAWF/I!ELXBD"@N6c&'`A2)"8uEBJM;FG)_5DXm"'25OOl=E:hjB/tr&NkN#F"(2.^t2jG
R.:6_'<bRtrl3('P5DrH_QN1@)*=LuI[30Y^\3+cu6,7rj8g7a&Y)H>fac<l#(N(D3AQdHh9
!^pgt]AE[Q5cpWKBSeL_s,6sX*6;]ANK,?:Si.O47eQ*jDC'=IC*H-"Nq']AErb!r:uH'\dKqIf
UeCk2R]A<blJHn5X2,!df@o\IuqmO9"Ur4>JSulKJY3!&o?^-N6e/RqKG$WPBA+Z+sZpP&*oG
mS.')sE_WOBbWE';8**:p$?82br?&@tWV,=<0M_Th%8B9_XReD4BR"rp2f==AKeOV5<75`AS
>-Yi[sgsQQE`R#@?Zt=&HC.a'Sjfr?StCG%l%SfP)lmVl!IOVfh\"7U?`H8-aSCf*lH.o$s7
g('ZPcAX%J<L9sLhIMk/]Ac8.3V;fr@MpJ4nS3RVO_;:*UXA</*o&51]A!64nHS62e0=/cHZn+
3N\Whl-=a?f_fH2]A.H_EaZ_ro>kHGp3!2l@T\$/o>'!GpYRG/jhlT&-BY1oD*H-j+MUmuEa-
#O,ACot[jPLZ`[KjWtkuO,(kR@`gE6EDX@Z2j^7)B3O<<;a&$1oC=Kf%:?-FS%i#uHB2$5LD
NY85ouc)f$W-T+,B[SHu.DXlG2pUd45NZr;R$me.q(hSMrPhQ>6gjLQ0Imk5tB\_]AGYEU>Rf
?(lNbb<%cHMjX\W)e\Kb9[i(Pd\s?rE0fHDUnQJ>7^ZO~
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
<BoundsAttr x="769" y="198" width="118" height="98"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.FreeButton">
<WidgetName name="button0"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Text>
<![CDATA[2017年行业发展篇]]></Text>
<initial>
<Background name="ColorBackground"/>
</initial>
<FRFont name="微软雅黑 Light" style="0" size="112" foreground="-8337437"/>
<isCustomType isCustomType="true"/>
</InnerWidget>
<BoundsAttr x="4" y="3" width="1130" height="28"/>
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
<Alpha alpha="0.1"/>
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
<BoundsAttr x="559" y="366" width="580" height="346"/>
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
<FRFont name="微软雅黑 Light" style="0" size="72" foreground="-1"/>
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
<OColor colvalue="-15685206"/>
<OColor colvalue="-3163496"/>
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
<BoundsAttr x="464" y="0" width="486" height="276"/>
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
<BoundsAttr x="559" y="36" width="580" height="324"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="report0_c"/>
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
<WidgetName name="report0_c"/>
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
<![CDATA[11315700,0,0,0,0,0,0,0,0,0,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[25488900,0,0,0,0,0,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
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
<VanChartColumnPlotAttr seriesOverlapPercent="10.0" categoryIntervalPercent="25.0" fixedWidth="false" columnWidth="40" filledWithImage="false" isBar="false"/>
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
<![CDATA[=C6:F6]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
</Series>
<Category>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=C4:F4]]></Attributes>
</O>
</Category>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
</NormalReportDataDefinition>
</DefinitionMap>
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
<![CDATA[=C5:F5]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
</Series>
<Category>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=C4:F4]]></Attributes>
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
<![CDATA[=C10:F10]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
</Series>
<Category>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=C8:F8]]></Attributes>
</O>
</Category>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
</NormalReportDataDefinition>
</DefinitionMap>
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
<![CDATA[=C9:F9]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
</Series>
<Category>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=C8:F8]]></Attributes>
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
<![CDATA[1-3月]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="3" s="0">
<O>
<![CDATA[1-6月]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="4" r="3" s="0">
<O>
<![CDATA[1-9月]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="5" r="3">
<O>
<![CDATA[1-12月]]></O>
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
<C c="5" r="4">
<O t="DSColumn">
<Attributes dsName="ds4" columnName="1-12月"/>
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
<C c="5" r="5">
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=F5[B5:-1]A / F5[B5:!1]A - 1]]></Attributes>
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
<![CDATA[1-3月]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="7" s="0">
<O>
<![CDATA[1-6月]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="4" r="7" s="0">
<O>
<![CDATA[1-9月]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="5" r="7">
<O>
<![CDATA[1-12月]]></O>
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
<C c="5" r="8">
<O t="DSColumn">
<Attributes dsName="ds5" columnName="1-12月"/>
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
<C c="5" r="9">
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=F9[B9:-1]A / F9[B9:!1]A - 1]]></Attributes>
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
<![CDATA[mC[^H;qLb-MRA=1"BuJ<9NhZd"B5p@85L_-;?93P)&8Bl9ThXP6AV`Fari+T4G\fl#fmiL+K
3?i$%gA-&K)3(,g)2K+iul5m70`aH[EO%H1(Y15(BrHkNonUg2"Cf?#/hKEc,!JS$!@X-mg,
^ZKCYM?]AU,$I.&R0nm1:UQ,"+b\Wo*A7/V'8s*F1QjV/WtLP1m5#;W#"Eanc8fl^Bh?)3b:C
+_=?_pbCID>/s+bf[!P6ru+&R[l%5,X`^0FOd]A+GMrF?SUq(91QlICGm]A<_2b^Sa!<+EZk*D
5eO`"p%Q$-YD1RK$op'J1?I,;UX)`Q<(^njspd<jCbkDZZ^:8Y?Gkl-S@eG$Rl`_4s8OqBRs
"fHN98";+kg$O9=J)T^>dk-GS6!BJUG;MQ_35^(A]A'cE;^AK/POX6#c\f5uK$t\:Q2?@`d]A-
*sIl,M1B1*JSN["1lBmY+2Z'!43,S<8(IC2s%.]Ao;6;9@eb$*i!%$pK?!BjtZ/-:[?g9Vp!_
9XA4JF,IL<ciHU:&"(Rq\2sPY@^Lob9#"OrdSY1/<#Fs$ohH6`)ZM!F9//:T+7pI9_6e:Dl[
bp?nc\aa).N]ADZE-cMd]Aqor5%'tka*K&3)k>GZbE>0Yj5XdE91pZMW,XFfbBVO"LRLLt=m]AD
\Z-j`8H,d?FMik(n=9"C[s\,0pDOLm?AV%Wf`f!%eOgbIPT'sO:XdC)#mhFjPiK:G045$Vu&
d>a[nXfi0W<\_#GVM*qPQaStf#EpKY]A/;%<brqF"3#V<AW9q0)(pN6fcPGp::/gfo1%.7<dF
ogf.J0K9&ldtS'mR@RL9,6Lpt"&6EG!D,0mjXk5AfG'm@!+,"od8pekO]A(OlLp>UIaKQlN]A3
robDA(FUutWMhe=1bfm/sfBb<i\44!]A-bW&@N&"j*nj)qe$Z80f95i4]AHY7QdX+h?@Wo^:]A(
39"c]A3VRA>Ke!S]A=b55/XW:P-WT.IHMk3kEknNN"A6bm3E0j^pDHA7WW9drplY#P^^nCu8E[
DuM^5";L^OZ,K3K92BFVqlr]A>Y[KUAf_+`N"3T7C8>UraA[='HYlm&<be(M.4"Z\3_=k?Lqr
RHD&aHiN0)3%-sGq:I<03=rlB^'hKN.!jlGJ-/mA)eTT1/\Cl`\:Lnd/f^Y3qAdTQ!nb<89t
!s2_/biZ?g%o']Ae97jYsQBtp\-F[82bG+%FZUQFa/jU7>5+7r;4J?\pYT51Q(q@7?:c>bj61
d`D$e'KS:#M#3*eSR0cV*?dJSOVI?N+59>h*<bb)'d)%[i`g*kCYWX$'p\X#i%&.lGE`e)(0
@ORsG*A^j7-^Vfj:*@UBmo]AcQ<7l*1rQp&QKD2(L"ruegaIh)^`t76>>hKENg%^(b\e9i^Xg
,KqkX??htr!fdmmS2's8C6dO2>:0R(Z$8;#hg/Fk&daoJTu.R>Q5hqDUCi(>=!kEh%o^laBs
[8]AR_@ZUYW#j>+Z21]A1UKoiU4*h:q"E`53KU9ZB8cDD09RNo9M(#\HN;eYpnQOhu[-G]A4tI)
,loe2;'?0DGIi"fU8HUjD;8:]AT(co!&ea!@Hc[Fj\BV/93b#@qtUifp7[K?nYQd33]APC\l2b
N5:bLTP2^M-,p#L252+jF]A'P2m-WftccJg7M<i<CVH1UATmplR4A[6ZnlPe2Op6S)hX%j_68
s++hId^1'+6j>FB3**ub,crA@sP1+6S'u2]ArgR.lS9'7/PA>PNQeW4$k1,408^:RUHBlp$AI
C^:#%M*Jk!t4H;:!9/s[uuI=I]A)a,X:?MG8jV#(%>*MYS^a'%?d:J9]AM]A*U79O"fF%,/64fc
SklX5co-U?b)=B"M!R/TBZZ^)S*OXd.r-'5.<cN4\t0XMRYht)*[k+16*n`%W7XqcD(=rr&>
us^A+j#skt0Am+l8fCP&Y'nQR6>m#^46`-m(KZQ9.d^O.:?qcPj!lP$qEXI,%K@a5sBilcjd
cgN<GmXi8>^;M)hfgiRdo[QK"Onuast0RK*o;q.gVO/hm<'2*V]A@@-Zam_QHoF>tOW+.63`@
2rin4*2jpiES2gn$S)DD%bVU_aVRISN(Wq0<kUaSP:Y'7kY(.dF(jLKc$:kI'7?>Fh,`chK3
AY"G7XIrq_1F6']A_D[:_;K+?/BDh<e@&C^3"=rK2bW:,8iN=^(&%L)%^V`T[i\?0n'5o+VY1
)LOH-Ps;<]A@nj'j1d'jeW=:2a=p?-:(j>UVlR=1kT+r(Q.?"hR<#ts>(&M!BZWBt7j26):Ig
WHj@LN'PERKo-5`t"e<2@FViX?'8'5O=<Alo3tKrY";W!p@r,X]AmJOgsqFhCf3`Zg<+cTq)7
G%D=l@Q3HUnLMS05]A@t`9nrBg7H@VB&3\r8Kq*]A3umd!CqVQN[b]A"_7!@uFLg]AhJ4/2T&]ANG
.'P&/ArOG3&Wj@='G?9:ufY.4W5KV;N$b[7$O^b[8TLImtVQZ[=P%6)86(`mXWR8N-*hFSd>
fFf#j.S\)R;XXcX1id]AZUb.kCKi?XI_b*@PfH6L#'Kr0-B9ngCEmN74tk8"f8$PH3P?3T]A'I
eF[KLI:6-q.7hRb;L[*)?8nZ.?*(*?i3ZJ`:GtcS4oqf5a8Z.V`,[:u%^#8NmObcBo_?32:X
LNEaX?i*6r_Zc&IVqtcUOpP%nDcZkKc4)rUd,[#<'Kh_c[[(#8+X$,h*u#]A,+k6g34=34"@9
tl6+qh45t0u*&/%_nZ'<43Q62Ae9ktF*_b-QY:_ptUs;0f@B9R4mZ)&N&[S4?B%l\JZr)?3h
?bAW>:fHDBoEJ1&Y&@:0\cS\V/;/*2j0AsMKFt@faf1-]AiX<Y'nVCW4M^ARos%IGBCd3@Ml4
:2.='ODi;S:[Y-T`b4+0[)WB`*oR<L_6@T_6\NYRt`C*85DFP-t,Sipld/%j@E"+<5RPpXP\
TtPkhJ]A%U(/;%#aHn%YP9f#um<:ukF"`o_E+6rP]A8,H"IeV]AhNEJIh-XObb)-S&L#Uch_X5P
1`tIA7"l,/1:B=8ugj]A\-?9hnrMg>)aHXMGVN(DoOmsi?JfO<F!s1F*i9Ej]ArY(A-8O^8c/$
G:oLp-6fPqNiCHiq8"VpZU?Nbk^\?N@;klrtmO!:Ag:\.33KU!%]A<La1gRi'JI19Q;!HNFDU
"^GUd&A,5L=BH81!<ZYFm3<\c[?X8q;f6_%_F=h3Am_iN[`iqF^\jG(&pD15rVs&ac)g?=!t
'2QMu'/\iHYOG51?UMomR\/Mb5:47Gr06sgbtATJ.3c9Cgk@4OBURgY0rf+/g)PX/O*Eb+i\
&WsInK(8@&R5;T_aY`iYWIf@[,c)roL.5A1[mjVFkWP$t;At`'T4%Zto_q`"/JHeor:Ip;a=
XH5g:-L2+^N>_"1A'[#HWXC&-LbDPk+CW_BfLHb"u'ub+7&m,F6hR9hS<W%((S@0WjLa66lm
_s#]AV_e,FhPm?K9RIZ+IY'2^6WRI97h#mjoQRI]AJZ"g%sc;*<TM@F7V6+g('jDU5M<&Ug<,6
lkF&e!Kbb`A#^)'O_7`9$7b]AIYRBch,:hLR$*jq:Y*\jRonObef1@@=M*O$L<DJ;ZcSi,mK"
BlN^i:UG+7cGMJQ[bpqMm53FsWjJ2<WlG-9H)IRboDefik<::%*<Z6XOY;f7RsZ[Qb3o;A)4
9L<cl(DK0a#4C(jRXAU$)_5,#I`e7m(re2NV%E=J(%'mYq"8s<0PdtN]Ai-s%(>dnICq,:OiR
bdeV)\U)V:iX_[11@Y_c@eYO*/5^71Na1c^P#RJ%F\cRAF2Gr:fB<7fpB\R)P9)+qGZlH^'!
(W$[>7=Y4$K5G#*(;mtcp/UoiY%!,T^kN>j1V?nc*_6:!K@,YKas3m^KU91Hra%5IGmh+&cI
:*XN<;s\!<Sp'qg(VsO?!4[.e0a'@.u#3Y3Z%;fV>YjXZ[r1HYM(_uR^tuWMTOTCk/X>:0IA
n'&a53c-dI"O5cFiaeGjj;aUB$<4J!RJS=jq(YDhA*TDhN*p)e+PA#HLkg_]A!FY8RJ/]AoPJ7
UR'+6r1HPJSI0hpZ4GYTU5f,e/c%V9nq025EmQR/BAB8/RFWI1*OA*%=a2T#mdbU3R'\tT;L
;+A([&1K_.m_r=[or9n#&OF\[10N(jlklQY+[)1Sc"AT\X`DpE2,=36SUD^WGjeG24DSJ4lf
D-O3PeZ.?tQM$Gsm"<B`7J:,h@emq!^R`NL$e3/lu+nuNuaih6`4:>/c<V@o8AQGCoBdSBol
tJi2nIO+<=_[C"$>#+:lSZ42AuO-hiY;rY-bjcL=g+kC0`!?rdX*CL'Mh`Y1f1PY']APZ,'9`
352oT"%7GNED"mXGso!hK-KTf23narMHkpJ.)T/\5s-o-ZVJjNUt]AhW`Zh/=04kCqQ6Zd)[o
*m/In2LC,#Bde(,I\?G(3m=?hal96"["H7;2N<^K+QI,n&c75CESlSDaGIArR%E2iJ,:gS);
:k5/\U\m@"`52U9E4/,J'*'IRIM\D-^Ir@Z6kt:hSh8e(T"1;3nER,O-s'TJCWH%dIp^W_dI
o3]A]AJbDS@.Y%2lmTn9f^:H_\Z7_aq+u%s's$N4h@8VgITa<qd6K';#1gJc>/hL4oaF?_KAn#
r)\;U]A,kd4X\O;Pk_IEqZbLhipEU6M1)J1DpE[8h4\l!&a'KR^0CX\Vj2p()4^S(`%pq^C_a
<m_bUhQ;(S1Q`)5"mOVe`I%t0Kq?ks/K1/V$D'#;tXE:r`!'CQ19<tc8]A^a+pJSOI0d?]A,U[
nEL<hqoubMR[W[2)[DV.al,]A:)N)f[>fr:4n%J@,PM%Rg,\`D12Q[ehPf>."pPh9&LGs9d,;
bdFbs>kW!TQo?UZe_n7GaOUL:l95Y2N<*8&[uEW)JSiHH^GUfQp@2`94i'ki'eh#@/IIZe@6
O>-krh9?o%k%gU(@BPF.rQukQ<;@!*)UPNK`j1Ck^<pr/"p:4UrEV3sQ_E=;8Y.0p>T>(G_q
KG'MVSN@h<[_+8Z^MQ^;4"-i_2?kL#\KKrPb,rbO.gFchi>D9m^Zb+B.3l*mLt0UV"V$/KS8
r?$kE5WUh@):%K;nu2A&6k:DhRdN#0+Rh/dZ%g,0LE2L^J>B*NF427SiMf>m?Dd_3@g#c2T/
K8acQ!jkgj70Pb`iMuCW2"3nP@"/@SC+:H&[tE.mk<O7!Z10XHDQQ+r3nAlDId]Ati/I`fh]A7
;2_41/n!IL7kFh(9lV8k>(mI8@dL&&@(,btDDZe,aAg&Mt-BmTHf@?8@VsE(>VRUZYu:bG(V
.g+)Y3o;6.%LZ'6Y1B#:(I8O,GDDPb&VN:-*2KMt*ruCjb'gZMUG\t8[V&hTt3f`#!S`%-GW
NJH,H"l1_[gtJVe3MXTVd8RcL5SJ!Z$r<hEb@%Dj7t/X#$'2L+h:!nkGQpUaf"6i_HkcE/Y>
]A]ADjqnmB^UOqImr,O7m(`%"d$nPQ*rYO,1'i`'q5a7VVA['6_I2CdJ66*.@B\<hm,1h"M7KS
4081EGM/f/aJ#^1Gm6Q8kpR6GlBd-?lT&8#pO2A/DaolcTgSlX4#7&bg<k+)5'Z8GfGflh*Q
JL:\GY,jhSIhC^Ej?Jb0ELbIk=cO09UT:DiZhh%,3r6;WN._C.Z+j-j3.kg*F2^NL*9!ig`r
2`?*k!@PfuHc(PqrBfbn+3YJX.\A<_cIFO#dM=FL7SoK9<jX%K'LA,I]An(/f`\GM8]AI<$qS4
6t=VNI`RJV3S2l1RmAqFn'86Ms'rFS,;c<K-pS&HtkZE7V("]A\s>26Ocms?QCQE*KrmagJ3n
dtnO\P0.o)E(PbLt!)8tpgQ"?i4CLA`;3q]A8>:!XJ[oMY$lM*6:NX!B!RZU?j7&\LrXBlJ!k
MjO0J+[gUlotLJ44`)[i+gni3$He+plIRLXcK`bsD=Yl@lj@(aa.W,^GqXFr<:e;ed9[tUGE
K/njiL7m!BUDUk6ECdbW%+,F<U0Y2=A:/cWL/:k\]A1#f!'-P:4DI$R)5lkJ;MqiFI%s-,pa<
$Q/C6&j#'1M<5%Z4^7omsX%igrp[E<1;@uNJB#)dH?2Br!8AkU(8RA^Ma+>oV?L=S&#0'P0>
hldRcp[IF?r[@Hmin>d<XD==hd?GUHh;2Pa#b!uI_D#2Q:>ub*$MoJ^`8f/0@&bI[.@^pcnY
JM>:nF,P-[:JDlrGjFeo$#I1k2.kU_%-Ydmp,<$WX]AA0Ugeg&X8J$u=P;ZG^l%n2RDcF\HP7
C^+D00@%@tT3ca[jHpT2./eMjr$QWb+a/MC"538-N7NW$90-Ei46dc.F%Y32"Zg^KgD\"U7C
.HC/9?`0f2cC&T)og=6H6OUraUa%Y\(>IIM/=N(_t*Thb,s`\T)r'g!-fZ7qAO`\+F#D(gCo
V&8e)9l7E2WX<VK4V4hQuQjY%m]A<Vurk-P1GDC<:aY0qRfUV!Y_%'T\odJ:.sNfXpVP]A's&"
j9E[jRG@YB0Zq4MoE#j5Ms</KB%Q8\7]A+LIl(U,"VFsarUVfS`j'9af^"5$^\+Ni&O0\orFp
=@#Th(5(644M>s?qiYS*:0;+f<sb.]AUn"VRtneCBQ:o^eH13sIF#BRn+6U?kfW"OHMFN]AK/C
5lL4\^RFX8Qe(%Iro!:h\_Pcb#jt'u,<+)n?Hr$.HF*$?c$P%s5"9sD9`.JDG*\j?/dermi_
>/3'Gm*i.K)^^9WW#ea#_l6?,O5)?NJ@^-^NJHVILGP:>Z9jbLB/L0,Kg:[m>PhA8CV8KH+>
I(kTZqHU`18;&D\C<1-N/!dUkTlGNEE+qXT?jLnaC!0PiAWVA;.]Ab2[&4WgK`(t@qCmZKT/^
-6M4:_qFg5Ib=h/E!fcW4/(gk\\_=&i+PoHA,QSUAECLNi9:Y?25F82fD8u=6gU=pf45WI0%
AGpVo+M\*,tcpt4e>9f`')KI_Ya0Zg7Og&22c;]AB3c]AJJIpliMfcaba,%K1#]AS^YWQlXGr>#
WuV;@/M39G!kQm3g]A5X-<%lCuT$+d`\']A03.6nQ"H@?(6n4U;>1al0s[ccA,A<k_u\X_-MJX
QjBk\:u&5W7NBR52?g1>\D$RgeX5kgVkKe$K#1#"673o*1c["[hYe\_st3cnm)2Q,dbnoqW[
h?+luALea(5K)unt0Lq(CL=nEtF^I7F'H4*-hO^q8F91IlRO.Z%05fKM;M+/%7M4UN#(UN0j
qnCtf-p=cpK$/P#=#hb@HU-VOX6R-rUD@ED/!8kSQ28Q8<0aL%D"C#\SH+n`2<<JM_?_?8hq
OL.]AJmmR#5L#\OLBh,E86=Y=J4LRb23`SaQ"6\XEOMe6/"<3&8XB]A$Ri3qfZ%'"5t!^cM3f;
*+KbI[S.OgL.++dHq@=s?pmZ9d.=_"*c;3$,geg^Rqb65b'ee/`Z;9O]A8,M^#+*u;!E6qkmF
`t.96B-iUW/$kgZ9n_.SBI(59&/i3!qm,K2=K4D)/_g4%&G="?M^ITmP,%k(jP/XW"d0#b+F
Pb38D:,-SJ]A%qu%eV]AQ!ch'YBdL;-r"rp,8I6\lW7P?#>)*2?Kmn@4gmk*u'9dY"etfesbY"
M(oTT"S=kM7+rfH+!Y%KTTQ\d9%s!bK_a6oQl@fIXT;^ACS6[CWs!P%<[8;:SU7uCjWI-b_2
EZLX\7mBl?N"bXK)K"Z(8_X]A';h0L3l*.LXlr*%8*>Q0uV[m]AWG$*Z<oh01Y7O8s<ZkAQZ6@
ah!:Pk]A\o)[ml*39[>=ubuXk^6cKCE1[p_@C$De4?00Q/@-GCIY]A0ctiUI6>L0)"(NqiGH@o
;(Gr2PFER6_9%eSuZndTO[<Yc2n_+]AXTk1dZF&O`fmN#Qd'+gsJI)e#VSXkK+TrU<ou]AN;DI
!k%/XXSN\Bn#k<E`Gs--0a4,8e0o0SdX1O@C%QBu]Anu$AMG#f3--]A4hr<0<<Uktqp$*]AtGe6
]ABf0C+i_"m^aM1p&K2]AS/T#85]A]A78D-'25^=hY)CKUO-9\1dh9NQ(D3DR.uU1^3E,$p4X$o-
Sb7W9"W.!H3:2L2Fl^0,(gcG!Lb*E,BXaQ+LrI@?r6UeU[#MG05Cm/EQV(ET/OkLouS$'W<U
fdnARIcS<G;#.oM's%M@h>cF*nsc]Aga.@E:$nOHRD92Z6.JPX4c7i&O\WB^).DQ?A]Aulm^h?
R$cGj_+IJE;(=FN$=4%JHbm'X=ZQ1Zcb29RJV]Ag/V"561XG;*k>9(*S#WRjEo]AcBa&AA1*&$
/Sshd&St6udVp87]A72<GRZD11W&Ar$8bklNcSSmg_71.<Tf@d2djS(u(`fnCB!3qorc[5ER=
?d*HH3Ch!m>7f6Dc_s*$3qkefp^LQR3UEBIb(4,W<WrMRhfpY=dJ;Mo6Y$X4j4X:j7uJX`Ah
"F\=3XpG.9e2;fR8dEt?E.0U.7^$XHjo7\dJ<X1.6n`]A2s9qF)+IYa-(f2`\hE;bF^G9gc??
9GX4,_^a9Dc>\XmA5<(5dUL?Z*tVu\Jp1)\HL=:A6b,/*h:?j![n@ZXNA%FE,=rgCJp:;K-s
[XQ8`is)P[8K@KR$pJQ)BtXs(_-^hkQp/j]A/tteJtrUUJFmhZSD*F&&PD$=ij"("#cM9nDTJ
LG?AR,'k28(CU>=A?T+s8<nE<F0/RT4ZQ%Nn&)^C4_*_9'_P>H'cq=T/Pa[1ee`"5R%(Y>RY
[E56^J_Zbm,S;?Obbau'5Sha*IE)UZ]A$Y_P(b_n1^gH'EbUX.Oa%T)YUNuZes;&jYa8@ifU+
u192Oj;5[-*Z;,3<;`i$B\3aaqXS&+IR"gR#;[]AFWi:b^@Ni@hoT&KlVSV93\TX.H2rfCDLe
*<Kb7n,1Y>p=Wq<>#4KFga)8D>)/A@nYYLACSdDi`02?53DX>mI2<uIAK;'`52+X[&06Ua!X
X$E@8ZJ+FM_%OU=%hW]AIG7H]ADn/3P3,2s>KU1!p7nK,YmY(^WBAc-o@K)]A#=>Srf<^LCa8-H
AJ=<c"eK@$=**3(d&(7B#EpCl&.6<_PF5Bk!1i,-Ff(OC`-k4094_Co+=cQl$1%b6#FhdPaA
<d1p]ARrT:Y<3fkN_b@c6IG4Sr3beDR!Bh,`\G6K)\&jVT-'^WLXkF=K#?b1fc$,m5e5:QI(E
<V=\&*PI&b=1p?W#:HFTkl2$.%Iml_!'N+%\fJRnNF`cA_(0JK\mf9m)hq8kTR\gBnD(?h:.
Jt[;G&FKJ_i,`Q:dmeIo:A`P^[]A\ruZo[b?Yb*<hRi#"H'/Ll.?=q]APNu_l\=/`WsCmfJHan
RsM)2Y\a[EFn!HRiI,4'3Geg"PrN`2=HN/$?c"G]Am0-"t5mtlOFDN[Qh]A<lCqEV<EZZ=@$e3
]A'd`jn>J4)PCY#EJ6!nUoh/h5R/]Af:,gs^oR7M3f:p@b4rCc*fBH"aIZnlZm/h?FK$a-.q**
f&0EPBANADe[VFMi3Z?]Ap@1lk2tc21l`4O,"qa0K]ATF<H33m.aD*:,C@CL"3oTRTS4%gR\UO
QMc-q,1mtVCZdQk#NLC7DQAaZp11[DpG674'Y.9ZriC,T8Yc!uj>Z-g6i6B7%'HCcX?G7&GP
Vf"Q7i*[Z+FuXDPl:&d/'$:u'b$MQj_j/-FAPqpB5Sa*cC+S(SKmp+DEGPP^W?7RY#@0t[&m
pg7pDF!F]AWN:#//[AlM18J4H)dNn1H@SIeM1E#'8;HVZd"QnohB!77hE#/F.rO.Q(8>J%1c(
==i]Adf>gc/P+*qfQpI?r5d]A^-Ob9\!J$Ut#Bs3(k.AmU?cO",'um/3YC0$!32Fc5G:/HjMXC
[nS8MS*Xbjn**Ln;RVI4f<G),it^op_4fdT"PYG9!Kj\m-dsu.SHO[cFLI/SshK-=[(tR*O<
8MB5\&*N9SV_H9AS)kTbFhf@KH[8"Ro;`,As2Um)94.Hg)g5;gQ?riep>Ws3p:M\7V1do(Cq
pU4r<N(#2O&g;C=!R8RGibK[_"KqO,^R7(.l>0pr,mlnoa2uF-L^Tr&']AC13Is%lu+cuQ._\
,f8j%E3)A!L\92eGX0KBh,Pblb>(ZHFZ)\7$LA'UGc#GbR+`ITm7#g(oV2]A"bm.Y@DZu2T&=
%>5[CEXh2GtRl?D(V_6YjT:QX*B7s\OGJ%V%EuWG2Ogb<YgVqpg?Acgl!s$6IblG#)H$E=Ge
tPAV`2H>tC=W$Z)2_:&8D6??f_%7\P*"+.o/Qco!ltF=&(@:sM2EiCXA\9HIFCt&p?)RaC(J
@fX>EEK[2""@Lj>.uI(:Z'N`5rlq8+ShD13t0hiM1k^02qB'ge)X:/42qo6pjh7J3t-7mNt1
YR\M)*K&3l7=?J1VRccJmJpUnCaVq>PR#[I'DIKi#4p8I&oL^>S:6Z;k7X<%e9Gn^$dtIa5F
-s(^TmZjWVHigY4s?Clr\(XXII/r6D1=iV_N+X"7?NH]A2I)M,i>A8"G`G<jr-K!rHYm3*MJq
L$M#tr6sa8&a:S/Qnofa)2sF(M]A&\fli6$We+i`]A_C:s&'`rj\h8,\O34*d\WFL3\$jWT;pf
]A\!\7QP2oN.GRa0#,'=XdU/BLuf;qV*5>93,Y`G/e'b4:sZJSpDjWhhmG<Y/>]A!GHUO!;k4T
c1Jj=J3)NuGA8>*?m4g4r,qmo,MTb=&O8RNc4RQ!pHGT@A7jk3=r:V<i:fKs>M%_Z,&6>2m)
P,CuBK91bj<mA)f,:7!hPe4B.DT+u#D^V3K)2W>9N)VlG?4:@a<_/`;/+0YW]A8GNQ([YQe3S
EHsF96`(0%(ib`j%bLY`sB;0TPi49=DG@6id!cg+icL6A)KFV]Alj!4iR6@mR+5Ea/Br#KhVZ
83\`\P7S6V+@F+eS,0]A&i7?`qtX!jAf/Taq3;e^'_#kl;kVj2OpFn;!`5k\LL/?uh0eOiBGc
t$$nCLh9oX6(:VdIm*X+"-0>n_8IkOaB3B1.@:pk;(KXa@ADK@63'3aa[`_M]A^*>-[TCg0-6
Ee)#ACOqh*cE2Nkm?pXp4,h4[i/alO3]A!0>@'!WJjsG!o[S0ftjnQhUG4YnOoKQ\St06M'M?
eo$[m#+CqAc':Q*50<L;IFWqBX',6KnOC#0iunAlS>N%th-g_iBD7/=fgD>)M7n,M5HU/Y3R
SpG>_PJ;$H6O:8lpAhBaH5c*`,;4Vd8sgfB=*e]A^hnIj@Lm8G!ta0[h@r[0JKkf&0YC%9L8q
?`=Wt'43E[fqTVWBG@N;P29_^n5\Ci@hQQ>7"D(BMbL;"f4C\rH/jZoGf;uAfK'0l1i=]Ad^]A
K9DFT36"GQi;&]Aj*hG5OtH7@[he>_0+nkm*.L@)Ve@cD'PEa7*FI3*6^=B9<-Gc4H?h\`:Mg
<GOY_.2/GNW`bl'7?LdW=o:-;6b'2NBD<lTDFr5HfIQ"RE6=oK9o(G"#rS:9T3\OUg)h%u1Y
^T7G4:t=!G.G9T-GaFd^ZI#Gs2*A?+E+K`1l371/N]AVTWm)aZT=%[*]AYqWak0i24PeQk;UI(
qqUI,%dk2R'-p9GS[um0M&b_@GZ0$+f0&KC.hh.Y^H+JW8pkKJ9iaH2gQQL1UIOgTt<QHop:
Y&m,a=bZ"\`Vb[E'TkT7P+bd'X`t8pWF+k,@/iN:_2W,P'l<JCkGbq2&CT\#Q)ktY6FN-h-J
=5:3I2Q1EI4V*up5Ho`Et']A4PM$'acZ);=Zj%:IZp1(Cj++(,cQaL'iBui=RpopnO-WdhO/$
eXlWA>%C=qQfNRcXj&c6rfRM`Qh+?^*2dPeGgGF7l9#>Vf`p$S'SN%nX3i,)gMq<+IM:W'c/
6dq>=)lEXl[bG(jr0&hqPf._d/i`XDjt:1E(GDA)+^J!sJXj7'l3JE$3cWaG<O_gWPUt1Po"
Of`JA2=MdgR'bP)>0+bU/(ITuY3S_&,b4F\()Qa'1#EX?1oa00e>,eA]AigHWTFbQS=8V<^U.
<Zpq*ipF,,Og*p_7;]AX\ck*oM;Jm9ZAL<,q`e$O?_XQbLn\k2AYnE"u<kMTZD)Wa*VHZ)I1d
i9hZ-X0K.\i=O&X-R9LTH`p+]AsWQSRcpA7]AAVhh4$*]A/(P.)=mQ*g"=pTNJ\Emo1\p/Z$hRM
P33h:uZ6U>@4K``dtBBRL2"'8+nJG^(m"ZUYM+P3]Ag.]A:IaHPGn(dql+l+0C.!he^7qCk?M^
Y/0Q[5YH?>SDctsLEF'a@88Es[T.PD/\3AAF7T%sF5h!.!N:=t,;$-5D&o^Vaa5:m:nc3eTQ
[R;KDfQ'=CJKrj]A*nRHl4=Mk!DS6@uu#(>QDl`WQUo%$T[ooNH,6Wr2nF4r0]AJjbMPQL`$$I
>E=n[^'QL^XFnRDc5.LO:=>.#.]AhUE=?)kh9OMhAf&sCsqUSrj;R]A@hbh4Ab!\;A.RU;?0!l
tb8rp]AfsCrm:6U[t[LZE%'$=DQ*Q^1<%L)qF'lEK<#Zd*4BB_)JF0BYH4NYfqHS`PENtM.S9
TDaZ<%"n^lSBWq@*tIF6_/QqNAi/\-<^rE]AW10!D8gr(MuH:W9bdUm#A+c(j)?8fE#mAJ*Q3
V!`5ph9O$fQ)PS&>325V0M&JW]AkXB'aOge7*UmhbJ4%i`7TDLQYGCE]A!VBBp*i`S]A.\N=XHh
R(m08[<+l65r&3.pR@W.Enj+igIo=/GZ\I^drmqXKQ<prT\1<HBYEXiFa^KajhLI]AQZjO^]A\
%ApY/V4<Ei-Cc?Wss$k!&`W>+e0^slM`)C7ffeA&c[JJg5<+hKnm_MFLD]ABo6Wshb8c1tu1F
lQ[+^GH#G"KP%QbjCk&B_V>"69EhBXqPDR<L&u#Q(G\8He'smR5a_l=:3/s<U7V<\l&^V#6@
Jh?tdE;FCeqX2#(LSQ#F\6X+!1l'1@QuDGuq#3ct;)cgr0a!XpH?>^H'bDkkk6.oc%7Gml4R
CSn!>/h6Gs.cH-XVG$Au#05o;:@Gkd1fA-?5*<N@Ct3>5^O"7q*,g1(g=3o(UN_#bqI5dgT'
^)8'c@!r<R'++$=U5"$Me<2'edT(ldAL/#s2>aC,J+l:hU-^s&8(4GZu/oO7"qCZ,tuL[d=t
!kK=A0>CQX,R@q?Xq@$_?oNEEYUao%265glFL7^/?2b(:KNm@BWm4PbrT9\V*JmTs&Mf8OO2
sP2tcgI^TVc>P5E_Oo]AT9'$5N=c9R#(o^irKVsZ:1_S%%[oZ?']A@\[I#G5#dh@GgX+RS*%+>
A1nuIKnB)+G)II?]An5e-L;`%[oLr)3!L<;jJ,="gufRWeJ6nZ?f=BirC@1s*@oe=5eH^D$<'
6aesdY-15TX]AKRinFqcdUB<_7O1j$kHYN<Y/,(H(0;2l01,WKN(NF2r8Hu!`6G=>a>/J`9SF
I;Jms/Q&Gs<$I?!N^:Q"$,[YIK4X-dUN;]A`@@>(sdFTDa\M&3]A_n6\"Kn/V1N<%B\Mb`&OmW
#CcI*V.r8Q`g@)\bR'a"I\$5e4/69lcIp$"Z3aoRM@Y.HO5k\UT21]A7rF_<3&HG.\\Q`\G@A
n9DHK"^'-s)>PNq4Wj;-Ma&q]A%qT6f4uR8IUm;=X6.a(WQiBO[[U"j`,R*WDfc1e_VSF)+m=
m'aTg^-lfO*lh*4$AeJ1<O,U)-BnoHti/bcBQTr@>afp^odN5@FXN&(U'j'#82pC?\K$Ng6\
jYmO#TFl=qq@,t*XZSL;f;@Z27"tL*Y[V#`)QW)R@@VnS7IqO-q6C3j,2FP0dbI?S;^:J=1)
!8G-Qr='*m3q-8jI(SZAVV,c'us6+I5/h)9dIa&dpuLBRklVo!;6e=c%N)/`._u_cfoLIVfu
D@Q#BHDZHL']A'ZC2PMO]AjQ+F9F6qg0$(#e8,XMK*rS7u6`6q77P%Gbq:-l['106l79_q5=#\
!6!Y""+8hoh>GW@`O6IB""54f""ma-d?a[bap(&0=1lYl-M8DXj3":=gLoD!Fk$k@%=dOr9Z
&T?GO1%PT7W&k=0uXJ6eKV.-"4;=Q$?XMPKp'Z6?>n3OCF$?9<(DYFD[[H7X)1?Gi?]Ag04<p
>17X]A1KE?>7Oa(FHeO.W7[roX$!-7!Us)+W]A@+cn/K+20l?CUgT*3#I=XRe')p<0Nlnf]AB`,
U*U^i0*j]A:[3lX\'puSKWHc4[!"iCG:*RJKiG0>Ciig@)^jjm:D/((`eQZ\g-eFG+!ucM[8k
cGW,951KnU$0WaBUB%CXBNf>IMR]A87tKRI=H5.CF]A8`+''m7m7L>([,iYOc]AI4A_#EOscN&<
pa%s\"HG2_mQ@Ao+=>B%<aTq?I+>2bpKXkXFq+WgiTC(g(AYCh*X5.ah*3)97?F#l&s;\]AnF
glPS%>&ZQ*iBiN*sqD.:pD\R/kK=,mJG"E$]A*QXW]Af]A_7-cK6N"i&5lkb<aq>cW%-S+RM>4Y
Qf"@d/GI>65XKugd`?fcdKPpU(q*%`;8ten,_&Kms/L#/$OK<B.8k=A?.'<ACi7C\Nr:s`m@
\?c,h)-YrXa]A)<]A>L*dA$XDh`:U>JNRn<Y]AB4^R-OXC7q?l53uRK.FtN)(#/o]A^QNi==`94&
SAYJN,K75;RjC[SHbIo\Gno0g#7"fe(.-rZoa'.>,;L=-teJ1Xs:iPuD"7j%KPL&6aLDb4Z`
2#;_hagFSf=$gLj$HOC5KVY%<pH:1:tK@LVK`IqSQSrm`4Vr`QoSM`:>Kk:RGZD1U.l*@h.Q
22eH;:g0^*]A_oL_X;On_G1R3YbhP4an7-+g7ji'*u[#6,Wn:WmP<F(ZVJ;X/a2)up(WWTtCn
@'oqeI!=NM8.Os\'/4mEE^^W^?+I):5KWArmI1p<2,Cp,MmY$=2;.c"_.Sm(J]A$3&c`M?,J]A
r'Rp2'7n!36=afEn]AHN*X#C!-&';ZGgR`kJ%c4Q;[`(I-J[mNq"&+^cp*?9C*EtM=A^GW;Rg
1s6gnMN7WT,E5ob#nn,n?&ZP]A'l7bCm39cU,-dhA=kbLAKF;Ke4WUa,2Kn![FS]Aq8D$$H5?a
fP6gIWqZjCPj`gYb>i,06Z808?e?-pN(COoKR7054\*c`ajWuWnN6=QNl8Jo0;HD(&RcEhXk
Nd^Jlm]AZ:<uLj,$k\PRl:F*-YgWkkV+IZ`&(53V*:b;Zj<Y",'uuhZ3/tneum]AS:Zf-YI>e3
+!:mL7l:Cah0r2f+`Du/+2ei[Iu5Q[(JW<apI>@L(jQ<)p@Fjg14[d_l-jaC2.9aB2iX/VbA
'SH_7pZo5_s[>DVZ-Ci3^nT%aG\a_G0lKguPm>&/uE.)I)A=e06\XM$;S]ABlI&IbYuI<!s_T
n>]Ak]AFG)_I4HMruj(-Y2>fp(cUKo,63gkRB^!+,0VVo7:WJJ7ChUE\%.Z8(?9QG/X!;D^nXS
[Gj5rWE2bn>.!U1qU",7R%eA)P3C8k?FRZO4'O5Du@+5+/QQ:fGdnW.eAFHik&0bEkWd]AKqi
fE=d_:ufk%3]A/t+o+^bU&^9hF%8;XUAO[o6kq+P3#%^`'cPXL)U4l!X"!ptV1G^@tC[K;Ou\
:cH%U"i/]Ad-epJP-6HK0U=gjYlfJq?.VH&ndIEk7B<$SENm[25Gm_[nk[DqlX&$QhZsW+=Vo
Yg#(Xj[WdZ%N,jo?qYm/5SNoU#llF#<Ys-Z5lUGK+MG[B*EsGhLb"T7!J"pRY'XDOP'[arF)
JR&:e;.BTN=c'gTW$YP#9%k1+S=XWLTIRW=#VrRDT@FJQ=7XQ?*RF>_>3o9@>/Y0&XLlX2rN
ED39STX#!]AioI4p+,]ABZ"BWtc&\:*mPgc[;M21g1Fl%,em6@ZR)q2k5-%r%]A43YX%%8<J,67
Y2`]AR#6>&3e?mU,VrM"Lf\oCYogo8K7@MF[MfY)G_3K`Q/)1hE"1Y[K2AcYl>t7s9#QWZMe!
n*naL<7=m`h?*Uq/QjL/XNtNc:cug)%U^ct$(M\dK1Tt+pg'AT!I6;!W"o#fBH,8*cC*\"aB
]A!8C6C&O8B%iuDKq6Arj/Jc#seH4:QJj.?$OBHl)q7]A/S@k#&Y?]AhQ2F;cA=PPPTf\L.1ATj
>Oj>B!.'XKnN*M"I5uAc,r_WQ-nH:*&O^1RAAEg>k9`L]Aq79qMPGNE^<.1:0AHqKVrF>Y,3p
]A_c@dX(pjL@iRaP]A9\ONSWqNYohm]A'B,1AfrppDl`Z."^Sr=?ru3uLhB36&`V_,.PE7Nr9>+
KFErNu&%,h^]AYNpit?(^2E3;W4;-82sIGMh19eWJEc=XO/n-#.q^]A802WIN<!L@uf1@M&Z^]A
h+N5[0[S=a;JmbWs.`kNm\t&S>b^K["NE)6q$@]AY1l"n!b,#U.^'8r>SY56.I;\SsrpMb^lF
T8t$%E`9AU+&o<;a-fG@YJC8pT1"h'A+I#78Wg#a2YBR"RH=JruoJ#'qsfB8MW#UaaG6RR#i
o4V*nbr^=X;e;&(5R'9&Hdl##eJS6"]A7@6N1dFh'/nouD"gP4HO@PP)^ViGh!e+SH#gohQtn
OLP=d!L:Yp?WT5Z,1"iX6!3F57@sO_/G43Od.`sEu$B[RQ%^s1+diLPT^:CZ`+C5OkWhV9*\
)WXWO1Q%rn)bNPmrQ>]AlFJm)^R7_b(\M!sHk-%(bmoO(f$k3RH2nMP@RA+mH."-Qs+t^!FP6
\V!U8\"aCWY=^]ASknp(6+$)EJDJ,*6a!)Z>O"Z-02XjK-)*r^TP^Y5UW:X$-Y1PESg*(baHU
Q^,i^M-Qb\Z-pjDTVDqOqN="=eWX>n"87ZT=85pj9`!6`pm*kt'P)4N7MK2685;4]AO4sc"iK
JadlCg"%=idmF(#l8r&<ok4nRH5;0B1HT`Ug+:SgnN+E)29dHRg<]A5V`*r&\blsQ_Q"Y!q@5
jlLFL?#qH9(N]ABeI"0LBc]A"#R1!83K:*X^o"gDZa>'laQJBqqpD+CnEo]Ao]A5o8%7?J)/InsT
E;&1jVT!@1dfq9?1&4-!Xc*fmEo1b.+NAJCjr?S_!r%ah>87+JR,$-5i=RI9J?pQl.`@PV'O
VH:^33'0juGR-#QhC\ll*oN=<aKt31elm,XRX(F8H'[5.(\0K8]A)ir"r+\&C@m$#??^[5@@'
O34DLi@B@kNR,fK$HTNp@L7pu"VLjos/$j=+-#6t_\[mCf_k]AMSQJ>i'!#LVAk=#IH/mWHoC
:U>QQmgf6pU.iT5rEaI^/$OlK.Ek=9s[km\Ej^'GWs,Ag&>Y]AJD:ec275DlKYI`h]A,;0'JE7
4@CT-QcZtRS(_%7i<5d1`@c+4_0o%j368-%iV,mkGKe*@>FZtZ8H]A0Dg/A64-fa83IYO!5`*
%nVh9lu@rsu>o\U:Bf/6?KL;=JhU]AY[,XW25W'qJ^dV'hErJhN'BZK,NS2og;lPi.glR#Xd_
r%cjhD.+^Y>gNKFgsg$R3`h%=1X.FW&+SK`;(hD5`MW>&^P+-.Jki03.d%hd#;JI.G>srY^9
Yb)QQ2%]A)G%%SnW/oGi?Ps\62XfiDj&8_[2gbEJ7Lfpo6YhRh#o!QMKT?6C3">RMn?iiSk<D
cGpcV%T8;XCGkc*XcS+;BV&aMEE'CmffVNPcOhBXmP*&p=Ye!jS^ieg:_AmbSo7FG;^bumrW
?$?^"husD*h!F^"-lF-B9=,!=N!12T@Z?G\C\TU-@1[n!NTaHNo_"j945M_Bgd/[m\Sjs)l\
h]A[SI2DH>J.E#`[SCk`eb+e(gmp88IMTF#*e`DM/=#gGST>nBh9kc*I%<R!$5mkBM(r)VL.@
JQ,ulj<E%.O#AK@0iAV0GiO`ns'<8T"Vu/i7![i%!!%I7dh5^K*:o8TOWigdP/=!M>c[C8$.
[Abh`McmR'6SdT!)f!F>YT%jIKLKB@hesjIo=.4C`?60cFT\a)?+G/BV?1WLXoPX?U,-9Ye3
9?#Vn&D#pe)O>="0c1Mf@Dcc:.EHGH&>.ja#VW^Q$X)eO4]Ae*d#J/4=*QTqa"8@)MW%;<%S$
;$1KZ*H5M?>fp3j2;>`Me2jAKI^j1?tUaHl'G"S:QXB[*]A!WV+8h@4cW=gNR&;i_2Ct^^TY@
rh9U_6J1&K=.Q8,sY-a.'LhnX^S2kJb6a3MbNXhe+uj3n=)I]AZ%!^Zl.t)<Y6\p[ub+7_+WX
J5W(hm=,Q:4ReJ;>mu)6dV@TI:AcD48E$nQi)oOETEcP"K_<3+)`[h0;pE(0G);6\eIeIe:p
P,FP)X)fMU7L+Ls=`]Aq#loCT-f8W$,#H"75K4[(KGRLb#Z,VcgU@qSV;Gp!,13m::JqeA8<5
rAr^i`h(qmZ]Aek2u^$)Z_EXDYD"HR0Mb+e=]AeHq)h8q&kZQs0AIDEj*sG%@nUjI!XZ1^hC]Al
S\tIK,qVaQ`_&6W=1n_q=!u:bV=APrZfL<bNLjD-.K^*#;]AscHqItn*:`./UcXsY[o$sOe:$
E/\[MA>=9(K@cTfhK9u"C3PZ#BXML9)jmN)pU:F4@R0A!(L?6R.@-if:rScUqMOp/a%&Xo<B
h\X>9Hti>><Xrk9,V+Z@Ii\Ae$EcIs^+mSXPseD[CM_1nbZ(/![6jN&:p),)luP0DD^cq"cC
Vd-alB?c&"l'pp?@j+qAtqV;5@Sq-dCk@V"KY$SZ.+P?/>FiY12@AaS84>:?BM<2;-+LUPTm
uWP6WlIkaL`b;*+_/2FTM?XCGg=p'lXY"uYh<%Xn"!=[p4eUqck!*I'HU1[cP5L;]Al$!^(*[
lh3B(F3^WYkB/4q0\4m)=kXQr9<9Qq8e&?]Ao)[;1#+D/^C$W0B9$%Y]A>!OHLsjk)#6AbP<#[
tXKqSsQ_0\UB>JWm5:8!N`IrH2PpqG[?eYu/%ks(CS/+-=E9\1%+.JHSZao8jJkJB9&@ll/[
@e?V-HZ\EjDcuVi)b@d*^tUHSR=8D*aMd(.0?0d$d!&Hn(#4U\9f,+d5CK0MCo@&ka/$6JX&
DYa96V>2S</CE!ZEK&2Y%/D]A":?Pa:!*1:]A:>W=T4pibM-nAr64He$b<_'s"eDXgQEY'FhSC
&hc7(`>nF9js0P[k0;/,^\JY)SQ`P2dIfi*WjhIEnqleY5@V_<9rK#1K(Jb1M-.r!D0.$)cp
!9fL3hM'O%cD6=pbF1>m-p:%#EN-.)"R*CrYXR==O6]AaAbedms1:@&r9+!9p#e]Aq\gr]A5$pm
ZQ05Z+S4S\!C6)4$_@/WU]A`DUWF[E)RXXc#$_hT=AVI=FUpm9XDIJ$f6geVsk+rrc.pEK[]As
@-q7V(8+TlWWp[j+Lcmlk"e#1VE(P1>dBB!hRSs6a&g"\"B`6b^!o4j;;g^o(W,2s<Vl'57p
h26It0oI^mf5o`M(M*U&JBTSXd,[5S"el*Y9U&j[GWgT<\K0GmL+8#Tj'7h!=mI9*hkc(B9S
(,/6V3B7GI9>N69B7Wk98>!**:rV8OQMgqg@U`o[/mL:_Pj&X,f6!F0cjcZ5j\Ra/4pbEp9h
K<AsZ_3p*J,pIQ.,#l2$I+H;<13.1ci;GS'(;0bALr;Wmn3-'YP`%X6JG!>Z,D<QN%p!%4b*
(i+rZdbn=Y+&ro<"$^n$Xl'ih$sp&0Vs#/a6Z?E%mj%tVo&KXn9r>!2J60^\nNRJ>[0q.CPh
H.32lSP@0C0%?s!_Q3TQHhP2f(ZrNF6Q[ls>5'\:'H.`-`N:)$]AVp\kq<R&d^Ccf5H,Ujbr[
OVW6<@u/QM=8)f49aje.[TmWpTA-lS6if2NW"81THFQ!F!NWIkBY(=2eeHLg8e,8=fQ[V05S
j*At\NjSr@2$BL,BL6U6iQb9gT]A%gBG.@h+hTugZFp&3JH5C$IR;:%dds%//P[i7YiAHTU2o
9J2>oi$u]ASQPHu&_S$iNUU'!oNa<";J1tL;Pe=SSYNU2c<Z1XZW/K5P?&#a\s$c"!WfdUD#J
\W+&m'0,mRCZa/,rj",jsEY\_G+Zj\IYi;8"Vr7A.(%?jVAQ.Wu'?NqhGVo(,U=T%:;%T4))
kPpB\)'q@9cH<EckG-tu+-pFd<Stghg:6UWKkF?X#2RK>_Lg\Vh!gLeTb7kK=pHtVF]Al*T)\
/oI?ZX'#Q5LAQQEpRg4lTk</UWhsqF9.)RJ[!oOhK\8qajqe[oP,FRc#l'=6A+><H*sT.3En
UEdg8L<,=Ygk>r>epLDd4>fl73-%h8U5I>+M*c75Gm!gK6[:lpqg21.(R09*p4\-H\)Fm';^
%">!7..3`r"maBM#[!!1kakn3/Tq+YH@6NdVCN:CM2G\plE;f,"2NZ`4>ltOQ+knnYH_#ea0
Gd%S]AGk;WPu%G71S59/9]Ag?!d)Nqgh`=n4W-`k'oqP:N)b=!F0X,X'MZ[b#^l1Lcj"/#1NRY
E-o%m_S&5SJ:K:kqf77(DWBQRJ7AjlC,tt);S?Xe2L0T=IR.DXd/<)%SkgjW:"KT6a:qHF^p
#D<@qGVr*$QQp$O0\kPUP!*T3^un9/EJH$(-#Vn`;C3+Q\nqqZjPG*$VFZp#tH+)FmHARPQ/
g>tO<I4qC-VFruAK?I\PrKG8iGfQFc]A?tNN.W5s%^0?,C0m:u@FaPhJ7PQ]AW#T\S2Mnq@ZGm
O]A6#hF:06]A^]A\p#pA_\IQ9fcRr@c2c>I+)#GO3:/"J]APnAc4C&o[eC!WQO:_'*5"\r,`IjB,
M,XS0tb(^V6g#>D8Hs3`g7^_0;D$18l<OPmI[2Go]AjDs7B82*B]AaNi?.gCerbJf]AWLk3.W8)
)!(M\FH$&/;Yg%0^0\%q8j[`6MC^H0TlL%gl.S4'"n`hJ5,cLlgA8!>fRbS3r%EHo%u.m!pS
L-uc00ecFWg^@!P/aX+N!;i?g9.+3d>T-[=;S&_/3'\6Me2S)tSGPU7Hh*C*du^Dec&X6$NF
Ya[g@C!@$lI8,!h[e)7>k;slOFn?cRrUq.N7"K?0%1pq'.ZS[nmX\coFdK8e1!P$j,$prT@T
dDE/\YB,c$CU.\TZ3hfrtQ"AIj%GbH(`[9TSP@UVuk,?mclHn!SWG$IJ(*#s2.`H&/=_ed5m
%6(3GasUb5h[+!5q.PJ<'cBsV%#Q&@=JqC:,Ej`S0TrV9oK^9kG/B^-:D\u7n"8DT(Tjk!O)
c)k17^44,KJpT6c9oUL\1E&NDTKdkp1T]AjD5DSp0IHe1-MP<bIr@:,56-r]AUC!K>C(g%^LJ2
9Fph$`#;OtD?(!iVGBT\@^fm1m,p8C%!tRa3Xd$qdOpp^s"qnuI_=<R7-c''(a\=&A64"(=J
gJW3!*]A`D!S02$mFPfi'Js*IY!]APjbs4&J57b\gQ1nm(-H>McrKce;i7)'&>D8NI1n#1QmT:
71K<hQC2u,c3Ld8cn_/F:)C%a`eB=lHC)7.qWC"d,"URH/,7G0..r148W$?FaRlGs.3Cd&#c
=lRL$q`Q2ip`&PY,=9aTls'VP(P"^`oX,tqEs!3-!.PcS4)-+TF@('$JRH[KsA_\b=FE/Dn<
%:@*4*0>I:o`W8:$p/)dh_QONl_%1$d'^WDc+hE/)-??NPV1N`8q5!U:5QoNB<M>7]Aa8&s!=
tp.0"pt^_@jYUB4(.!0>Uj8?-%Vr.>mQYS/sk=CsMra,/M'OMhttYN6E:@=GZpi,`ub>_SK7
S'VmshkKBE)>eVa5o%T=8*fJj`=Q\]ABYGWqXr)=`>?]A^l@I.<AH;;@i7.kpnYQSPsK7bPVq(
FKC-O.Sro`pDAW+G"M/(K")IB_ijthu->X(!#jZ-k?0YWI]AUqYHKc'_\?"kQiP78/r>P(1!/
qeW7@LE)E]ANH<Ib(>JY\H?0f45Y'o7g1Y9F'^Bju4;LW+e2F8i2A4$I2A%he@s=ATj+d=pYJ
RU;--US\U.dZ<Ajl9fGi]Ar?OZs2HUA6f`Bh5s`=X$iF\]AL-LU""SP>HAq&uEe+nCnfDZ3r["
3t+F97V,)9a[!i.T_!4]A<oEJ-Y]Aom_Qnso\S;,H!T;)BZ`BPfXQgRjat5jd#1`\J)N6sJu=q
*-_fIi\hHG.$$PNYe2IRIoR$U.E7t7Vq/pb`p:B#MF^>+Fc75a2PGtpT-06i7&LPk_r&;q(H
/=f?c3f:,g4XlG3C<f.>dqk")Z4rr#0O(tp&u;"/>P3-Un!i^`s`<^LF,9q2o9pe:JaYP96.
^l-!da\?>NHJ7AKlqoSmQj%$&-V@f8SbgQ1$J<ODlU,+GX+_i*#Aq"6?Z*`^Xu=K/k/jiOWt
D4JJ^Q["qQ"'mYi;4hdQ;>kFR/ie,78,']A]AOPK>fUcQ4pAb#]A]ADiTh^!1"KKF9ttX$gDF%./
ZE#O:'YfO*gVNKUCgjV\IU`aC"XGMe)>73BCtmrbJ+aR6U[(~
]]></IM>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="950" height="276"/>
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
<DefinitionMap key="line">
<OneValueCDDefinition function="com.fr.data.util.function.NoneFunction">
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
</OneValueCDDefinition>
</DefinitionMap>
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
<BoundsAttr x="2" y="36" width="553" height="324"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="report7_c"/>
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
<WidgetName name="report7_c"/>
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
<Alpha alpha="0.1"/>
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
<![CDATA[3695700,3810000,3390900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[1790700,21564600,4876800,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
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
<Background name="ColorBackground" color="-14342070"/>
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
<Background name="ColorBackground" color="-14342070"/>
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
<Background name="ColorBackground" color="-14342070"/>
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
<Border/>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="微软雅黑 Light" style="0" size="88" foreground="-1"/>
<Background name="ColorBackground" color="-14342070"/>
<Border/>
</Style>
<Style horizontal_alignment="2" imageLayout="1">
<FRFont name="微软雅黑 Light" style="0" size="88" foreground="-1"/>
<Background name="ColorBackground" color="-14342070"/>
<Border/>
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
<![CDATA[m<]A.=;g6r>3m>B!"Z"Y(E<4MI<9d.-.agk<"@^?lW,YEke;C&$92q,u#ss.f;QS9?7`?8gKO
AMj(/%V+)O@0W+sP^)-*g"Kgor)d)\TI506(\l_g1SB[I<qJGK`3?cah7!H2c.YH%+([01Rp
=>3GFRq1""4?lnXk=n=6Sp3RD\p:K(/FL@`tnod.tK>g[=Y?CO)>2`"R=O(-'D"XG)joR1/o
VT<qoD+Si5ZN#?@K4aLhWd`pHM7%OfNT`W'oA'Yir-?1SiF@NpF[N!^Fa]A24g`N?58X>LSt"
CKdX(cm_&'aL^P1Dsnin7Pg:>jRCeEM'kigRJQ;iR22Dt]A$6Pa?bIMd:`RPel(bQeJ-&b"*m
:"Y4k`[4A9?"&:8(eD!F%IAq8-@!e,4ZiZj07N!ZZb&rD*ZhJ_^W0)UMp4G5q!bDPp6Er38c
5H9qWQ"`I."uR:B%8cTAS`fKaB]A!0DP5\kM["[>g`Ed@5u@-f\nc%gI:iWqKB+8iA",N+g%X
eh8B5Z?f[2R/?Z\<KrolA"seHs6Wb\q<E5lfHr8;VKpupa6(B4U>HsI*D@P<G1qe9Ad/c06X
u=h-D2d;2iLXCi]Acre7_lTSodJff'*=l/ni?$:Gb."58l"@QQ-KcIF.hB'$L2TB8;*9s/\Wn
Arj*p]A(n;.-Oq@V!6UM45E:GR!sNZYFWnW-NB,[krQ-?/)=HF02?LQFH<H)jPQ%oHiGqF>PO
EjDt1!_db!C;AE4Vg+nB`c3?ln?'e,)oQ4thcBn+N%OJSr756e5=QNN)%G#FmATr)&$'p:k5
fFN11!jSLT1%:I[n@'ZO?^5nn1UJC`Vat&2u+T'DVHS2G)"Y%35:"rS\EO[;@%l4Ea7XqN'"
F_m^QM_UkoH?,!Nk_,<:U#3"p;*88)tHTlZD"#K:1EmL**s1_l$WShU1S?:.fQ@:'JEO[@8S
[>9ootXnj9pQm\Z%hT3b,$Y]AQu=<igbr:"&L7a]Ar!b;3,s@K7UL*WhX[miGI8d8tHdHuEXTn
49Zt%[UF2qe"@^tD#(!rL*U'f<P2V4Q5ka=05rR78<S=fRNCnPpi_o%3,Q[m;^gf4i&4gIt7
e-Gg+7a/b;*0.5/A"E+%]A8(:oP6>a+pNZ_C,6uB"N;m!?1#Mu_RPT_Uid:PH>'*ILO.n>]AQ9
_AN)TSq%>jhVb57X-tX^0C?VkKqmiGm39jm*C0oW*r:m^[T[I.U7!1rk5Z1I1eqfo@/bB<E^
RH)T`-pH$egHu"d)BaIYhp@&[+ko@GYDnDa2]AUh9IIJL_5b87[m)`s8?I^D\=#A`HDbE@79\
<?M5OH)P-;fjf8=H4q[]A]AF8Her8Km9[$idGoTim+08URpOA;1rilJF/:"Pg\XLjpr1BZpjrU
OR3D<'JPmaQ0"BSun'=]AmZ8QpOmU;hS;B!':b%%*df"U:j>X>`Qu67mbq#q<7=3Zqm>hA0XR
"M);P@*gf!-9+&;#p#+#ob1iQeRB;PP9H'@bA^:BhRZ4.Y\Kt^`5ubIXZC`i[!eWR(#sX>Q.
@m=P!"l_31JWPFSRJ<PMVWd)29ML''RN7o8["/3"WLo>,5R+raLss=%AdQ<R9r4?qNitC$=m
H4h#Em06/7QB@XZi)DdaolQ"?X0X3I0PXaf^-AMbh8H;?FKO@!blREQK+Yo*YiY5)&f$lXEG
?ceP-n&V#"qfA+UED'iF<KG9\J\rd$h:bH2@RtQFHq2`$52`L;CX=Qf*BHM)mXh/iWD>fUY_
l%@U:r%/%@F:I%C.lU*(<a2p?#-?R/J6)Y,[[.=74Wf.X.'Ra<Bk[U;2ir\DC7GI^hbIj'6e
hOA8R%*bJZ!L;`(r.s,G%T#%8ehlS?a6,e@W)OF;oOI_d,a5!-m_J<;0\$1nf=I^?EKX530(
,3W"&G$-KG=),RfsShNhsk)#g>D(V]AlY8\Qnf;37&t*[&e"rTt6:H.+`EE+qsW>8q[A$U.+n
=Q]At2)YU)'sF^j'P?nrnDK]A6*t0/05NDC@r9og>BUXT2_)Wrkof#L4Wdk*c4E+mJ`57EL-9T
icq7n1?oOjoM$ReM?;@$ju/*S>?$OI5o"ta,,J+M71:n]A.-j(klr)pqSs<+E8mPs\6B5%lUU
IUJ@1N?[[$#g[;:oS[ZL+,$7jn.Gkqce>h'$RB0Q.bYYG3g5_(?e?F9a+1%M6R1ZbnM)in@?
_72=Y7qoRS\+5Q@7E=W4^4$llr?b/]A:/ZsukY&&-7"IMeMiapjqh:`Il)=%^[<tq&p3pWk)(
[$)I^6XD^s/Yp9=55q*)"\o^.i!Qr$j'*]A0]AaaU/H7N1YfFGBMO\,i;`uK\q@7Q<Chr`b%Cc
a^ar"*SrB$Tnp7niN:GfHl'<LZM2VdV^G;.ilK\q@a'@>dS5$+^$cdS3,7Asu\3Nu1gl!oKT
(!2;J(_J`Olr8&(hcH78Q\m6&='cN7gehn"C-5pgm9HXXXu(_9/:s9A4JA!?^'rhYB>Cg6p#
O0^jn/!SJHY0,8tgc^/+j!h6NGCrq-e8B?/q06]AEE,K;\8hX+;Sh"f$^4BB/6_$qOAEB;]AY6
P7J8o@T>8k>paPFl?Ktd@_,H$8c%^q']Atie\Qo7a^bW=f;T:haaC>le2gLl;,EJCrY7F/pT*
4:;=RXg[c8=+8n=%7Gpq.jj85Y008L2Aj.E"DSI>NG!2'i]A5d(g*sJqWR,"7`QA/cT=b+dJU
L40sr33+gBLN[ibQDu<u_BaEoXNR8H6QU&/B??6KOnZl$5c/5^CcB>EeY[LuO&m?CNJ6b=9E
aHa+/2)Eb1GD\T5L_K%"e@[#BqYO3YG@rug<(*nM5LrWLiWWjB21G&pHi-E[RqV&G<>K(34p
e6>[HuGM+e88#Oi)E]A!;f^kAlu1/BCj,Hg'`*iUq73XK=(EC=Cm`F&7Zt\bVoZ[8b!LDpHc;
30;5%*a6^jShB%P=>#@1,7ZWjB`$s>6et:e2q20.TRl9De&[aQ&0O!_$"dP(EToD^1f+L^c2
?4#kr,_,+lM$WXKhsdOAJV-n2J9440#*0knsJW;(%s.)9$Se@tmrn.kTD^F-ID@Y<ZWiC8Ms
u=R`SF$Sl$;.J4f\+f[(2FDX]AS854`CF#a<^)rj81b*?!nTjV,U\0n"e9BCPiU)kk/,D\*LM
kemD/dC.(KCYbjR&M'2MYV-9JRC93a-&`JLfJ<@`85m/CEi)BBnTiH7#n-b672sk#k[r/ael
D9S8QbchH5:T(;7S(nFlV`AZ'fAA8P\GCu8=cD&,T-4)N40Un0K)2ZA5M03)I^Rn5f"6eG9Q
G(i3>MTVLZ4u=3=>W$g$Z?gn20i>\^b(5e_!'AusKnCqXaJ;m@l+SBj/6YTUBpadq6=ENZVG
"P/f(3Xu[Y[9e?sEYb\`^C\f=u$NBtik%`r/6uTL?/fA`o\BL3OlDem+3=bTh46M_KPB)kEI
1(FU>i>#!f-X,;AR!^E4:T"6*9J@]AF43-M='iQo3=L>:Ai\.2R-fc*&nV\jAS**5:]Ar?<V7@
bIuY$PGun`tR^roau["I/`8,'Ug<s!L7@\"$s.(>?GAN^ldH)&8Q-2p0erufLUMZemS#ueQf
jTJQ!oPhkrT"B9&2(%Hht"Dfh]AYp)+ODkIJ>rNhY21&iDdJYpn6<1f)Zdr\$,Lm]ATb%;ErNK
'h+AEm;<15B!DU(r)8\P%"0dr;DQbOM>jS*K+)LD5W1(f*`*\6p3CZN>g<:f2'k2Z2RX,2Em
$tZq\HNSa/`P"p.0c6JWG`*[%HX$$<NID!pS1QHRQ)BEBH7")4bo3Lfra#B9otkP6f5`;:&o
Y^$($=+57]AJekCKT=d?Am#5R4!UkAFKHP5%&cY;mN!3YJ:[G9+F',^15nu_rF9Nr9F`)\sYZ
Jq30ipNUlf8T+!F`m'6p"l(OrLKF1I`&o"\[^h^Sr<JQ0+L.:-'=MB5Qm'b1]AG:Ms'5VsBXC
`*A?1t\du,o.;E<!$VoLfRXC_Q<*<W`DE,5Vf_a<o"+@mGclg*P6R1)csO!IhfU]AGd"je#J<
B4jfoJh!8"g>rRb-4o-<QPO<R<totqM2(:tFFiC@%?K!plr)/,HoI"H.^A:`R%.?$]A*)k-(n
!oT#D_TJ+mLqN\pYP#c<uo(9"H1>/cHaq#C#gL\Zge(b"LE#E#.KD@/hZV7>niV#5p?oTsQX
^,$R=;btBhN'h)r84C&CeP]AVL\Eg=2jJ6-FLl89F:nOU@e<]ADci1dnUXA2VAFEZk4:__ce+5
@%AMVeAkT\[?'D\`;6$n&#/9AaYnrMs"d5d8`OYML?s3`n/cn"o.@^-o5SpX+.OX`S"(@Pjt
i*>JsBDTip(&o@<VE!kMD^,YCOi!"i!qcR&5;b>c1U&n!"/;O#tb/)>Eo4SF+W-(?DJK]A&D2
=:0K]Ar^r(fW\gHSe3+!67@'`$>I5DK"7DsQ5)VBL\JpN]Ab[?V7&hV)WL=+@@f76]AT\*R:;6c
b0P%&\52k6m'=R/UAb40\6nOHdAE_PWgDm$$5bdU5H90jIGeL&[mOe:6Ds-BXYeFK,<jJSZZ
B!8CjA`BKM^?.^9pZ#s'MIc-deae<Ip2H"N;H&qqHI+$A.2\]A/P<T*g12(c2gBMkC$nh:8`U
s*niRbZ98@`@=odZdB`gANZ_28,BU?Jd-koj)Su-q#-2`4qmq]ATDTga3lIZNI'&(FpW#^^nR
p3`0^31MRmU<"d[jWa#3o;%A'T66g8%f,Z[RaXtN*"QQ:(/H?_%L&b8ZecRp$7$R8rP1pfde
ED]Ad08!bd+Tt[L9_*0=\2cW"19YJD<g=bE!pNVs;8/Xn*kmhK(ps^A4_J*p-6&spA4n\kj_k
Ig&M'hc'<8__"i'$C(5_M6HZ$+.^)D?TnGP62:_A*gL_XPTn(6bsX1JA:gU+4&K(ibn>G#H<
76g8M?T)tV9!``o+*b`ZY6mFhM%#dr<[k$!pLKm(b;[Sq1o<8U%)s@\"Xse!FS8B$lqV6e=U
$49gA^Am-qJ5i>!]Ap5eeZG6\4l<Qj-TJ.(pN\9"7U(1J?BXF+d5GU.]A`DqMcr,;6,')QrQQ-
d$BNSaMT^LD\lO]A68#Y@/07o`+WPO]AVZ+gP7Hg5W!4X?P3Ikro7PljfTWH75\7Yr7I\g_b@'
BO4)mb8Fh4m:F4">Ce;^U[YdV(tLKU[^ph)Qs%h]ALJ(-?L+Yk/3]A$RfD!am%B,e%)?hom$Bk
E!;ZDBs<E;JS9cJUj_$r;6cO*Lr)D;$D?WL"1GddU4iDC_uZ#W77#W,SguBpK-2^@i/"NRfO
&nDYujcgQJ0j*cIZdHO5HEj15hgUY-LA)u3[?t!mBKX%S"SRld)$/X`7-/Nh`Q1d[<:$:s:H
Nb4E4O3D&F8.rA^?88:Me^(EP0rAk1i4fC3n>[hd+/BA1X(&/@E'ge'[^FCFi#q#7C%<^.$[
\!-6DcJ0^nm[<I5oE57d!N[sVZR>3EEjHG8E4\J)i4Q+nmYY55k[r)?go!4q%9GEFO03*4l2
kFmTs+9sdEd^0teVn95shbQW^k`IXI&[dF$9CGFQTTc_<8b)H'FCm7_l8#4X:hc^;\J8sgC<
hDjX<_C%V);`m4&i;n^F*N35"ub]AMZ*H#D"rpr"^"bJ,`su)khhC\3QOR([0\j!<2<-7Vd$[
2Qg03&jHC`o%!R%QBI%9&Oa(^MU6VhJ$cD=[5aU$iYT#Jl5?\;'Ji6S,O3h"?8PQON;1ms=)
sK]AW=`HgX.R9/"T3t=GPYUhPb4lh#952)u^lP<HPa01(Bfq2Q!Jn2JHc#=&\c#CeX_/`hXOJ
>3-OkKmL3f+T3g%u22mCqo_a8O#\A,A,+/LhulV-i58r\D#52"m`>7Fhuld\R.)Gc\;#\P^"
`3o;"4Jc#_UJc>U&6Y$rd>/+ofP>0CC?%i1Q("$8$7`B-Z6Ad3'TTISH\3gU"-"3LUqA5b/c
UD?$RI<E^KbeSJP.c3]AU=qpcSe*Jo+)Klf86BdjnAU-Q9si+dk\nc9:*a=?L7'L'>T990O]AB
1iY%kWFhkJOoJ:pJ_C?u(mUa=;.^\O?EEbDQ?<n.i>IhGpY2Z-ZD+$*3n/g@LRu[!WI$'9>q
)oT.Rf2hM'p^=jTNZ>Ho(iDPBbB3C$#NR"g2r++s/+h&1VGWo(J;D@ZCtq_=KJ"2[TmN\!^E
FSh<V&nY=juncJjd!dANr+^J&68_!lm!8?_olS=]AS]A&$+Ef"+kF,Q>qp!I4'=%4c<2q9_P^f
JoC1e_=nrkLB]A"iJ-8V#c)')W3fq"%kP#?bGLk-ZT/#B-(A/Xm':%P$n^0nY,@,?SS>.E@=+
)6(6F5,0mWXW^[O/Ln"+'[^G&7]AI#4L^kada=/5Z%CYn*dWUMgI)E\[_Y[ihZ0GR0IHIE"MP
l_S_F`D_f#IWr^\2>D3Z%P=oCac6Y^oa=9H&B,r`nL#U[:<uh,Pa\K>]AbGp]AXLh@bB.FHYRV
mp2FmH>QDIX\`4#B2%O)COlsiiu2+PTFC#;V#IV<.Fa5Kf'6V'$rXi,"M5>p9c/:4#j'rl=^
LE&*L=]A#%XUZg#c&.0[;D,)HiS.IM.R,6K!^'W3*R6kb0(sj6Ydg4$K/'S`@SYC4suq*K#i@
fU#4GK^%VK*<n-B(RT-j9t@=UPU1&:\d65:GHg8iSr<If+\qLh_Cd>h1G!l,H#AP3IeB-Y*$
?7+:S3md_;W[0^_u1VR"lpXOhX,#j\jZLB$:k-Q,)Wc^k;Z2q^4o,58YgA9_@KVF)>E^'+F0
Y14c-=Qt?sdjda"Ba(%VBs,mRpW2WbVGVs"P.FgueR$)$Jaa3hiVAt)T]Arhd0'=`Xo[!u&/_
0rE>1p-W_\5[=O!#ddhac?mg^1KAI*"u)rWbF<WkU:QE1P-)*'HX"iIA+qZN\Li%%'N$nGF/
$6iV7!rD(uLKB]Ad6M3"_Lis"-4c"V1QbFZ>M^:.R<S5h7R`\-?k5Nl[_aiE5srLCpqRd5Z]AF
a49\06cL3r*L:!F"koV&OK:f_q_4T1Xo.YNWA>oj?Gm/N5mbH\*$j1jL[h'Abn/VLKQ'B.68
C]A%n`=_@IYWl,lVG=5T;QJ"Fh$M5ROj<`iZ0r^"/58i._(A*W>V:F#:fZea,I_%DeRln$:>b
U';#G'GVN[gU:?f0g,C=(6)d&P*84FsI8p;j_RmQ=TAVKgTh&U37<WZbb$mGA#j/')Wd]AjaP
6=MJ7;9T(i)8J9QYNN6#.An[L^jXDYb!HN[*UC&O_c^k-.k[*e_&AjTTiOSknsn]A2q;QG%>1
XR]AcjRKHB<=5BhL.R]AsG?+&jd%5-1fkY.E+^7k28qB60/VFm=am+Nk@V-V9.S09Cm`g=B4j:
_9FCK/!sc,<=dM.(kbo@Koq*fLnl>$r)3((7,^'FX/(A%Q.k.jM,:5X#DGAN>,,W=[TCgS[G
^8c!FZ:qY.;.fi%)?mAsr"nf%oTNdBd`SP/bNXT*FOMi!C61TYRGlQPOK']ACQmc)SUkYU.4A
RBO=d%Uh<Ur+*0"[bdsUX@F`DVBIqISSr@&.gb8D:\*n[X^/qnVIC>4sAD"n&j2<i<B'#s[H
Z?_^cPA5?gecdgba2VfE/^pE@TJ=PpC]A]A@##Uu!et0'0``.q[Uch4>/%rNm>rZa\*UUSq[ts
1'ru-o5\i^_t]Ap13d@EGnaF[0aH2RV!iOD;$PCC)+K7]AWo)Q@)Z8dS(S-O0f`]AMn7'5C2%+9
Q^DcQVTeelN;!86EVfT23k\BV%^&V<L?#]A.;CQai/tY51&=5M!5Co=:pt%81T5?3!2e!J\j`
\mQ-'qoid:m:C@&:WXOD4cb<_9QPo&6BoL\`JZd*s'r5Z&ega1<mS-dkj_c*BoFk^M7?+f&*
/`p`f1,Yok]APAg./GGaBL[#s3u'+1cAL[j5,\6qbg"m]AG(=^Cud`cGR"U7aP$@p'CTEJq64P
Ii>B%(MuBr%ihA6Q$10S@h)C_s=,T'e578,>p<unuNr6p\1DcGC2\riD#PqHjhFF%ICKgDP_
a-34aC.Ibc\(,NQT/HI$k;?]A)>Y1*e$_U,G93SI9g*e?4uUbfd@%F8%sGE$"Ga2JBfq>9Vaq
cg:\"O=4*]ACidmhm[/lH)BJ??-JETXf&sZLgGCR?"g\oU\GFT;AB*fG`-<0Y&V"Z#WjA!MDJ
!4UCV4s'gXd=sRL*lPF]A7cS6:D(]A-nGOl)[aV61^ALX99KjD?nY?!En:)AZGASAY#lpHl>-^
ib\oN5mYYb<>"-)7]AnTHb7)lN8fKTM\aRB..,)40`PGcPqE#GWH.m]AAVpS(M5XBScT5IAZ%9
N.%k-_+OS%[#+=.#lhI6A6Sc3!qV"Ukf#jNkCEPI.?SRftT5+DRiK_[=$&/GI>8_L<,.KkJ0
Z(mCPUi$S++EG(-AjA>Ybc&rU!rBi#eN)ET=`XRpYmL8lo&IbEFV,TAsJ`r,+A1?llC6ttCt
*rY7YB8NOUYd('3;uJc%=`>8;F3Bs#Ei4Iu9KE@gkf)$L;AnNEPk:ethE*"\`EI9=Fkd2Q2_
"o-$_Wbp%-p&n]Aj20E^<hoJ+OkE'^hoBEcJcYWME\:`@=l``NY)drHL(D]A0c]AE(rB$Nh]AlFo
>'B2D"03Wtup$Jd$f+']A>SkI.TIXfsa"GFV#=FPpGO1DU=8*.EPQhk/nH:1a>Q</d;0!'6V*
([=SGnDcNBqU]Afe4"X5>LTVI:"O;Z1u.QgQRcfcG+$dc%C1Fee5q#r!u&dj:4hVD3pb8VRHB
oF\MI>+o3J;RS?t)>]AYcT%qR0W=G\OsRF;]ANIb=c1MPe]A-bUA:1,<I.8irbEVK*KXGue2LZ5
@k9e>>*r9>QWOt6"3s-*D_iV),Sk`kVK`o"##f[[0]A&Q&lR+GdLZ;/GU<dVqAp4lu)nW)E!<
3Vdm0!k5gtsP_@P+hiZqY;9Dj,YtO:#rj9:GkfEa:M1J$sP4T4l\"6'285)tO(/$RpWN*pl`
qgO]AP,!I(1K[<KcN)a&ebOS\7%Y#8_r15p=fHQ=fq6+GTZS##p'8AoqJ@[Im)ImG:)2<_JB:
(<D4W_iZ71lb_&(,ID=f-bOGJ.2oX"g<%F6E9,0kgW1397sdM=`J.r%a%%8b>T!I_;M$L,)K
fWS6tk>;>`%"A=\Ml37sT*0F!jnorRn$e[,<7Vpj\dj$c&W@^!o[-;?0pK^qaD*0`.>&RPki
RsdX?lZ0');uXINHIg2Ncm!_0ng0=eA&Ioto!u9nigt#r/n@Npr)$<6^$`t:fuC.)hM4Z=<t
(-E7p:f2T!5$n0nF84'gMZ]A72$n]Adljr6"kYj4>4E0iB/0G9fBe85=DZU#%@XSr;dioQfLND
rnU'n[.=9_k9lPaH-'uqf=UC.u&V-&7Wm]AW.D4kp64:6^0fis=@ki[QLnTFEm/5On/[[$EY@
N4n$GL0]AU34XO@/'<t@mG\40@,3b9:)TRD0#H:qJE=(EETEUG#oTukYTHUR`V2i85;b9UU]A9
3EoZ#X,"H+r1P@-(mh6\cbWoftY<rm<]ADe(@[jNb..l"_I2=8`"<r>P"aT]A2Im+W[WppNL(+
EB*r?-O'j@D/!tK&alHE?O![E^bu<k`Ph:m3'')=Y'hasUYX$jYrdiZ9DTRt0:*>fGs*'maf
.S\F"h8(_OP!f=_dD0@Bblaksuk;C4Eo=<g<l535lP;Bff<qHI&Q`rYh)kaa:M,YVgf37W#e
Nc@aHW*:pprhHB3':5fYG[MR9cX^(/M+"/CL?d@l<EO&^6X`-Df(A[Z9]ATcF\g_$cT^YsAu^
Zr3lQ.GF@fFR0n:="93Rejs:>/M/:pubG6J*[ScU0enr*T75"M"AQ>ge$_\+sc+`S)@?S=Jp
d^0<FH3P9n(<&MD@ZT#"L"bmj'67ncKG3F1N+"3kjsb@E9AmWhNfN\=\jV=$atB8bG+`F*bW
jSEe-m+TSX1RPcRF>,)h1GRpO$bPX\8^noJoAH0JHa1[oSJqB33*m'aG;p&n'`krXT7QYlB:
\(..id2*8d9bi17J;lkCq:X6"cHX441E/2X@h]AI='4J:R`8A#."1;/IV::%K5@WMJ&n>*lK[
\A0qY\^tE>@4@;$PYkP<DS^9Z@!&+<B0LGN?AnjX3d,J]AtOCtlV%)J.T)@f_^'X?G@@IKXT^
E'toe]At1ed9u9FVfDWM381b``ts.e!Pt(KPU4Vugq?dq,b6^P>mt?MIU;o-T+V*/d;dE1)C+
t.QanKrSrfj]AhCJ&9AE7do?LVag2M4X:"j)^<F/:ubH#_r@dV/??,t1S(11M!;eS4^RCLi4h
*">OAoK#7F1cs#LAKE,C#Sum?R"sVD&@;ANSY9YqbqT;fUbngWSf-;9lI8JiTVVV(^!$;5h?
?Yikc%Vs)eR#gH0B+Bbr>gn!N(KE3`SZNgTmBMmWSR@bFR]A5-jk.SC[B;7Y,,HD*c#]AK.6Q$
=X)>=7Q(Ns_*+X^O9,\8bDjd!3#29)u)k:geY=Ii/rithphMrJB(fqD+Je\T'cBL\1X+A5,J
b,D@aMfNWpH."jpb^NdZ^rUuh8q^<>jM53lT_-+)S5*QC3Dqg-n'*A:cg<XYI0,f9.pJoYFO
d[g1Q4$J!.ERWZZ\`jTl*-oa`Z[Iq%IPN]A0O8;)"C5rq(djZ^=j6op*\#:@pB7/otXt]Ab=Kh
b()qr3AS;&F*<"qSYP.%j,/N!S5/@XmO\o:?KA6`+o(>]Aj._qKm(K8pAO0WtOkOTKFFtTo2!
YgUH'4%YT_%9dX.=.\6-;P/;JXMJoK*`%TUh/@!,CN]A)$q0?oQCnBH:;o0N+FbI'GVTF"4#)
$j/;kd4((dOT!m#W:K+.:Kj"?QgYm%Sq\-n^Vi.'`leg(R11Gotk,\sW,(+]A9\+l/E&tHGW^
L=g2pE9"N[aBq`i&<SXDL]Asmplg1)miLtbH'6=nI;Pm8N/\RS^"9DI#F7+5hHUd(<^V:M/k$
OI]A/lO[;!HV0%-ILL""6[>AXc]ARqAIG^kKlDE[L5(V]A^5Ff!gUi:mh.-qIYPCaDO-?IQSL?*
U[/S?Shi`p/<292L'kt`CC:pM5+MRIkCYP^=YT!+7VBJ*m1P^]A%!EKo>e)8#hd\"I*#!YL=T
tl[Uq/WVq^70(6DIheG'h!q;YZe4aCF\kQI*!#Mse61;_RsXs4-Q(&&)t*Dd[BDohLT0W4Iu
><'&[-gLXOh7klrqmEXB]A)ilfh9IhLpk`$SD.c=8.h@6oV-Qe2#2KI)O*OhB1<M@,<`3G\!3
+Qb'^rE:DgHW7V\@R]A3YZ^EU]A<"4M38:pb%JGpfTqH0hn5'-X4#9QAC#Eg^(u*kRi;tOr9\<
\Q4d;o"L"#pl#Zf+U1-&G$#tmnQ[Y\iPoL"TdVJM+)BQP`gCKg9s;*uQYdr*7^$ur"JnN^+U
HIN'T[NmP'1i49nd_g!Q>%BHA!n`[Z6lJR'0`S,0(:^Uo(NFh1p\SGN=B=Jb60GI[0sT^%7=
7["nt2'scBc-BoJXQ5MSW.GK7a<f4\(jpS@ea95GJ!a$J?sXG;n&bDp%s299Wr"*SRq<@%7.
2a;rWeVcem27S='Cd.6fmX0ooSqnc&AgDOX9FY8._jN.Vpgs!3N/YQ*C\5EN$Bu9;9frM2Go
5l(L0%OWRaA6/.%tp%U9q@<@'[e?D+/mRgYit6*c89dT+2>X[B0?>`cX94jF1.lBK;!H)iok
rSYroT+JYYd141T\?!fi08KhFK<b"u*^nu"UXrMggK^2H+Yf%e9eX/U(Ob+Yi(b_s<![<80"
@8R$`.2B!nBeo7XJroHnBc?q0`notBM5LA/YmU8d^&W'>Mhp7TM(-^%[S*ZLg8iGq2)8Yf#-
+;P:7ai=**QQ2a?Xr=4!D,gfocKXapI*/B=Q4ur)S/`V-b,7O+tIP^OMF<_*"sL.6J9+-Qt4
[Fm:1^imhjjb8HF'p:uXH-rrCZho,0)Cj5"ls3FC)'^R?H^*GlG)@)NC<8gXFHdqihp]A;i<?
,<#YSC-m`psBMl29_Xs)%+`_6dn%k9>74SN#UrVMWITSiD?s."6tbcC@2Cf4dPQljM\\2'D5
&ZFAjpH?"-Sd:3j>fEq(Hl@(,^l`*i4J=/$/C0!I&4EEYJ:aN22&l\NugqJsEq`d.Th=gaE-
F'ajYK=.tu5]A.N`PXVbT[9]AeLp3J,\mDtfCf:QI.;JK1E,<rb8:UR^Y/a`<5T[bJB*3B_YRL
hHVq(Pf)Tm+r&?7lIIa7:T/jld+_`Q[,l82$XhXPGLlaBrg.#HAI:d7C0h=2m6L"=)3<4,dB
>K#?riokQLg.:<&$VuHu~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="0" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="950" height="292"/>
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
<BoundsAttr x="1" y="364" width="553" height="346"/>
</Widget>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="button0"/>
<Widget widgetName="report0_c"/>
<Widget widgetName="chart0"/>
<Widget widgetName="report0_c_c"/>
<Widget widgetName="report7_c"/>
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
<Widget widgetName="chart2"/>
<Widget widgetName="report0_c"/>
<Widget widgetName="report7_c"/>
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
