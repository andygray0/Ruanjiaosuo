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
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` AS `年份`,
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_GEO_AREA` AS `区域`,
	count(
		DISTINCT `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_ORG`
	) AS `企业数量`
FROM
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
WHERE
	(
		(
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_ORG` IS NOT NULL
		)
		AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3)
		)
		AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` IN (2016,2017)
		)
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
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_GEO_AREA` AS `中标区域`,
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` AS `年份`,
	count(
		DISTINCT `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_ORG`
	) AS `中标企业数量`
FROM
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
WHERE
	(
		(
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_ORG` IS NOT NULL
		)
		AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3)
		)
		AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` IN (2016,2017)
		)
	)
GROUP BY
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_GEO_AREA`,
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear`]]></Query>
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
	a.`area` AS `area`,
	(
		(
			b.`amount` / a.`amount`
		) - 1
	) AS `grow`
FROM
	(
		(SELECT
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_GEO_AREA` AS `area`,
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` AS `year`,
	count(
		DISTINCT `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_ORG`
	) AS `amount`
FROM
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
WHERE
	(
		(
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = '2016'
		)
		AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_ORG` IS NOT NULL
		)
		AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3)
		)
	)
GROUP BY
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_GEO_AREA`,
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear`) a
		LEFT JOIN (SELECT
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_GEO_AREA` AS `area`,
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` AS `year`,
	count(
		DISTINCT `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_ORG`
	) AS `amount`
FROM
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
WHERE
	(
		(
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = '2017'
		)
		AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_ORG` IS NOT NULL
		)
		AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3)
		)
	)
GROUP BY
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_GEO_AREA`,
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear`) b ON (
			(
				a.`area` = b.`area`
			)
		)
	)]]></Query>
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
	(
		CASE
		WHEN (a.`中标企业次数` = 1) THEN
			'1个'
		WHEN (a.`中标企业次数` = 2) THEN
			'2个'
		WHEN (
			(a.`中标企业次数` >= 3)
			AND (a.`中标企业次数` <= 10)
		) THEN
			'3-10个'
		WHEN (
			(a.`中标企业次数` >= 11)
			AND (a.`中标企业次数` <= 20)
		) THEN
			'11-20个'
		WHEN (a.`中标企业次数` > 20) THEN
			'20个以上'
		END
	) AS `区间`,
	count(a.`中标企业`) AS `求和`
FROM
	(
		SELECT
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_ORG` AS `中标企业`,
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` AS `年份`,
			count(
				`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_ORG`
			) AS `中标企业次数`
		FROM
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
		WHERE
			(
				(
					`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_ORG` <> ''
				)
				AND (
					`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = 2017
				)
				AND (
					`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3)
				)
			)
		GROUP BY
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_ORG`,
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear`
	) a
GROUP BY
	(
		CASE
		WHEN (a.`中标企业次数` = 1) THEN
			'1个'
		WHEN (a.`中标企业次数` = 2) THEN
			'2个'
		WHEN (
			(a.`中标企业次数` >= 3)
			AND (a.`中标企业次数` <= 10)
		) THEN
			'3-10个'
		WHEN (
			(a.`中标企业次数` >= 11)
			AND (a.`中标企业次数` <= 20)
		) THEN
			'11-20个'
		WHEN (a.`中标企业次数` > 20) THEN
			'20个以上'
		END
	)
ORDER BY
	`求和` DESC]]></Query>
</TableData>
<TableData name="ds6" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[SELECT
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_ORG` AS `company`,
	count(
		`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_ORG`
	) AS `amount`
FROM
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
WHERE
	(
		(
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = '2017'
		)
		AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_ORG` <> ''
		)
		AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3)
		)
	)
GROUP BY
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_ORG`
ORDER BY
	`amount` DESC
LIMIT 20]]></Query>
</TableData>
<TableData name="ds7" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[SELECT
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_ORG` AS `company`,
	round(
		(
			sum(
				`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_MONEY`
			) / 10000
		),
		2
	) AS `money`
FROM
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
WHERE
	(
		(
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = '2017'
		)
		AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_ORG` <> ''
		)
		AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3)
		)
	)
GROUP BY
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_ORG`
ORDER BY
	`money` DESC
LIMIT 20]]></Query>
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
<WidgetName name="report1_c"/>
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
<WidgetName name="report1_c"/>
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
<![CDATA[2017年一季度企业发展篇]]></Text>
<initial>
<Background name="ColorBackground"/>
</initial>
<FRFont name="微软雅黑 Light" style="0" size="112" foreground="-8337437"/>
<isCustomType isCustomType="true"/>
</InnerWidget>
<BoundsAttr x="4" y="5" width="1132" height="25"/>
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
<border style="0" color="-12564119" borderRadius="0" type="0" borderStyle="0"/>
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
<BoundsAttr x="0" y="0" width="475" height="280"/>
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
<BoundsAttr x="1" y="34" width="565" height="326"/>
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
<border style="0" color="-12564119" borderRadius="0" type="0" borderStyle="0"/>
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
<Attr lineWidth="2" lineStyle="0" nullValueBreak="false"/>
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
<BoundsAttr x="475" y="0" width="477" height="280"/>
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
<border style="0" color="-12564119" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="宋体" style="0" size="72"/>
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
<![CDATA[1371600,1955800,1524000,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[6172200,3886200,114300,5524500,4343400,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
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
<C c="1" r="2" s="4">
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
<C c="2" r="2" s="4">
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
<C c="4" r="2" s="4">
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
<Style horizontal_alignment="0" textStyle="1" imageLayout="1" lineSpacing="10">
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
<Background name="NullBackground"/>
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
<![CDATA[m<]A4C;eNNseuH,-R>r"S$`'nASX,2BW/-##2euW%l!IZb#168`<[D-!&9?H(X/Va[CV:jDeF
?Y<ob&K_5XM3)+X3"]A70o4k@XoT^9#s/Bn$CCt1Q'G#I[rMUkNJ+"*qd_U^9uP(hY"&ED7>#
#E;lX\T7&I;+CNV&n%\a65euF0J:PZYT,<Lac%h&1M#dWaY5@/5[m%te0rQB9h5s+1I+c%fj
+g@gY@f_rQ2K"Ck3tdCC?t2DHS-@&e[E58hrEUDSX&sIJi.<kNW3P^U$"popNh2X':2d@a&I
f+1c=FoYsddbh7FG\L%b2*)j`0_qP$GdJ+242Vp6AAGCl5VP7<'<YVI_?k^YKbWNE.iWc(Mc
ei]Ak!hYj9`-M&AZA)<9'=3GJd?"g%(p5X]Ao0E`f'nX$4hF*]AVWW<1n9pp;n?Fdn3)CPMibPr
+&0c?"\Z-+5+S3E%p]AbB1:#/OR!3DlI0*@U!T?5!B7M\2_-.\80Z4Rgjc`KI\V*,"LY6$=a8
N*1BkeNqN-r*.F!N:q,kDNkepPY`W?!3Au;9\D0ni?BLa_j(^UM$dD5A/D_SYrCU&/R<hVDG
1-J9H2kg9OtG;6=)AnsOrmYd[c-JB;!5s3O*7DnVm8p-Y<<lbM-p!i-*t7hiR!%;Xi\rZlQo
H?[G3Rl[=C?8f9.#Y\7e20=%G.5k=-jQ00csX5H@H@ZtsqV,)<1#l7k+PXX=((a-Ft3G_AF,
Y5e#,G$87s^o*UkjanTV=UT1a/hC9CR)C,D$Z*/oi/7/uO>[QXr4o1kE0i9nD^hiYa@ogM@E
g\mXu$qjr\9i_@rEq[IO10AF&k.VY9n2*P;<?Q.6'qVE9L#p,CO@_$L@P$JoL*(:^%fun]A8!
+!GET<I7F*c$7E.TnicH[%(-jRf?_C#,<p[Xn,.u59j9]A#!O!5A@;KaPIkPD)TG"2:]A2JkfV
IMF7&btra's6-13`/(#Z/u<#Y=.0"K7^LB@:%iBV/mS/Vop<`V6PsPf+]AA42m:niLV+XA"/f
VciN^R9(.F<rb?XR$,!En$5\n#X_!tm%U0ZiUE;-7(7B++[(`tUemplo;-)SALkps^)+Iob4
mmk7sijOn3%W&eZDiCEJ8Eki>n`n9f?U@Q4_$&`<[SCE-imL32RH%c9/aYtcc?C<:nMW4PaI
Bkna"9>f5\s%Wo3V6S<I_CG/;&-P!M<%/;bE6kjBbc4WB[N7rljgnofjf&'b^D`Z!qH_qCYQ
S3muU(6nCo)l^t_D(BTpGVmuZPH>6WU/MeX=i1X1IK-T2k`#E&]AbU,;u'ht[RRN5"gUDKl7h
@#CDW28;ea""iXiL$;_qmAZIO<6o):i8We:>[Q`']ANj%#f1Vn.]A[*C4B+V)UmCA5:HY3`Dcq
EW%S'Dae"s7S.H(G=l.rPXZSiNX]A05=>'e^8?.Aa6Yp(.USF-$oN,:&%MfNWi%CnkO1i1BVe
Y)*00$U>>/8&]AT4hYr$\LHm^Hi5\iLX77u$m`>*PJGPJ00>jE=^#LpM?a!dFR#0KnHq30$S9
lKDH>m-VmJ1'"(9fP>#hM%>G6\?U#+V2c_!TsBF^+,iP/[YVfd9p:4'-\4*K1JaP`j1&.m%W
YJTBh]Aqu4Fl"t_Y+>3lmCM`h*jGR6&lC]AW7;HjaS;Lp3TZlHomR%ZSelBn8G(SU(c9;Fgei"
?pYbcPJZN870WBp?%d9K\7h/%j$r;l[5gNM.Vl<DDY"HbFda=ba)]AI+c?VNV<J_[+:&C$@F$
[D7"cRJ`6k![Olj-d?,5:%oqDY&J:*_5I'_Ar&kiL/Xp^?/l"^-Y30^u'G3-#'6.>mL=Nhc"
;<`K>*pdsZj`WffO&qBb=3)*,'>-+ci%/?>6j27ImLZlA$%P`(deMr>L(;SULN?5qW+lh-^r
`fU:H/@`R1mCTl*LJ"r>)&K.%^m*Q9J6Q?;SAK_++a[m"/]Ab"',`Pl%EnKQD(e,bE9]A(pIIG
O6Q'Q#Z_mDSb0;SGXYqM]A0m7lPG,SWDa3H=fW$J;dZQ2,%-HG0]ACT:e7%.)%P)uj0Y4aQbaj
C"L%RT$A*HpaqYou;*>;EDf6E$^Th-#H$B/skCQ$!Q6q_E$S.n>OT28TW+-4\C#dF1k2IU7M
3\HPFF5KTg1Dm6aD.X;\\Eg0mR52ue]A&:GWu'8DG=9r(BAab3ek:i9eGh?eb"#7._?sCK1#9
889S`i(=l.FsD,,I7]A]ACU'gP.1pC<'-,6[X/V<8TYas,ab3j>ad>d8@chpo^?2i&QRXfFaM[
&]AT5ntMo6.>H@-;Xf#QnKtf@qRSK+a@Q42<F+X8Lp^o(&%a?Ca%iZ#!UB)M0^-u,g;P(H`'0
[8Ib3KCUH:GTf6EkqRT"goC6pRc.S[&&LR4QJc!4"8/t%'Um=Q]Af#:Fd#r>bDn$C-)\W5-m3
?F>i&g#_-k_fHebZP9J+`kYb5^#.4d):OsV*aP()IRF1F=Q,_!sHj$4u0Yg:Boi=RZ,]A`Hj@
i(L@jGH'$)L;)@W1+.?(/U<uOkK0E/4,OZ/LU#bN0CO=!oq$5ngg>KtLMC#c=34n4?1,ulb%
hr;Rg8:":IY6/+OF6tqlbcfIUBD^7-Ym\)2=kX_3(#ce.G<RZ_j..=Dp`KW%P.X(WmN,XklC
#5G\P:sb_"B><8:.-io.FQicSBFJ)q/".\J#[GE!QT3ED+:i`RW4Ff[mMOgmtfE"J60:Xt`Y
Rhcu\YZ\)D]AOKY8%XBd6S0k;90ogQQX=QPQL-H?qsm1kcU=4gG[Gth)*Ni6$MdUQc+9s]A#c'
N<%H-sgL>oNiC/lKAtZGBq:DKYs&RKs7Yf,@7#\S:+cp6/QlY031Te%VOo6WZUQWZDVDmEu?
L2QQVloP$`&.QR+E,*A%pp1kU#]A:@t)nTpV&S;Z\6YRO8njfu^(n_I[c)7^#Q8!]AC<42YY74
Hpu-.Pk)HWGF>-Li<ju*b*^n\]AU2J;b?=sPoVXH!8RJXB57KD@1pEH!YSe^Th8FEE9OZg&I$
=@68O'b,p1^_oLjHW/.tMO<^NifH;g6&T-AcCgMp=%'beX`PmXrNm@b0$=NT]AbO[2X2D4R6=
!I8XN+_)VZha6n<-M8/7(,3M4Z2[!K"AMXItT98MB$d-/V7mQe2"KO=5fau;(]A8_\FQ#lB=H
G7O-68>*N4hS1'.U8c]A"kM;,^0nh&]A9[oVKBXDl-?u!PEgCFF-=id1Uc77'#p)ac,-fi2C$H
n@)=bRL8:ep[N%?Us8Z,R+9/>D@Vn/GdR!6JO:?+@M/bei0fXa"H2g`f]AZA"7gW:^WpYA]AP6
Sm<Ha-*/jF=a3&kF`^0XUt!/0<2fQZU<OAuW=6Pbd;*>LH5(BT*O8@1J1I<_/Bi&sa]A7f79[
sjRaQ!8fKA@Uk97WIaZT(O2%aeAS/n`7>ePB]AajGI-"Kra8J^6`WL4=4dN^;io.Q7=VokLH1
PIH<S5Q&t/ILj-Va,[=]AtWckU(5D%Y3m4@-V#=crUGF&E878g,;Dgb@;Bj7UZ7&KeOff<UB=
_E2_3X=Q.:^>ZijJoP(GP0.GYo3F&OO0YBJiQ2+3IH';EP7%$:FeIp`.ph.L[sBb-hT'p?[N
Rp8BVc4(^j;j1+IM+DSHYtf\F>nIPLj%edcou(W]AJZ?Y+@okPPDmWRqlCe'rWMSeA_JeA5@0
86Sc\@;Fl\DQ+lC#tPU(J.kOYMWao0DuLK*#C,mi$_]AR#A%9T@U7$&C'W)0W#qIGNqr<esL6
=XSF>;'ii(se;P'Y,/_Hm3@h:/2Er,4S^Rk+i3Pa$hQPSMp+cur%\6=@tfZFsE`L8j*c4OBL
Ji>l?;fnL1]A>'!RQ9uUcFKK,i;6\Dg8:6LCZ)D46)+"b%ZIn5^;QMQ&6^_PG!h#3i<!QbZKe
5;lX@L<+DCQdZEEYaG?!q<WC^KIa]AUFBnG;P%"-kD<V4ic6ES&E@iQ"R):[W*rXC>G,#G\?\
iNaoRLE'M(S1W+jm<5Eu<UXr,qkE_+He7b7)()L*]AUUR&\SMrAu/ol2,!giu]A$0@&D2]A@Q!R
&t,m*8W@pH[Zh:f*A(F(=A:.[HfKq8UeM\rH&!K=%u(KOZs5!@J;/#<POO1IiE_L)-unqB@'
NE=i,-QEB8bK6"[^rs9ZH]A,5-(8h/LR]AO]A0Wn21g>sE3Jl?dcL6=-VsfQ8h&ncm42iDtFdHC
UX4B9E<Orra*H]A.<KHkY^=SH=!c7=F?\#tX]AO`p[NS%U00Cr<K&\jF=tc]A2Og!Kp]APF@<i="
Yqq"NZOZ'bg7YO9!IG7*D!'[PX\4(KFIuLcF=0,`B@;8'Q8ojXOiF<_U""m`B\?S]ATHckFSK
;N@'@`i^[)K:(N7g2HJMoA)jI^p7>aPmW/.+Dj[N/F2gN\eBrdQX4Y+?$`ikTP@c?X73Qpd$
hL"*(f>.%]A4G+j/am3!JLGV]AZ]ATucpe1OAkR[SK#0L![$4h[CF6]AGpISV&4,+EOe]AiC,6":/
X[`Q.jJu[=%`Oh3NDD^9h6&"i=DKe<d*+eIdfK@:&[C!hTHo&GYg\[qmhm005/\W3.<:47Lb
rrutslD7uUJ`kAGembganr=6N\Vc&;<K48$tV^Je@KTFGjXDSO!pj.6jI#dTpY@SE=2LbY.P
,DV0nZoh*Se7qq[:0ahq:o5u=o&X?a=iLM[F]ALVSW\E&Cj;/7K./C7:Hkg[[_iftMU'5:;(R
(O-BE.eN=Jl:N*k\IMdX6cm&4rYMKrE)'+\o;r[<l;.m/+_Q!ZV.nT(aR?=B"j`9oCQX61rC
*i_D%-RJ89"e6FWc4'J*mJraV6eh^6=p%(E2u4LmAt&mTcY._)%c_1?:%XcsnV2U[Y7uk\Pn
B3=<]AAFsDV/jjMisYAX.!CA8%pjDd^RnOeb^j&\[ttHG7E!J%Pp5G4n$cN?X:hN`Ep?rr2Lp
A_D.)#C*u*#Vrc/VD.)M?HkG'B`sNL7#`ol2(tIm:7Ci(GgnGo2(@]Al?GjX)QG1em$X*YC?(
(0ueQ0>?Qc>a3MHC-9_SGu@aIF;6#2^JV1,()CV18RX@JE.>?NB@qHiJ7]Aei32k#0@+`Hg7-
R.+]A^UY,+'65,JE"8L1o%QXYWC==9'ktXO3U=VusE7ZuD*j&hk]AMa*tg*'6=A<;XYZsUs2Ji
n'V3.R.e<98j"X%d\=[oN1a&AOCtSkdAiHsY"R24QpYg3XlGi_&RA#W^Pk"@"D;ok[M*T0Np
g"X-)Bje3i05f7/PJF0g=u!>%`@BA@sldeTo!\[n^3ah0*Y<Qa.X\Pe:%iPDl*Y>e&8pn$1t
S>$BmJWB^eNe/dRTp"!LQQf7goXpjNINYBYISt'7/0^XccBI48Z1`G+!=Ite0Eqg/nS=!RE-
/JWk!*M0;cc(^J$X)?;aV-/H9Y55`iNVl&]A&@]Ar3NqL(`iC';-gBKQODFDi%KK_Xg"ppI]Afd
F5pugtZZ'llMAUJ>=Fi)`q-fImKJfrZE-Qg-"#P5KnEf9YF'ObH(?6M89Dp0ndnnQi(O@U-f
]A'H$[R:;"3n9oo?[2/*]A"uWVYSMS$_-9jYkN7^^/>t\"@T+(qICn=%AHjPio*)snd8I!1tD]A
#X;KDZ.&*=I$>#8F&KZ*=JiD]AtL%$[*-4N)/feqTffUnZTA&/k9AKo5gF;=l?=2_4qi=/Z!u
UWW*@S3`Z?Oe-/(797#(W3k_@YW/BWpmgt<1,/rMT2@M;B0EB^>5iQnrrXdm#[ap-+D1iFb[
UATucCZcnn9Qh10kqD'X"h['++[UZ*Z#:*1m7LE^ackoimDR^]A^+3V[V!rkaa_]AMi7MSS)mZ
J$*C`t5P>p0Sn(GN'W``-eQ)_?pC9RHg&]AJ=LJt7"\A$/1;G:3nujj@*O8?o,-;U/q%S<e1f
G_\b]A<4>>:`1<(?"-\@Vn4%'!#.B-#'cKkM%3?(FpI(k5?/]A;'ds)<)TFcUoCY^c6>V*Y@2<
YmbJJhQo1MsHPYqmBjGU9ROl5@=FHr_\6J#QBV^W(:GSVneScZ4K`=%1ukY\>W$e'usKV_KX
EE\A)9VWk9Xc7\&/_Vq_(JLrKdaAT_a+!#&fR?pjI?%)c(g3Q+9r.%Qc&6L;5W\+&%<:X'c8
Wpo6FZ1'Q`2uup/VDUFac1Qn7;\qPXG`.A)Bf_32SM[@6m)?b]AOTYb0@?cZ"7Yh?!mLd;Ra'
T'*E>:drk*2'553Ybo]AsAc\jf6ehV'(WG+[Bb1mRcKk^1XDNlNcmj*H#42l@!0;ihufep+Tj
!_^"kV_?<I5I2@GR1d.sIp\breIhbBC&/l5_m4j(rrf4WHVOSXAH.MQZ#g*C-&-ZFq^lWQ6)
C9ePj=VP>aFfZ]A?^6[j)&F9$Xe7C6cU8?oT^d]Aa6i%^6+rkPD>WffZ2+8(^jAA\V\hc=r60o
3DPMPk(\#$1*,7DSbdMq.l09OPpGA'7kF0@"EZNE4Gh7=`:Y!"s-&)m2KU\*$HA5XpeAI@Z>
(f.L-VR08dF?R;LTX(iLIEc+2C=2O"k%YB7pN::f5EDs`WkH/TI!U0VGiWLopD,:!?JDqe6$
A8*N<ZXCt[%ocGTQYEJ);]A`BrN'<hdUPG\I:q-C8,;mfk=9VjYMSX7]AUH+]A`r$c[_8C"c_k9
GkXj;e+hW[R[r8@8Ncd-l$SEa;NA,,n6IV;U1p-6R]A?1r[ogN:/Y)3&C5uZl(aI4L]A\XVsE@
`M$N86q+DQ3cqltPVhl$mmDd6Kj#\C\NfZr&40bg+]AT>B`3]A4WaI(+:Q)PgK#+h!MAZr#G_o
5o8dXR\b0#:3K\=@8oKei88r/T;,2;`E\'Y#KG%!Wc@V5P49<DpTa",<"Sj`%S4X@pG3'p^f
R78=0JACXrX`U%BO[j21ijLSIPIKmA+3,4:CsUqlT:66S9V\OE`Yi]A8!P]AYp3WecSP3,"BhP
N1m'X/lCWf<c.(%Q>8i,pV)!t6m$eRNe8,A-,ZZX2]Af#g;OjSrte[Qm_"MY>IEY^1S?+L'-/
Fa9GEPE*=B\6pS`Q9Ie<7(%9G8]Ato.B67GuZ>W=oFf8]A:>4QiTYL8MskUWZ)50NGI%cR$Q(/
HfC35Bj@!n_ff$S5qqKEp<#h(NuC=46uhF#J,t-*6Dl7LblCO(:Ts.^&0VI#JltAW-K3>6aC
RrWqqA^e4d*^Qu?@U+#U4'1_ipJ3Z;EIJOu/:,RH0W&tI`SDb3=8Ej^m."nSu02B;!`0FRJ^
2[GgH<YH&/gpYD5,JY$J#Qi[aG\UCDK;]A7)I-0uKTN[KinumI$>kc\4Jlpkc^6PPqtVL'3Ue
oT%'.5$d_B>+0T.M4@3]AK/]A^':1KR\G]AZh/MgeU]Aa>e4[o\mEYud9"A%GkK"`O9lX+M@n57_
3XD(_Ygh*GK+`jD4:N]AB\jf4oa&bPdH-.5RgRm:dr2_rTdWJ-YXOAZTc]A3*\MNXc:rI%aE0X
BqU^NIK]A88?c-,&(;6h5J[uOG:/@4sIGqB$Xj`:8q:-'N6a;W>\(PkJm4-/e#VapgRHK=*X6
@e>UZH.dBRkh$@OP;FgB4URsoBjJ@SKhh<W96=2YQ$nFhHk"I92Hgcr<en/qlFRXkI<X.j(&
4k\S>;OAH(]Ags;P7X*N;P0qXGl2s+lk'AJE`65b*a.FNU:Z@@P&=TN@,rSV9<Grb;g6D!daa
5\aIF!ka7sdKc,Jdr88@R=^ZPkt2WR=1nb;lA94Pp=RW$[+q)>QULh$=+cLerlOTf/BcTPOB
s.@*XmpdVcOJK)*+fsVT%,s3adbk(PdX>-A<ijOBeJ,W0Ip/LoA+"Hf[u5\;nP/d$S7qi<F`
<g$(mgK*F)WVd9_7T6l98+WYXtM9c?eN"]AN.l@7<M906bkh7mkNr.iRmgsW(UYe3/hltoWAb
?L,+o9rO^/@,.>uT"Xfc+s-OF^ISgi;+!*W(ra'-aSR^g=R_.JRkVu-<b:AB!_E&'Df0?nEY
di.%=Wi"]A6d>^cOKVs%G.;qgKJ-0lJDZEn!-J[iMe&7=Bf$[&FAKa3;c1\lj$h4WHF1933sE
#InQ"-OS1)XcIDN:Hk-E3*%KB1N3,L]AV9Qs+rED"]A5NM3i/;_=<=dXI-?@BM"<kJC$0&_!qf
"_!s_5NMBbl[=OtgT,"Q4aETK;L-soI8;"9g`i_Bqr`%RW))+qclHI;>)\2=d?K6K"uKGR;J
AqAmV`=KR\-VWEb'e.VAB1q3V3.+%7_)aeCE1b8fEui_emn&(^&mVU7T,VrK5Y^nh.Jl?4Sg
qJsREW,U]AX4bL&;@^,sGeS?:')fqQG8p\./lL%cMol4o_]A/398XL;r+@BVfg[F+G]Ak02DGk&
5CaRS#fO8V.\%+\TIRSLYoeW8R)eTLXBa6<G0X(1@\T;_)UE$'`@5Gh.&nJk>5>M&/naqSKn
VuU4om/J'<><]A^d+(`/&jFU&P6$,r5\4T?-R4-p!#r<N952brl?[SA/5M?(:,/JWRf<V%oek
4dN$8Z,8Q)1Z/2s_e2BecD[mrHh0H1.*B5aL#%Ka'!"-HRQDCl2UEu_bBiRD_fFMm,^/PMLK
ohP,^k0W26dlq61OM#Dtl8-BeW;r03/D5ha(2gd83#AbP!T&c',c?8R]Aeh>u\N$'u,T(Nc]A9
5Tc*PWQt:E`'KKc+-!oKOgiRlVVf:mtghQZ<cKg1*p>15MKuR)C[.kgAREH:@ZEnsjnTGoWN
>ca<Ui`:Ym`[[p^RULA_DA.heA#DP'Kqg7#`m7\oiNZ%9f)_@a@68='t<q"k^JW+81,UU3rs
Z8)V`Qd=/(==Y8Zc0P-?R5OdD"T5Vcg9(MM?4]Aphbe*>#:cPct(c*3HLbAb^LR"DUed6?#OR
cr6(DR9eJWk7^6t#!:1JC*a38Y<<Lu&!B]Aq0d<XgI#FqV1Bd?K1s6SbSjj%emR!+E_).r\o.
a)CE(4DE*18S8DpBWa\+?`-6;1jls(Ue+$fR+"s4]Ab)eNXFAT!B\;467NNb/gkG%K6WU^46P
.a%]A:i5A#`:G7`16ITtpCpN)Jh(4HrT2p2.QVc:$.KmV#s:\aU=B$(6uR?_0@_kj#s"6YZ:0
'p.+hW4D;f>84(_eEQj:eK9SICGJ2h$uco/J[sIFna<FI.rfBJNVXGIIInKrPS-+.dftV/Ru
9WhOK9XG'7+<bOSJ"V87\`:oVmg6>n=S%8&KFV7h`f7aa"e$'t]AUP$Pi;ljA@Wf`h#;_`$;&
]AGB$69<n*te6.Fo3a^Dup_rmtHRPrR0tRDQ/9pF(X7i+`FdM7Q[))d%H9UWeP<%OWZpC:$YU
oC<9i+%Jd5Bg6eT&Y!24onQat&Q+66"ZuZOs%)Q&6@(iIUm;HO+do(+k?:Sr*B9k39>T-&gI
RnjpOq8*TaL$#01ZTo4@I'$$?3b\L`T34fiHoO1rDq#IaV_C,bd2NY]AP;$Hl)1jHMS;sY0pU
5m[*-rmX'1D[)44'jJr-G$mh7Fl[1ah9&4l`0A5j*66_#=hqfn=;=Uc>o4(Pkb.ds)tdp+FB
lBja6[7leFUMW]AlW$MS\75J?!mKZ9UTGd'9F]A%aIt)j]AVTtjTr[KJsE9q3EEq,lW"jn'<Q82
*n8b(H4f;UmLG95H4Le]AFZ[/?$,U,&A(^k7F@uQAl4Ds>.aHG)Le]A)8S$O[d>3hUoPo30<rR
cU7^m8l7Ru[L%N?O%6\!tY:\7O$&iuCetLbd@C)U$pP7lQ57`k;Jl2i.F\ej5k`p"6:bd@_i
D(MD?n@d"jW#[s)Ko'dSu^S!G%Y:eafTj`3`@u5)=lFelPlEur69*8jW_@g#nZ.VKQZh/PR:
H.7%Vu-dC\KQ'?D\ImK6e,_`3$ft>B:/*(C>gb?>sLaqV>`J=g>Iks9)%hj0aQg!nc*WgG6b
U9eUd?5W9oM-@PDl:B\!F#/_u=7+,qZiU]AGAIq'IlOet`=C8"Sg>eF;\pL#?Z5mVKS_f+JXH
=Z3bmFm()OrKLhZ?NOs-j=J23B#2C=N9@%mA*C4Shgi*0-l3?anF>q/02]AUe4f@;gQ8=Yq1r
6Egn\M.R=6AX`*=]Au[;iDYpcVC#%3d^&:cXh#Bh6C1SiS58?jtq86/$4S9%ZKVW:Q>oc8\(P
E"(/8I.gtek(hqocQ'e'NW`@r1c.s"V-\MSAR@=gMl;k/ST_;+H^!jUsL<=A@[?ts&J_3.iW
W$h.7KPju'dCuJ_Ze(cs*qfRbr5AI2Yha1WV`L`-/?MFPWN.i9'pq`?F`QE\ArPKUu>&W;cK
55(pjYQE?C`t-[iu?E3'roI?KSJ1X)d*jIQmq'4/j:\EVJ?".f%?F>tY'Z"8[Im5&\c&OGM7
.fina./iISpZJ'<(i"P`!3-KA4m.#6Jq;n5KB%ONK[F.cp1JA&6?o^>S#Oh2n7u8HZW<2`bY
`(!d-TpM98>/8NXG\J#17<e-gmFF57X:,%]A__dc]A4r$.ogP5&sgP.,'cgqMuVOe%(Wj&M9!s
nYI7LQG`))3hn4OO`%`T$e:^Z]AWG",WgP5H'94!*h[bjog#NEstfjrae$:E^23oqGNi(6O:f
uD;r:nC\,W)_%h*7?,>>T`h8U-jg>W>]A+7Q2`_/7&[dFPj3SCmuf>L!h3\M7:Pk(rB`Q]A+9J
d?>-3)LUQ^aHp,g19j-:<G@omO@]A9917pDoq!^s5glR"8gbXs>P[-04mbr1164&O'2j"IA<H
U-(rj;UN)U@_7<5GY";(\>t<3_7tg^)"b[Y)2+*>?$QuoYj=e=EP21JYntGEeBjl=@#&<Y?E
PPGbRD5J#Q8N41)BRh#h0t_]AO>'mnEp/2puWJGq^)[M\KqhFQ%frT,kB?G`%63#'9iAalO6*
3ne.!2rBBguR(s&cZKk$(rN[^RLCGJPZ5OAcQ77:#D8_b:K`!g:-!(ZeQh,3199-?h:@hmc[
J.4M`qtbUpR"A"2^it@8;R436>S;^A"E88j*kR#nYGQplXaNR"@X9'P5;5sjXSjd!N7/#ZFQ
L@=>FJ@_W-*_7eO'b_0//s8SPEd#ULZh-V%tk`\O"MArTkYY=2*`<tQiFEM#`#/u=d"3bd(-
q3i:C$i0@1ePTHX+C\^q5"!i`ZjVY=j-pc'ktPo>Lm]AFqVl$8c5b\OY7#-rFeFlo=_l4$3?j
oYiE)[B[)\?#/7S[QgkL(h<s.Va(,343&C$i?ViBLX4MB7H_N(E-:pCThWE3BQ.Cdf""<##k
@Uj;XU_?;EY>U]Ab^>9&rqO05%T8!fI1qko&PS;+8i'cnM5V2p>r#WX@'7*cD_.t&kg\+:\up
'2?"-Q$57q%'\(/P#,hE`<lg[k"(:;<(_\;sFt;Bg<Oe2"=YW5E?LCl'Kj^M$A]A%O1Ge)5uj
3%6sGWT*B-k5GG=f84<39B*<C@cTriW/=T::JMVc?#0ra?Ad"Y+_g#IXMp**Zf_V[%]A-:)UC
@DU!>ph(5L,Am[B"T/*6YkgO2G/"F'0N]AgJkHfLM:=#`KgJC;ERGe,p-LGgAC/npIo':pR$f
=,;p<(Y[%0~
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
<BoundsAttr x="572" y="369" width="570" height="348"/>
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
<border style="0" color="-12564119" borderRadius="0" type="0" borderStyle="0"/>
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
<BoundsAttr x="1" y="369" width="565" height="348"/>
</Widget>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="button0"/>
<Widget widgetName="chart0"/>
<Widget widgetName="chart2"/>
<Widget widgetName="report1_c"/>
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
