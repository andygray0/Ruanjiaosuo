<?xml version="1.0" encoding="UTF-8"?>
<Form xmlVersion="20170720" releaseVersion="9.0.0">
<TableDataMap>
<TableData name="ds1" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="startmonth"/>
<O>
<![CDATA[1]]></O>
</Parameter>
<Parameter>
<Attributes name="abs"/>
<O>
<![CDATA[CL_BIG_DATA]]></O>
</Parameter>
<Parameter>
<Attributes name="year"/>
<O>
<![CDATA[2017]]></O>
</Parameter>
<Parameter>
<Attributes name="lastmonth"/>
<O>
<![CDATA[11]]></O>
</Parameter>
</Parameters>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[lxty]]></DatabaseName>
</Connection>
<Query>
<![CDATA[SELECT
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_PROVINCE` AS `省份`,
	count(
		`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLNAME`
	) AS `项目数量`,
	round(
		(
			sum(
				`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_MONEY`
			) / 1000
		),
		1
	) AS `投资金额`
FROM
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
WHERE
	(
		(
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`${abs}` <> ''
		)
		AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = ${year}
		)
		AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` >= ${startmonth}	
		)
		AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` <= ${lastmonth}	
		)
	)
GROUP BY
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_PROVINCE`
ORDER BY
	`投资金额` DESC]]></Query>
</TableData>
<TableData name="ds9" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="startmonth"/>
<O>
<![CDATA[1]]></O>
</Parameter>
<Parameter>
<Attributes name="abs"/>
<O>
<![CDATA[CL_BIG_DATA]]></O>
</Parameter>
<Parameter>
<Attributes name="year"/>
<O>
<![CDATA[2017]]></O>
</Parameter>
<Parameter>
<Attributes name="lastmonth"/>
<O>
<![CDATA[11]]></O>
</Parameter>
</Parameters>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[lxty]]></DatabaseName>
</Connection>
<Query>
<![CDATA[SELECT
	@:=@+ 1 AS 排名,
	项目名称,
	中标单位,
	交易金额
FROM
	(
		SELECT
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLTITLE` AS `项目名称`,
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_ORG` AS `中标单位`,
			round(
				(
					sum(
						`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_MONEY`
					) / 1000
				),
				1
			) AS `交易金额`
		FROM
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
		WHERE
			(
				(
					`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`${abs}` <> ''
				)
				AND (
					`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = ${year}
				)
				AND (
					`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` >= ${startmonth}	
				)
				AND (
					`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` <= ${lastmonth}	
				)
			)
		GROUP BY
			`项目名称`
		ORDER BY
			`交易金额` DESC
		LIMIT 10
	) a,
	(SELECT @:= 0) r]]></Query>
</TableData>
<TableData name="ds5" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="startmonth"/>
<O>
<![CDATA[1]]></O>
</Parameter>
<Parameter>
<Attributes name="abs"/>
<O>
<![CDATA[CL_BIG_DATA]]></O>
</Parameter>
<Parameter>
<Attributes name="year"/>
<O>
<![CDATA[2017]]></O>
</Parameter>
<Parameter>
<Attributes name="lastmonth"/>
<O>
<![CDATA[11]]></O>
</Parameter>
</Parameters>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[lxty]]></DatabaseName>
</Connection>
<Query>
<![CDATA[SELECT
	*
FROM
	(
		SELECT
			radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_GEO_AREA` AS `area`,
			round(
				(
					sum(
						radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_MONEY`
					) / 1000
				),
				1
			) AS `bid money`
		FROM
			radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
		WHERE
			(
				(
					`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`${abs}` <> ''
				)
				AND (
					`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = ${year}
				)
				AND (
					`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` >= ${startmonth}	
				)
				AND (
					`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` <= ${lastmonth}	
				)
			)
		GROUP BY
			radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.IR_BID_GEO_AREA
		ORDER BY
			round(
				(
					sum(
						radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_MONEY`
					) / 1000
				),
				1
			) DESC
	) a
LEFT JOIN (
	SELECT
		radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BIDDING_GEO_AREA` AS `area`,
		round(
			(
				sum(
					radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_MONEY`
				) / 1000
			),
			1
		) AS `bidding money`
	FROM
		radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
	WHERE
		(	
			(
				`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`${abs}` <> ''
			)
			AND (
				`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = ${year}
			)
			AND (
				`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` >= ${startmonth}	
			)
			AND (
				`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` <= ${lastmonth}	
			)
		)
	GROUP BY
		radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.IR_BIDDING_GEO_AREA
	ORDER BY
		round(
			(
				sum(
					radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_MONEY`
				) / 1000
			),
			1
		) DESC
) b ON a.area = b.area]]></Query>
</TableData>
<TableData name="ds2" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[lxty]]></DatabaseName>
</Connection>
<Query>
<![CDATA[SELECT
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` AS `年`,
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` AS `月`
FROM
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
	order by `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth`
	asc]]></Query>
</TableData>
</TableDataMap>
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
<NorthAttr size="31"/>
<North class="com.fr.form.ui.container.WParameterLayout">
<WidgetName name="para"/>
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
<Background name="ColorBackground"/>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.parameter.FormSubmitButton">
<WidgetName name="Search"/>
<LabelName name="startmonth:"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Text>
<![CDATA[查询]]></Text>
<Hotkeys>
<![CDATA[enter]]></Hotkeys>
</InnerWidget>
<BoundsAttr x="670" y="6" width="80" height="21"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ComboBox">
<WidgetName name="startmonth"/>
<LabelName name="开始月份:"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Dictionary class="com.fr.data.impl.TableDataDictionary">
<FormulaDictAttr kiName="月" viName="月"/>
<TableDataDictAttr>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[ds2]]></Name>
</TableData>
</TableDataDictAttr>
</Dictionary>
<widgetValue>
<O>
<![CDATA[1]]></O>
</widgetValue>
</InnerWidget>
<BoundsAttr x="250" y="6" width="80" height="21"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.Label">
<WidgetName name="Labelstartmonth"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<widgetValue>
<O>
<![CDATA[开始月份:]]></O>
</widgetValue>
<LabelAttr verticalcenter="true" textalign="0" autoline="true"/>
<FRFont name="微软雅黑 Light" style="0" size="72"/>
<border style="0" color="-723724"/>
</InnerWidget>
<BoundsAttr x="170" y="6" width="80" height="21"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ComboBox">
<WidgetName name="abs"/>
<LabelName name="热点技术:"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Dictionary class="com.fr.data.impl.CustomDictionary">
<CustomDictAttr>
<Dict key="CL_BIG_DATA" value="大数据"/>
<Dict key="CL_NET_THINGS" value="物联网"/>
<Dict key="CL_CLOUD_COMPUTING" value="云计算"/>
<Dict key="CL_INFO_SAFETY" value="信息安全"/>
</CustomDictAttr>
</Dictionary>
<widgetValue>
<O>
<![CDATA[CL_BIG_DATA]]></O>
</widgetValue>
</InnerWidget>
<BoundsAttr x="582" y="6" width="80" height="21"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.Label">
<WidgetName name="Labelabs"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<widgetValue>
<O>
<![CDATA[热点技术:]]></O>
</widgetValue>
<LabelAttr verticalcenter="true" textalign="0" autoline="true"/>
<FRFont name="微软雅黑 Light" style="0" size="72"/>
<border style="0" color="-723724"/>
</InnerWidget>
<BoundsAttr x="502" y="6" width="80" height="21"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ComboBox">
<WidgetName name="year"/>
<LabelName name="年份:"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Dictionary class="com.fr.data.impl.TableDataDictionary">
<FormulaDictAttr kiName="年" viName="年"/>
<TableDataDictAttr>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[ds2]]></Name>
</TableData>
</TableDataDictAttr>
</Dictionary>
<widgetValue>
<O>
<![CDATA[2017]]></O>
</widgetValue>
</InnerWidget>
<BoundsAttr x="85" y="6" width="80" height="21"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.Label">
<WidgetName name="Labelyear"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<widgetValue>
<O>
<![CDATA[年份:]]></O>
</widgetValue>
<LabelAttr verticalcenter="true" textalign="0" autoline="true"/>
<FRFont name="微软雅黑 Light" style="0" size="72"/>
<border style="0" color="-723724"/>
</InnerWidget>
<BoundsAttr x="5" y="6" width="80" height="21"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ComboBox">
<WidgetName name="lastmonth"/>
<LabelName name="截止月份:"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Dictionary class="com.fr.data.impl.TableDataDictionary">
<FormulaDictAttr kiName="月" viName="月"/>
<TableDataDictAttr>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[ds2]]></Name>
</TableData>
</TableDataDictAttr>
</Dictionary>
<widgetValue>
<O>
<![CDATA[11]]></O>
</widgetValue>
</InnerWidget>
<BoundsAttr x="416" y="6" width="80" height="21"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.Label">
<WidgetName name="Labellastmonth"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<widgetValue>
<O>
<![CDATA[截止月份:]]></O>
</widgetValue>
<LabelAttr verticalcenter="true" textalign="0" autoline="true"/>
<FRFont name="微软雅黑 Light" style="0" size="72"/>
<border style="0" color="-723724"/>
</InnerWidget>
<BoundsAttr x="336" y="6" width="80" height="21"/>
</Widget>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="year"/>
<Widget widgetName="startmonth"/>
<Widget widgetName="lastmonth"/>
<Widget widgetName="abs"/>
<Widget widgetName="Search"/>
</MobileWidgetList>
<Display display="true"/>
<DelayDisplayContent delay="true"/>
<UseParamsTemplate use="true"/>
<Position position="0"/>
<Design_Width design_width="960"/>
<NameTagModified/>
<WidgetNameTagMap>
<NameTag name="startmonth" tag="开始月份:"/>
<NameTag name="abs" tag="热点技术:"/>
<NameTag name="year" tag="年份:"/>
<NameTag name="Search" tag="startmonth:"/>
<NameTag name="lastmonth" tag="截止月份:"/>
</WidgetNameTagMap>
</North>
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
<FRFont name="SimSun" style="0" size="72"/>
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
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
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
<Alpha alpha="1.0"/>
</Border>
<Background name="ColorBackground" color="-1"/>
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
<![CDATA[944880,1036320,731520,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[762000,10698480,6248400,2164080,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" s="0">
<O>
<![CDATA[排名]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="0" s="1">
<O>
<![CDATA[项目名称]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="2" r="0" s="1">
<O>
<![CDATA[中标单位]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="0" s="0">
<O>
<![CDATA[交易金额(亿元)]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="1" s="2">
<O t="DSColumn">
<Attributes dsName="ds9" columnName="排名"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="1" r="1" s="3">
<O t="DSColumn">
<Attributes dsName="ds9" columnName="项目名称"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="2" r="1" s="3">
<O t="DSColumn">
<Attributes dsName="ds9" columnName="中标单位"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="3" r="1" s="2">
<O t="DSColumn">
<Attributes dsName="ds9" columnName="交易金额"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
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
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="微软雅黑 Light" style="0" size="96"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="2" imageLayout="1">
<FRFont name="微软雅黑 Light" style="0" size="96"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="0" textStyle="1" imageLayout="1" lineSpacing="5">
<FRFont name="微软雅黑 Light" style="0" size="80"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="2" textStyle="1" imageLayout="1" lineSpacing="5">
<FRFont name="微软雅黑 Light" style="0" size="80"/>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<isShared isshared="false"/>
<Refresh class="com.fr.plugin.reportRefresh.ReportExtraRefreshAttr" pluginID="com.fr.plugin.reportRefresh">
<Refresh state="0" interval="0.0" refreshArea="" customClass="false"/>
</Refresh>
<IM>
<![CDATA[m<j1a;qJVS:,$-OJU6%5*Ym[RWMKs,XbmB0[+8_;$<DMD(nsnsV%OIc%%4+q[&KiB#98h%Xe
cdJ-mD#L2MrE<+gIt3+@O3P!eeeX:;.b'>$;PVqn'O3n+lSds&aWSpY,(^f(2)Oq^sk44FFE
gpke#3!-%i)KD/FI^_d7U+SUp9$]Ag79q3`0%XIst9rjs8MjpXNDY/kmeQM1<.F]A5AG_qLCnn
56"Nc##+e#iFNc9`=qDLuuOVPB['+_$B!s04jQ1m,(0<Q*.R/4E\DbRI(tRTCdR_`@R9ni^G
aWh.A0BQ`3f52SJLQ-,/R3+.jZm485kk[bVS8cC)$qiE!osktU&#a^fe&bt,=l=3j913Ho"&
htBdWo1)TbiFpbGm'l>fhn'*^KeH0C2L`8Q><6F_SGda2<lG9]A2b-n"fcJ[bC>J\lW5J;OID
7mk+6omA970BVr:F/>G4rkHa)`SQL;FV8GOnVD8D/V.g+7'0RMQH*_u(>X#mmpT8('2W%?d;
X;[[C2H/D=Y.)m1)fa/[pV+'%R;iHOXXd_,9&*-FDFBLpL7+sXQiZHnPUo[St4G36\qilFN$
1HI1D+dWc^qO,9fg:u29TbDdVPhG+Y^UUHoPVO)T*#fLM![F(fJAVIe.lgM!EShYpG4;!=)V
:Ds6(Ia3<k8aUXH/@%IG,1fXJIrRs_#<-.G_sF$+%h(3$k0lO/:]AhOXlF[9Q!YY08S@meOFL
@Q,-%R#Ma<$1%I_Rb]ATI!@bM,pn)#"I&)*kepH<<5:N@8m1JkqV<CA]Ac[Q4Mi0uWE)KuraB1
17>p2p`g8r?(#*r7@\GN'9AQcHr:J#[pn."BZ#GV.ZNF0j8YF0?ZCl3]A(QWV-Ri=mGip1qe;
9=%T[M3UG!jOZf3eb'M">LOKlfa>S_6(l&\\AS*]A^Nl)^"/:1;YYW?WQ9N6r*_T'm09G'/X[
I@,[e&pse>FU#:Hc.CK;*@h.)bh_',:Z#]Aoi5`amT^;q4`YR3:Q(qd>_pQUqb5H&qW/*\G:_
VL-P_!&GLDB.+2Fp37j;!M.hQVS(Z/S&h;F4%AV]AKhT-4OH^H]ABI/MNiuorFl,j9I@cR`k!u
8lmj<Dg8qgoD$0,\&X$Tf(lc8hNDFW$t9+)T>q$9?tcWDErKGuA`_.H>bZplpZM(Lf(j$9?1
fP6Kl0goY_m6DiY"?4*rjjdTfC1WR'RG\#/K*PYe9*\4;Ej%ook/ch[YSJU7%sH!:3STl`6=
$Z?rF%_k;pd^)8f?G[ieEPX&UJlh&3uo6PR%GdYr3a^go%C_$M7Dder<38TC*'G(fR1;+k3a
Z*D-IcHF,rRlm@Jlk]A$;=rSg"jh]AISb6M?D+:>&<]Aj2C!.VslR0<+6]AhpCpa!8T'0CFR%<=>
e5TY)C6&C'8S0FBqUZ@Z#[p**k.OrmrZ@Kr%?]AoD%LQ`Xn:gu0CYf#RV/?_]A_Q1[`IX+t%@[
OX;-Rc5`G_-CKrNCBM2G<!#XrT)T3Io`*.03&cd!`W23cY$V,P5[,`OOP+kn9GL`S&tOe(@j
'mp66b!XWY5hmfh]A]AJAdg`Hgd5FjQ5PE,pn[.U!9Bo]Ac)0=1hrJ8i6dFP9Pd60Sl7QgW90;s
b2aUd&Yd2tG_RL_u/V4E9RnjYBMAK"!a;J8T=0.S=J,C3%.8n/h,UetWQ?$8AAeP-2ijr,]A#
&-mWO&BCeFfWL0Q55L2<VRTjZ;3/u?8[0Hm^P>e10_03QZ$^s2)<$#Q%HFF1\F#-W\\1OCBF
B$Ch>eNB!>:J$e(=L5?1Gpq3C3dqOI*mX,-c+MK(,4Ik:M/\N?ei%%7JCJVZ-7CMIB$M'Yq\
]Acs(MhP!H3N@;RV&K3L>6Y$7`hHFNLSjEsX[@>`VWuB&I!nLV\!\j/Ed\mW1Guo#BQ55/8f>
QPWVI.F]A\\3(\!KO,:;0X62`B^/56ZGqM(A/ek(5%C77<8\ckqul!@V/r+83:W?YrtY26Q^j
lUmk2d0UD_,H<0bPYU!eW[KKM\B^>*!p=fA^6#DE`I2uP#nkRNna2GVi5I:lq5cWI[<NB@o+
hCV$H[Jo"#`9?/LnIeO"gY8(<&Ph]AHO\kKS,F5]AJ_fc4'!J/jcW(tX$meAR`%`!C'6L,O@0C
^/@TW.16Y+qR:I]A_Q$:7Z=9(,c#03>&SjshXQI;b91"r0U2g?#3=mdO0;]AleGElYI2"9^n1F
j4SO#^g4&iBkGH%Ygd^b"su/?I@c:*%-$,e=5]A>^hc5A1j"r=Z<OHK'9_-FV)F@@J1ho'B+^
!U7I#]AU%=D:%C"Rj^9VR]A\UaD0!Q,=Y=sj,j_OPD\6i2kktf\I!<qMpWXdGCa5kbf\2EZu"+
?^Op)PptSY[Q[kD`P;/\UL+6;$-F!gil@IWT]AbUmY]A\_7]A6K0)hE6i;>g_Z?Pbd`NCSs<QR&
kl_E7#4%g3tDkt/`nrXHLsCQs)ej\X[TU<KA04]A=#@]A5g24g^MCdAH6Tf&oK2u%s!P@Qi$$=
A'cJ/1!<E$(9Q!o9mg\'9(CkP".?Z,!?KFdFc1='Z_\sc9QTS2Il:NE8G!\e>2Vos%]A?:eUj
:k:JSVQ";F2MqZP>_,7/7K$qt<g/,K;j&2*%2["R\c1Y@^V!fT!u=$7BObpLBK@kc$IrAcO6
Al$2_i'Lc/';3cCQkF\=UKQPceq#a=YoJ1]A$FpcD&f]AX?Mia>gCBAhrJL$9IOR7/HSV:Z1Ou
ki+8SP!Ai5;C=>[lD8p8pBCNS1C8P&ulL;"'7d*Rd5bcMd"LK3I"JJDWdG%5$SRi8<)WE;VE
'>0i[8ONIeXjUbC45H;MJB1l@@2@A!IgV8h4W6Rp8S3H7YRQC4KFJ9,m.Dh0QK><a)E[^!24
u*+S]A[n'L+d7C15LqoVmYL;EE0*\e1Y##-fqHK)QdaNeO/U'0DM#RZOheqB4TX[mDSAJ9ngC
Bf>"W&jTnqc>c]A>/jch]ARP%`6Dd>iscT78\/d(/*@`cGg`<h5dXZh^0)NIWV3q"WfIH)@Ce&
r!;As?+;MXfoD7nQN^-YAW?+Pr#'R\.;E+;#;4\d$k#D']A?F#*$L=H(Y\;l*S_7QG"^*!/lj
rAXsTQIS8KiFKNM=&IQ>W8W$kalEZkbKe!UT?Aib`Kee.H2mptX-n*\WGbSu26gW5,c3,l-G
]A0ODi=1F>QO68_jn6-Nl0['-.kL]A.hD#p[Df"^a[e$.&Wp)!\'BnZ_f'gV00lmajSeA8E6D$
"M%^B$E/d:mMl&KbGnJ<gf!i-?=^UB5@9hmO=F=^20+Ru[6%Y<&LU<-CQRObDWK+2P+\`[FJ
-*a7!PSk&9ck8;pS0Zuk+Knb)8QVSV#ad'ABbP#Z0U`pn24kq\O^Nphc<!_fJNucj]A%3c*,E
a`6<G*T/Q[K(D4U=2Pmh3YF7t20\Dk)"N;tj)O+2Ric>NBs*Frq0*P,E>W3f4[;V6Ok8f'F]A
1aU(\hI+,6IL!;:`a5(XdC9rLm?*^Rp_;+:ejYm6^LGF\5[R*96@;!t$0p;fL>nR6md'=eOL
q"SX-"7_54?g.8HSRj_;Xt"XYf#-KLSZa-qpCJg]ALG?1l1V!f&eUFT3eH;3d$'Gh7g(#F=Dm
7J@3LEl::<nURmG.dR\=0s^2ms3Jc.i2Vj\qP`[Bms+N-+`SHM]AiPTaU!SXCAKAuVkeUjK;O
Qm)Qnep>dH"g3N@NOMp%5r7o=>$R@cckTn>X*(D!/&3\^72K*aJHbX!=d8n4YPFnlM?$C@FZ
jQ8Wp.\u>lpIWQN'4r8T+Fj:<god7&/(6^&6junsGLg:2B_QBh`<jh>A(kWKg1nae_i1P2jG
+]A-7QdCI84O<$M-7hC+0oP<:Q!AW&`_8Uk/EMZQ"X1-rY%+E!7Pc-eaW/"L!)(DNQrN=*AcR
U1_Hhdps\8Fcr<J8YJ-I0n,bC<\'PZ1g?d6U[;h'N.UQS^nS0@/FUd=Ii*kIdn[1[noDI<8d
.6aYK<rq+NHSrn?5JoSh;'76nH+X0<R7mm2G;*I+>?gj02SRm!<BIisbp?:bT"l3MGW>28]Ap
pioGZo<R7:[LOTO%q5f\>*[`>K%Wq1<V[$+C'T=4H^o"pIK1.j,.b0=5W9t27Af]A)q%'/`0>
W=)-klH*af+)[CEH.cX06*DQoTN1Q/+"UpXn9Q92jTifkdIeKs)VnHZ`BH*Uidl60RrPpA"I
W2aX%bhGd@$!/3!@,Hbh/r?HFFpSd30>QR\`iajbDT@T]ABT(tHZqMTNDMbEu6%8Ik9bBfkk+
j6q$kiRL2d!7-)`WMa?,esA9ic_+k/s\u2_eJot51rts*lh[EKO<BYQ]A3M"/9tZ#`G62maVW
&(77dAr6-!+56s$t;'/A9o7;ta3/0`1R8JujGGhEY7iY:S*WGHiYS*V;d&iAo"T#rjYTYlD,
Y,YGEDc[V,l*r+Hrnq52:l3`$+$>s=&LD6h'MtQr8G"4TpSVg=BG63b(@YR>F:6:#A)P?pi4
n(AQp*=_N/-HAWD3eG!o*W*MA@M.Mu1QTM1'.I'qG3(9>/Gud2;P%0OuE.njHMs@/2mFK//r
g;ZkBlHYQBd(.QL=6l(Qe4I5@^89QjTgs/q8TS-B>rSRX@+SB3JDGt"_BP>QI6n%b==F8mnX
:ON_jD[inVo/M!5\3B<E@pN8&uc?n_c0sA=h>H[('\'fEKW[JEalt+q42cG-N[`5RA'(LMjW
?>59`+<Qp;3]A9tN<@Bn<tf1rus[Unj)c1Y[.k<27T2$90fWVK3J[+8q#aUI=8@&IIg^Z5?mA
TWV/7l'*$?il]A>r[-Y:En9'dWW:3ZcY#`IQYet5u%.eiO@F;P6S%uipGVl1)\%8gk*_WWr5W
c/@+N61>Y-Ce;<ghN[VHYZiiFH<L'X>(o(bua<826Eo/A-#-k=@upV60_#9T=fh7V7PgQF'f
$eat[JhQE\&>8%V0k.TK"H'iZ'839,kU)*sLb\(//AdHR`\;EK91EPuQiKF`Y-uJ?lSr-\g,
/J1"F4/%B_:/qRR.Op!M&%Q#UH/PJ3JGC;GQMZ=/8H)gPiuEFJ@\+"%)[F<M6msKb,3,r%9&
+?Lg?ue')XVt`:lU@KRlA[<tJ^T#FgpjD=M<]Ai$).#a-BmBN`KS/cbk<_?[@(uN?AtAHu@$U
"6\)`P(!luD&"dX[p=sQ?co0-W"i&$+C6!.\,u)#+eK$n,aI2RM93r%C%?kUZ?a$+n=LKV<m
3UTC>@bt5f]A]A=4.r]A4S/=l`3bDu]Aq`KbY@*@%`R!"^6)&u!3CQZuA%rFTXQ=sUhRDJ0TFn?M
_ASg!-eJX;A"1rtMTP\mcZ[06T(776IIpf"%OGcds7W.NK8pR#E`8>oGO1n.9Rp`!c+DW`Q[
)k5Oo&0-LC/s<anB.r_#1)r8o!,XTqetk%'t;uh5j)]A/RaO%Hgd"H>c$phW*HRoJi0VTE9Bk
%Wp_XZqc:Kr6XmoGU^$$c+8:kN(-jI1eDbO;41`;c0W&lX)HoW:@Cg<IC#4TLYP#Ss[XQ;%i
m>%EZn-7TcFGmDdZeq<"[JKUd_=HQ+[oYk_YY>22%+K;(nORGrjiZq1\e:7cHhCHWI/SH+*1
ub`l4/,l2g7u"7g6513]A\o(QbnbHRBse2-rQ<"#r/d)T_mQOJtT-Kea6OT%)(!<NZ8VtD&;_
^@j'#6V*(7*IgbSuM8q2t+jl2m-jtYR/DCr45YX%LkulRn?09.:iS9cHATC@uARgc62ocs*R
dYZgPVdLCSX=2FONJP9l&j`Ai^@`M#?%%o%UXZ?%nO0Q[-Q*s,,220YLmifcs4&h"d4(/W?O
"$R7B<+#GqFsLlh\5CUkELM_UT1]A:tItpC/A`-YHsH1\#\sABplg3\3@9(ul4?f";T(p'G_c
EP:%mEWRPg\L,ii$mNW?SR&A%N<tV'hX8TY)<>)kWp$+_E/?^4ICr\QRASYm&,eXMpdW0jam
$?$qS6?6DVG1l*U5]A:Pq*P7Zjk0\73;*$ReshPgPL$q[mRhnG!0Bm,8U@gG4%<H&0t[f"dX4
eg,%k!1h`sc[(#ER>)jc7a=:@3&3W`e?M#W7c5g.?&QlY@jA-q2+>iB*&Qm.:[dY,;YilcM6
XO'(ZC_o&F]AL=Oin1idr3DFVp?fbg/\V]ADZSl:kVdr6X<G?YM9+*Ol-g))o*qTlqZ(;igUW1
0f+b%TDhKFRLbKPTOVO5OD*$i(^<3k(ADL$GGA=(>?HuPPq!Ao]A7P0bXb+)WmKph4s]APp[n(
bF>6S#8cKaEd9S_=@"39/d1a)S\Zk'Y>UoW3-?%&Mpt%V+CfKN@YJIk<a%?%Nn"D>"-u'=X8
;OtiQ6iF*D.^[Fe&UV?u<T.Qs^n6I#`-U+MhbE_;SC@KmFGN:UH[lc`b2m/S9U&X:XZ22F#I
q$$,82Dik&g5@3?pgiG]A9i=2Xi"G.&G@?;>\e"imaQYm81:)3tU-YLCp&$kk==(*X#8sf59N
G8&QORFM9oUCFtRiX"oC7u:l[g-X_5:AC%g0qWo'P?tF7"l.ci1n)d2uI+QcAng3KV81V_0d
%m@p0"HI-M5J7dWIDPoE5?\Sj)&^u(pjF`cH<'bs>+lerLE]A6[KT`c!&Ql[1f^,Hra'b_,k8
)>F_-9BoKe=nH`\GD9hA'5bO<&e`u9"+..4d*:36c8V-%DLB`i&I(VZfqqB-FbiK#^7]A+0f)
pc_JE/7XD\t.0+O<h6f:!WNdUkQ5ni%;VY`c`g5"d@.)r^:\[1[9Tek:*8pFNA!_a%&l)cJS
`9E$ZQaHMps>RAD+6?5>flcsu%*4jbVP0[%KrpF39k?6AabY?J<2>FAqSfnSQ"Z7e61"MD8'
/KnCHdk7K!JqTb\X9&!PVIC60ZVX:8uVpujMp+)S%YXTZ(`pmaIjZS:Bj65HjE%W6bIVHnX\
q&N@J.tR<^D#F-KDB0\re_/%RfP))QjV()+p35pFUk[GdrdQd-.<F<A(T&1i[kf`3[fKY$*4
E6*^3E7ptM7jmi*hpIC[Trdou"JV\nf01<ch\HXXVLG,1pYV5U?KlBN-QSqL%H?'t[YHDj/-
I^ZMA]AnZ@i"^ZK?_k?jSNTPL/d9`&X+ZqN@B\p]AKup^H&sb%EK"3R0+$B=im"[kkc.X'^@4>
K"]A?qcnX+!WKI&UP6K)dUnHDN?-)2GeR?i0,095fd7f3q]A0n1]A?1Vfk<0!3B?rV@=)k^1Sn;
rKJAB_,4Gr-atj^["g#"=oKLDuNK7]A:l,&9uil[iIagRHT-S#$l8S7C^6<cXQ`MdFY"4BEC9
=eMRZ<j=(]A?G0#s%NH41BV)ugh\X"N?)e`q07?Lp)H**0*\$o:7VWc*oF9'W3OLL4!lJuXHq
F@kt(nX^TV@/d:G2a9^nO_g<lErCUJEDMOHY?$.n$P$kF89m;S-Ou/LCAu<CII,4MM;bC-Lg
<SDYqWTu%[Z#;(]AfALE43]AY-[]ARFn;b,"$LcojM`/tf9rQJS_e*;K6hKM)L2Q]AU^akLV*PST
ho3$sOA$d&Z+tg'?K(Qgr')a,oiNQX;ghD2`rpC_$0QeFA*MD&80!3M'N0>JND<9%nE!XR0S
qTntCp2X`$k3IJT\o@W?E]Aaf$@k;#E5=1FV_jq@)DLOXj*2U6?(Xi<8c%IfJF^DV%SLg?8d#
AhmKb@S7#BqsmI!^T[11LebD3`),D`FB>6KPQg!eHB!JK#gbNnX>a]AT<>B-e-[_1@(^bVTOe
"c;dsj;.,/p3kO5rbe\"`Li)oi"#CD#_WR1b9:bU;(i":r_s(BFA`,oE#<;,;ZN5<.E[aXP9
(Z!'aS48aQG^(q`Y\21]A/(P8?EHLPn-Ub<Cu#1b_2NPFc_6XF!See!B`FAp)d!X:LVnI`Tld
T8]AeH4"(W>gY_,U7W2t^.ZH8K`[qC0`53/L'J+uBT-rIiFQ1UZsG</Z&IqlK7)p*fjlWWX7\
NC>WqJ2W[oqc)p-ko1(*91SMOp4_&m,b%gp_8JM]A=4]A9-SF-FDGJhN`6a/NN]A9S\qd\EY(I!
E/5`5NXbIY"5EJ]Atd/C;e$*DYKNoZHMbZWMq,\&M\>Fa&ZMYjMIdZ5RhdSSn9.7QMlt^LYsp
2-]Ae`3q(Rt;s`ROkHqT.SX1G<53h_S/-r6cro$"B0T32n4a+/A,^-n)LsQRXM(7[jDWWXCZ!
m7HC4F=(cMR&5SaMc;0Z&8lSh"dK=k4iYQN<:F!0TbeCA'4YQ,Mm?XcCR/s!L54,.iZ/e*aT
`H6aSO%_7%QYh2GWDmLF)Ia=LEZXmgp^Y+=JU&(7-jL8+#<$samjt3d`)p^D>e'[ZWfJU<QA
Zj\tl0ZtEQ=*$8I0@NI"A)_,go6fa@c.0/CMd<u;rab&kI'>H&EA]A36L0,(B\fs%/O;cIV>k
=\V:.8b_Z^f\kt2n&92s28;7HE:3-&5`43V-l`fd+Bq<`NNhTB>]AI/Nu>X`"47Bd7KCC?bq)
R.JM1j+6ES;5>Ck&JAR\[PmrE:a@D[H5[ZGosnFW3e$U\h(Q(e3t4ml7p3k-)2MRjhGuQK_!
Y'aPZR'BH@h><rr/gqK`$<lJp+h/2/WmXa2'ClO06e!UK3@s=Gf8_Cdi^kr*5:G4Zt-bh[-&
b;2r_?ZVkih<E5Kt!frA?M;oJT>9fd5:Bg6?]Ac-0doh/0!)Equ<*i1sb(MF4n5:78V,;b`+W
(t<Z(&Bec19ElrfP*##Z^sPPR=e`Eh4edlTHB`VY,[tp8c>.]Amf">*WH"r'%L&X(s5rs/s0;
1YZMqp/e;g:P@37SZELAc5e[[=m-ULd=J$.V!^32<n:W?UCfb^3;UGs4qjtg-<`/!"L>3[@<
nuBPqG(`4ejh0DKn5J$>;QU%7HA:Q+`r`!F&IEZ-gA'_%Sn.!)FWrn%2K8N:NC;KYqW6QD>,
i;ihke%$7.C8kH^7aq5P'9@/4MsXeT.I?mk(PY:/ha4.IS-j5O%IpYe_a[*A.4No=N,#?$H:
Zg4&3S"]AEqjH'R%F>Y%&^DEQb?L0=otRr3LpW`)(1&-I0n3_^tEV)^2Z_Pn'+S-,IV3o7-1q
BmU(#8s(VTA"_Fru&S+ahSV0L10K:!7@\,Y4Fm-Fi(c8nN!3^>*RAm_SptEU?jH:=%,CNTO@
F@C"JENb1[3/=PM)_Z;1'b;-:'O[/Ug1rgULAZ^+Gf,;Ws=`pNm6nfo\^lPsR-0[>!p5Oo!'
g!&-QQfocNZEf+R+:s9Q4;r!"=Q/[UrU#)<!,ld\M)I>,Qk^f%XaL"@?Js0ZVm#,b8+@TYDo
@Sh2*\"JVaGC6T3CGbk)uq[kMF"'W\r>]AVG7Kq\nmW%CF%hLQ6nV12))RN^WL1363Ri^YeVp
J?4a)XOQsFnj[iFH<E^.M?++DMX%2Pt7*(kMUXjp_Tg\LarBh_nhWAI]A62_6b=@Tc?3Ld^p5
CWaP,GpE;GK5juk?fP/55!'2q'6!Bd_r8iQ4#55ed'J>!#JJKicB]A*/4&QC'qMnnVKa5ZX@r
B3Cr_QU/TA;>&uZg>kVGR6.@,me,#D=_@]AN#")5aUT;(Xf'S1DAuW<:IC60/'D3f..Y,pfN`
_Ms:@k=Ven1R*@t5PckDM9Zdn'n2o(4;V/L^\B=[*L#;,#Yjp*pg/uoZ+k%BY`OUD-gL43E(
kDtPN!7G,jKiCY]A54HDA9G<YF?jQd@Ml%Iui$Y+Fp4$7irjb]AfW&b"FJg%Hi22%h2@?K%W=@
lH"#dS#Bh+MdS=gbF44f&k]A0fg^ssdboCR4H'\=:a[HjOIk6^jM9X(eS$r\.fH2FOK*=rk>+
)FfpUY05(D55Q@L0Iu-/i%"&K1sb@H.'M`l%>`P&qKWr&OP3pK<I<Y.FZ43!S)(30@`%`/4s
Cdr-0RojdouOl!mONWZ>?&cHECSc*phZD:!o4Zg>h#dou#b\SP_'J'd[eo(bA3HsW>0DqU>Y
aU&$n:>-<cRCofA:):mhiGZuo&X]A3G0,WfD9N;%d]AL$:(MW)\7Vt_K;D+T?h8"j76GM^>m!<
E,niM,i90>4iDp\t<~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="955" height="194"/>
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
<isShared isshared="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false"/>
</body>
</InnerWidget>
<BoundsAttr x="2" y="341" width="1144" height="304"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="report1_c_c_c_c_c_c"/>
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
<WidgetName name="report1_c_c_c_c_c_c"/>
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
<Alpha alpha="1.0"/>
</Border>
<Background name="ColorBackground" color="-1"/>
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
<![CDATA[1143000,914400,990600,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[2743200,3810000,1341120,2743200,3810000,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" s="0">
<O>
<![CDATA[区域排名]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="0" s="1">
<PrivilegeControl/>
<Expand/>
</C>
<C c="2" r="0" s="1">
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="0" s="1">
<PrivilegeControl/>
<Expand/>
</C>
<C c="4" r="0" s="1">
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="1" s="0">
<O>
<![CDATA[区域]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand leftParentDefault="false" upParentDefault="false"/>
</C>
<C c="1" r="1" s="0">
<O>
<![CDATA[投资金额(亿元)]]></O>
<PrivilegeControl/>
<Expand leftParentDefault="false" upParentDefault="false"/>
</C>
<C c="2" r="1" s="2">
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="1" s="0">
<O>
<![CDATA[区域]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand leftParentDefault="false" upParentDefault="false"/>
</C>
<C c="4" r="1" s="0">
<O>
<![CDATA[承建金额(亿元)]]></O>
<PrivilegeControl/>
<Expand leftParentDefault="false" upParentDefault="false"/>
</C>
<C c="0" r="2" s="3">
<O t="DSColumn">
<Attributes dsName="ds5" columnName="area"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0" leftParentDefault="false"/>
</C>
<C c="1" r="2" s="3">
<O t="DSColumn">
<Attributes dsName="ds5" columnName="bid money"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0" leftParentDefault="false"/>
</C>
<C c="2" r="2">
<PrivilegeControl/>
<Expand leftParentDefault="false"/>
</C>
<C c="3" r="2" s="3">
<O t="DSColumn">
<Attributes dsName="ds5" columnName="area"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0" leftParentDefault="false"/>
</C>
<C c="4" r="2" s="3">
<O t="DSColumn">
<Attributes dsName="ds5" columnName="bidding money"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[len(E3)=0]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[0]]></O>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0" leftParentDefault="false"/>
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
<FRFont name="微软雅黑 Light" style="0" size="96"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style imageLayout="1">
<FRFont name="微软雅黑 Light" style="0" size="96"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="0" imageLayout="1" lineSpacing="5">
<FRFont name="微软雅黑 Light" style="0" size="80"/>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<isShared isshared="false"/>
<Refresh class="com.fr.plugin.reportRefresh.ReportExtraRefreshAttr" pluginID="com.fr.plugin.reportRefresh">
<Refresh state="0" interval="0.0" refreshArea="" customClass="false"/>
</Refresh>
<IM>
<![CDATA[m9BsB;e<O(2/:-.''>p?8paD'J6\oS&IV=&cp;([QDbop\cb<u=D=I5RV"R6N^dT:Lf1Z.0H
GtrdX]A\%>>$D29:J87:tdI;B[\6O;R.Yt3B,?R&WiU.($<@04E)@5'V<eRr9*t7n,;,3rVuT
_2jZ*7p\Uk<%fjDT2u`a/gAlb<!.Y;$s6ek(s3+-$d/dYNa;_</Xsc8C;U3E[I^`i^`l1A6Z
W2LH)n"kWmVf"AH@4"Fe(]A(0G:eYhb)PRKJ)u5Graj7@?379X^cbS1gbq)+qWdU`1Y%oBQDF
V19Y]A&[5HR1UdK%sFnZ'cB5m"\:hnRt#FCq9@3%)V>gLW/trHq=^p6^q#&KcZK]A]AqJ,$3Uk*
far:*4=Q,TOte)M;R6F0q60,7;e2s6f5RGm4'M&Ue$j18Q`Oq:i6go1Nq\":-MVT^1XHq>3*
odE5QBITk[6N'kb*IO<q#)mHSF$pRUca%%BP:5DlP94,q"(@A"O&XB?IEbVjCIc='J:.+7\Y
u:\'CWQ#Da9?*[rHe*G39<p_q!hn7\o>43]AsI$hstJZ-N1a"a'f)Ed7WP!b+K4&iT/8.U2j;
=!R`qn?sgo<t'.M%-LHfj3rg]Ad*F>75GrIVrrG?f6c*jS]AZD?=WQEo6]AUd$9-6hCF)VSgWih
/0_6h":i-0N39Np;hBku.!.:5jKPZSs;h-!jug39X[dH/#ojQ@?N!_E06j7TbG3cH-*(1H-;
WsK@5Mquk(r=%D)7"sA?At7aRZH56e0$g.))\bBC3&\GLc`spB.E^-5T%SCrpC*tK1Z$`e'3
;!tohKhU)iAs\lL(NBMk\K_B:96<3-kJCHJ>:=UIW-uFs;',)o:K=\Tlg0T%FHJef1cam7`j
j?b"<MOF9:.GI5[(#Wn=ob*i]AgQ!HR:0Tm&OKQ*PUp3qB<n*J6eUY,_8G[4k)XK%WS4[ssA_
]A)UqXT'^G_G;g1_(]A82P2HfI^pNl(QDGr2Tb3S-]At7sAm(cX,n9()cjlId%NtU^-$hk32.2T
\UoPr)75\dXR)*mlUXiM&s<(?7IZD<gs8!E>@`$J7/p2S;k_abS.'s1q.IC81i"h]A]AT(Oeu@
V(O3&_VD<HG?Fk2ncK1+GZnhJ;<`[I@Wf]A2H(f`/5e=f9f>Kmq[6>-AG!a<c;T'`L@eqO;*b
/5I@pP-M08>W^&+i<?k1QZ:*)YJTZRWYrh<1HLb[\SKi,u;1QEMulH'n1Uo?'(&A.\j@fbnp
-TISe<F8d1VZ/6RC@7D(1kA0<Q7mnq@PArPo2C(t:X\EeO54LY=[I7tpWde<jJ`Kpm49^ilD
T[eP]A-4ojW`jg[AU2ltTb$/dL&&)e;^HE`@)e*ahmTk(cV,n]Af"Q`CGuH?;8bkVUEb#c'ai(
b"0af"k2agXWJ%e*QbJQ2"RKkfbV-XPDI[BC,mA0K2lgnNZ@lbj;aDuJFE3<IIQ4,Y-9Jq,]A
oHn_jf^X:MeST4Z;ta_EnNU@cY4+0s5M`Z$lNAJ`eAnB86g%nc]A\al:ASf)A?,L0/OR'H[+Y
B9ZV3lNZ<j.JNMkQ<3Z1Mu0/?Xb;m>FdF9fGKT5]AcnU#HRH$fe]A%f-^19^Gkga5nA59)71bt
9<'&Za\-Cs?D1/m#OJQ'=1:+tBiVl,f7$drU.QSe,E4H_8^i>Jc/:3Fl(dP`"SfBgAPsiF)`
D_$c!3;ccE%^fV,oFl]A_ZA)I0j"m@m1N0%[nU7;emU*]A8mP""5+3f+"jsIdi#6tSdHcl[4!V
R_jFfPdR$/NgF0VV)Di)lD`A[lu>DIcFV8bj>G`V5oM[Y8,#d&nSgrh5CaSrkVqcAe5K#K-[
NuFuC,/S:44[(iSYI\hYP);$dGcW5T7aU,'I6GXe0#r,nASp9\QWUb>e0^h]Ak`!;5+s-e()d
(URLlQETWu`/G&*V8Mo15he-)@%C5if51LBdp=j^5u_(:r<%S/m-J-PPJ?$fWX5:qn,aA)3p
C\t_NV=DLtf^DBMpEI_tGFEU1.G(]AL/r2Q5"mjuJYC,'>Cj%jp2C2*hN_f/M03+<"&/DBALd
YB3L`Z#YPY/&^[fBXh]A=[W?o[/V"\5mCh5P"e2l)=+S/RQJZ]Ab\YfshT\T]A7S(W^=s^PY4'4
K46c,3E*hmP736&j@"TZeWV9\:OKLc4WQ;"2mBlkgKSEGP]A8WZkEhSQ"D8!SN``nCjdlqULc
A_(@!DOs]AbT3%s2dFnj^Cn/G\GfSB!2'jWCn!)fN"KM:;Z^erni^fNU[[dC@j2O]A#:_q7\\(
I78X-OakZjC)+iXVuQ+RpK@W(\#H2=j@6)rU<V>I=BMb_V5Nf]A>ag9HFaiB$Bc5`)m?9i+I;
)f[jZA&8HWuJ%I2dB%Lc$MEe'<Zt[EhlI2+p\:%k8Ig`tV8i]AUi`'KS"l:J3Gp4=-An(2#"/
$YP%^gpk'Fq"Hu^YKP9,d`SP2MGBKaSVOcZ!XX2^1eh"#WXUdO.F.&Uks<6KA2^/M]AK(/6_a
!,&._C-f5[*ApP#KL\BlH.C*j*bM/-3O-M<ac2&7sN0)5+"$tQ*H:R:p^E`2=mQf1geIM.^/
F+X2WdgB(q-iJ_up%R=T4XN8[%26lB*la`*XgaOUq+b5$k#_&]A?_b]A:M<17E58N)0'E:[D@R
p>/qQ/_I`O7Y5MTE/eUI7509JM/6k4!%L-Bg.GXeq9OMkp%XAb;&KGHccUACiX^l\*Iu6P^$
:l>]AX17nL!3n39/-51(j$\(Y+nB-mgoMCWO0.KPC?q(]A)ch_5WV8LDK/+P0l9)Y'>3Nc;IL(
hMki_4cKtb-<'(5&<:c@Z>Pq.*^p!]AS_"ep:O0q8,QV+bj0[766X&!=!\`H^]A?=Cjcc$Wr(r
)d!]ACUZ?3I.&iVj4''m$5::S-8^OR.1's.IXpV0M6oSYW3;aU%U=&;5dK8PhI5<-_UA#m00f
AE_P@S)Z%/Eop2nrX%WSRoDn_>?<pHLttthe_qEUGV"on7j)4h<!N"-bH'WU-.7&f;Ur/W==
kWS4A%2@)po`TD":Hec&Ln,G>V'^9jZK>KAe+`J.O00+)gTe0ra8laQO<d(n]A>;a!ZQIYTtf
q)96\*+>%!hR"6>u7E*]A8CCZ\X7?^enI8\0C[X=kR/@'e0$`*.@pA7Dsb?@-#`^pu,nG^:H_
*4juR^Pf%i10h7DD_KnEm6\@L8Cn0;R>a/QO=k1'`;;3%:8'u16JHLq$M?\C:;*o9G4OKPQX
+%>R'*R``ZM:dQ1'?Ptc3*hVZ.aZjSE@fG\EK&T2@S?r+o73&7JhB5=`3g,g@lj%:')-`g*q
_-.'co!GRO!3l?Hn8Au^1;=ne+Cj^c6Ha$.:LlS.94)DL9Oq'2SMembRsm&'p:SWZ:l]A@6,d
JUl]A(<L","OEUMnWL8l0Kd0<UuVOY`kib5cR;JM`Ns3WMqG.n'ZW,,K,?a(WhN7#_%bCYdKF
d(=.%:.`RmkhF.U#HK+Qg>nT$)#0MClhnbG,HU2YYgE#,#eC(T%@euSi57lkk.8a\u+I>Kt!
/W?oEu>o%qNmhj46[jGUhNP^5U*l2T5bNFatK`@r9A3dbJ1/JC_^cS)H'K8P8Kd"Qq`HLXCJ
`h)[.AF4lF)h\qrfjMY)nJ9?-.>OHM9&)*j9DcMEPn[*u&&d(T5jJ`='o('$-qm`Q9_UASig
nTM@"Jur"Vs&qe@Zi!`'p5Dlc[Nrm_;]AD&TrGaT8nkku+\8$KLJmhIA(VPWL0XgMOWKR7u-:
ODGn]A`m&)d/Dj!*@Ug=ln9eMHNckmc)jV#:NGm5HDK54XI=>ED\aONNop"9Kq-=bLOI\7(7\
2T47\>Ob2d4)\V+&$4@I]A$,.1Gn/7'?:0Z$$aJ7kd>d3RGNn7929pm?_d$0.]Aq/Ef,G/*bQ-
dcn`j8/K3L`DCkXERd#k+sGrphSA1mWH*"3<bf`0U7+3&K[4lQG:YMr5l=IYDU,3:S=QMINW
1mOb;oRZa>9G/g%8/W&M3j+d03Z1_N"Q8Jg++nanFB9V%St/X8$<9oSW<rSUEj@ce<CRk;#t
E:O"I<;'BrS[']A,aLf=e[s<mM,^Yt(UWA,=P^kE)-)FnrA;hkP(@:IGXG[l#WEm)$g(4+3.%
U6&U%dT;JVZQVcEK7Z9O:j.4fpe8Xn@$aG$56n,O$$GZ6Z!KU:"7_`;41^:<5Xq8BEY^L)3S
_d(+^2,g8K&9-ao_lY(H@&VYS_;dfPK`L<_F/U"1on$CrM.'!(I:P<iq3D%^PUL7JJ,(]AM@0
aEfUVa$jd7u\"eN6Gr0i?+5gVW><E//Fbefr<BoI>MomUo?hf:'=?!HkC/fCl:=jA>3W'ACW
UO64VR\f#d*pd<CC7Zau0I`OU`qWDq@(Ds"h;l3A-SZ#59"JdXec^m1aVnAoD#N]A$oF4jK]As
Uq"-VG?qbfoHYr\<[&8^mEPW>UeFNM$GQ$Z87d';Znu(BH:e)IdkQR"qY5hUYlf!IBtY5(I(
q73nV$"Phfl_B990!JT&*_SJ'N*-]Ad22lQZnu>s-G;0.gDB=2%U[X"SpHi"F4u>?if<4m_iQ
0!p-9,2F!n*je969,B6ToO3%[o462QW5**]ApQBua7P+N)/(6l@-F1frPYnGBo`8_4OU12:Xh
Jt7iKNOWeUW!CCg3;f>3H-77<44mSCeh<VIuKW"$fW)85>Fl1fKt"?809/i[hFV`/RhV/a^c
se9V]A'DjI+qC2bX)%=ocRanHOA?XT`N2B\icd%HH$Y*j"r:UXqH<Y'CV^JV8N=NE&f\^-(f+
H\$@OQ,;B0/E&CZ88e\pF\9";9an#C54XX;B$BD:Hi84BUV((h5&-8b;O@2JnP^RN8Yi]A"3X
K^/+VR8g-BXCSGf#N0=':?I=5]AVo:!jAu8[m$CnH=W,Whk0Tn^&ohmg5:h*B9Z!Xe@b%`/B`
4K%RoUoY4u61TQ]AZ*ks>!YsU\%4\l.<A1f;7FPF6k!pNOMUr?u:+s$mSIAmrA!]An4lCTiNab
)DlXH`$9(qB&"!-hBk1[8JTB^pZQ@e-lE"f9N1^\4'[0nI<->PO`Zh'RE0`>4El&_0a5fq#6
\L6,clfS84SZ5>W5#p4$$r'u]A=2[(Ws!F$2bAI^9d-ec/T^ToX3tW=\AB"gk'Q\W0R?2L@'S
b:@C>\U+0OOq2_/"Y0[n*R0[oHTN[B]A?<VpmZ3`nbjD?4\)J0m+?S5V=BR=g>6-o&>TNJsVb
l4e;+ib6rP`OU:(\ClfV:/S6Cn,n1c2^Vd]AF!L_'s<ihWX9Vb`flh?]A7lBcFVT33S:&#Q#!\
R0F*Xi;=&\rB(G[lehe>QC\P1(^;(0Md.p"N3Q@MKnq;$gK8cp)`\dt.m]Aj%KMPaL)Lh$hWL
0TOlBT\)><.T<<<(CtOiQ3^0j<.>RoC7P$B<%M@Odo*t9A#U1qX2=#>uQO,Ct:Bf003J:T`0
Ns5HWY:b$Zk7<T6Q2T"\)$MjWXK7(@*H#FM)N^"0CRk`Hl$8E:aAKVc36"gA7&(?KmKI05"U
\XO7Q7m<o2$m^pdqTtLrPT_1IEnMnk?salZHm*ku.#N)T)(nB"+]AAVNars$7[i<rgE%1n^Yl
YO*/7E*0E8]Am#S9=uYW$1'SfuQq*CSFpm\Y[1s_!Y)G]AYL<j%CJ,DNVnQg.Z!6#mQ7k@Jhqa
^`dEhIRlFm+8`?_`=q4S,#r);U>.%(AoMA]A!24ffcK&%.=hd'b=_ir!<UN[-,Ft%ZN>;$Z(@
dts#bC'6T`2Hc9faOFniDN$ork@c67)Vp=j!mOK`<d\oYo0L'JZEp:h.gMUdJ*kWEOO+eHX<
R-aqX-X]As":G(>bR:0/4eQaE3;?-,R7UG&-!B&'?VZro0paEY>.U='YO^H0PGYQ*O=LE&RA>
&ALo]AQrfr#It7=R7BCZ9!C1;-4n=G-KjO/i!uLEt!1@uK/M0*>E8qq%V_^pH1JS-rNLkY409
I9"C,-1eY:NesnL]Asa(XEf6;P*qj"DOfOL&uSAIeA#8rIBm-9-8:?>rVO8Z1Sn=3,OsU0j1r
BB^IYB+k&:h8)incY0E[$+L[*"rmX+'^`:FC2."-N@Mu$bZCYd^'%Y5;pc.I#p\Tj&/0s&6K
M.0ug^Ypu684elTFgY7NO-_8Bp0Ib3=:$qbD$Q@1McSH40&'TdFE%i]A7J!:(KqR)%DUs=C;N
>l]A.qn*Z'%QNH7/\9.t1SoEkuDa*TV@e$j<eL)Dsg/i%P$E<9m^[9)*23p!;C@eSJc^VNi:c
qU>3l?YF?;n=>.PgC_!R4ZegJXXh9E#nC6gf%Ffkr*GflGF?D'&Lq]A^_a&piW]Ar.T<1^./XW
_;;j/oN2hgTW%D?c"I`'VP;qR;uFLhh"BY)j\3)%eL;!bT*3b6QA`UjmV`D7$p.*WYoUD>TX
-+^?q;)&`MmHCVAXDl+X,\Je<n6@-B<REEUcKcV/&P[O=3fi*s:g+Y!Ff)?Y1?90GsC+^$#4
i"<^%(`WM`[:`Y>tOhc3S]A,mp:ahIc!fL?ImqqahBPl'.,2&14hos%Y$k)q,(V$]AVNiHq4o/
1[dkcGn&[/KJgrtFT4tRCBUIn[b&>jMPWYYNApf2<F1c+VM`d7O4p]ARYVo4'AeUV!:^b4.n?
FjZ<$aAK.ga`P%kR3WLqf'<.)Y:INAYq:J;)S_J^8i8qZ)-RF&+@2":U,kR;@O``uI;GPOrC
^C<XTO*WB;A*8bYZ&Qju;[,V<ISX)./,UB%me!mOe<9GPt[T3ZB3%MPGoE$W\Vt\nE9lHA>b
/+BM1-=?>,l4]A*E!E+u`*l\cHo)["p9O!'i-A)23!\LiXfi^HLI[=_fc$>)OfojJqEP@J1=)
Ci0ep%b"ed`S-9o3t*8N/=re"T)`Uh9rm`nI>N[G]AutsS4-^OME:c9OZ6XH;p;Z1$b0DDjgX
cC=#!X>fOj!k%6a+MRX?.?Q-;$7D^`XV"j1rD8XK(/[QC`L:db<[V#F5"LW6Q3L+q2/mPWPK
[:a*EPf_S+oe*Zkf?emBf=jQYF$F`;4!.;$*.+\G>oT<bp>1UWjC$(O_rHo("l&^_';&X3?8
;/km*Y367Gh!&Tu%4Kn]A),RSHidj0m-pngV5YLI*@Y_ASe.0f1QmQ5V4-6LTW8P\7)-[_dU@
Za.@N'/mM!iTJGVAF]AY8,1WL*d(>h^!FfFFRP3-g--DM\_Q%uJATWU@NO`Q&'HA<P!bjqoN4
_YaX*_NA:;R,VYqp;n^d-Ad`5tc*C&m]A_5H!d6]A=N,pQj(DZRK-oWFI931a,eS_Xf)]A,D:sR
G8$&\V1*t89;5u`p%;OGj=4NMI#LC;HUiDZd>ImK.=SWo*q_OsehV</A29P$/5XLtPe%ss@6
s6oT18]AK<>]A":L-YWa*IH_=%VT[%^2%nt]AepfG5OJRt`pU0+RF7NYV0Uq\91fj9*f2n2]A['I
a^d?EE..s6PE/kVdNOhBR>5(N";$5h'RY$,T)/GJ%EroWW,W!\8S26_B87n_n)%:?)RaIge[
\e(]AA#V#Ff_N5\g:q*!6@GENdB\Q'W3Y^?KK^'sML%0kRDY&_BB_@8PA#A$k#9s6d`#!JFGG
PF<cm<PDkkV*SA!"<AXTkW`-cB_<q$+Rjn5?fFVM]A!(khP%Z)4?a`;TDjgYmStp+mW.s2q!o
-VLF7!'+&A[]A,Q:V;]AHaT9L=I]AsVNMOSo=O47W,TXqf8q5`A,Nc6k]A#it?u%LJlJEdi)c@3/
,7Aq+rnRD<fM@=cXW`+KhFQNS@Mm:W0]A++VUE`RkN3Qtm]Ao1X4n.kS#[6?2g?/rp6F+*K@@H
uH_Zp/_%\'*FH*0Bdn3cYqWoDYIGU$Ma:ErG%>ORpm0K"c$.\/o^PW!Rm_-K5ttb2/L,B]AOf
qQVk@X0YWYgG:h(?>8O0Uo\_W92&fCEVr-7lnE@4*RnG55,a\h+Q_Kg#A_,FO"rP6@VkGB+Z
D;@]A`nR7j,Q#;Q_DJs>R6!pgrM'+W/=Ib-c8pTu6e?ZOI)r^?#%cN<4#(1]AJ9gD$l?CTXNfO
j3+"fgHK7%XT#^5J2k41.GPla3^C4dR9R_q[%l[qNeL.f%"=bdAT3n,>TOB%$IJ4-mPf0pI;
.a^<^[iG@<co;3@m`=9]A&jL-7;aaHeDCs#j[+&p'YL`-1>-"@OjK`Xd,mR'Yn8Yi^30>as2b
7Tff>4b<%ktag#<.bWZMU=AB[(7E]A3A$"V]A>>(5DZ^K`&RKm@6,@jSi4bcoHJXcaC:)a6qPm
T"TC+P49H0!2$Eq$I2ni^mkB(;230`oSon2fQ%V5f'ADlD6Y58pEF?l@([jV1(Oj"!c,OE@D
_V@`XC#7i.gm^7kHHgX(jIj*TpDO1EVJl#]A9$1C;+4Gm%HT\49)itr!H%0WcGB55)SkIu@P)
sHJ3I<J&YS4?iB@=G+`.)[5KV`4SmEkq0CF%[s)1!I?pAT;Q0["Gi@t0JAm6E@aGqjn&k&Z6
U(h:eK>,;$4EaeOXJPoEFOaU"2'MF?fId]A0dW0.gmWbH4YZsFK[%SLgrB0Hb7<3"54l"Eo5V
d!\1QlnVTpU7:2EiZ&0Fd%[Xo6bN0Qp[b>1/l:h8,Xp&O$=[V'W<F7Lla_4VL;F/VmiP#Oc>
)atT`Ec0dq(AhY*3+q"\?]Atrp\PL7S]AN)eGc6=SAuh0h'NJVlf"edOQImC:e<mq;Bql!5FKO
SP"l<?.4#Y!Z"CFRgju[]A]Au]A;I:Q$ESi?f!7.^h$,_R)e#W<9+YHsm1>UWM=G*lmMWPL_D09
gZOo*P4V+V@CES+aIBCp+OYJ.I]A]A\f::Kfm5,KUg^q5G[Cr$2MXecHa<R6rr'5f]AjoGV_pL$
54/N%Zt?Of_T3pkPTE:J\u2^2@DH6*Oo53V22aauH5HY`&C^!@iKC%he9Cr>a5)8VEThV#\E
Kp#dH+e'mX1+6BFhk,Z!^E;;]A03)+b[Pj+mbm@+p3lc00`Z.5]A)BW(_\C-W=NF=m/*(As(/%
/P>fi?<o3(T=0t]A!@uqQnZ`V*gV*#4)0[K*D5]Aub/9j:U^+l#4`>Or9h_R\2XK*%.G1;XdY2
>&!'Od_8CckSdn^$,Hhah,?@NM2=9T6M5p`17RM_!2s.288DInCnC\%-QXk0-raA%:en*`&D
^j',Y=&-]AEgCE*uBir,?0Yl0i:u6g$;iLoLaT3]A&&ei6fLeqd^RJND5FshVYiX$V;*BGN^E*
NIAD%n6PBo^XL>hq^pdLYq<i+?RT?<CFV5%4!W;7lYL3J\@mY/p:RH1)@jn=oh*dpCVNQ!5s
'uB<4OboB@oc1hh8N0M9)Gb`XV!@4N,&9_*;kN^?i8M5HWW8^A~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false"/>
</InnerWidget>
<BoundsAttr x="504" y="0" width="451" height="280"/>
</Widget>
<body class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="report1"/>
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
<isShared isshared="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false"/>
</body>
</InnerWidget>
<BoundsAttr x="608" y="2" width="538" height="332"/>
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
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="宋体" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Background name="ColorBackground" color="-1"/>
<Alpha alpha="0.5"/>
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
<![CDATA[新建图表标题]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="微软雅黑" style="0" size="88"/>
</Attr>
</TextAttr>
<TitleVisible value="false" position="0"/>
</Title>
<Plot class="com.fr.chart.chartattr.MapPlot">
<MapPlot>
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
<FRFont name="宋体" style="0" size="72"/>
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
<newattr201212 mapName="中国" isSvgMap="true" mapType="Map_Normal" isHeatMap="true" heatIndex="0"/>
<MapHotAreaColor>
<MC_Attr minValue="500.0" maxValue="500.0" useType="0" areaNumber="5" mainColor="-14374913"/>
<ColorList>
<AreaColor>
<AC_Attr minValue="=500" maxValue="=500" color="-14374913"/>
</AreaColor>
<AreaColor>
<AC_Attr minValue="=500" maxValue="=500" color="-11486721"/>
</AreaColor>
<AreaColor>
<AC_Attr minValue="=500" maxValue="=500" color="-8598785"/>
</AreaColor>
<AreaColor>
<AC_Attr minValue="=500" maxValue="=500" color="-5776129"/>
</AreaColor>
<AreaColor>
<AC_Attr minValue="=500" maxValue="=500" color="-2888193"/>
</AreaColor>
</ColorList>
</MapHotAreaColor>
<BubblePlot>
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
<RectanglePlotAttr interactiveAxisTooltip="false"/>
<xAxis>
<ValueAxis class="com.fr.chart.chartattr.ValueAxis">
<ValueAxisAttr201108 alignZeroValue="false"/>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor mainGridColor="-4144960" lineColor="-5197648"/>
<AxisPosition value="3"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0"/>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
</ValueAxis>
</xAxis>
<yAxis>
<ValueAxis class="com.fr.chart.chartattr.ValueAxis">
<ValueAxisAttr201108 alignZeroValue="false"/>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor mainGridColor="-4144960" lineColor="-5197648"/>
<AxisPosition value="2"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0"/>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
</ValueAxis>
</yAxis>
<BubblePlotAttr bubbleSize="50.0" bubbleType="1" isNegative="true"/>
</BubblePlot>
<Plot>
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
<PieAttr subType="1" smallPercent="0.05"/>
</Plot>
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
<RectanglePlotAttr interactiveAxisTooltip="false"/>
<xAxis>
<CategoryAxis class="com.fr.chart.chartattr.CategoryAxis">
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="0"/>
<newLineColor mainGridColor="-4144960" lineColor="-5197648"/>
<AxisPosition value="3"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0"/>
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
<AxisPosition value="2"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0"/>
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
<Attr alignText="0"/>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
</ValueAxis>
</secondAxis>
<CateAttr isStacked="false"/>
<BarAttr isHorizontal="false" overlap="-0.25" interval="1.0"/>
<Bar2DAttr isSimulation3D="false"/>
</CategoryPlot>
</MapPlot>
</Plot>
<ChartDefinition>
<MapSingleLayerTableDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[ds1]]></Name>
</TableData>
<AreaName areaName="省份"/>
<DefinitionList>
<SeriesDefinition>
<SeriesName>
<O>
<![CDATA[项目数量]]></O>
</SeriesName>
<SeriesValue>
<O>
<![CDATA[项目数量]]></O>
</SeriesValue>
</SeriesDefinition>
</DefinitionList>
<DefinitionList>
<SeriesDefinition>
<SeriesName>
<O>
<![CDATA[交易金额(亿元)]]></O>
</SeriesName>
<SeriesValue>
<O>
<![CDATA[投资金额]]></O>
</SeriesValue>
</SeriesDefinition>
</DefinitionList>
</MapSingleLayerTableDefinition>
</ChartDefinition>
</Chart>
</Chart>
</InnerWidget>
<BoundsAttr x="0" y="0" width="504" height="280"/>
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
<Plot class="com.fr.chart.chartattr.MapPlot">
<MapPlot>
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
<newattr201212 mapName="中国" isSvgMap="true" mapType="Map_Normal" isHeatMap="true" heatIndex="0"/>
<MapHotAreaColor>
<MC_Attr minValue="0.0" maxValue="0.0" useType="0" areaNumber="5" mainColor="-14374913"/>
<ColorList>
<AreaColor>
<AC_Attr minValue="=0" maxValue="=0" color="-14374913"/>
</AreaColor>
<AreaColor>
<AC_Attr minValue="=0" maxValue="=0" color="-11486721"/>
</AreaColor>
<AreaColor>
<AC_Attr minValue="=0" maxValue="=0" color="-8598785"/>
</AreaColor>
<AreaColor>
<AC_Attr minValue="=0" maxValue="=0" color="-5776129"/>
</AreaColor>
<AreaColor>
<AC_Attr minValue="=0" maxValue="=0" color="-2888193"/>
</AreaColor>
</ColorList>
</MapHotAreaColor>
<BubblePlot>
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
<RectanglePlotAttr interactiveAxisTooltip="false"/>
<xAxis>
<ValueAxis class="com.fr.chart.chartattr.ValueAxis">
<ValueAxisAttr201108 alignZeroValue="false"/>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor mainGridColor="-4144960" lineColor="-5197648"/>
<AxisPosition value="3"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0"/>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
</ValueAxis>
</xAxis>
<yAxis>
<ValueAxis class="com.fr.chart.chartattr.ValueAxis">
<ValueAxisAttr201108 alignZeroValue="false"/>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor mainGridColor="-4144960" lineColor="-5197648"/>
<AxisPosition value="2"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0"/>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
</ValueAxis>
</yAxis>
<BubblePlotAttr bubbleSize="50.0" bubbleType="1" isNegative="true"/>
</BubblePlot>
<Plot>
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
<PieAttr subType="1" smallPercent="0.05"/>
</Plot>
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
<RectanglePlotAttr interactiveAxisTooltip="false"/>
<xAxis>
<CategoryAxis class="com.fr.chart.chartattr.CategoryAxis">
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="0"/>
<newLineColor mainGridColor="-4144960" lineColor="-5197648"/>
<AxisPosition value="3"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0"/>
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
<AxisPosition value="2"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0"/>
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
<Attr alignText="0"/>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
</ValueAxis>
</secondAxis>
<CateAttr isStacked="false"/>
<BarAttr isHorizontal="false" overlap="-0.25" interval="1.0"/>
<Bar2DAttr isSimulation3D="false"/>
</CategoryPlot>
</MapPlot>
</Plot>
<ChartDefinition>
<MapSingleLayerTableDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[ds1]]></Name>
</TableData>
<AreaName areaName="省份"/>
<DefinitionList>
<SeriesDefinition>
<SeriesName>
<O>
<![CDATA[项目数量]]></O>
</SeriesName>
<SeriesValue>
<O>
<![CDATA[项目数量]]></O>
</SeriesValue>
</SeriesDefinition>
</DefinitionList>
<DefinitionList>
<SeriesDefinition>
<SeriesName>
<O>
<![CDATA[交易金额(亿元)]]></O>
</SeriesName>
<SeriesValue>
<O>
<![CDATA[投资金额]]></O>
</SeriesValue>
</SeriesDefinition>
</DefinitionList>
</MapSingleLayerTableDefinition>
</ChartDefinition>
</Chart>
</Chart>
</body>
</InnerWidget>
<BoundsAttr x="2" y="2" width="600" height="332"/>
</Widget>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="chart0_c_c"/>
<Widget widgetName="report1_c_c_c_c_c_c"/>
<Widget widgetName="report0_c_c"/>
</MobileWidgetList>
<WidgetScalingAttr compState="0"/>
<DesignResolution absoluteResolutionScaleW="1920" absoluteResolutionScaleH="1080"/>
<AppRelayout appRelayout="true"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="960" height="540"/>
</Widget>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="body"/>
</MobileWidgetList>
<WidgetZoomAttr compState="0"/>
<AppRelayout appRelayout="true"/>
<Size width="960" height="540"/>
<ResolutionScalingAttr percent="1.2"/>
<BodyLayoutType type="1"/>
</Center>
</Layout>
<DesignerVersion DesignerVersion="JAA"/>
<PreviewType PreviewType="0"/>
<TemplateID TemplateID="4041b8cd-ca07-4d16-888e-7c93da45c322"/>
<TemplateIdAttMark class="com.fr.base.iofileattr.TemplateIdAttrMark">
<TemplateIdAttMark TemplateId="5e794267-cea9-4636-9882-dd6b3747aa64"/>
</TemplateIdAttMark>
</Form>
