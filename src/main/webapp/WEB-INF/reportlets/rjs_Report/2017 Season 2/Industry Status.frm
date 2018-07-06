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
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`CL_ITEM_TYPE_FIRST` AS `项目类型`,
	count(
		`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLNAME`
	) AS `项目数量`,
	round(
		(
			sum(
				`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_MONEY`
			) / 10000
		),
		2
	) AS `交易金额`
FROM
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
WHERE
	(
		`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3, 4, 5)
		AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` IN (2016, 2017)
		)
	)
GROUP BY
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear`,
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`CL_ITEM_TYPE_FIRST`]]></Query>
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
	项目类型 AS `项目类型`,
	(
		2017项目数量 / 2016项目数量 - 1
	) AS `项目数量`,
	(
		2017交易金额 / 2016交易金额 - 1
	) AS `交易金额`
FROM
	(
		SELECT
			t.`项目类型` AS `项目类型`,
			t.`交易金额` AS `2016交易金额`,
			t.`项目数量` AS `2016项目数量`,
			d.`交易金额` AS `2017交易金额`,
			d.`项目数量` AS `2017项目数量`
		FROM
			(
				(
					SELECT
						`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`CL_ITEM_TYPE_FIRST` AS `项目类型`,
						`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` AS `年份`,
						count(
							`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLNAME`
						) AS `项目数量`,
						round(
							(
								sum(
									`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_MONEY`
								) / 10000
							),
							2
						) AS `交易金额`
					FROM
						`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
					WHERE
						(
							(
								`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = 2016
							)
							AND (
								`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3, 4, 5)
							)
						)
					GROUP BY
						`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`CL_ITEM_TYPE_FIRST`
				) t
				JOIN (
					SELECT
						`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`CL_ITEM_TYPE_FIRST` AS `项目类型`,
						`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` AS `年份`,
						count(
							`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLNAME`
						) AS `项目数量`,
						round(
							(
								sum(
									`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_MONEY`
								) / 10000
							),
							2
						) AS `交易金额`
					FROM
						`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
					WHERE
						(
							(
								`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = 2017
							)
							AND (
								`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3, 4, 5)
							)
						)
					GROUP BY
						`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`CL_ITEM_TYPE_FIRST`
				) d ON (
					(
						t.`项目类型` = d.`项目类型`
					)
				)
			)
	) a]]></Query>
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
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLTITLE` AS `项目名称`,
	round(
		(
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_MONEY` / 10000
		),
		1
	) AS `成交金额`
FROM
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
WHERE
	(
		(
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = 2017
		)
		AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3, 4, 5)
		)
	)
ORDER BY
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_MONEY` DESC
LIMIT 20]]></Query>
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
	`2016_2017_project_amount_month_1_3`.`年份` AS `项目数量`,
	`2016_2017_project_amount_month_1_3`.`1-3月` AS `1-3月`,
	`2016_2017_project_amount_month_1_6`.`1-6月` AS `1-6月`
FROM
	(
		(
			`lxty`.`2016_2017_project_amount_month_1_3`
			JOIN `lxty`.`2016_2017_project_amount_month_1_6` ON (
				(
					`2016_2017_project_amount_month_1_3`.`年份` = `2016_2017_project_amount_month_1_6`.`年份`
				)
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
	`2016_2017_project_money_month_1_3`.`年份` AS `投资金额`,
	`2016_2017_project_money_month_1_3`.`1-3月` AS `1-3月`,
	`2016_2017_project_money_month_1_6`.`1-6月` AS `1-6月`
FROM
	(
		(
			`lxty`.`2016_2017_project_money_month_1_3`
			JOIN `lxty`.`2016_2017_project_money_month_1_6` ON (
				(
					`2016_2017_project_money_month_1_3`.`年份` = `2016_2017_project_money_month_1_6`.`年份`
				)
			)
		)
	)]]></Query>
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
<FRFont name="微软雅黑 Light" style="0" size="72" foreground="-15225665"/>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m9G'APLnX!EuUZe@I:4`[Ka%_<Ou))eh7Y&1@)NqqN2s8L*CV@9iVlN#)&*!;WaH/1g*H`q+
B/85S7Kp`@*#*AJ,SG7"U5B"ARgj!/]AYXh]AL2A7(:^[jZ2"PZhduErkWaA3Lo:,S9(>"^43n
=*qt)gK)3p&2lBB<1?G>Y^\c9u.8t]A:RPNt0:!`hVrKiI+nlM\^TmN+'B$p'kPmmD7,=pTlF
6LogZL4;C(sVIbAHB.7?Ar4?39=4SAr3/;pY<'g(Ou1;@tQj]A2/Kn\hO_%<gncQ.3(\AgQe`
&#eZI0\8pTrm4!U)D12945(QW[NcFf=aY&>96m$u*F+tjb)TXC'@Hhc4IH89t\+enIL+L99`
_s:"B12]AeJ9Af,=7,F5aVhT#4Xe[]A2?0S)5D0jiU\PZGBTm=sha%-+"#KM,DfgZI3[6J*?9L
X6oO2!dUEq'4!:a2:uJk@,Thf8G'j54XABhR"#g%8"4qrm75(iL'7,U,u4i_5p1q-'Mm-/\h
X+ed.tec21ec)SH\T?oQWZ_2?Tl6GSt[Ohco-<,@fhR8be)^C;HB`.WjS3a%aQW;l@CbJr%I
*?S?$dq@&RisEUFsS,Hn)Z)sO6FaFTFbl&3QBq6r"_*Z:=>DA*!(Bt5(mnT*Xbr:J$F>pKmM
4Yhc>bc:#C,AAl.$#7XInfVS2&"BXj^imTBs<pK>2"6Z!@2lK!*-nPEfP@'s-1A(rG:if;I<
*)UWW*f:0T0Vlu&B?=mhMHdM/LqBRkaJs.OpJ+*=;&-KeB<,(BUm0KcNG%6Q2bVnhINOpL9b
0;?\He2F"g)OucKC#/YKl1'UF2G0jqb.@-H@"P;N?s!gY]A*D_)PM?&KU_uWp@eELdV\\[RM0
1;SqbB9:S@l<KDe:,<H]A\7-Oo#IGDNB+,USNLuCjY;%>>4<&N4>lGOi'eLN.WFXE$6A#%UI?
69YS`3U%nZS#\IUOKi)G5ajKIMNEA]A*9=q2_k'\iWaOHlVt*Pg&(;CA!MdG]Aiq_aGtWI4V(Z
Fd3O:Y'KLMnk&K?S&7tW$ces58,9/#!7ZjLi@d"RP814&mPS@C/kBkra02]A\N-M_e<[<40H`
)3/'6iQX@DHad1#hBaXDZ9YKHT2cX%_!mVVH91#@qR>H>FHd>@6:L2U:0dII@Wo6l*2s,;6o
:>_d:fV>_p<Is]AFNU0`VJBTX/j`SU<[D-Fi\`Wid=Ik.s]A*)a%&73%K2:OhNR\pT)%;O0H!'
?@/8?>/^l\!^^]A:-Dd#70S_AJKDrnOVSQO_B3'.^1QSY*N&Vu.HIu_*nkGmLcD0UKHr]A02''
rj>SBt.R^J,P+i6"SdpP"<d24%=3Ke1Mjn]AI%/q6fRtE,.*lpb'@^V*@Dsf]AXQfRHarPrY.*
<@-+4sW@ng]A:L/s=RG&-o-i*VBQ@0Q5f.mmIQLjQ(u`l)q[ZlZ9R-R4H5[^i_\"#Wd/+1sXE
Mb@mYp:GRj4A(Ebbu;-RHlBt)D`&-?Fm_(j9C(aC3g7[$Ed.sE/I^VVQ"$NDECXNE'PXTg@0
2981QT86ShhEtWNT,k7h3G?:ePYid#`t:aAfY)/.CHBp#q@$n9Bh9e1?>UdHkb+g2k<A\2jN
%_[+YO?L@Ot/^b&+NP`<n&%;YuVp]AmTW?Su'Z8n>.Zp$G$iee;1)bBROY:oPi;b;'?Ot`1eH
[_ld*:@/j+G1]AC[(FXcLE)CgYD/LQ*Gs:M/OFp#e=#h2Etc\8`U9M(2od6-K96@t=g*m;C?R
"T_coT)q:o\nEHucPT18(W.51-HbZ^@$ll;04go(]AugaQ<-[eBhBJSGKo^UR?-ZL=0VL)ts0
mdFsWG?eXr`UU08gs*&p<9^SJ7RuH_Gaaa-bD?#$gJUT'+`l`tq_)19;YJl"nd&^`]A4D$fcW
aom&Ilk3j7lGU)OX89]A79K)a/Ubb:8\s>/QDkEUQqe-@PS+%j8Tg%rK%"$;l,!'J5$N_[9P8
YjHMqkXUT05.]Ac987r18mQY"kCW;JXSP,]A\$N92%f?6;sm3_.>n6fR3iqm3W")l*D.M1J@c)
k$E:Ka$8X7Z6fJS--XD`L]AD*R-:HW]Al-^qp?3pB+U/cLm95S0G.jnQU.S9rlNl:rRu0_ocgI
+:".fRCM,IUK1O*m"pP>SOU#SWk>jVoQjC,Y`k6jCRTJFo7`M)j^_tVY!RIMX\@.bJg;L#'J
;#]AMFBL?#RdU]A@M4GWT/B"#_<0jYbY"FHVMW:!5XA:HA7<b+9VdIH20NpU:5>[JgP#q1["L3
4HhEp,XGAc7c'k.O;Qa[4$<[daJach/>Xj08Q_8_=dI3\ojM=!Z9J1+9Q-?FSJ!mpMtoe!Z&
&2';S?\j!W:4GcRbb<RZ@)']A$]AXtiIlkR%l6d!]A[?s3_gN#JU?)6L<]Ad6SAl'M.*VekPUML%
tpX",ahWJm'Y]A`Jo+VQJ\1&/dDJR1\?.01;7u&jNdhW!<(g0]A[mV&>A:e4%NsHoLD2HDhVr;
g#_#9lRdDc%o-'g-#ET-Fo-FkF8L<9j=h)c%RbSF-43u5=Ycr#YBr"`72YL6!Ap^F:fITt,b
AUkmsXDu#rLtuB7ON0R`\]AMfV+#;1iXN==P:j?,GT<Z-JjO6i:.6N[eoN=tgR-WPgWllah?l
RGA.V6M('2LRm!\_&P85si>Cb7Y)8K@;nPGtAmL"G(::SWWJjJ8iP$o3:V$J]ArQUaE\Vjd%$
Cf;2IgN^Z8nb^LSFBdg75<\;qO^KW(fM<27l8r:^eVre8"b&UskVDE1r()\']A[1Y-?=%hHDl
V+pL>UFbCC[>:F[5:3t_kAl4`:/:46G)(%&kneZZ0]A,se)ep7*<;8>.Ve5!+JKFt@#lW%KRs
gunBDP.r:7k+Z".hYXG#)l:;JT.S.dA5Dm0HUJO;IaJuA%36l3_#dqP`r5Z3AW3/6Cl'00tq
jNF[`l2)soA%D7dapXWA:+@#QkCo"E8_M_lDl>OR0l*&WB%pL%^jqNE<<m/(<D,b!JqKVsR6
t<e7&J\KXAkYQC53($>]ADAgl+DYKqO6WUc6J<niQ#O#+jI`cYITW$6OEQ8]A'H3AJP2+U,V!4
<[8`&DLJ.F797?hu,cQS"06\Aq[3XpH*K!,<%(-JhF5.d=:ZJ!BZ"Ut-]AUM.j9CscMUjJ,q9
M?cD-Guc!g4]A57mN,>f,Kka.o:e^G(Ilc"6R`@=Uq<p$GV[=gb+I"$1).gn[WMbIRn+85:4Z
QX,MI\.rRtLP84Dc`m4kcu@r+^K$H(jP("G?e'"0PbF0CS$5J@D=]Am3$,17AF_W9VQLP,dHH
fLq**\;!AEeC#]A1p#4MiaPB!n<c?9O3O,(+De0iArkXZ?B&%RTr7eBICCSGobH-&UkCY!Ij1
7r3/5bXVn))-iB'WR>`sk,YE-]Ae!o!Yk(E+<@c##4X+d$o<lb=U@"FrhfgongmsKt%-KqNPt
tcNhpaOJ5:pm-Zp@E;B:+Rb8aWm#q(IDAAc\5<C_E$[hDXml[]A,(=X2nnULM9'6Dr3/Uq#94
`PCfN=oBqQ!9R]AVR!tV$=$Xron>3ZF!Gamb?3XXMimlJ9FlRtV3<CCs%'q6>%4-F(Q9eNA:4
&:9D\<\'H>R9H\ct9JG0W/V1sQsLncW1e1VS.!kUmDS&\>$*j?`mU+pdr"==niD;g!>/*6g?
c6m8A=FKA;2[W0*k@Q2ff3pucSHNc!5+tG4/]AW%TGd.%e5Cp1k:.1?1.7=5RPRWp7,B9D/a+
4mPZ^8Rd5dg_,*bf:5^>fcl`b5SRZB,I#fN8kQFV[+^"kl6nSD\*hat5Ie'(9IALPU&S?Mdk
DmT(t&"/mBq."+FAiqfed]AQ$#A%IRFeK$WYHI/f=Z_lOO`q=SrRM&S\n.*dg>(F18Ji6oGD)
^I1/g'C!f6/pg(ePO3L7cH]AANabmOgp%'IQ%5s^CsPq:U4=F_!pYVqM5gaeW*G`[+*fma^^2
NV0`g$uYRHE#*DK'+M8_aQ_6MR"gQYVQY:$WZG<QJ2!hW0>bWRZMd%=-E@#C7kiDP/GlF.8&
\OdA+'I!Q9c6aKLJUB<g4Fsgl?H;$R:(`4&@t@/0:]ADCJU%';-'cm_`.%RtTY>3StX+A]A:r"
+<sihHC))KEH2f8bfecFa*u71G"Z6>0.<P4'tm6TOG>:GJE$6)$E,nkB_C*?!?F))AQ5.#IF
b'=T'+lPi-hil)*dK^*<E%oh`9RpFH@EsR?7=!i[S-e##CG]AI%E9CT(<cKoq;bk;?sfdTeS\
Sj,lVI'rlJ^`CVfj%D3,/`H!_70b\iE1NZB5?[hogi/;Uh)2j?3n@M)C593^3S-H9e=M'C2*
X;Z%u)kO:htrVWRLY"BI,.Ym`1&c^t0#]A@tNU5o!;f#9^0HD\RA+n"')A'5LR$Z3'ho`M]Aln
Ss$XWBr31n>S48Ijg!\EW^f1J!aIAK$'62`Jn8b#U3\noZj!O0hSXY(C=k/A@&ea0"ESCEI(
ld.YO<s8!OL%B%1C_T:Q"#8+aOGO6Qup@I2U/gbPl]AR9e<jL=*mpO]ANm`'W2O!rQP/u*C=]A3
[4ZWJQ7pej08-.;2C9Jp^Mou/<>*qU).-H/@8dEk'b*g=uC<2*qYdk:j$ME85$.rRF\IY\D6
tIog".4G2TTn#AN2LYjTfUW2!&N+;Sn9*mq;f*/`58lF.#**8]A<21",P,sXlRX4>DhJ9ZF&F
U<aM@Teh.*PiF.rcEpt7"rCIoZ0Sanaj*XH#nCs>e(V/@Y7J9u!$T&2_Uo"=BFE)knG]A;n<c
Pk"]Ad?nB'[:QNZfF7+tG@Wj(13W`Q2&P$?>L')Ng9f23W]Ao%6<,*m7Tq%=8:7,ZOj9CuoK/T
W(Ta)pYdX",f?dTo#E]A4+9J"KUM3`3ckMRb\,UTX,PJg*V97RV@b4^;s/gH8<e.5uni'^$0t
L>a.l7FA/1*HVUZI,hdbV'_30Ek?NHMU%VXrZ+IqcrYijCVmm7tB[iF-Y+^?O#NXoT.EHY)L
A#Y;1f7FGQ&j"tl=24.9L2,).),ck5X5Gl!'Hsp^YaQ&+8P<cJq8p(]AVc;IY`[m+`m`>]AE(7
>eTU^^-5<t2h`6D$]A@]AiV1!FBGj=&DVWp?n=ZZt8ct'.Ubq6A<foP*p1OP(MQu3bmZ[%&]AMQ
M\pNOAZUJMl(eAUXH=:pi#8jon#+55lW4O/hC=_9^RTP^E40gj.A&gFblje-R"kg,!oj/UCm
+H2ehcPaTGHEbCGH>d^gZjid&n+TDXcn"in0tpqM**i_o0D;4Zl.k5dQ#S?L#1T6CjpK*`$2
R'#6DaiB%X[s2rZm@NfL@GHJh"V5-g0@P94l,FCZSi*+X/G500;AG3RJjH0n1k21fZog2=LT
a@?C5,#uGHr':$nls^G41o@jpE'^G1$l_n(H?Ea!j3&FNkW[nr&'ec]A/FXr''rO]Arq$oDT!$
Ppq<GT]AI"+"u#3?jqOh^LU/)go5EJOhMIN_SQpRO@>djHe)9XGDf_)ijI78)`In0C4Xk=IK)
=YJZl"W9H*m*p'tZ&n*C6^JK`<\:;_<YErBm`$O=lbh9J0=.eU^@J68.M0[/9h,JiY9,PTD3
V!C,u,?,ccs@t0,+kZ?@QFDR1Csp</<!]A]AFhRJb(/JR8ig_J:JWZ_@i.b<^/WGZ.##XgL=';
3%B,A"noPLHYB).tOA#\VBV6tDo.tt(%0ub5Yr1HVhW/7^#r[h?b49(cKerqs#!421k2um<c
#1JVrA&K\0gp'LB82On#aeE_6rNW_.%7nLEM#u9;_H)n,aA?q<[!GX>]A.DPD=a^&ARp[]AJKc
"Oj)7XYFT!J94XP_KrAt/%Vf3)Cs$HN>%3j%!>,742MdgB&^+-bq>6X$p;)SMXl?u9=g^6^l
'A\A\+GFeAkW9/o(.>El%.Mf(%Sh6pA('a/QJ3ci/37bbp]AN<)\1j4UZBX)G0!`V/j\4^nC-
T*S[3j?>lfU%9.VYZ*^u%]A#!H1mZ-kq&?or_ICZU-"s;)HF0cC=b6bjqf=@5\&^>\a+2%[UB
7ofkQ[E*hbRk8Q%niM)jk<4hlQ8sRj=bEollM5#Je5p76PV!=?L,_O?2m+M>oO/<0/ZRE$-g
U]AFb%emfZe@tZ2]A;8.bW!O_O*$ScDYi"B'#s+l1.G,!IcBkdg34srRX?Hk9O*,f0lIfWuiA-
Ajq45-^a;.9s\tD'7V;'Z<N>dZWljV3c<3Mhqf)Gh[WGM5Z(*7G6ASd?bFk4BG7T0NtdqLOR
\R1`:GVjVX"2_*nC`A8Hs!Ggp7X+?reu.INZ-C34D`o?7$<6f7T&;%P[C?I<Mlgut^WLj([g
I8g?N<9UG98&[NbLPMU%8SA--t0$Ok&_S40H^)p;lFCl=[@W`ooH:Q!%j6bZ+#5`[hjHehni
7\&f5jkrQ.B+1^Dhls,=KphGO:/\p5jOE"b48fTbU&&K[[=J6rO+3Q5_Yb[E$ncgYM:^?KL$
#XCf"PDaKI')8YgIi^=#mHB%P-S`je0qlN3hK#FC]And.:M"UtiY<Fn"5'Y\8k5G4(:t&b/!#
rBA9t+!@:)/4MD^qW)jgUmM$@5W@,`rX<!N%6l4Ah+E4C/RR)>d:\5,/9qh2g-*dA/#e#,J:
aXJRL=B`$&d8S0TBCWq;r&.X(%'fL.&FHNXWs3IU<CYQb"nk:E_^\cEl<6(m1lS+ZCJsi(o@
7$\`;]AW;i2#+gIL=_@Pg+c09!I,L8R2fmm*iK4=^>+LbEf'NI^H,tHku$RS``MO>.n/uE2R$
"0-&,KWU`(8XWY0qQNXn)0:HLG-;:WT5t9"p9)j\r?V6b1S"brH4XkF`[FJYkjX]A301f\GtM
kE.M5c!)hnb"07Sf"iCF4*3/C]A#$MX,6VR?GtCk13=IOX<Qf#*0l(\'<&P"c1W!i)TVLj':;
%q+0:[)>1H.ud(a_M^DnkuWlDcbUSM^$njgu?mPVnX!'Z\KegYq-q@c-W3nU3=,94J$h8u]AD
N:'YV!1*fl=e]AAh`H+=X$/^I80i1\gKs(T%O^5fr>`/n"WNco%ign@W:oYDu>QQu;?nf^5LW
`GI^-A#(5"9;>l#Jja3rEu"2c5WWB\.iMj8Mk;.Y5#n@^$r5?.4K(l3u=1V,6SPkis>t=BP]A
<.&]AOW`WRPq=$%0r2LCQ#.QA@Q9$L)PiefA$1^3iajJ*I)3VD@B4oYT~
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
<BoundsAttr x="766" y="199" width="122" height="99"/>
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
<HR F="0" T="1"/>
<FR/>
<HC/>
<FC/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[3086100,3848100,3581400,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[2819400,35356800,8572500,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
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
<CellGUIAttr>
<ToolTipText>
<![CDATA[=$$$]]></ToolTipText>
</CellGUIAttr>
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
<FRFont name="微软雅黑 Light" style="0" size="88" foreground="-1"/>
<Background name="ColorBackground" color="-14407863"/>
<Border>
<Top color="-1"/>
<Bottom color="-1"/>
<Left color="-1"/>
<Right color="-1"/>
</Border>
</Style>
<Style horizontal_alignment="2" imageLayout="1">
<FRFont name="微软雅黑 Light" style="0" size="88" foreground="-1"/>
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
<![CDATA[m<X%WP?6?h*NX)uBPUs'.]A0XXC*c8:7DdPT/#CY?03FX!M@`2\21uNqUm<K6'IkRE+eWC%"_
85`6BWNZ`/pW)$j]AFX5U$4A+G>jH\KS<m]AQL@.n(qt7msFpBMs!4cSA!5iIf$V#P;D+6h3Yd
dr*;*7ZR$[MmQd/-]AnnI"H_(!+>D<aV:UCYVba^dXG'p\F2LCZYs()Z5es#WW+&=5T=emcF\
So5CcHL9RX0qh15I,W/aOu0,Rl69;]A=arsDRb#Zi*tXglc.\/SA'"1k;EZs)\HS"I/S`]A%gN
X5(k>S&ng$6]A<.>J>.J<?JM>-;7S>u2D;]AKPV9ULtQ."LNB`G7Taf6I46=6j)_NNu.1%VY*m
biXZukk(8Zh]A1.4>UY-#B4%$O>5*jn7C'n.%qHUq]Aq=OII#r_ac.j'm0[^k0S!bYB%T,=;=0
e^RETS_KP>-^#LSMt3Q@khU9W-ME``T#n<tU`$LH$0K=$G'[#B`%qiU^i>*cE5*Tn3<#?O]Am
`8HuGf_Z4!/$OC2Mo0W*ZZr;L<4b>)N@$XgX!Jtgp-5?8SO,$)jDImBi+C8;Vmj6h?iR/Psc
&@CTY6eoUQEB\-]A#_jJ&@*8WZh?riI/n0[$ZFYV'!82pAG&?1S,(pLfuXNoo_]A2G64d&;;0b
fc2`>apNc:-7#"7"Fn`ZQiiU68^>sAB*MhU&_?n,e_e'1PtQ`fl:ri2,K=(pe#rpN6c#^c"'
XU#jV[diV"o;X9b#1VZmI-)mXFB^ApP2hZgBC1^51:gJh!OP7i<R]AX7r=Aku`;6so)BZ_u\A
_<r!<'Gmhd.j)2?*@>?_IZCbR?q4oTaf>gb*Pq#1WF/L\Kn[VTkaq,=eCVI'P+?a[@NiW7CH
@XEOqKPX-X%?`os46P+EOC!q)1=V<mu^NI+;(U%VCW8_Ot@MD,3R2ET[nCL?kA5#A%"DVssL
6l"3K)R3:PX$(Gge1^TP_h'9JBPKl!F0MomNu#eUZ((aiMj7@C365XYQ2uH)C7]A4<cWpiabW
JSQ/<Aec7uS%IG;OS-0VLQLuUmI0#<kcOmIr_jGgH"Q^[.Pf3=E>f'M#U5J[Bti70!EjgiI7
V&%7>"G&s1EpDQi^du.rOc3@b#XF']A%NU&iq#3iaB-K!8+B3.9<Jh@2:\.EW'3o^5a!17u\J
8@FApPUD@O7JM`"M+0QFY>?GEMS.ZbI'-k5k@UgiXL]AUa_4=`G:sG;'K[V6&TlLbR&R_nr2\
%IZe[HUF\U<6dsCp]At"Kn)1e<LZInCEM!efrF=W$KZjOs$=--_E?;rNTC>:Ys@8TUCee.r)R
paGl2bbO+<l_Zm*m)QAkC/9t*n>rt'o[pl3pfPl``ncMUP\?o%oC^ife?=bR>7%D]A0Z*Y5p%
M0L)Z0qFQ+]A)gj8f0J>LlSJ<;Yi?rA._:S_`1'(nb1m]Am$fmQ>ASIIY.)eB=H?89((]AQ5PZ&
*5P-*$,dXA=8mp'+N2C(15rY0%($3.\j>)@Arsh?3-uF`3-A.'E8\aTjOF\iIO%$&XLkZ#&@
*nF;rIO<h0[8mIA&-sJ3?$kFXRg8QdFT)m9\q*c-kSahQN7*MAJD%+#!3bU*RY,*7Faeli/E
83.jb0=]AWM]A:*<BRs/Vob1F-Y@5@25JK?Di"0NB]AjHXSgIWBZI_3($eg!W0_fGg@k6h(WgNB
$i93"`->3$Fs0qdt'ba?SqsQ!Ylg!&mDn,A2tZW$i@)bD:i([h,aG0<HW59X17kbeLP=&T44
$^qV!FdPlr(nlSc^Gd*F>G+FZH<r*^R'Esn9\*Z9QlA=mEQN.@$oPP:k1m#eEfc=T\9-)$-C
6Ca[-\M!B:BIi,a&#UUI;]A"5<l=?_N2;-+5JNo1M$2U;\X`e%d*C&MiAs=,,^gD37m_d,)gk
_J.o[CBG]A4'k`^D8+G?o@U#%u)%b$#qX3mpu/VEg9N\C$A1\Q^jm2FnLSm]AC<Z#6XQNshl-c
UZu1BI@bJe%SF\Q1W6S3MH@&+V_F_@bjZJ,JkNUUqSasr,6\g3"rb3o)=^F:D974lTgSrfV@
E5S0\G:9HM(i)1s&H/rJlU*.oc[lC>L#3@`W0$pipo!&\JD=kUs0g)h2OOJ:3%F"cBdE("/6
3;n]ABN?B";o8XLN2"n1>*&)K^!MMMD\"bB;6J]A\D,Ri!"$RIjGbg80#J/bWj2UqT^!bFRQA^
WZW;7U6qgE8UEVi7I4eiEK[,>OBW;?P[T?(S<Dluqb+6F]A8Y-k(ldM?INOLog!C++<E*fP!5
B^`$S<\n8_,)k:2$]AN./S";f,aqc)XQe&Oi/Q^88c+moOT(EI27d@5C'H;`Zt54DU:IIp.I:
"`XYIIaN!=a`.OlaA0H=YJ:1>:'XV5oWQkf?S;]A8rfQf8J6n6&8D#)K6@UlAG^L[b++td2fn
oLGUdr*4.p=hR,VTt$K='QaK.7&8PS9G8F9>LeuN;u,l`nE9TiB&Eb"rs#t[o1?u"M+Mpn=5
Mi6#U66o*PkgAG_oI?l,)*"re`.-:Jh!MF-uoeQ+/dHM,3%"6YNQ(&S5&[0:@OF(Ro)G,"c]A
\24kf,X>71Z-(#4KMjb=3RC^?l;C[CYU*i&cVpkc3@?558Q^Gs+rSF@9TpF;Ik=p7W>;k-cF
61/jgME^=pN.-^Og!7%(U+uYCl1G`C)f6C"k''a<'FP37%U]A]Aslt[Tb7&GhDZtq)Va7T_]A;%
9d)p\dX=suUj/O?V>f]A"s!T0NE;l@Wi@fsGM6A/Yfi$6>aR^i3XG9k)QktP/-FK_lY(X6.>!
W'mKK&c/0&>t'U\Wu6chc-<h<#Tr<^7O-=0kgBa2S4Hp+kuVJIafaphWa0(<!JYT8A?-"=.i
ut9N;%$M\X2gD[Uqs_H2/bm19U!)Q-+Td"XE=b+gE3AoWS0)Jp(Y9+1&mh7?GPOJ4jdQ"B?O
#,+]A*T*-U>)nPQ:%S=oh3'DIJ)cD(KSM3\U1nEroJ6E@8T7.DAIJ\$B)Vk(P1Q!1O]AdB8.Y+
jELWH8K1N=q%k80GEUX!l3@Sl,99J=dVk_<1,$L>8LiX!TLOg4rSGE!^koETD.DO)Rd<bASg
9?(P9hKp#Ou"0Sn05#LAj^\i&opQA?icF1@WlD=U1pYlbeA5(/>W(01Z'q5hF($,eZ2Rsd5F
3@ZKJEi[/oAqa3s.:%9o.Im^@b(t$qks0Nl>PEdB$&8V%C6>1T"i#,s2/Q/r\Dnu!gqlg#=H
)MKVVb^nh5JEK:pI0>T5>UqVF2"5%'53BGG*35^a.drn8;EADJn)4o]AF4rI767a,4ED8BhC"
4VTscRO<CcM1E$I6MP/50B*R_4X`TN4>BheE#k9>pIo6_F+ALFfFO/#+?d\r8cl/A,\@(5n.
7)1';S1/@"#D0o!fkn8?*!fPMEO)/p)4Q3.R38:,"OsH@2%u+crlt"%)'Hr/VCjPu++=1599
0Y+[-WT@O_":^o1]A"b]AWn9,hVAHjV#"d'cBX`m<'oBMtu]AK3Y]ADVj-h,-r"hLqsiJulMn#7"
MrUJl7h$-Xb+T22;GE7F8uaO*Qu&>I=4XNXHeb'%o`\g$$Wt+h$VKs.MEGg"QuIc609)gb/p
D"eA"\cf5V=_4_;/UWSjpSWR6]AE42;,aj]A6YE(%&.5E),*ee,^uY=]A20#XN4k_PWs6gr+WmP
J?@u)HE":GpNP873?Y&_75UQ>C-LA.0ta1XN`HrAqs8oh0H?j]ARu8P&'lINsm?MET=#rsR"C
iK+G:K>aPUM8"midQ:=7tA]AqOga"R*e;E*4TUAhqJ/l&Ut<2D@D/Xoi+[ugfdK)Q9E&YTm\)
%%bnMHPu/=8X,O[/.d#^L.-7I[1o_L<heSe%>mQ[@._cJCV%20m&+PfR2rb=8L36S_j7\3OG
@Ct4DY<:W^jWLc]A9o8\8>d2kGYlcS7u<)A`!5$P7Fam\2)]AW+`\8n5N[NR3mU\f7>W1>)%7b
mI;=CXphl[RJFLdk*G!jjH39ESeK^1"C(#ef[]AG@o*17B&U`'fJQHHlnEo\Ib2(M3?WDA3:T
?BW,rJf@6M%.M8/h.pf/)[Mtj,rP14etTE6(2Sh?Yh1FoT1bbXF)$PfSTIGrM3,g^]AZo?Y(a
,`T##2OEW9D,(=nBkT/YU?-52W3sqq+9A,[>*"&Z$M)Kg6(u-1quX=eM0c_\=copj9(2Dtj$
>mp)k+AgG,9Es\5jP]AB6\!S&c8]An6lCZu`hO=i3.S1>]A%58o.2SCEj]AFC+`.2^!>X2Jkt,IE
/e"D\6]A4]Aoe`g9p'?u%@jIUfI5J2.Ye;eA>f=se]A+mZ8;J3=n;dFh+TCfYk+bW'?[W"Ss-Sl
fJ4<,Im0sC>$CeJ#6j$'L?5"B;jaio9%[\f9jP8A3,*`6i5O0.#fklPnRYkmasKSQtf-DS&h
`G,NjqU`I/f1"`!Qd7b5M8qgiG5=e&4#F>j36hGAK"LX`8t&RHWci>0fF5dpnS]A[D*M&@7)O
FHFL@BuhU3=.DCs&ZiOc<!dKF+g7.m]A^B18$N7>"Q'aYX!_mAL9iS?&u,OC*IKP_919Cl:IG
C`W*["j^MAGJI%.f7s?U[(*l"Zk-+Q]APlF"sj`i:dMWZP8O5Cl_i,096]A+6.)QVdk\#r$WT[
cfG$G(d<5<;5.VeXZ'=D^"-S`D$J_'Y,GCOiQP`^2;fcQJrR;a+Nc9,MVs]A:KjnSFoYM@ncY
W`Xt"q6IBd!U3QEUg0db/aMLW#HpZB/d?=(rn]A3N%f>ni6iRn`p69Rc(9McE2hW#QtJ-.%Uj
q:F-\Ib1Z]AU/,niSHe1,]A,45-pD:0_d;ap'R,f"4)Y7n`,pil2J7),d:6:QK3Ahhu?Zs!4Wl
C;<Z.Ls-YiSE$X]A=iDc.-N6\gnonG]AI(P>0L$jgl@NE@77\f-n!\3+EjUX7!7FC`9RPNn\R.
#=Lp9-dK?f*Z<84-22lkI*$d&4%o/"T&s8r8lQe#E0)!>BOS0c.ADd#$1]AYL!5O!BAOOi9e3
\HK,UgJVE7Bg[>=`c:\&L:pJbrLaFSQ6IC7@'!]AGM#]A2&7RpF;Q1q?0U##*q?$?rc[jJOSg[
6<Y&u)IBG03u?B#Pe$)<G?ao&>1$(Ab"<nj$TS0C?emu"r_R2_urme%8hk%""%ro-9`7%q>>
h^O>U,rqN\`9(@@c4lS;,4X9)rq:GXZ&%`H>#(Om;4b;\P]AE<jEoXG(eKg>MLenBE0k'F_A4
7V#pbV/I*aQI>V4`7jRT:g9q@kBBA:O>e&UUUOQBQZ9-?=RF+[Md<i1iS2jQ$.K#._A]Af(Ha
3WaRc&lb]A<:`ONuM[sa02.c%C14tRZ><!l`rAeFfe%@s@KJ7&/NErRBTImW5@=EJpb_a.W#-
aUHjDK3=FI=,:G#T0Adnoj?GC7U;K8&J70J`WYLoMB%mXk;VuE)godKlOR/fP#l@qhdEd9X2
;%^6/2PaE8scDJ,4d-:a9=p;+UmJBM[-rS78lV@hfKH='634'?'B\>RH]AokS&)&7$[sGm8S%
K9=+K:j[(+#:D,#0B3G2YCs57S1O+D*1Bc`2f$\,rOLpBEQ.42'q^bnr[1D=&SW^M/4a5cOc
jO=@HYp-p?Fo9C@=3<<X93UB$P6MPYX^D9![8H4q?[c5_JQn3YOAts*)G>n1k8);:@@aK_8;
E6&5[:eDLH9"fsI36AaEO7i[cWM'seqFoq3f)mXG=8a66E8opk6@P$I"VVSFsCY(%!F1l=[9
K0AUpZi#"$M`NtrNS`A`hc?<>rF;_\d<Ta2d%&m/.]AkP.GZ$Z-dtq=q4lc&Sk?ka=<eK:cOb
al7XMeXM9%N?`[dL#ZG[(b9oO;(<-K8pGKUMjE4SiBBT.L4"5"5c^X@I+N]A.4KP:sg\9ubd#
@1:Yc#"u"nDkk8aqNXT5+IY"@n@1*:Ns+q4>H*j7eX/?#FpZ$HdagY"1><F5TP/0Afmot'FW
J0H9(f]AKY*A4]A4@QUK2cTHs<s%4c'VUJ7j6eqjW(V=HXJDg1'Z*@^a*t_GMG:@LC*f_UP/X`
3g-;Z)@R!F'G`V1_<9/W/S!6lG9)A>eD'T"RklS;W&s0[rl0[V[;t:lm)X4tO*<98E!*<XUC
6L"aCFHa18E8eu'RHlp11dHp4mfDJlOO$e(m/5#=s>f*jss,$3K)jeEal80JMhqW,Pb]AI+8d
$Z=A/.$m42kQE67?hE^\GBpuI6rMQb%$TN3W.j"Q_aaD%[(%^SdIYNnbB_m.^BKlQS6.jp2\
PEt+q8e:/Y6Y&[g_=9T=T]AQF[mo9TEicA,EU,K`n^4Zqpc%JjkOa@@u:ShPf-s8_sY4QW#XK
+")A,SKlO'ZsgX(dFF31cC/PVrXEl9;&/YQ7.gCSJ2]Ab2^H]AqH6cA4KGPK)1KP0NF^lhI@b'
(-9VoF<9U^P1E'>U.&sOE&G),Em&,%9oI:H)/RHfQlf]A5F;?Yo$NCJ41K-GM)qGul'Qm[aF,
4TdOM!C'3'?EOspB>2p=+Ih[_0K0`NV:c,0')aW"28!m/]Ah=f#kmheBbh0O/^9(?5tIWS[$!
,cq`T0pY[D\g+Wb"7Y2sc;IOPk]AhC<SO3NO%l9'u,N:P3O8`ft2!UMSbmP8AMR3$skKFjYq*
L"o9_qDW,m+p6O4FVBSd"k&[>XEo9[*<4FI/f<gRQp:PhKgL\t_l/U%[X1=c2331=c3shJre
E1qaC$kn(DFI7P"/NCN1e7o`&'_?,ss#bPO3p*`X`A!^66TbgQF_9Qs98>pGAuIbSd$,b@4_
]AntsW5QcED/7ffqTOSI,]A)jeoe.T1pK'kIu?'+?]AR;s1$Zj^^F6$$43/e-eKK)q4H$)q:N%o
mp,GTAqbs1dT10`]Al,,q,1EjgtM*ADcrdn5o7"n[U&66Sp$gqFocq7<Bf!p9E/EMb)cQ+-(_
7bTd2]A.)ZWB-qo5X+#Z4<1mC#+B$X+k7VM.mZq38L`JM-YJK3T)R2*63MPD?QB[lkC5nu2]Aa
e8SLIVK2m%P70\N<NB!bKIoYVR+6j)%#/3dH<(K=[),H;`mcr,:fBE/UBhm+?4TkRMst:@Va
k$JTT`ba1(jeQH\)DaA")M&hAJn;X\\$7&<'$Hoi@^OE'^.m1E#3>q+,8paILRt]Ac'Na(o"F
*T9A.fI0FG9ZYODlKQ8c..Ze;!r_h^W[9&e^\\otd@u0-&bH)FR)!mVj.-:aq/#skn"`3)XH
s@tKdSZ@cRP)llg>G*3A&4&_/>#TbP&0>c8Y8]A6Ujel17Mc`Bb4^t=%A4Gh89P8&``UT3%q`
CQ7k,J4JfU@R/>0sr=S\2CZJS`h&pcd:LXgfN3r(?3^.]AYS.(B<R%GMNF&jtlX/pEV88d3s+
,\R_%7\^MdY<A&bN!^@F=Lil<RGNn$J68>2GY1$Fh>?%2T'_!4]Aq;_^\kG:lFgr=h<9=.h73
3Kd9h"&FlVkNc]Ag!9&<&Bh46%']AjDjm)Bq5,-CD9ua]ANL?3f-^WYDb;gWQ*FCTYH`p<4Rp5s
nJGkLrfoL%j2DrQ?$9(Z4Z%;E.fH^MuYt^Zflgso)_JN`942B7P(qZZ[?%0b$F&,>A!B]AAqJ
jYUf:Kfek5`'pBL69s^oHecBZ@0ikP_*u?f?MN'r^g+t<//0[o3W$-(KOf]AJWo0Y3A!cu`pn
qUa8R"0:VQ=7p/6N7ZBlG8]APfL*O(?Kk+\`63GFk@Qp=CsY!c;RE"-&KC43)iESB]A'GZ36Es
fLF)E5qqfE",DS[.t=GCIq4nNopHYA]AbeR-_f#KI#DP`OE@&ZQmF_hF"l88p/bU#Ck-N/s;+
E\92Eu$Rn"7DHpp%XO>Ogn.LP@iC'6RYG:cL8GX=/Xk13%'/BZY-Y-G&RE_aIGtNYkV0"g'\
jgraBWpd?k.R<p#4(nZjRg\`5$bgs^5a\MFQ;inLUp>B2'l68ief9lbXq9-?1[5k:C1:VM[c
GGrQCIerf(WFq>AZ.+IBM.lIU:nnM+!K4\fmq4b%)(53lig7XR^[Dq__)jB]A#DGGkNp;!&``
(*Prk(qgt=keW<YAc=kOfkoc:#[Ol(u9[El2n?8#]A1!Vk-@!!8jDp\-^/S&R<1iXl%0MfSII
ntecSUb%.#6LgKBVAIMGI;+%sauM<5T;D7L.$]A"$]A7%K1b,VT\#6PR\TY8H(8Lqf5R4E(+4@
%&\P^6t-`StNB1\>nB9r<h2+S>IIHbn(r/[g>7q!S;N`Ud.\,5B@8`)I5AZ%.7q!a*KQgp6?
,Yu,JaHM^pSNg%A]A9so*[OFtYgX-\`7;k<K6G\&HBNr4[dL:POhhfCu")JUqmA=nT;WddjAo
YBf0iJ0C7dE<krW>sk1"4ho(>U658S&3rl?<_MD<lH2>_dJk/dF%t=@5AZZ[4%N7Q=_%p%q6
rgA[S]AS`\+YTTSh$9aS"-JH_qr`je#]A'bdrP!B<#f`\2B5`4DJ&-r:!ST&ul[9auB]A?bSr>;
0%.,D$X;@GNd'V#2[WGkl)77UDCDVCbq!3J`UUks(IMKD7;6_e;H(VRUg14rmp2nnr&P?(U`
;me1=-_>N$V[,X@2fr.*I<?$W7eD7@nh6=!<mDgj^HTOH"=/k)P0h\5-EkeCgd)LSiZ3c3Km
ME($CR".ILMS&W9p'?7g`k3/3<N&8[2N%jDP)+N&@JPAWCF7uA'iAt"BCf2OXRSF>2dn<0Bc
@rbN9YTP`$%V:!K:hTD=JV:koXl/=Re^AWKlVG;6/!Ln[Ua2KcIfT(3Pm#4a+/6<'?/^#f/]A
nieqSi5T7_1j-<6CG)Ar':Yp%e&0&GT5l->r.l?pWoe!KfW5AQKBOcH\?q=DYX=\^Vck':t_
cB,g*U1dB+Rd0_h16J&M"2W(p:8VVpV0Ndb9!d\T[=M^([$%t_P^V#JIErh-nH%[pD=TL-Yg
4J;TnQF*BdfgtY:k>nnbZ0_W[[R^TA.>4fRaYrcQ,3\#gSZ']ASPPH%<0)O5S"83aXcW^s0aA
2pOnE1_$JI.,,cmOoK:Te[WV8$m[#6Gl_P5Pju)%+'.0Ye5j_7)DI-u[R5EdlBt==r\iuPH;
<Mo#YI&.Lh1&,K+3uTj1L]AD:+D</:l9uN5"8D]App-uW0?J.9ak3'qe3H0qL"k;7*M286,Roc
W]AC9o^>?=4=8BNirH)lWDb9[33b0.OeniX4XtA+Q(q_=1+6`sa8sBs)&#>ROG:/n!`%f&7"i
*!Y&;dKfp)eKp\Tjn"5@CA$q?Q(##%J]A=Rg"^cH$1uDJ>D+>+\!"."iW3c*J;$JkEShoh+L[
BeJhSctMlUbc'(sZO)TK*+cI]Ag71(e1!XC@*WO0S(p=L&RXV7Urb'A)`Bjl#1!rRF%\JdPe;
lnn931@RAiISn9=TY,-EhB<E5TXig0Vo4f^c<:o<'`L+5Lg=b-EK>M"pf\$uW@d#l#TNkD[)
jiGY>5JZUHd;q\]A1<[]AkD2YAEK5\IB5ULJJMjG+WCc70\P?B*8?u%:?,`K_]A+THbbG`6kVp=
Q%X%gi[A^s6:LTdAa%S;oIo6ahfaiZ6K"Wq0qC$$6*>pSumZi[[N%fL/rAQ"*t#]A[^dX\AM=
U5O#KFmQXaoQ"G(Q\3`9Pm.WB)81"J>.9^!;Eks;6a$!b?+!qd25Y1Ec'6DbG8Cq%oH6GKrJ
P#^]A%oGCKh;T`PNUcm)pD;(N08/COn]AgDH@jpB7U+*U9J5")E=>="+#V0YbW'u"8s5`,f)YF
28cC(nE>h@oYC3<,CYsYN^s(gXpl6;#n,)@!!<~
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
<BoundsAttr x="1" y="366" width="560" height="344"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.FreeButton">
<WidgetName name="button0"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Text>
<![CDATA[2017年二季度行业现状篇]]></Text>
<initial>
<Background name="ColorBackground"/>
</initial>
<FRFont name="微软雅黑 Light" style="0" size="112" foreground="-8337437"/>
<isCustomType isCustomType="true"/>
</InnerWidget>
<BoundsAttr x="0" y="5" width="1141" height="30"/>
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
<BoundsAttr x="465" y="0" width="486" height="292"/>
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
<BoundsAttr x="567" y="366" width="571" height="345"/>
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
<BoundsAttr x="465" y="0" width="486" height="567"/>
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
<BoundsAttr x="567" y="39" width="571" height="320"/>
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
<![CDATA[11315700,0,0,0,0,0,0,0,0,0,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[25488900,0,0,0,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
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
<VanChartColumnPlotAttr seriesOverlapPercent="5.0" categoryIntervalPercent="55.0" fixedWidth="true" columnWidth="50" filledWithImage="false" isBar="false"/>
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
<![CDATA[=C5:D5]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
</Series>
<Category>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=C4:D4]]></Attributes>
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
<![CDATA[=C6:D6]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
</Series>
<Category>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=C4:D4]]></Attributes>
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
<VanChartColumnPlotAttr seriesOverlapPercent="10.0" categoryIntervalPercent="55.0" fixedWidth="true" columnWidth="50" filledWithImage="false" isBar="false"/>
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
<![CDATA[=C9:D9]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
</Series>
<Category>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=C8:D8]]></Attributes>
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
<![CDATA[=C10:D10]]></Attributes>
</O>
</SeriesValue>
</SeriesDefinition>
</Series>
<Category>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=C8:D8]]></Attributes>
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
<![CDATA[m(7I<PNhg**,u,u<-/l>TSn\`PYe3WW2MNV&a;jM<=#9WAJJ&b.Ng#K"9]AJhO`%*I67</68U
ppTJIl!5!C@(R9lLL.idU%go/H8P1;h<l:[W;lF09STleKgMa;]AG/qq:et!<Bq7CKE/,!!#5
L!!&>9]Ar[/C^(4t.!<@R1G4!_3>CJ$MWGI%GArp/VE/k&CVu,2GJ!O.nAbk^0QJ]A'PmQLC;[
CpXr9:ZoKIfA?Q57]AtCaDsE2)9_N)15XRkf@GM>Yj!U/J\8>6(1aUN\%\2H-8kUVFEEbIo#o
FVNheE[I%;<@Zq;s793)C)LFcY)+i):B4BdrH(duZ4s4H05h`cB5Mq&<V*VIS4mGF-,9QeG%
P0hfn;>e0*p`F_XgASatj1`=YGrXmRM\#4rPD4<(6Rb6@&<qqIH1@9;?6)>JVP40f->Y_pIp
UpR`aYmc[Uij5@DncS5MlD^bFWaF<*buo^H"p\fNRTN_n2nbWdNd]A(CpFdaCiJ(1/V@Y8:=S
rB)ef$_SLr)>g7mc?&3R.Sn.a\=C0<jLjFe_GmQ\$b.j%AH.nn#/C%?C_c;A]A^l(]A;f!t2g^
O!2+Xo*NH.kfLafIR_o5l;J&bkUb*\``PADnCT1_fA7:$I3J"kJ<IXT7dlG\,OC`\07/UPr<
h!`O]AFun?p,rAtS$Rk@-IioL\RtBs9(.`Pg`Zg_#\&dGFJ6D1,D`m9#6*F8a-d6uYjB[^PZ$
&<X)mV"gX2?D7M3P3am`(%]A\3i-ZU@SLH@4Dn0TrPuXC"fW6L*L'1M3H$LAQj>(egbg5d(7S
Hhm..u@sSI4-Jl5u@p-V<K2+NL_/ha4[B3Hm/S=nrq+Yc6^!eipfr%fDP3F("VM)^A`4ZLu.
*3jaQ9rfp^-kEhPc8b7/(Zh@7V"1J2h?ds>F81VU;NN7"@jP.Z>5HR.[,%)RDGP6Ti.q-'E3
@>Z#hX]AX[:$2NVGLKnXBthi0bN)."BZLJdcBgPbYg%Ed5,DUR^_h8Agh/;^.u`g+9,fFkR_%
Z:1<Ub,nAtnmpn=2rX(_c[2_/;C%?jdm[P:a7fr0A=/69ElB(d6r1khJ%;hcr>i?!c7a$/T"
D<"qXfeRBtrmTAhY)GtKOHL)^l@;dt8;NOBFps@&n!Oo+\H=tRX:p9B\7^*K+n'Z/Jpaq'Rl
RuE5a/he?.p,54/o-c)&@=3M)LNmN!(T$18QP<.`Q"($BqEo6`opoGsMPo(,/ut>M""F^biJ
g'jc`XEt+VY#Fjn$>PC&1rL+bEMpkR#]AR8gUO#aH7We)peU@C/?Y"mRt3ebX2lQ%(r4;<Uh6
!Yhh%(hBf-!+8ubn&Fh_CS*L"Eaj8bF`DDC\\4@OQ,UBD.gh"b#*@(cTO;l!?R2:e&E<MfKI
%OA!Md)3gU/+MqP+kkfoRWk8kDAUNuX)XXan(>Pn!*R3^Zk'^_+7IRtoPJ5o:<7S;#t[<%6i
kmE"E'09sj$q4TI;Ijp$FcC<2NS?&ZJSCEI6m%SV9thNASlH/g:_9n4(5H.o@`^h/2-Z-cV2
BY2W"@MRi[OB@<s5]A03\VJ86KGC&nnrT^EdRTjr+r"8du+mLa$:2t'rj+3SJ-V`]A"KXfkmM#
XA7M'Bfp-Bu['<'"f3nNL!OAi(6POVGY!?NIO`0f"@!kY/<P&ejS")#+Os\Xb?um0qhI<U.(
;'miaU*G01Gd2jF(n#STkJq^k<pT1=^IRt>@@6)+5-lI]A`ptbhHX:1McHj)Ud<CT'YWhi<`=
Kb8j6l`)9fj@BO(!uI4?I*C&4CVc"&Df3^3(=TD76@Al'`6F8'pKZ@Bqf%15llB-f&H'*"K2
WilPjG`>f\Or`"q>)Ah=1Hu`nR"]A[ql[H.RHPb-B0)]AE0JM7)7\%fPCDc^<<"-h$$Y>BL5%=
3+SkW.!:`-nqiUnX_=009B:pD*Ogn4[cj'cll-\4lo0g7\Q4<*BqVFaPod?.=%V<o-6;?(G6
jnu.boDK@OUj]AAZT;kmHWBaMUCjs=JoqM0VX>?0U-rc%iqmQ-_u$S&gCm!^&\^BcD!eK`!iW
Ui0S58<S%@Bf'nHePokUO3\$?(h,ocV_!0Y:,g*\[!5j&2ZPi^,HY9ktL_0$[Nn+09h-DHGl
Z0"GkUboHK@6eroaIBEbOWV+eL7eIshT#.n'8[lErlic`DO5s]AL_l4j*$5FBM5GAg%]A*EO<r
F.%tj(@&g%GBYDlFWnC/&"5HHWf^oqf,D=sI"tqg@WT:*$-^i`n`.T17mai=kg9sSSHh=Sd&
bZ4]Al-UBhVl)`M!A,2@30M)Z3%A)!S&-#`/?j*Uckt4OG2kLC)tYS%1"-IJO)g9NT=kuL"3g
lfAY3=ggGkn>PslVB$3@-"'-hjk;@";n1+%cQtOc59K`LQ,4ekF,UroD=$AP!=]Am9)bT'T<5
Df9:=^InK1g-5;DbOkKY=7kL#@Vk;2nkI3CeGNj3n2^(qUmnWXp;U9J=q2'Bihf$#,bPL"_O
049gKhsqk%XYgchNIs"ukBR>P.JmW1Ytg&%G)`i;UFIetmagcS*P_I[;8.pNus)3ql(B1BdZ
%u\fJIj^n@TN;JAAWrSo.UFVp!&s#!LD-FiqHDCKIs$S<]AIO,<#?t%f.-gF$n*`JG@j%dl)e
>@96klZ]A2=gj4MA.*;9pI74\(p95#!PZC4$kI="Z=7!WRk&S23DPsbtMGJ,RP<3G2<Z'c>0I
qbTEBb[a-P),?k,%Orts,RMH,CP,'2-5WL?``*^)G(+)Od!70T7Rg3<=gQedAOVbXK.(!.+W
k_g_brcf(fb&EapeQpji"EHboBfKQZsX@Lk=C&=icns`2pKZnne5J>99"LTp,%--H$Egq3DG
@93mHTN5Yg1RB/aYu3u4THKXT\3_RH)0ZMP@'YP+KM2@e]A.rKqgDPU'tKqt2_U@2KTiHn0,=
_W]AK99kAs"eC4=@\YDP6YNVlBM!i!K*[/?Vi4Z>4kIe'JU(4#FZ!P"u-[97SdIE[!8BR:>=@
F`CR(NN#&LS]AJ"lj8)jGbVtI?tGF4O^#cERt*1<gCF0eU@<bZb)R+LU9P>hb)R9@8_dQT=s2
f>8.>N\b]AqE[l+83^[(oNRsoYM@"#bt34MSgWm[+OY]A:QM;4p>!8!Xn:*qB2qO'RPSZb`Ob3
@4e.@Hrc>J!COcR@h6SE%0-1SX/0tH`m9%fCf28RX^3tYh\&nld(TV@sAj(0Jm(Fo,Eh+hdY
0;#P%NbZ4DW=rBkk#GjHd#C<6,*lCU05<6cGS]ADIN95@(S27t'UX293CVr3&#sD!O;#\MZ-C
>iGHal^WIOWrQV1\G#E!m_aR6'fRcETDSZOrr5pbHR>Pd+3-kO@Wnn:h[+a_(KhA1gPs9:Y8
WJqjl*H5*UTTNcs4_QmBlXOCkg"3_$801\mDcjf]ADc&TUkQ'4dtL_XPdAHTDIb05%7=3Kq7U
p8GmJT"bIba=EU5^"iG=ghpdg^hnJUI\="OXm/(GOE9@AL![UDdU/qJe>,8[>)@mAK[l54NR
ncOk?7MgY:Dh:1K6t")<+FF%CMFWK$2\FBqf>4kZogB[4Aq`Xr)V++*+eA=R;'<bgo+Nu8f]A
jpWc,Y5h_?oA#Dg9m<K`FZmL&a\nQUmudU&5SZXH-7ksfu\`I;s#\U?O@-LR_mbWpsF3N9kZ
`K*a#"qu<;pq:7>0m8,s6JK7oD.mu8I`>g'YGeUgG*&)I.=qR<MZdslaQX36K@Y2G(aOQHp=
Z:p+Uqm_U2M3Zo5/b4FF-nlccm^4^(E0Z/X2YDdJY[I.snba2sg'4L.(Ie9CuE-Rc)Y?[TiU
q,:<K\U7M\"fZ*#`FT6oHo@n;3lpqC,WrgMHVTP1aCjUP)ZYnZ$qV5sRf]AZOO,[M;;S15u>"
E*sRmmCLfF<[*tBoSQCUb0\9PmKXb^TEaG1Z<dVM%PL7A7add<ni=M"b0LL4VE8E5OL\+Un#
";/jo(bU(,&97Y.gC&\*-$ENO,%fA5hU4N>;We,;Zf7E?roKWTa)4H7j?Gi?+ZC@s2de7*i0
4X=$V2<;,j\NIB;b!j<=jiHlW!G$f^]AGDf=/KNZ[!l+C#p)i160RTm(o>^B#5IL$%`+[u479
iVmm3)p8TWYt4K["[n*b8pI^oI_0p,^8_A^+K#G6BY$^5sja7I]A[(-1Vmt\[@$XOoW?&2Qll
9s)%\Rb-#[&K+oJ+2^np2PinXC<K1ae6q\GI`Z]A-SbLgulnFM-Y;\%7<]AA+AuXubria4p,_j
`8k?/%"R-UOCtsLB\e:mJX5Y168dr;;qg1RT1!]A[9s%G311E54K9e%)-7=-1@/*1V_e@udHS
&'E[1ri[UA0P\me'32aUeIoc^9RXAKG.@'QbOIi\PrrX4Z0agk[qk>"9_&?R?cC7M5/c-kI&
.`6Ok"GPDd9fK72LLWd*<h',FGSCBMUUrL<>p@k>Le%F2V[nd<<R*a36Oc6PP$HkUn=OB2bg
%eK&5Ec>A`A2jnP(H7M,gZLW+CoJ5Q/sm[@K'IAZr.rEdDH\:oFQ0.c`YfE`UTYYsQZM7P+!
71YaG*"b42e?#,/Op2;)?(?p*-hUX1u=u$aKm50Ngg0.GWeU@Jp74[$VY\r`@cLZVUC<YTC"
eLCS4l;-":+)=E,'Y7eR!VN98F%-%1+CCbAm8(..!u'@W)Kp\i:f8)baAiDWnuPd@]A$HB3XR
`6]AG*6;h=B(Kflk(i[_oFAT^(Mj)rSn"7\pqI.H:K^?5M(JX'KDb%mc81^9W<m+j*2i9j6X+
b%=+5XTN_Gjf0t\h5is-'blA%iY-Gq5OHJ8j"iPM1=C2`A@FW#J2JPU3\Rf3W:+)e2*?jVk+
7WYD8qu0O4AN#ePq<aFc`9n'b:QIjNlb_/g06*GHgk,qU)&uf;2uk\tY9kr\X\BV;4GFXSQs
rOfu!87PmjH`>[MG8M^f5J=H:)=#VI@4kjf>[.dq4L7+7I'raS9S"3hk/*u]AYg:6d\DNYImb
*h"fD=EV0`ZQ6+>3b0#T#iGd]A&f.uF%&bJ.c8mf]AmG1X)lC@>O7#t0a"roP8XFYC:kMl=)iB
mAkZpZGJ>_jHcbX$cFIDcH^h+u`m)0iq+uq83O@tKpXcX%[343))P>B3bFdUtAj03ERWf:;?
b#,&h[+,W5Yp1J-)%A0pU[61OaXRar\%5dU63X0E8S@]AL6PbrBMWtO7PNR_1U\QXb_kG(S\#
q>::b*fU:?T$Q-fh8opA3cR&VMQq&#a:oa9[/7-0IqFZ$AAT`rZNnk<,_raVX$IRDLT6b1C@
Ka+lMJ:*X?f><fTFlS_aaAdM8%PC<u13TEK&JVaT<4\C'%:,$?Mf5$eQMkBbNYa:ErWi(r,[
=?S]Ahb4-S>b]AFG[N-+>.h+5j\!LSd15eh,$JNFIf,_$9HVEgT60n,+'XAT([d^N:D![m9_Fu
Bdi29*R&QHI]A=Ct0pS8>MdPc-o"*t\%I8XS=KC]A=CXmGWq0F8QAf^T8qBZPb!@6Ek9=cA^nb
pb[u@LFOKt!mDZ_Z&_0T3uaa\q:,",bHU2bqnQ98kXs'b')S9F>`XPOHa/Wm732np:694]A/M
pO4gX&_s2QA>9X>$8MR^uW/!7YU?N(.[N?!(WS,!u%B*tAPsg<p2g^LNVN5/S,`3KBCp`?.6
>%8Rf0XU1Mk4bbu.Z*SIkQ_<&KJ?[=gVBVc,]AaGHAo%)O5.AOuBQTK'S;VmopSJU+0Ut$MC]A
$_Ff-+9[I<o/F(+B6LFP)P>8lEa8\9[4QcaT0WXN.MZKWDC$N\spp6>r(qnW6cID=8S`DBlS
tZZd9ga`=8kaM72jZUZ:tb>)5mRp0k5Yi!;/7_JNC0mYSRY[KXZ&,p_.gr2/uFk$X`[!%[Bp
0DbbT!PU>CKC9eP$b1KgLBMOEGnj:[FAka#V!i1tamDK9'k'Bi2./jk%q-M1%@Q@F@:8BmG"
`cII`/C[Pc#JXU>U>O4mX(0nlZL$k;^S-9;`THYpj.:#6\D`hD/UI[_iTTRA3CpgfI7i%,V>
lE-7^s(/qhI`sl*5l)UYQ,@g)jQt@B]Ar"Er>5npM_i9'Hg&%6-C]A#dR-g4='%G2!YrLYJP-Q
;mel/<r=%n',c]A,kL,tHX1*/o]AUUQ,9RE1K0AU$l#e`]A1Tli5Z:Ym+/]Ah%0rij$PbHCAYnkN
D3X^3CI(f&XT)FEBW*nOjj_[alTM903]AR!<1iWq[KJ`1tr&?D.>:FC5".[FT?iF!M*m28n^d
+*h'dq!13gMsH+L2>*%&'\(;aC_pm8"BD9:e/nr53h4hG6"619.kKN.m64;N^9+%&LaB8u(E
cF=4F?XSD)UH(j4Z<"L(DFM")dUYP"m-_'r=qulGqWJ`7Z:iaP#+[#DY`D\SeB)\&M`Ir!32
f!'A#!D`U]AubjYn>Q0<R8D'M]A$/V&gtb^kb["mgd%Odli6$stj]A-gi3#!1\g7ftALVqA4K3/
nGXlO8F95C(F0h)huO-%\#ZSj\,If=jRbN48bWh/tU7E21*jHCPSGSMmI2aCoe$g2&#;KS#1
'ufF2^L:^u%_Z:WdS\5=+)&@[BCTBU</)k;qRE`3P^[KsNZ0;L[6![\P&r?k7/7Q+5PoemY@
@W$r#_"leUE^+k0klIhXca)01D/>;a<VhM1HpW(C"Gtb4DTNP2-31j68&$S!26jW[oFI<jc8
_1@/!'+JHM""SMtLVaU91sdre&u!-#GFZVBPb'boXdn]APkQl)"u3Bkgp_U8a5F#$V2l\)&eE
6iVTf3-S]A:#VYm;bTO2OAre:8::#hM7OO;*7+g!C.;=_Z7C(?$j\bBB/P-,9r(j=>aM(H?C;
:X@q*-HOAC(!ZM<MP\2-2L78GLYM2a%p2E1UmI97MuKcc)=F)ic5lL+Ur-R0iV(errMl_jDV
r`ON.!+FU@6sB8#tkcac`3?Qra1(dlkS%504,<feDX:Pgc-kd(d"..jON?rQicOI28fCFZ:!
&Io4(,SIf'4Igm_Md6KM9_2?"[f#_k6h$;9\*S6#D0iQO$+&$RfIj*mSO;QHg?@gbf@h]Ab$+
((Zmid/[MeP,GRDI/2^X#-cPuV5U9e2a[g[.p_fFcStU^Yd'cacqqh$eM3!_6O_T\r.71k-i
e.ChKZ1H?/(fF@VXnLE0L`'-YAN\D)gYI:$]AMOot!UQu3]AIlFSo4;%]AW&T$'"TCb">C<6[Lo
atu2%P$fL)G_^f,`2Dlj&Lq3KE,F>hUt=DC&k-YkRJ)>Rm33+ReQTaDk$AfY:rGp+?MWf^CM
T5l#LpY1s.[f+DM_)8=]A`S%@h;4`1eNN/`p!2GQjjO$:)eJ8<kg!`#<!iOK-!Y:fof9QfiA0
At$[IcA:p')@-EoK#6*ANFVRj@BpT)85Ip:mWlc]AB?a![(W64`!KhSK%cO$X0@_l&N3rCbLf
Z!hVhe$RP%Is2!eq`R:[I!onSSTZL*c&dP5`6^2dsES^;_Bd""F(eBV&_-Sc36#8[.D&fuli
_>=7/DQN]ARdoNaQA6bo=,dIeo-n#u=ASG1jt)&`1WdsGEO?<O=X1kYnc;)JWThEU4@YlPNgN
&fZnR.#For&f>+T5#A'mSRddfgeAZ;-"ia[N6OI`=%Ni\\\$2s.#YS)dk5[du(r^ZT7J+S1T
\T+@?1I&$!Ho"Y&^oDm"l&GFqE3?SCTts2qe%*UPZgl1:Og-<)=EiK/VK4bVp-JX69;c!N,=
*+AXF,^Mc&%\+P%!a$ba2%?0L[>;@hjh$oF<?bCio`blL<)Tg5-gRJL1SCEDVmTeFM/k*Ijq
AC7gh6a?.<[2ukonHr("&OX0_9+QjJ(f,5N2NsD;tLqh-I4g9l%D1%O'N?bL9&YP"<dVPO@N
H97LDMFi\NQkXSY1`dRh:?S5%A$^:km!@$u5!HUH_mRk[cel7_OmF;H64_a>HkHFqBipkYi7
7VlT2>uI*N:Ad\gNl%&couoJN8@qmOkis_fB\\/O_D/l"d-FUasRd?h^O87bRRoN[%BSqm`W
9;!U5:_lK]A:=RPJNC,QE'W"]AK."W2IfSZ=?^;;s`I%A46pS%/H=u&_-.U^?9a+.&8"h-g)%N
bPrh2CSQpB>=8f$eClT^QVs<i%Qk+]APr1aq-%X6`q%fP!R2\3ma+DbbhG!r+0_Fd`X$usrLb
K@sMb+M_dED+O0AOiVb'UqM.f10tom*aK(&=r9+GVdRQ[mWK,c^rAL"0_CJp,]A.Dkl<ILEWR
FqXYleat^^oeRAMsV;=L_94,0R+VcjeI/[(Jq3RL3fs182rYt's(N.Ze("W-NcNWokfr@7l"
(S1?aqc]AmURdoH_l_nKnCD42Er(:0AG=N+fm!Bt]A]ArSONd@o3eB0AC:[>o)%aa)\ZDlos7$'
ifqO^f$fBHf0PKqD[HleU(GC&0s%eOq[_B0Q?nOiLcH/m"7EM)7I*d16/+4KLM5\C0XTQYBr
-%5aY)H5HlktY,XYZP7FMD0O,ULaU>`0d3@64:']A2El^m>-aY?bdZ1!Cf&*e[ko8*cVTiFDj
p+?pMG]Ask?,L(pJ4XCImNn4T-5<ecDq+c$"hO7Cd#4Rem]A@b>_Zoi<Ot51U-h\9cZ8ZXQFrE
/&U07:8Qlf53s%1HEi]Ad9X;J`8%!*Cnf;kNX/H-_o\DCCJ4.p'^2?\VhE=>!f%nI3N2P6Fpp
R!"dcqdCXi1.;MX"hbD4jh-cg]An3N>%rIWn`%92bu7+9U5/qeO'qm@RgQO^!j:US5DJLm3(N
c:m\bqhc9"TbW'`AS5kFm_e6l#L:e:\3,r^"+9Q!J%Jqsre0;.lp[J6kJ^C-NF9OZI*;6S,*
RI"?.%7W#Y>'NWQ]A^-j(c]Ab:Jb3UU*j22,/gMK]Af$B$/l_Q/Kt]ARC3CKuMV.Yp!`SC[,`!gb
nb.pJc^DOFcNc$X^=j-l,5;&FV<NpGOZ>;`ZWu.u4-o<L>A"IsQb&&qBMeF!:'tQ/L25>]A1.
n5jZQK#.DmV$QB6rWPt$!jfWI1f!@D3OPU1'*^%-$I+r`:b08d&MF<Y66G9JPe>cgS]A)\H0(
^C8(i`o_D^NQYY#14B]AB%FDU>E[pEU)o!.Kl&Tu0cc`PZ(eA\$6CiLWMp;4AZ9=Z=Mn'_Q$$
mO]AW=Pif'7fN]A34",HiJT2i5Mqr)un9iCB'cI=0%Nq;$3HqL+,dW)"Xb+_A6.\a_c'-:mfJg
g1iR6q'<M@Z)bQB]A8F850*POXFpM$b+Iu?`3Ps,B"4oR_`*4FT&!CHZ1D\$H`23hU63,)#b$
.JtNj+Jo0Wd&]A`j?^tN,C6t^/p90]AAe9J6>ki4b/A_qNj[F/%Ie8cc?L?&J!?k=c#ffV2>Bl
j0!<eIVPU0mPWMh$1-dSEEK=.*X\j[r&Xd_+G)PA0e6%5+@R`.YVI>Aa<3,N2RC^^!CW[ltq
!-57o%T2o57U6!m(gFH-*,KAra39YDZX!?`,@SC2EHL+q,*+''ghf!-7W=o-+HihQH`J_6(l
%T=TIh.&]AZRpncb&:jX]A7<#DM^nM^AB*hPXl[:bhi)k"25FSng]A#;Q4D*2N4#'TGi/pqr;%R
I,SZNikF\P_ZnRs#?nlT^cTYab>??:j3O\1<Ba(t_W%/o]A^TSTSEGC[m`%8H_7EH-&V?5dro
KQFfgXL/c^>?:YmE-P)d.KSQX28`TX!.fiu2\,c3J;ZZgG=J1;qo8qUM\t;JM`0mU.WLQOf;
'H!?skP5jKWQ/.KoC8iAli=&nc,0*YtO?M=6fXTJAg`o,KWNf^&rL0t:%%mAF0O<kE%mtC(i
I@67T/`'M-R#`;c>ds`VV_0iHkVpE\\$)Bq(&Y(OSkB2U^C$<(fK#B,GD9TpbFj$Y'F$_8oK
1bpAGH`)Wb)MMW?`@L`Z&i&:$KCEq<U`G.??%&]Ah?_FIQGkM=P6HIJ_uOqm.FBO[]Aro=]AbTM
p:TH`]AY0?AY%I":7FQTjJ#g"$'8D8j$#$i%/6"#YA/;t02]Ap_lUWcP5O/rrq>LS\5Mr\7!n.
!-@Gr2pVe]ASQEUh'J^-eLH(j95i3^TYN#*.Z:njMT?#2gM#=1)R*sqSLcO=uOaWCU3iH6#8Q
"m&flu4M+HQ8do:G;9R>-4R.,iSk4JeWC(Q`O)$o6f)l9*8^AV1/cLu3lbL<T-2i3AO5LT9r
j7]AcMk^-m9C*GPh=;?!G;HSCTDsP<"*Rh&m\1K@a[4r*d951kfO0FF<%'9K>>]AHo!O(mI@g,
ZI,C_umT#@h1.TSMUR?^A@IaO'_BRgkMQefAT!hq<Oi<a3j*1Kj%?@blnO*t!)VMa&&'$;QQ
NdP1n7f[kj!:J"P7oU5CpffX^j)soQ[EPcC"P4)]AFEXuR`O7&?CY<pQ[Eu=coKD/GIaD9`e9
'J\\Uqq2kHA,&S?9MQHl;7A=(&<NY",SOcZdtTnuPaM`E*9hq%`M+1LluOU@O*[jK=(1mK)5
6al*EHq`^<!.n`eK)9KuGMPY?$H&@WplF"8!W,$%kZZSEcU#7V(RKN84Kp9\4C-mM(CnP[(M
2CE-N=dc@i:.5^q2jJ$,;Vs`o8oqKMq3R44<c-'iO0>"fd:<ud=I*,o*C.K5>3hHlDYi;<4s
JA3tp-t"=LL$EuOlbH%'*#li9nCYXbf%@jXdKX%OGf/QlWTV4f&E]A#,d.l1@YHDDep&dUDWa
KgG?#bYrD6m#MMBR-@nF.Ro^A&_##GhlI-d$OXmFd^o/DNs7ro*<HoVYO!Yk<g6gKP7NUE<3
8O!-3^pi.+;RApsGerjMmj8/!%DO"JL74.%X)Mj]AW,:)H03LaCVEsR;SP\rsU$5`HiO2?5RN
n+b=c.]AJC-to@UOrr)p@k@(S7736k6CZJT7er,^_ePnVD3g'H5<%$C*)90tt"epa-4qg*'!U
"X%pEQOWWe8OX@W>hu)l$Sg^M,+p$J)A/Fpl]Ar45T84Kn(5fn#CZ'VGU0/?i,7^a29A)^S-l
9qn9:^/O.`l2Gq!ji5YJ)H/(":t)]A+#QVFf<6qB`X+U*ot$4@O&G<2?#MWE_]ARq96eKbpm[m
C3kWZ$:4O9"(X))4%e%Fcof$O[O'dM."`snflV?Q`YbDmFMYA`,Y1%O?Wg]A_oB$'N>W/M6RY
Z.:GWfS<G'tTKj9c@8(tpnPcQ2&mLW:-K94"@eGqW)bARae3)@5FtFbVM_I7O-cZB8WKA`DP
ukoCm*:4;X"b)"iQg$_T)`1A[94mu`n7V($%_Piq,,3ELInJPD?0tt71r&&5<mTn=^-U(na7
001pAi\ZMQ-qp><f,od@I#%pTZ4A&bKW!gEh(.WJmG^nH*K?N3sXSj$h5@B@7AT+o@)OJ[=p
JA7ouR6=\-fk5`FWQE$4g7V?k\f'cPJ\c`3ru%Q8FF;bC4BeOT4DL7R,G;]A-3CnGDA?)Xu;j
OSEM39W:?,&V'<H^i+W.TGQthShfrZoAd2ao\eEBf@#YF?bh8n*[%'hAn?klli4]AS/]AJd2B_
IXCp$$;KL&4>bUU['s0:B/nDC&fNfO=_X"^OcDLR;i'KE83S^MKTpU#N*Gn!>Ig.TKM]AbqG$
<ErC0RPRA7T1.1ACn@.KI=e:gUHki#N8WW[RF;P#G8-%#/cXm-X0^H*NYYfEKo_\Thlmi/);
/'p]AdQqB*I:9WR5mNIedU:*-S#B[ZM**#TGYT2d0HH/?NH]AoS:P#B?_[G9Ld2A0>PjtkKXAE
<?`g>jlUJ_:eC"?q4#>rNYUQ3B\(_!q;7Pd.Vo,hNAYFs\U,Y%*.14q:Q,]AS9TLpCa`<nR0r
T<]A<8XV#*0hM3350WV_3(jV>_nC"/1VIQE$==r%N?<H<f)LO\D`TL.<fd*m,["JqZG'5#*]AC
h$7DC%>4f"Pk`kh0UuT$PYAMQW#,\Rd7.-^j(k$Q-N%cJ\1A>^%/<,HKO_C5G%IqCY)Oq<fM
2jngBLD3oA\5WX4q8d6'6mPK44`0Y;ci_5#C786-1YU\ina?!ImJ)+EJjL.j_7-re$d=S%ic
O)Th8.LTXMoVrihR/hiPeYAMeNq#78n#11N!4sH?UA*=ji:[B`/B8@'+-EGR-mn3B<lCh^9U
ACE]AefZ(S56$2"()-5M1"5jh9stqW^G.9WETgi^@c]AJ]A)PR$>PJPXlM$p^[OiR"p*&]A3(:FE
b)APM)RZ#@!(lL+2YC<,ePQ^cZVd$;@3_H<A^cbAqMUOF`Cf&c0dWb!<]A%s?ogN60=@$)XLe
sGl=F3)ca![eP!na@$%m'5oX[l0]A8fEWFZ)MFql_IRD.le"_=MD^!MK;lH4%j#a'@dfD1L^\
q]A_Fop0K?QeFQfi:a(%_7U=:E-278I^V2Zs@(l>0C1aUfTk`>trlP$30;\3LeC&VooQSN-%n
INN^pp_9An2Q%MZmfYfC&=?Z+GaPkGlp<fX>)??"I2g1n5u9'S=.s=K39_Y19N$*R*4f0R?R
qB>8j[-qH6ss#0Df+#>/HYU>68YHO#6URd2^)A=LAr"#V+kOHD[GPbR*)M`n'[rue35nQQ1i
q[ihPe84IR>!dmeoTp3:4P_Sq>/;o2S$8f%9ho-Oo'm)=N-&gG0.N4`1tBN>8t]A#i"_'kSDc
bC*#Y'4qIMcRn-/bj;`7_>iLGRi[jM1fHo%pL=f'V5,s"a6)-?EoDRHeLhTM?$TcB\40]AI)R
,l'n9B0D*8t=AB]Ao'>K2<ft%%@8cc]A=]A#V==!Au88r!Jd4o/X7ZD%=#&-U$0OgNC#TGqJ+nP
A5-'HuoDmUqb4SAn&2'hFVgr>[-Ks5K]A4L:5(KX%sG%>)oX@8kg@fNLs=I:$b_s62G>CtGd$
7e`EkoSjh2P^`g8W^0Dj[K"_/.Nb1r@TCqasqM'DmL,:&@G;nN;"Nc"LB4H&kqa/cTsc2dJN
qJ]A8%SA.gUp6P#pH^o<ffO-n/;.T6^ETg"ZroMhrN)oV_2;N)0ED#Uq9S@>E%Ao3$"*XtlCP
<9'%'4ZR/b]A2bpP9XNlYgZk:jY5?_k.'>Q'EqBr;t\A8Cl\AH_U4JYFNjqIG`8]ATN!.#HAuQ
O0BDUQ1bg>`7s3=!VlilbL$S>Q@tZ98U90,GFYa3C$&@SYXNf]Atn?Ec(i*HAkBT[)/oBr":T
(?98_YQ_dX4EqqL5p(:;j9'/m5MIVbU(^4K7b!&5(kRgmbtZR9kH9g-Ock.2eYd$p<0f-]A,g
-rP!RSF+u5!_W0BrJQV3VCX/`PL#YY"Y]ABK&tpUlQB$i,!X>je7?a2)m[S=M/Pn/<h8?,R/r
,dS`A_^0K4`$na;BsN(&ViatqYi/$UGH)-.3JgHLnkr4p92bs<8g.$A3(>H="Le")r;fV\n3
?MUrGg0\,adRn-p!VXG^YXS6d+9k`@eMlfAgX%a$Kl1+,u0<YtZMJC('K2r]A!\#TU+4#qacg
fV<0b^Ls]AmB6OeL*X6]APRJY9S!BVc8cAORbFUa:XkrUEi#]AQOdjo`s6!ru6;eprpq`@s60de
9DG&.Kr_9^\2#X<?PRW*JFPJ]A2$I(?Rqj+q8@Ojc)"+H/dQ@A>?4,3X/>R'"'-1qMB/YbD*=
CVNbjX/m.^2>`k<srE[:7=a>r='SGL!.n%J&SqU`pirM<70F[H@Fil6NMBCh9C'_j+)Ft]ANf
4DFeh?9[e-O,!CsTr*`5bPf]A%)C=1c^=_tqT*bfNVM4&hgJeZ[EXJ9@Rl=CE7$h$nK8n4SC-
XaoQN'PU@2TsD748+FPS8&dc_#8ASgiK;<?O'+a#r,g@+:[AHiS0G%T1G<+1&EArGR*cLK&D
#Ve^0/m=.YX9=kieUWggkr,q/.Jio:'ea`"a)Y4HUWN?UR_Z.$[>6IBEYJh[`67ZKP7Y7A8_
Us(@'ETi:f4@EB2jjcXM#%CP&6nf<#WuTRCYp7JF$tK^prbd$T^?QCTr1msW-^b3<?C097Lk
h#>#cpJ;l*ei%Cm!P[Tf/%I'bhcgRd;1So<,.==-]AHAGZ:3@o6Iq##hXLj1J86A9IKgRVA=(
\`Gp;a\##-1aJt:#cI+Y8tK>[Q<4B9eQPSV'^hrrk6@*H?N$&sO)St0N)Bn7'OV<m1mQsA'K
X%NO;2+3r;J;qrs]A`h:HZY>_oS=Wg>I:'Bc6S/do5GkbB9:gKD3Y6W')&V1K.fB`%9KA!f+/
_PKKrP!_tnpA?.VDXVDRi,tEVEoFT/pUT)J6j)Z+SN=6Zu1sBi(i<j$E,d1@I;j(j2YOaU9n
A.b"?$ZK&gL"bIs1s<Ds(q[4*+=sf-"?_0EakVK$sNsk/Gm=t"U3nI-tmDH9.=;qZW*JS0+]A
oBObB_a8q:lA:T0f_00;d_Y[\XQI'gZ)/fMf)>`P#-_)k1E"WUIl1;JaiNj5(D"02/JfJ:ui
nHK$Y8bE:u;%4t:4#__C[_&WAJGNpXp.R6YJ&B:9:,SqICc-A,@o$1rgupVFl4Yd'hmW>!gL
XGi#RE7i<h]A&ip*QIIOYE7UHJbPs_k(<-W@lD<,P#enFk5[.ElN'M/FKTU)pA6DM!u=i-VS8
WV4=1KRcX!3%ZSs*V]AYXT0.)j\laW_,05Ee>iC6`m8^B_MbI$5_(2?,afq'-i-9i<M:7L_[>
d(cQAKRBmqG=e%_e%B1DkP,U%kN2N&n.X!!J_Ar?Mdgr,1lp1++7E0M:_J!>nOJHb3$;bo>R
_hW&IeB^a6_N\4+[F/M@NRQt**3p@Yh>eCqrR5+8(?k2^-.=;l"$Bu,Jn\ihWG$_*!sE-9U[
p=<r"%:W"kbh",INPOJk1</*tL&X?NVomflT0h9/2.00'#iu/?htjB[etsmrFURE0>FO(l:U
CNgdl8B'#NIpmE30iO2?p"0(=B]A&Q+*V"c7rat8%b.]A+UWpu'!Or_"gQ>MMPD*lPf?*K7T2>
f4A.Oa-nb-\P5^m<M6"8&R'"<N1of\U"$+YV_jf$[CYf%meMcgHBb*N8$0??R'!rR)Z<^$iF
6>,VM.*3DQ'AMc52Wr7s.X7alTcc<03_Q#$W#Ra6,eoeLB^CJQ%NQas2qajShQ4Tj]AZo!2Yc
5jUUOr\bcZ1]AB`&c4U=OgKZa7M@,.9<k<i*#RpQ!o/-6q#$=gGg;ghf5[G*6X`YipCGj-L"[
\mK*?iJL't7m,(#n-NS$_;jtU5q$jk>"_SIjtE+-OSkH8HD>/_bjE4Vi*/:Q]AsnXh.5;ugBd
t6Yq'7t;N]As-&TEB4Ys,\ce@9-VqU:iT:poUo!l]AfWS8iO1(ho`^fn.e)*g%S^9bshZ*<uDh
/I!r/j(7UYf,1?=Sb>2lf0%kQsA<bgLZXXVg#NPZ^Wl4suF./a#!^Dh0O$[*N_c([c'+28*:
G'@<dkpplI'^kf\p2_\PCd)RqR3_(B3tJu^<8jNh/[pHRU./TV/64^i$sjlKa,S-RYIQ-P1#
NAr1WXP<4U[#&0WWi;7Q;qTW7_3>\Zfd<\'4p)[hu8DsE9gCu[_inmF6FVnPbn!/J#nPS&D1
LH:0A_,ZM$1ZZk!Rb@$:";Xi<2cX'5CHr42D)D>(DdN$6,qc)LMrHK<dO+5_3&S*gk3M+SnC
kL^=1Qr4lg2"GV6V]Ah(?[SU&"9D^SE=QDSA0A>."2WqKl9n5YhH::0`fB!9bT[HTqqd$OAq.
@JVk%F^@/,bQ:K-*eDSsgJBebhaa1'MoBc;0>;Zl$%+]AWjZR(Y\pc&D]A3VRnhk(B/tQ"QRYG
4$H&QlmX*2>a'l>s[M%9/47?61(\hmL7pWO_8L^0[[:)'$`DT4L+)4KUF->h!I,fNugG]A=PR
Q[I^\JS,kQsk4S*:Pe8"*7.M!4eDPpIBV?7I?*gHj3s$cC"nBE+)4=VVs8gZ6OdC6;3eiZs3
6Z_cpCe$^j&=m<)Od+0AN0%><Cjc"CEfSa'.$1-aDUNKb=ICh>/_!fNq_(tH03Hs4JYkIt`j
>=OE)Phr6g'n+[N5ke;9A>b;8'"2:]AXD%PA6l>5jZPk5;AAA)@O&>%7q46["HM(9O(q/(\N>
L6^D2CPG%h9hruRO1GCfSo4PQE;c17[05Y05KK=LCVL#LC6$66(D7CcLRiq%H.0prckMk268
X[VVN:HiaK=8/S(aO>M2\UtnVS;M1IC53sC*eeA'YXP8-sk[$`GV%7c)lc+X+/OUWp5Zf;Hs
EbSu$P\-YP1&2Q).`PGpCBEMdqLcBpjT[]ArWUr!Obg7:s6t&8`;f[P6"1G_Mc$'8cpR72k:s
cEC^d?SP`>KSO:+eIB8>kH0q9jq6(o=OF5(!o<ju.T(,5pm,t-fVLG2Aa3WVnV8l-52NUYAj
.J$a.2n_j+o"9^i3]AfN7Q>Z;XTI98&o=OXEb7G-r<Y*V'pSf9r+]ARqO+:V@aaHt)BtP4g<,e
\fSgCq'dZS8n,e$Yk:)D(rXB"k!qQF$o=Q5=(^/b3C#Z\UaE-M)._%GTA$1RHke\JAPugEW.
;"*J[1]A@[Mm;h=D/'`.F)h"[^^GFmH<_/b^06GF7c`b5gS2?FmeOJQqt=TTKOS;D5[d/*`M%
pLkHHX[l&@@B5rW;@59')u8gsT[<D^kW:iq.0nEb1Z1o2[9gs*f3LB(9H!HZ1(j')cnG4#Mh
'mGhb$IFRerIKNT#H%CK#*a)\3A@KUj`D)d&6)?H5-KERanaLRfLN]AJNm*M6ccRDJqa&[]A;7
4?DT24nXOef6^5jThGOQ0pY=p,9lT=VJ>%drQMf/b^5@f=UE4IDGl*TTt#b+HEV-SGtQ]AB$R
0E0ck*op)[N.Cd'Y<KOhGW^`9ll1oX4JdGBs(pE!B%iDIF6)q-elWD^..,aT+.r#Zj*LMrK!
/.L_2R4_IN=u_okC\8fm#S^KF#q1qM1o6!at?5\(%lmLCQ`,g_IF&pOa3(s<6'3dO\$rpOLm
=qclmLPc8-`LG-J8(X-:=K3C,RiD63M0Z3j/B/l0$c/r,hielA%g^Eou=>=J2(EgC!#RJ<qN
1A&_#hdDE:i>XmChSl1BQ/8oLf.e<b)Bs'Q_0;e(4q7@gRWfCk,EJ9<%V-0N\K-<C*X)_!K1
Arr\WHRI4_)ngIe1j9S@?m1/2?aVFTubPa.VLXObhBKdFBQVE6kE?)0&-l4A\'"@[S50nSMn
)3r!bY-.prAl<r<!e[P`N.J4?3iQ>/SmkSS8\MX5tgaX%a"I'H]Ac91>1U>IheAN5/u7e'bRQ
,d20Tbp4rIiZ53Z<1bPbFlU(SB.\1Xrrq`1eObTA60"A\Bhl@oMm(MDT07P7W0/[ADBW`m13
69C$s.()tVYOpiSKOZd@*jkYY]AcS`!7upJj(Sp[#bd-I`EJgq2o7`%q;aT1Qb9'Mq>@?T+,Y
@SHKVE>fD;E::dEf8%(&;g!"5T*e*p-a+jES9cJE9sWS3LC=Dj6&5Qug:<@9\XU*)>SpnMRt
odpK/+$:nd'[Cq3pOZkKW8b>34J#-fiuE]Aab!PL^.PnN7^&06SH8D?tR1'^0?JpG&7Uq9N^u
,\Rcu-D.u?*ib1/#6QjF"B\58rX!m_=A\+__3k-iPaM-WV$jm&5OhZ%6KbNN*q`]A[W!8X1$F
>:,U#*cN[m[uUdq,tuYbXREg:#5"t_Yq&<J!\JVo)ZN;<l9'LOd`0H_k"+-ka==Dfko&(Dk5
F]AYn(ZGkA*$?GY>=>"Z?fA]A]Ap&_l]AM.C5jZrCF.X-E``i9HEhQjPF)u&2+5Kc,ZI7'^2fY]AS
UcHgU>e?/J`1$Rq(uJO+GafLoq2BoBD65c6AMfuF]AOh:!&TID6-l[*:*846LiFf)^)*42?qj
\:^IH^DU<0h]A4[G7p?GI9j'i)0tp^`;@D?k)k:K*U)s`lTZ-BF3d<:Plfk=;Yld9eVj"bY]A;
VP"`%WBu^?M:Uin@\g8NT@R!?PJlj>YT+ftBDs:q4<O\GHTEKb#>X$EP'O$kLr)L3[i\4u9o
nT<.8gURAKoB?US*.q[26HD$*DG/gPO>513TD^8[QT6*L)@Sr>gum7P1%M/Y*fWGV[#FkR>h
:KhHX--.2f<;@=!O*T4AU?,_]A\fDahoKg8ndtgL&Z!,[M0L&^5eNUI-beqV#:k>4m<QR<(rh
[9*rHR.P%7Qk-V(%."hBlu9g=BMcKSViuJrhZ<1n4&=5eJh!rek'F=q1Gq#tFTV?=70;fUQ"
W/(ib878BZmOGk,[D[8IEBTCSO<9h7ZgLj,Pp[oe(^,bFm4O(j0AMb)Kci.;YAtfZ9*!XU]A:
N1`W'Y`8h,+TC5?Kj&b")QDSagdk@rr#k!es@I2CNKMsO*fZ^1rh;k@;7M'rF^So"652ks^%
#sLK*Qeto'o8`*Lb3c+6^IZ49]ASm-:djjBF9jBF#!a,"7g4,0$qNq&6%3.@F)-4jnpILJ\iM
;Vhe_D(aEcAf7,S3U$HY^f\NM!5hA;!:ra9uLoK/8Yj01l=k)o#pa@<SB)eP5)dDBpo*\f`?
Ro)'D"PoX6+o0[JHN!?_QY!"[L?LF'XT_U<@g7I-)1bQUWa%0fD8=*&LSsL\Il=m?MO,^=VJ
:9-]A]Ac,'!(3=/Y>*D9UH_5*(40.sJ#[ikD642kD$U>KFBkp+7$rLVLSYVchK',k5,p(8]A<rC
DJ/te`@3>=Tn*mI>pNAB3#Zsds&+Z4u/RA%5)`5R5*(sQJ+/u[/Qd`DH$h"@bf)S%T]A[/At?
0Nrl0<IWL@M9P"ZS=@EXKbB^DdE<T-+PBs]AQ1"aI4N'4.=3E9GMS#$A)=^[b6pNU0JQ>W,kq
H:VIHkHY#<Et:GT2\FniIfk+\H6'U?cjT.7CU@-'RseuHJipHVl8Q;ukcQO?_f6^5*J4>%PK
[,T_=`!]A&6`_X!.9rP^S<C1XuJe*5W?oXXKLfEQ,,)d@[0b^I7)f52"6LYp^-S`W)#(2Bm7c
`N^:V"_b+!.c$QPc*8f_6pnZOQ-$h8$mc--U9`ih#'<pR!-PN48KN7oKu\.CX6=L:4-4@=hX
*3!/P"@eipV*'4q-BA=Ct`f"a.[i_(sXYhL'=FZF4@!OCi0[i"0bI'd<V]A[oq.PjXb4nI"f=
,rj86rUr[mHZ]A!3d?D9Oe+-GW%=3@\D"+.M[A7Ro6GZr$XdB'm_0BGDJok!D.WdtpVI35Fo7
dFYS3-7>,WSa4mUV:Q^*hmH]AUo/-T4&Lq0.;YbikWDF\<bf#OSrD=IpTh!)`D*JCPlRe&IBr
C*\4K)XT?%M\'`;D<dUCKeMffaH4dbc;R^a,*c$SL_=ugIJe78Xn&(57o/<W3Ts=6=mL\D0;
.2Z3kB4CSP$H:KT0Y''!_&'Oe5;IY6&M.$Mh9NUWVBic?bk(T3fdCnK>jLmAEH*Cn/ch0e-$
9Om-!N2C[=gO60$XoUepVn([BCp%`6I!0u>eN<GHOfVZ'^_,'h/\^ncl"*aoWo\[hq0p\rBT
$`\D*l"Q(ge\j9b1o3?!f?jd=$8W+'MiW_k84Ne]ACH6dR3s%*P(TSD'7t]A;JNiN"9@98HTH$
'joQ0=IkW\UoakY[ZiBKB2$R6b]AWi>MO^Yt#Jo'bp',IZ!ZL#O2^VB.T-']A(/]Aoi/8e@qCKQ
SB6r-08lpdK5A?RrtSP%8h2YW!C8msc?X2o=(mK9=?'`uEL"K2b3I^q;sKoA]AS,9U&G)f_eT
d))0Ocha^@qPeSSar,8^GkhICiHNd)]A,J6hjGqr@g#@(O5!_rgpfOA]A4$iVO$jD<VQX7G21F
/r/ZEZ8TGUS?L-(*=@d7O!i)V3jsTlcN8DuL4ErZFq7!0tr"ToT^JDgD+')BM3;BhM'LlJ2q
8_-s1`apb,fOQo0Aa"*9Ut:,*LBYP]A9EbipmYKMVWKqp+Q@1dg\9gdLKQ=b.]A=ij+2_iN'Ja
D1%J$*I,l*siAHN22E*'i5(*%2#mJNoE]Al9u>dYQGq=tIXt:_m'MqB$)?eo!MrXE@3seC15h
`F8XN+r3aA.bdiHTmGH:-Fi.0I\F>mIlUd!LrIYX`>j6Fo#edpmsr?0q_H:>C7o(H3`53B.#
=mVb^Ra)pD<BXN&dJ9:)Y!troD<XK"`lUT/>R$"*EDRFg&5AJ$>/ZYgTU#R,.gI-lg]A^7%n]A
am9`-F0Bhb!9^HosZlSu^5S:.K)3gT1-Ya2CAu9FZr!,g>#5%afA?W+(S`32cUu-/T2g!iM5
YX*^a5OIS$R\X=Wc@5(0h-+)QLja_2X5\0Y?Y\F.!&`X24,+7O>p/3"-Ue,,l0/X@E\rFX5O
egM0hh^<n-bGWa<WdC>_)KRts#-d5n;X'DH`gp2(Zd<'$:U@mT`c]A]Ap^mQo7\qD^V>1=WZF&
9,:/%=<B[Eor(CpCtm029X2t]Ae:K)$@ldu./@8;7%uei]AA>q/#RVn[Rk<-Ra<g:n%N]A[qJSP
IB"NTiqL,mSdhd0boR^-W$UX''YdY+6FQ&`YqegD<@#]AXGcV[I$PPrNE6$.eu$j):Rog'-u<
W$8j%gfH>G2\nrhHdr!2q62?UR:d%JrK#0&$lPh'kncq'H!-2+=0<LC11g4Qug%$`:-&PcUK
Eh^#"$Gb&ji@SsTOJ6X+\+.BE:(m^n8QTp)_nn6]Ae>Z)lpb`:*81_b9!q0<nEAV9f@rkR`;a
]AEnWjMms%)Sk*,c]AihB38BS3+Rbot+45RI@[C6rN5oBDjUQj+H*gBQ9>'gG4sXk+O1C"/g6D
Pj$FT(K0-&5kYFOID&5X"(b_CeNtI2`6Ybh7O"amCVhqF\ooH+;>i1cbUrH2hP"oDN_K:r5_
^iHH)[SLc>)ZGW?#O9V+sV\kFLKABZU79KQuMK$T4/H`Y#Q"MI[$)&fF!L1;ses2ac@&7dbt
`eh"S\fC/qUd^oE1MTHa/kkL&6fTN=^3,t^1rpUHTC88+_$$$lO)gNrM<MW%tW!bke?1?['e
FdOG*cc7[?Iig6dSa;5mA:rA12AJNiCX6;r&W*G0#l.W:h*b]AOh<,N[;Y6(>B0gFU^#huDrl
5:r!1V,`An+-Lbqi`3XBm[?oBR7A><=.W<E(WB1dBi5gdrMm5;c+a@7E.ZN.=d+/5]A:II*r9
-E^V/\\.+J!K!D+:RE`.A]Ai5bZh7a8D0>'iJb@@*B+#Ll>B)jrGYpq7C88,k(6#@MY0<9hG%
e.&]AA"sXalU_ap/R<`T?Sbl.3k'!`2njX^$=\D<\7(B\Y%o&b:q\o9KUKL\&t_ZH6u87rH^[
/WPTrt$3'_XDesOsV80*2"ue-rY]AQF[aU+F<)F?Xo)&E8h^m8EkU*D[fH:pk?0XU$Yb1,C%D
k4Ae,B.De!YU\Q#)o+9+B_\Cl$m,0SjAJi=I%o<!,($3L6T0cQ&Zph.N@;JgERjF@oQlKT7H
Bh+P]AI^LdZu\%l<jKnV1hm(e6>T=r1'j8m-/PII6q0Gp.V@TB0JZ^APIX+(NCR9<aX.Qm@cM
d3=!-a"LTfn.2>7Qcm"t/hfof]A"JBc(p.riKqR^mf%UEh#@]A>hJIe+?aMT!C5U_D%P.Ol9kG
46s'2IKuPaXITrDQ!u3sU7ejZUG%WBQfh$iAY),:)n;&D<a:0@&-4i&76V^Qs+ZXm2XZ&>tX
Frh]AM2hN!/'qkl1tlb[$"P1p(Q3d6`UIjBrd\F+*5P<PO\-e.IP02k=]AGpg7da<\P(#&SPmm
.o9Or91QJAHe;TpHWtM$<W;b8+3kf8t'Df\HSUM/Y?qm8d\gEcBs<Kh'XeX0?S)+EpqQLV7^
"\8AZQ-WQ4)>c(RAka*cKC8uJi,*lK`B0odQ9mnZb?]AXcAC=.a5hM,:4R3mUa(J%_NtmGRLc
E]AQ"H>jL%^QstO>3p:4Y_PVIn:?\_iQ^PJ,hTo4UYSV[;]AQ*,:^tug"V7dJ.+S,(T*DPG'0q
:1PoQKBU4n"g-LYL4?L/li>NJ=".DH>lC0X<d>0X@!8,.!4Ok[td8TZu"+HXe`I>R9/lo0Q)
$Y8I*l`1`mbZj'P!9gY;a]A+\<ni6GD(_#n6h3.V*g=4IjNI:GC0L:/>C2/1?pc2F;=DKCIC>
m;(%Q0=V=eXAEUHW$o9pBEt;.O0mR-<t$$OuI,+@DUe`%dG+O`$#aU93$Gr]A^G:7MtO<0<Hd
?@`8^OK['Wf$%81uu&_f]A$mbY[F<,5<k_DSBgE&'1$LR9jYbH`?ncdr/m.rMP[FmVIMHA#s;
h'B<s>eSRgH@\,tY-A/1(.2hD&f)<DJ\FOcH!1<FK_kf9S1iX^"Ajc/;@57F!7AEm"j]AHKLM
>WIT+bm^`lD+CkNDp2<AakZfH7o8N9,u.6Q5Q5U=5V@Q2]AP\KfG?9^[]A?:Vloo;mAV(d&00'
BHJ#.Z!$]ASZ>SgW4\DW9TX=<hkc>1G+=JH^"m03ZmiI=*mqpf%hp>&;b_V8"d8bG,'1aOq^G
EU.R4]An@G$f&2_""HP&^IrmdaUT274]AlTsU.=G/;iC=4#)oNaXnneVK/ciC2F;Q4A4)j+CLU
's94?;FddGUf%T`IP:9'0TB?$$KiNj5d=h!LQ%cG[Lfr@`tO6isL?>opgCMGIMir?deXu*6%
CKh#q[ATtQp*_Brp"G:\"=Pa0Lomd-.T@f?@oTI1L7j2:6V*rZ8hC)o1+5MiOA]AVFJ/AQRTN
"a=+G3(5&26?lJHQT.A3O?;/E,UMO$:n':[_)&p:'bLl[@B2fA:lUqU.?WV7q.#UO&*Nh(*K
n>:G'iGqAl%YYNU^B[K?%#n$U8p7fiefTH.fT!8('kZlsZIX[`Y)1d]ALFU)D96*fH;=M1IZa
TS.KXLj?6=aq>7TfsJ1Wg<OlIQt.`OUndI6^Gb6l'?"[nA[9W=/]AS<K3/H<lsT*ZDfGK\.fQ
(`8WV8>R'DtACW!0%iLOF,OF9OU>\4".VPc5"Mt1&`Z?mRO*Z.j5SgF0FfG'ZI]A:Ja%QAbih
?(.kuk8tDP?X4X$ig\".44AX'%GC&W/&kdOo=Qj$9K9<e2oXOOA,/K*#<!GBqr@M0"hAqWle
^sTm1pc/P7+=?SQ[qL1E6qVbGUb7du$T%p\$!3=fNs$AO*68if`^.9bNN=6K/Y7W=M1"floA
,E3K7"6u:Tb9%b)^=^=%]AF=]A-*B0eAH+%S>@Y*csgqK+NlcIiDJP&`GLgLdnlJn+.R8(R.Yh
pFYa!>q.N;s&=8pe-H%1<4D]A+IU0p;gToc50Qh@.3N0\Z1q#0h;e=7%k%AMpj2*E<+9Hsl:4
bPn=$.lZ`S?tSs4XLYVJ9GBk4g,%n-feLN\.RaF%,TE$/G'aG(0bR)KP)fl-49o]AsdH8R>;f
Oi']A+pB/H[jBk#_iV9mW@u_#Z]Ab)',h6RW]ArUa4mjuaetl1r!YQ^\2<6hC"9G23O)=BM]A4FL
*Z,);iLd'k*YVgPPiis!ftePf[g.Xa#bORGWIWf-c4$GqCbrp\NhX_$Z9Krfo?8SaH:>(dEL
.,^cjLJGAt?b,Fb!Vd7W@>J!j`7>A?78^HJ3\k[t?*,8)#:WWrsC`02@34%o"Q&To(%.]AIhc
>j`Y5-3VMKVGb72gXXpFT-arQR.>EQsH[$Z4mun$tb7E8E^80%J,q;n+8m4At:l2o?a&W'hA
,uIOaeGmeJe1(^eaOihiSBMq>"$A)kn0>''H+0gfWpQ@<#d;=0u_BAq71CkB<?e:7LPA_3ns
^VE7Li'sm)h2UhS?S%upY89)4)u%jje%[4+h)[gj+B01El>uO==>t<@I$tfBK.1J>s824'8'
<A.r!.ZJ?etkI^K8"u-hSrJ%mZeYe4`XlnWl%@kELmV>Zn^rabJ,$G0?0XZc@=UYLMuU4-Y$
2W<jeC<d<466;EWjh2dQe/bEnR5nS"0^Z7o9i)i,S'$6RE6AkK"h?p&gDmR1L;\]Au5N%7ucW
O'LQX'ZXV('Fre#i4`%TITb9p@>/DYl.SZ@Atp,SB$NM0BD:3<HW\:0Cl2-J_BV8FNrG9Hp#
2(Zt'.Hf*rW:N5&>]Ak),="Ib4Zo'^W@09^b8nU+XQ"4g!YV9q,DYYjSi+iA(P>:FBiR.EU)U
+J_i5Q]A:DZn/?$tGD-b)Ztrfn:Hb!#T9+O$&SE[ZgrdU9QCi34Nma7D3(i++hst+Cc=C*#.D
#ASnm`DR":D=)fJ]A!%ka.NuAM#OUdG<lU^^dQ`\jjO+Trj!X.p]A`s[MqU4,5:"j[lU0DDEtR
U8$e]A:p8J"#QsJ\]A8,[l2e%@ON5G1]A0FksH9&-n_gHj7,QkARPb$b&/?Ok)DNl_V]A!:Jh`"D
nDN4574TDRC]A9\%!kmeXM*l68)_%TiF\b+&3W-l`kX.IP^&>@[fM:E=G"psfd9f_qN/"\d7p
!'aUkl]AYh?ZK&15IL0GNJ"ac$mBH.W.;&j>&MrN#LKlYO<Y[$Q-:qc7qV,(cW*XcqR-W."JT
IU<MEVAC"b5fig@T/?l*mPm80C#L[[&Qr8?BL.6'r0)"GMJS/VA\JLh%Gh]A&,K5O`N3@qqE6
n<b!h^Zk*.0@:r:q(D9'Y,B))l_7KZcDZ7+iY!Miu:^QYsG2P7R?PA"+B]AqD1e(erN*QgCJ#
(Zi2-K546sS*R+o,"\FCG05Y8n1;'[RqAQ&NB/b=*"8pgCAPmt:UCG0n3gK`rmmeD/@NMudp
B@Ij53$DAOJp??$?i(<4h$Gs+?AcWc1^KE:(_)lmY-O.R.1%U(cqSu+;M'A<Bi.1^:q""2i<
V@b^[O9qTCI."mZc^G&A)V_8!\XXc2AN_e!Zl2f=ATp+;J8?XjjQKT@Y\&*oD#hLJMX0X,J@
bC#Rdc_4Wu?`n4J<F5mS1h2.?nGM3]AjJ+YN_B3l%rcJ.RGl0Z%?-q?HH9S,"d==9LgCEqhT>
-rfG,@:O-&n?Gm^'(j8")Pe0[$n#':(l"DR>dK#GoCffD,65IA<daH>*MT[!!G3>:tL$8Bma
V,%:qM_o*"RCDMJg<@7:am4-WtZ[pUV`\L"]AZsA_V>b:HTiQmWiqE&_)<dsnsU<D86J)0*_#
4BQsg07La-)MRAXn;J\;WbEk@k5#'kA5-troE5;^&D=SXthHISgRpUY1V%(XP$KFn$!L9d`!
C6c;8`#'M2*$Mkot87MOr8LtD]ACoPb=APld/amUk`N,L>MQ7V[kjW6.<!Fe'*o(IP$`7[*AS
buBbDU;O7_qFqNe=%F7;iKZAus/=nYo;VRpnAAK5kgKPg;!fVTgl*FU;NiA71DhB[?p,hC8u
Zf#mSd-0,aa4s[67K3d?5ul?t=eO'6EXpmOU]AB*XKr3?A$pC+>^c54?>U>f?K4g?a"m2:Mi@
Xn1aZi%BBj>K[O+Wr%ZE%h@*>qW+&K6ee=:sUjSKX0S9.+Ca5]A!2q76#]ASb?1?a_VID/;#(h
3A-*`Ae'H3J<5BAqNCDEGT8EN.o%cSYu&$dMj)n([(<tZPa%')74$REZ:NG>0027"ACFBkK,
n+ojs+O`ho5b@d2B=k!u0/97&_&,-"m.'76:4>)*cn=HS5?8c(5GaZ0DV/t0qF3\8-':_5qt
7gD[8&pRVDZJW+C`i>rs?Af9\HF".'!Um!+BO$0'(&Fb"(R_n>I,tit@NUormfI2e#;I-B>C
[R2nocBNSbS^r.9/U[[`0W[2k<S"mSqn2^Hb4Pc;_@qH2s#&Q;'X8eWJb2)Y7h(oLlo,E<^!
V1$6(?46aq)XL9<_#sEYlOD9/f`%f(:0.-!'iI<<,WDq%8Y>Mh<4UF%L61LPJZ\&<JF[h?$B
U*D4/=M8t-n9W'U3l!;3A2BB/E)mOfP)r'_?REG#8VoAkmR&4c\:=J;&)&d=I<.2,GgY)>.b
U)0S]ANkRP0J9E,<mb3Wu\.n6aNi57E0/.6X,ZOFMgJC/#8?C'_YpEX9dr<<iqA]A^u2U$GWq*
%`)o,"V\#YZ)u_cS&_!qHF+BhRX!.U=GFn/?A=_;F=I[A-%5c;V$RuLF\`$S0(&'n9Dr9',1
(@1o)8hE]A?p#*<ls_?1%VXM4UPVR=7hhVGnL2bXC%9NAPlM#h-T]AKF?Se"OZjE80rTL']Asri
+Uq"Mrbt[a03T">HUIeXFBIW$c\ZhPD[frW[%lJB(IY?'0k8%;J5f(*;(F#?<hDrAS&p-59b
AQqWK<j2@Z"gR=Gmd$[VG"PE122\@*@4b&0I)Wo$rn=g/#<+QL]A*%'=tkbKIZ-_pIc9DWku?
(X>04rf]AI9_+1m01hJj2,t"Qo#o9uMrgMJ8t9-5>E&+LqH"C+/VgJiqlrlpaQ:3C"Fm\;BWk
<Op7S=!`AHMQ45oO_eSfgP$9f9rCPch2BK_=l^Y?G4;M,,tf[\dPZn%D<t<%`*#t4M.^9bAS
6Wk.nr&WE3SN(E2j:G0ZcbA<OS8-d$5qthM]A=W"gBoK=Yrg(@>;A@b'L^Pjrt?/_t#:O?nt5
MGo2;o+V)t)9b_j8/.BH1m4JlK`f/nJ?<Q5dQW<_U`%:OK0j_`A5q-=5ApWVM8u]AdHKaX%,J
e(C$+Xu-F7$/[uEhYY@(Fta/#8&MCS<#CFOLMLAP$U4M2(_CtEYB3b%*sWjr+dtl3aUOE:>'
N\m&mXq3%IP#Jh!US.]A?$B,oS\YX4TlV;H,&E17UWH8G,u3?r4ik2Q6EG6=jO2"XL8o7J75c
q&9Jc0=)j56WJ-5dAAaJ1TO[U81$2NHXX&sd5sj^51593@+d871q]Ad$b/;T_>2Bl[>,Q0DJ7
:L>@IY5;eTh5bL!sI<Oa4/(:)8V?=Wf,>p!*U/,B\OAA.-mf$>;Y-la^+Am9G19:"i+/l("M
,0Z4>b$jO9<JOZnDWd"PfL2/(C(]A>rtNE%M@`(Z`E)gWVXJL(#_+mU<1]A?+l[8rc0.+qEQL;
hm#l_;"PcA<BspLAqPUF4ier?@]A&rZT5[DereSSBR2?DoaHUU)<qYG8U2`H"7PBoi,i5BIt2
9'WB(3l<7MG:H%I[5b(*sHrbLNaTW1\M&dR!&f,mfTL.hAB%ipXsaEI?0.H'i_.ln0E'Gt#8
;BH78]A8M8=,2IkuFXQ$bFkTN*q(OkQncLC">5j>+B`_Z]AA2H1=H'Ap/li^.on;Ng^a#c!WT]A
>%nPrX4oJEfODL<&%9=^r5^R]A9PTn=mMSP"ob&g_+2`qNCMM?nQ;8%<,(L7232cN$m%P[j&H
X?L#*Y[1.3SI;(U2gq'C>;pH>cq,r3eZ`ritYRqX!;+q\)K'3/j2ctC*>U&W\K\D`mPVNqrl
*4FGR'+=p=+8rV_3.RT264HL[)u0*e.dqB2c]Am3p[KX)/Q7U7#6LIF8rd(:L#-8Ma;cK%Ib,
8N^r-bE(^<`TAN:#q$*)afCl2\*+OKCpkWbt("&)s9Y.K+>cq?Ws,G;d*dsD*Z>$C_4=\Pt@
a>."p72DgBe!<W(j35BLStXbZ]AXiu.B+jGD1>V&^g`5FY5:3p`_\JAbHrCp_2"?<%c;s#u=C
A>!O4]AoaIE@uH6B?*oUKY!@$n4;=ns1^ornttus!BVgpauQmgPNAJJ.:!kER"(;#JZb!qS+0
$+$Y3?l_W*a,$"e-K31fs:e[Z$QBVTJ&PP)#Z4sO/4rrSLKQhsi+k:69>FUY3@uZr[O'muBq
-AE8e5C%-!&/]AXq"l8VkpBJ,Vd`43U,?aEE>f%Zc,FYoj@V@DAi\6dbm,58?[`]A.>rf)q5@k
S`O71=\c]A,VbF@q'M\g%PakN-@*6).)DekMT(R@_J@K]A8*`,Y5gMFe\mn[7\Z(fnfE]AoPBLW
Y?O"Ie7d&EKcjUeBB*/<c%86[:XJZaPfVY.56/'J^7$4%#Ibptp;jke`p187dP,,T"1i.4d5
N`j>:@/kZf>B*fu@6555"LDWX@:#pSC;K)rk^f09(ne1h-)$dFQ2LSj(/02u!qda(60;CRGL
W=[JMsO:@f:M%LD/_(<cDcV32eO4HGF)Z;=?V`V%TD^kuFIGl5a+AdDF*'V',>cCY*HW)o.n
=fSWp5D_.Hm\iWFb"2U_&3Mr\FL7q1h*','<F*AC?'[4,6s/1KC`*?0![Bt7]A[,UA/B(lanP
5-*sububg)@\BO^>(`TEZ=.6C;#)om6(IIh0?7^*/W1fP2c:)eP4Sh$_7eQ/H@23VVcJkNm&
R5425NQ2Ni-.nB;"2IIqHW)G-05a:JWp:ATCO*qW.FDm&;QjUoPKV6I?`D:om=0&'*:i4fq"
WL&nCV&0NUe(!0.ePk7t]AFZN]ArHm=0QL/IMFOl3('*b31+;TgOLTiMC4,Kf(>1,?Z)kXWDW"
FApYBd!ik2X,fhF_9M0M:/al7SI.k;Hs)7`$2?,`g!guA&oh(N+eb;PuA;<VRl[AR`UX$p-E
XE*sQs6$sVJnp#TP*o.feKT%"QC*`_6Fg#&I!?;RcN`*RER?PasU3kIM>MScSafP_PCZpVB$
V!dZ>tE*dl'_8(,ot1+`H6b.oWISJuu-caHEO54p]ADV7CV)_D(3mH(a+1TFr80hF;HsRp)a`
i]A4A8%V_<STt57cC]Ag8$:3^\=s1bVZ4;6eO$$c.8>#:a_/G%JMoOb,/>ba<Jb(I//e,LpSTZ
lY@doq5fb:S^X*V/@h'UPIs8X_"3FtTbj@'\._R@[MOU`[C#Ych1;FO"s)fMlD/OYD0\#-e8
<gf0u%+RGE"4b=)"q>j#@.Gnq1^ST=B8f!<7ZLBg]A).+&Wd1Z7&W"0B;=V,?@gIk4k'Z7>VQ
=rSf.)(,VAcG=SD4_]A`B(Q3k:2#U6L$?#S#[DGB2qNT=%eCHMZio12)j1!c*0:+W=^_YJ"kX
tOL\bC`PD4q&2>^9dn6"fnc3)>?)muN,b6ZP_DAA7I'cr_[6"V@/_Wo5In'0Keb]ANu":A`5k
.`b(u)$J7?#)u@9#0kD\R-UHXAuFOu^EcCahbo>04mYoq2V@s4(T0B657J`5Y8:oCZJW>;\I
Vk991gQ!_hAaI\q'<t`\S\N[Zgu&'A]Aj#=O1m`k6N]As-&oCV$7Gij#_0e:PE_B]AqJS>FF%#e
rE:_l>$dVR,Nb9?ro\@@^BunZBp>m4L.!Im%hu8D$-G7m,M+B9MZs5C3%XA*Wnc[dg%[nX$X
rL6+5kFD2ND.V+1:*-4Pl!G[6_b*3B5Nge`1NNp:Vr(4=q'"Q>b]AX&![gWoNs@S=?5$Do6".
i+@+XNfn*:<8-9fgXb_KB"(+!!uHBTi3aBFe\Z4Z+4p-8_YGOGd`6L!b!&R(;NQtGaB!`Y;?
p$T1Y#>3G-eY"X:9.BetP[ZmiWQ<FY]A0smgJs@"7>;5dsWD40b5&U)A!>&!@o[TtI\22<uB^
1*%\bA2KDtC_(o(.>2~
]]></IM>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="951" height="567"/>
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
<BoundsAttr x="6" y="39" width="555" height="320"/>
</Widget>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="button0"/>
<Widget widgetName="report0_c_c"/>
<Widget widgetName="chart0"/>
<Widget widgetName="report0"/>
<Widget widgetName="report7"/>
<Widget widgetName="chart2"/>
</MobileWidgetList>
<WidgetScalingAttr compState="0"/>
<DesignResolution absoluteResolutionScaleW="1920" absoluteResolutionScaleH="1080"/>
<AppRelayout appRelayout="true"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="951" height="596"/>
</Widget>
<Sorted sorted="true"/>
<MobileWidgetList>
<Widget widgetName="button0"/>
<Widget widgetName="chart0"/>
<Widget widgetName="chart2"/>
<Widget widgetName="report0_c_c"/>
<Widget widgetName="report7"/>
<Widget widgetName="body"/>
</MobileWidgetList>
<WidgetZoomAttr compState="0"/>
<AppRelayout appRelayout="true"/>
<Size width="951" height="596"/>
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
