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
<![CDATA[SELECT
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` AS `year`,
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_GEO_AREA` AS `area`,
	count(
		`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_PROVINCE`
	) AS `bid`
FROM
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
WHERE
	(
		`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2)
		and `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` in (2016,2017)
	)
GROUP BY
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear`,
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_GEO_AREA`]]></Query>
</TableData>
<TableData name="ds2" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[SELECT
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_city` AS `软件名城`,
	count(
		`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_city`
	) AS `项目数量`,
	round(
		(
			sum(
				`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_MONEY`
			) / 10000
		),
		1
	) AS `投资金额`
FROM
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
WHERE
	(
		(
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = '2017'
		)
		AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_CITY_IS_SOFT_KNOWN` = '是'
		)
		AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2)
		)
	)
GROUP BY
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_city`]]></Query>
</TableData>
<TableData name="ds3" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[SELECT
	b.`province` AS `省份`,
	(a.`bid` / b.`bidding`) AS `供需比`
FROM
	(
		(
			SELECT
				`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_PROVINCE` AS `province`,
				count(
					`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_PROVINCE`
				) AS `bid`
			FROM
				`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
			WHERE
				(
					(
						`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = '2017'
					)
					AND (
						`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2)
					)
				)
			GROUP BY
				`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_PROVINCE`
		) a
		JOIN (
			SELECT
				`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BIDDING_PROVINCE` AS `province`,
				count(
					`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BIDDING_PROVINCE`
				) AS `bidding`
			FROM
				`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
			WHERE
				(
					(
						`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = '2017'
					)
					AND (
						`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2)
					)
				)
			GROUP BY
				`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BIDDING_PROVINCE`
		) b ON (
			(a.`province` = b.`province`)
		)
	)
ORDER BY
	`供需比` DESC
LIMIT 10]]></Query>
</TableData>
<TableData name="ds4" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[SELECT
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` AS `year`,
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BIDDING_GEO_AREA` AS `area`,
	count(
		`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BIDDING_PROVINCE`
	) AS `bidding`
FROM
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
WHERE
	(
		`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2)
		and `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` in (2016,2017)
	)
GROUP BY
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear`,
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BIDDING_GEO_AREA`]]></Query>
</TableData>
<TableData name="ds5" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[SELECT
	a.area,
	a.`外地`,
	b.`本地`
FROM
	(
		SELECT
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BIDDING_GEO_AREA` AS `area`,
			count(
				`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BIDDING_PROVINCE`
			) AS `外地`
		FROM
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
		WHERE
			(
				(
					`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = '2017'
				)
				AND (
					`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2)
				)
				AND `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BIDDING_GEO_AREA` <> `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_GEO_AREA`
			)
		GROUP BY
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BIDDING_GEO_AREA`
		ORDER BY
			外地 ASC
	) a
LEFT JOIN (
	SELECT
		`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BIDDING_GEO_AREA` AS `area`,
		count(
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BIDDING_PROVINCE`
		) AS `本地`
	FROM
		`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
	WHERE
		(
			(
				`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = '2017'
			)
			AND (
				`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2)
			)
			AND `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_GEO_AREA` = `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BIDDING_GEO_AREA`
		)
	GROUP BY
		`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BIDDING_GEO_AREA`
) b ON a.area = b.area]]></Query>
</TableData>
</TableDataMap>
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
<FRFont name="宋体" style="0" size="72"/>
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
<![CDATA[685800,152400,685800,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[7048500,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
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
<![CDATA[m9C*"'5+nRbBD^DQL*Gp?0O6jmHI'oZV':f'aS?YC.6_r]AXlY!'[WSM?:8P'KV)dQgU]AC_D7
H]A"aR>A$Q+F(c)\FN\\;cYTIRY+f+b;JIAGA_e6:`k'-CHs#X`\iUO$21H]A6=dWUZWmYo?I$
Dht'&#o=j)u%r^0ho&'U7Iip9nm(p)F<c&<Sq`Yu8p:WgXquQK8Vb:J]A@:@JkCKE[tlb[E.T
M!3<Q6.n2([;7[Aaec2=RtSPHTkeZ3rF?lS_L>4qVEa;]A(k4ZA`&QuDLIH=8U\;(U/LA<M'l
T=n)@j&J%(JefTnM%HgelU]ABM:%$#%DiSAmN]A]AQCMnC:ADd\<=<%3K`#os38T8kE2pH9-f(O
gc\?@F$MPU]A5)nFX-B1RK-Tu':J?7$!c">Da[u?8Z+morKTA7.,dZtnhYli^"<oU=H`QP;k4
\I<!?R_OU!PL<gk-[V-4O&ml-+b+P>D:Of"Pd"'g#6D5Ks->-`I@A%ApfZ4]ASbcn`io_M]A03
N*Yt+8Y!L@Hc:a_.B[Z?Sqds!7-GVaq]A6`:h6GElDb0Iu6_#'7Z/W+b\6D'uZ+kJRUr\I$5,
<LZ!n#2jX(HkoEKs-[13;qa[,[p/qN7p]AJd@Io,/GkW#Q'Jh%6c%bCFE?\bO&E/.NX#EFV_W
a!=YG%o11`?6+5nL,rJ6n3[f.Z2p#]A5U*tjj@$;P;@mO,P0&hh=jaO3#603gFOQhHp/+&(A$
]A!CY>Q[e"S-^[X)(S>M$nh3#sg\0Sprj76ekhDO&(Jo0;]A:akHekN*N;PL2P8Je#1g^l<sY,
/:]A`hhKG?J9pE>A@:os)?X+N<+s(ZDGW#l7[M[\me$\Dk)7=gsU,(a*CbP.:[I%hkCX-W%V?
Wbbk,EJcgC@G4iFDUU,79W=I(rIXOq4j)7s@Q_DeQVY%=!s61b.]A-+<3&_H]ARbX*-19hA]AC6
p#<D^!?MSYG\IGB/u$!PGnH"^;%&,\h/@%d>W2m7[lXJ"`-XD7(2e:]AAe[uM+*^tHr;RW)a.
bFB53#+E9gQ2ir-"9ZQE$;Str7CXB9T0l=M^;rb/R#>lFR-auEm=/I<d9+)cAfLQ*15S@brN
O>_hV^7OoKn'N/YHAak%oC3?]ABpI(E7A!ht"bp;uCP#k:CFSQgU)PTueY.Pf7D#C-fD3$MR=
BnQ.oDCfCeKYtU=8RHHq8Obj4Jd;fB:aTru!qOlfokh&F/epl,+q5FB?\UPgtY^\%_&]ABTCn
]A4>_I/MC[5RZ/P(lJU7#I.Ircl+7MiG*EtR)I]A_nolm&e&OjlU6<-F6,<tZ`gjDn2ZDi8r(4
ub,ES8IE1$ZM/Z,g'U]AHA(irl]AUAY`Lb2;h>(Xo7@[,a\/#qUi<e=]A"k-5S,DcujftMGTRq1
9BOAp'4S%&/cpQ!cZ27bI4=OhM0d,MG^qY+M]AD%<$9[E'3u;:T\F3M>a5f\IU"cXf4+Xs%k7
/q_oQ,$`\Mbh\#i!s.l/38.D5gIRWTZ@*`\O'rO!Fk#]A]APZkGH8."O%Pm[bq4opW)N)IHlSo
:'``YoJHodNEm'94!:Z@4g``EY2e3mHD"-@^fT>85FCO4C=nOB/1grjY;',+g4q:M<5TF'u-
khJlLn5Is>CNi3usn^PJ\H]AH_@QEA;Bf<Tn\RFk:'_o4Q;&1?I7cB)<t0&A.@,$7If3_X>FA
_Ij=.]AZR/@ijsGm4k]A_IJg*?dJ4$o:bLLg3G&/(<!,!T^@An!YON7n5f(]At]A+SC@D2K,WZsA
lV3eufHanUjp]A^/V`cb-ePS%EgIK\s]A3iE!LRf5f".SUhu8Mge]A[=3)/OWlB&9_;Wd$pr)^G
jXBO'W9bi9pZ359CfkS_GmXm/\-1d:*F_nfQ.?>RRTe5;bCS_S)j"^0Lso>MO#-$?GHOr*9'
$?@E5$L[m:%V=9mLAJ8?GRrMQG(Ss3A0-N&t.c,K4I8lu0>l'emNaVg_J;irjs9$C^el]AHUe
k.U._mT8@'[)m_R&$?6+=)V3([L4)2@OWnRL04Ku`Ccjm20rhjfr<B>eP(&i'8"j_Y3[8At@
)dMNeh8!WnS3o)V+;7%/PY@m`eC9_9mche%Xr1bTYB&CGr*+]A%I&c*!\l?r]A>ao=$lDf'_-6
H2S-ffU@1=,,Qr;OHFTr7VO/m'2Xf)dPWITe_;Q^-]ANmEQiG'D,FGaso45'^m8FYdb%^Xh-k
LC.@[PT^83_3R8r^`;-86`KEJ$"&nC,RPMS1F*i7qXM[r=MDq6bpcYfM&HqOD%;7.I*YJ;To
^HM5)n[q,&c^?d]ANp6`I:cDW(*[Ea1`n.p.31"Fr<BR+ju5qln,@r/=CB1QM"r?:AmWYh_Pd
$@aFH^2TESjctWBOU/kcC:bF<"b'YpmrH,r#3VVL;VV_CYVPKEYO9s)MTBYRlIX)VM)QLQ4B
I,\,l/N@gr(_A`am`t*lR@-JIV/1'3=bP-`W<`%cSE1J5`Mdl'p#,\#0``0-mfG^bOTq07^9
g=Zr.<Ed:AGZ"o;I>[8eaI=S/V2CC08flZWj4+XP<qF%Q,%``4YC<(l%!,WCXB?&A.d*30B8
0EUZoG0nu&E(Pr^ZdAmb;D(C;kOOE+9)gO7LG.CaOG*8;3VqgHP,-%O'7(*lgQX!U@N?@"iS
Ksr7p0W0!?H*l`:(O/qP+n-2u)5f&bht.''kXl`+SZhjCA8-B!:N"ju+"!$T.a)@G4a.CVpH
9Wm?hBg=^n`C%gd2drQ#j0h5(D$SG6Z7X]Ac6E?ZRh!%8b2K^NGu>:o_dV.fcf`g6+Mp"$I@C
od9CS-Z(65167Q&ok*blAkdr;/$1Fs2Bi2eK![+$!n=u9:=+fTNZQ$50NcQQb8M:p#U7(*2r
onF;aapLV9HsK:"c!<KmAMe&m^Lo.#"u9V,%"'l0RBe;fiY2elnQq)nBB0uT-f-=G61"Ir/e
=7nGoP9G"@"t^$%`G\[R;j5#=YD<g%Xb5W1cBF(?iCq#I;E\OX,r^s>>9%QPI>Bu/JeT]AK'L
?mE(4??^k8?3O)S4Nm&M%<fp_IeMLT`ZkFcR"mnWZDiJP8693TdPX)!6N;]AUQff[8f1>_-h>
o%%]A9-0V>l-MI/TuG+2N6<k9.[L[d4=8f#!5m?U(.XB#%+`@shpoJ[L`U#EhmNoT?O3=H2P8
]A%@)UmSO?UJ;PpGN_U?3N6"]A]A5BF*$@cVd:21ZFC=q<WHrER`/-JYZ'I(ba%jr_cR4s[AIEi
2]Al![H:p&lHFJmMp'f99pL,sSP%;\LCKn`iE6YHSPn6">MMNfoj_QUX75FE=)fdmRRcpLSSA
o%kU20:\,'7#2'm^CcB<?gLpd<V=V5#g5!K#0p-/[#d4lk<T5'rTlHL7!3kE053C`aXaIjkt
=""/NircS[P\sJ$@k0)U/j&l#3jLaQ73;VKZ*rQkC[W#fp$edebJNW/Ud@?=5_]Ah)C;$E3p]A
@L^U8JITB&;R_Z*eOV_QOVltVTqPDs[%7<O!j5<uiW2]A9CNt;9.>o`Efb=_9d(5Yde4^-J:/
YliM:(8$=nlH!sFM.sgP^WPuHY^QI2S?,kl]A#LTh<>*M'73c;V"5Y=IZ\N%"Sfh1b_7nH=I&
ZV^.-,9Vp6,n\g)Q-1.k`'lY5mqgpa,>$%L(Y%S\GbG[4R!HPkR-b9)B?IY<-.*^/ZX[Kc7Q
H:"?]A>Ninl>r/-dn23hrYfTVcdB92)VAa<[:+!J/4nhn/HcFR3q9E'bBqb5t"Ji[gf)u*%<f
WE(GLPO'+_(UfaIDIjP-U(u`<Fj%=;_D.9E7bu%!-l:qB,]AE%Kd?T9=8]AW-2699;1!)O:r@P
W17at9itRo"qrF=e@JL"jaqR:fqN:h0e'cQr5r;tP+@QDgSi#_`g_]A1+4b:*S7LR^]AeFTN15
@:C%bhF2eMn:ATQcm+pY6@,B'a4hHk`>=n5E*;#5t-7&d\Q&n@$*II@HY>s*Q9X:3K?3EK*O
7@Gsfqqf0BjPmg^Y%/_,p<&#;Ki_#$#\iD@0$@XRc[YWh-l]AMo5G]A9",98g\Y4d,(#TWD0i>
-dps2ZCmPYl"nRZ-rg?dl)kj89GUW6-LLCg:r]A37;W%saD(Lr7nSq8o.<7FK(AKGKJ\';6[&
^]AfB>d:$nfeWu(!s>u_]A5M)?:CF-m,J-2PH*kt`ocL*%Tld"fPka0"'hXN2*0q[(4<N]An^Mb
T8.H*^!?'&@N@-?kHZ+mW)6kXe>D_R8^0223#P]A!5aLE-joEE%XB<,3q'U@6!rcs_r9OLM_8
X:?P(ZM(74+RPu*]A9G,6:k\5"OgJGSE]A]A1$'LD+4CZ"$VE#WuP9XC!/-AP>]A7UZf^:O\Wb9]A
@hN/Z?j.;BV`Ii!W/_jh(1CM>e"7<<mc32%t@A_[?-FKhSCm.r.$SVb8:(oZlW^jt^<ieV-l
Jr`O7=UkFlo02=NcVFTu1kdLT%>D!*943_j=CM2880"&b&r"m_@Sq8s\SA$dTEi+JAi6UCLY
X@Q"`"u!;=/=Q,nVA(at%2ZVUZM5'ePNQfb<u@]A9W!0PF2JH'OhU!UA%0IOah@O.>=jfR"8q
K^c;LYp>8EnY<.S[JM!Q/<dZ!<O@-4I=E(C*_KGql8Md!^#/4:T!H$GQ?DS[ZL$:pB?fS-2`
2SFJ9$g@C2Y$`ob/nX%itG+:,di4)$)BH3dTUVH1UA33(%oZ/WD$]AKI:P+cbuUUHD$C>dQk"
*l%Q,_&,.F3X*tuFE5_ctpKi]AYHp'!c+dPlc+!J1q^n-C@6"tM.=aE^C'AC&WV?=:_cL,4&m
+Rl7E`q6\mkL(10;RV&@Ield%Q-*k_"t;mrUgSb^'(*cmJJ$ZS#@ERtO3ct$]A@IuN!%/CC)r
?riN[JWM5bCQ$Ck3NlDK>adW]AYAbDl(%0:U<<_l)YBpVpXHnK`i,!!ns07msGkSY8[Y+@AP(
d3DO.?C?MZ&rtjs$mY.Y<VemYZm]Ab'!+_aI4&.#6-F/4Tl*Wg3;bc&g=$rtCY<51P\0K%$NG
JsjeXYTuP$,b\-+*ZKU-T%H[,G=bV$n^]AgaIlD-AgGcrIbKi1'TDCr%=J"VV@;9!W^6h;p9?
S:69GNO<s:2Y?XeU7JC-2\Eo(eNG+1E9g!]Aon2D=1O562(KWmr!B(5TGL?D8+_SEu,`":u(G
h/Wh,#:90YHBM+"Fl?;R,2*&!=#ls9".Jd=EBDk_A^/Tp2krDj"5F/n#aN]AgHl1"Y<$eI+hk
TOa1(+/8-;B@SB;^XceY)R<*ndpl$"i0"^6NcnW#;;rBB7?WMBrNY9]AYZ5$!(]ASll&i[J_iR
)W"JDpY20P*b2)#&+;]AEPE;,%XkI4Y%a84Fhr895Ab@?*j#tU;)a+tZ(f0:m4#J=,Nq3Vf\B
Bkb$2c+$>@@@-o@.Pk#GSh',=Sf<"ZTo7YN$W9tJo]AOE.@4nA9o/g&&n6NdL^'`:7)I/3@"Q
XR(-&fE"rXZrs7X!3NZ!nS_i(4;aC>AGfLOFKR.;5M!B5KW:rW4%!q$Cm7MkYhKuA]A@oN@YH
+W:lVTC7darq7^E'iG!Z]ACVG]A.;:X@5SO(O'S+Ksc4:8\QrWd:Wg`#b;Km.N<:-lC7HQ+P01
+2//U/6tQJOMe,MR`SiCY<lpcC_b&YF9c7R2Wprj3K&JoMk?`r#W6KhI*/[M6[k=om$Do3@n
Niu?FdX#YFEf<\.36W+1^psMQ&_GBiU%uX[N@.+@abS$Rpi=hc!C/%Xs+6S87OICk(8s@XE$
kEtQWON>'n?29f1H`_^*Dd72X\QV@8D#YJQ`tRFG3^K>H:,NYFek5co`id3aVcB@p.gnbgt6
(7@VLQ1//3r[LmuaP+?d!fL'009(eAaHDUtT`\4;eBHl0^%U)E[#[Rg,!!,GKLd+nj)+8!!4
<EmT!_[@O`h@l/<IGLs7BAP[hWD)1<DWsgo;]AC0mT)Z4M[BU7$h%rhu*5_tsfP(r4be#Zl_S
J@GOd=.u#'KrqJB/.0.M.?AKJK5jcfH=1c>f*Ccii`6Bb0-9XHG;N1?/o^PYUGk29pnE]AlTr
^qlUM^GcR]A2/hbX,,kS`,dSV5<VPm3XbC3\D$S'C8iW_F1Ws[L`&foHEOoP]A-M;dl>&E!bS;
hIF4F=:H&JoVW(IljBh;*lS^U]Ar$_VFWP%P4<e6ejld<Ue71j+XP5?cl.&TMPmjVChpX*,?F
nBjd'l!S'KJ]A\ZMBkjTjR[=&oG0a"f)AhUgi&lm]ATBL@bUaaEZElQlacS7mSR9==/c5Hj^&)
SeH=gaWVbAIsHGHrW2W44uY1(Sc?ZkZC_4rO]A(b!LLEpX"o\3K1`OWKCANj%1]A9a8Db=5dkR
$)(:rq\bX@\0cm24IO^(MaJU#q3)R]AiTj'i,!;VJGWPEt1g)4=uW_bYMY3+J`!gQ:+%BR72S
^e_$"5l";l\B%QXoSs@%A"sPZ,6<(Co"J'H;NEg[=9sf4>d$9?F[+9E9h/0C<?SR0>#DN83g
`=%X#V8+GcHOcK/]A<TlDAg$<>DBN\/+8qH!(_R4iWX#.Kh(LW\e<B@J/P^"),fPLRJKUj"-a
7nLo0=e7E\X,nWTgH4Whta@7P#-n'P1KBZaTg>3^,D>at(S.L%TIZH;(nPUJe1A5!=WZEd(r
$O?X0L'_%Y\$2Eq:=d+cn=E*.E4$H;+HASAHIQB<ZPrH>X$PGLl+&OD/UV",4jCj.GW;&QX6
+%e>QFd51oSg,)dDCS,/@Y'N#g4qNCX,NR6!3Or"cSoNnFj8YERqLX"$"5)X#+W%f_:kY;Y#
U:CW_VdTD2(+)m1JKnLlLs$4<8+qN-V8ceA=Q%7;&L3L/>1pb+'MMD]AbCk;iD3-PO'B:hU<@
5Z9gY,E.#H8LTWZhBfHWu>#TJ+\9l~
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
<BoundsAttr x="238" y="188" width="104" height="98"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="chart0_c"/>
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
<WidgetName name="chart0_c"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="1" color="-12564119" borderRadius="0" type="0" borderStyle="0"/>
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
<Chart name="需求比" chartClass="com.fr.chart.chartattr.Chart">
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
<newColor borderColor="-16750951"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=' 各区域需求占比']]></Attributes>
</O>
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
<OColor colvalue="-16681047"/>
<OColor colvalue="-16345416"/>
<OColor colvalue="-9990519"/>
<OColor colvalue="-13150859"/>
<OColor colvalue="-6187579"/>
<OColor colvalue="-15714713"/>
<OColor colvalue="-945550"/>
<OColor colvalue="-4092928"/>
<OColor colvalue="-13224394"/>
<OColor colvalue="-6710887"/>
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
<OneValueCDDefinition seriesName="area" valueName="bid" function="com.fr.data.util.function.NoneFunction">
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[ds1]]></Name>
</TableData>
<CategoryName value="year"/>
</OneValueCDDefinition>
</ChartDefinition>
</Chart>
</Chart>
<Chart name="供给比" chartClass="com.fr.chart.chartattr.Chart">
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
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=' 各区域供给占比']]></Attributes>
</O>
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
<Attr showLine="false" position="1" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${VALUE}${PERCENT}"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
<PercentFormat>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
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
<OneValueCDDefinition seriesName="area" valueName="bidding" function="com.fr.data.util.function.NoneFunction">
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[ds4]]></Name>
</TableData>
<CategoryName value="year"/>
</OneValueCDDefinition>
</ChartDefinition>
</Chart>
</Chart>
<ChartMobileAttrProvider zoomOut="0" zoomIn="2"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="250" height="150"/>
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
<![CDATA[]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="微软雅黑 Light" style="0" size="96" foreground="-1"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
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
<Attr position="4" visible="true"/>
<FRFont name="SimSun" style="0" size="72"/>
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
</Chart>
</Chart>
<ChartMobileAttrProvider zoomOut="0" zoomIn="2"/>
</body>
</InnerWidget>
<BoundsAttr x="5" y="30" width="570" height="300"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="chart0_c_c"/>
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
<WidgetName name="chart0_c_c"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="1" color="-12564119" borderRadius="0" type="0" borderStyle="0"/>
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
<![CDATA[软件名城]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="微软雅黑 Light" style="0" size="96" foreground="-15225665"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="2"/>
</Title>
<Attr4VanChart useHtml="false" floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0"/>
</Title4VanChart>
<Plot class="com.fr.plugin.chart.column.VanChartColumnPlot">
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
<Attr lineStyle="0" isRoundBorder="false" roundRadius="2"/>
<newColor borderColor="-1"/>
</AttrBorder>
</Attr>
<Attr class="com.fr.chart.base.AttrAlpha">
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrLabel">
<AttrLabel>
<labelAttr enable="true"/>
<labelDetail class="com.fr.plugin.chart.base.AttrLabelDetail">
<Attr showLine="false" autoAdjust="false" position="6" isCustom="true"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="微软雅黑 Light" style="1" size="72" foreground="-1"/>
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
<OColor colvalue="-16671280"/>
<OColor colvalue="-16737895"/>
<OColor colvalue="-4363512"/>
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
</YAxisList>
<stackAndAxisCondition>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name=""/>
</DefaultAttr>
</ConditionCollection>
</stackAndAxisCondition>
<VanChartColumnPlotAttr seriesOverlapPercent="10.0" categoryIntervalPercent="20.0" fixedWidth="false" columnWidth="0" filledWithImage="false" isBar="false"/>
</Plot>
<ChartDefinition>
<MoreNameCDDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[ds2]]></Name>
</TableData>
<CategoryName value="软件名城"/>
<ChartSummaryColumn name="项目数量" function="com.fr.data.util.function.NoneFunction" customName="项目数量"/>
<ChartSummaryColumn name="投资金额" function="com.fr.data.util.function.NoneFunction" customName="投资金额"/>
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
<BoundsAttr x="0" y="0" width="250" height="150"/>
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
<![CDATA[新建图表标题]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="Microsoft YaHei" style="0" size="88"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
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
<Attr position="4" visible="true"/>
<FRFont name="SimSun" style="0" size="72"/>
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
</Chart>
</Chart>
<ChartMobileAttrProvider zoomOut="0" zoomIn="2"/>
</body>
</InnerWidget>
<BoundsAttr x="5" y="338" width="570" height="301"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="chart0_c_c_c_c"/>
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
<WidgetName name="chart0_c_c_c_c"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="1" color="-12564119" borderRadius="0" type="0" borderStyle="0"/>
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
<![CDATA[供需比排名前十的省份]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="微软雅黑 Light" style="0" size="96" foreground="-15225665"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="2"/>
</Title>
<Attr4VanChart useHtml="false" floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0"/>
</Title4VanChart>
<Plot class="com.fr.plugin.chart.column.VanChartColumnPlot">
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
<Attr lineStyle="0" isRoundBorder="false" roundRadius="2"/>
<newColor borderColor="-1"/>
</AttrBorder>
</Attr>
<Attr class="com.fr.chart.base.AttrAlpha">
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrLabel">
<AttrLabel>
<labelAttr enable="true"/>
<labelDetail class="com.fr.plugin.chart.base.AttrLabelDetail">
<Attr showLine="false" autoAdjust="false" position="5" isCustom="false"/>
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
<![CDATA[#0.00]]></Format>
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
<OColor colvalue="-14317890"/>
<OColor colvalue="-11184811"/>
<OColor colvalue="-4363512"/>
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
</YAxisList>
<stackAndAxisCondition>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name=""/>
</DefaultAttr>
</ConditionCollection>
</stackAndAxisCondition>
<VanChartColumnPlotAttr seriesOverlapPercent="20.0" categoryIntervalPercent="20.0" fixedWidth="true" columnWidth="35" filledWithImage="false" isBar="false"/>
</Plot>
<ChartDefinition>
<MoreNameCDDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[ds3]]></Name>
</TableData>
<CategoryName value="省份"/>
<ChartSummaryColumn name="供需比" function="com.fr.data.util.function.NoneFunction" customName="供需比"/>
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
<BoundsAttr x="0" y="0" width="250" height="150"/>
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
<![CDATA[新建图表标题]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="Microsoft YaHei" style="0" size="88"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
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
<Attr position="4" visible="true"/>
<FRFont name="SimSun" style="0" size="72"/>
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
</Chart>
</Chart>
<ChartMobileAttrProvider zoomOut="0" zoomIn="2"/>
</body>
</InnerWidget>
<BoundsAttr x="582" y="338" width="564" height="301"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="chart1_c_c"/>
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
<WidgetName name="chart1_c_c"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="1" color="-12564119" borderRadius="0" type="0" borderStyle="0"/>
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
<![CDATA[区域本外地占比]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="微软雅黑" style="0" size="96" foreground="-15225665"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="2"/>
</Title>
<Attr4VanChart useHtml="false" floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0"/>
</Title4VanChart>
<Plot class="com.fr.plugin.chart.column.VanChartColumnPlot">
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
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-1"/>
</AttrBorder>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrTooltip">
<AttrTooltip>
<Attr enable="true" duration="4" followMouse="false" showMutiSeries="false" isCustom="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
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
<HtmlLabel customText="function(){ return this.category+this.seriesName+this.value;}" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
<GI>
<AttrBackground>
<Background name="ColorBackground" color="-16777216"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="3"/>
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
<Attr showLine="false" autoAdjust="false" position="5" isCustom="false"/>
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
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#0]]></Format>
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
<Attr position="4" visible="false"/>
<FRFont name="微软雅黑" style="0" size="88" foreground="-10066330"/>
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
<OColor colvalue="-14918269"/>
<OColor colvalue="-16113347"/>
<OColor colvalue="-4363512"/>
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
<OColor colvalue="-16737895"/>
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
<VanChartRectanglePlotAttr vanChartPlotType="stackbypercent" isDefaultIntervalBackground="true"/>
<XAxisList>
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
<Attr alignText="0">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="false"/>
<AxisLineStyle AxisStyle="0" MainGridStyle="1"/>
<newLineColor lineColor="-5197648"/>
<AxisPosition value="3"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
</Attr>
</TextAttr>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
<AxisLabelCount value="=1"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="0" secTickLine="0" axisName="X轴" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
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
</XAxisList>
<YAxisList>
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
<Attr rotation="-90" alignText="0">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor lineColor="-5197648"/>
<AxisPosition value="2"/>
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
<VanChartAxisAttr mainTickLine="2" secTickLine="0" axisName="Y轴" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
</VanChartAxis>
</YAxisList>
<stackAndAxisCondition>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name=""/>
</DefaultAttr>
</ConditionCollection>
</stackAndAxisCondition>
<VanChartColumnPlotAttr seriesOverlapPercent="20.0" categoryIntervalPercent="20.0" fixedWidth="false" columnWidth="0" filledWithImage="false" isBar="true"/>
</Plot>
<ChartDefinition>
<MoreNameCDDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[ds5]]></Name>
</TableData>
<CategoryName value="area"/>
<ChartSummaryColumn name="本地" function="com.fr.data.util.function.NoneFunction" customName="本地"/>
<ChartSummaryColumn name="外地" function="com.fr.data.util.function.NoneFunction" customName="外地"/>
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
<BoundsAttr x="0" y="0" width="250" height="150"/>
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
<![CDATA[供需平衡对比]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="微软雅黑" style="0" size="96" foreground="-1"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="2"/>
</Title>
<Attr4VanChart useHtml="false" floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0"/>
</Title4VanChart>
<Plot class="com.fr.plugin.chart.column.VanChartColumnPlot">
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
<Attr class="com.fr.plugin.chart.base.AttrLabel">
<AttrLabel>
<labelAttr enable="false"/>
<labelDetail class="com.fr.plugin.chart.base.AttrLabelDetail">
<Attr showLine="false" autoAdjust="false" position="5" isCustom="false"/>
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
<Attr lineStyle="0" isRoundBorder="false" roundRadius="1"/>
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
<Attr position="4" visible="false"/>
<FRFont name="微软雅黑" style="0" size="88" foreground="-10066330"/>
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
<Attr alignText="0">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="false"/>
<AxisLineStyle AxisStyle="0" MainGridStyle="1"/>
<newLineColor lineColor="-5197648"/>
<AxisPosition value="3"/>
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
<VanChartAxisAttr mainTickLine="0" secTickLine="0" axisName="X轴" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
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
</XAxisList>
<YAxisList>
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
<Attr rotation="-90" alignText="0">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor lineColor="-1"/>
<AxisPosition value="4"/>
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
<axisReversed axisReversed="true"/>
<VanChartAxisAttr mainTickLine="2" secTickLine="0" axisName="Y轴" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
</VanChartAxis>
</YAxisList>
<stackAndAxisCondition>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name=""/>
</DefaultAttr>
</ConditionCollection>
</stackAndAxisCondition>
<VanChartColumnPlotAttr seriesOverlapPercent="1.0" categoryIntervalPercent="20.0" fixedWidth="false" columnWidth="0" filledWithImage="false" isBar="true"/>
</Plot>
<ChartDefinition>
<MoreNameCDDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[ds5]]></Name>
</TableData>
<CategoryName value="地理区域"/>
<ChartSummaryColumn name="中标数量" function="com.fr.data.util.function.NoneFunction" customName="中标数量"/>
<ChartSummaryColumn name="招标数量" function="com.fr.data.util.function.NoneFunction" customName="招标数量"/>
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
</body>
</InnerWidget>
<BoundsAttr x="582" y="30" width="564" height="300"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.FreeButton">
<WidgetName name="button0_c"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Text>
<![CDATA[2017年一季度区域发展篇]]></Text>
<initial>
<Background name="ColorBackground"/>
</initial>
<FRFont name="微软雅黑 Light" style="0" size="112" foreground="-8337437"/>
<isCustomType isCustomType="true"/>
</InnerWidget>
<BoundsAttr x="-1" y="3" width="1151" height="25"/>
</Widget>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="button0_c"/>
<Widget widgetName="chart0_c"/>
<Widget widgetName="chart1_c_c"/>
<Widget widgetName="report0_c_c"/>
<Widget widgetName="chart0_c_c"/>
<Widget widgetName="chart0_c_c_c_c"/>
</MobileWidgetList>
<WidgetScalingAttr compState="0"/>
<DesignResolution absoluteResolutionScaleW="1920" absoluteResolutionScaleH="1080"/>
<AppRelayout appRelayout="true"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="959" height="538"/>
</Widget>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="body"/>
</MobileWidgetList>
<WidgetZoomAttr compState="0"/>
<AppRelayout appRelayout="true"/>
<Size width="959" height="538"/>
<ResolutionScalingAttr percent="1.2"/>
<BodyLayoutType type="1"/>
</Center>
</Layout>
<DesignerVersion DesignerVersion="JAA"/>
<PreviewType PreviewType="0"/>
<TemplateID TemplateID="c9945680-a83b-413e-8492-37b65d76afd4"/>
<TemplateIdAttMark class="com.fr.base.iofileattr.TemplateIdAttrMark">
<TemplateIdAttMark TemplateId="3f59163b-9678-4f7a-b57f-03e2a1286c57"/>
</TemplateIdAttMark>
</Form>
