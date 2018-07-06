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
<![CDATA[JDBC]]></DatabaseName>
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
			) / 10000
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
<![CDATA[JDBC]]></DatabaseName>
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
					) / 10000
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
<![CDATA[JDBC]]></DatabaseName>
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
					) / 10000
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
					) / 10000
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
				) / 10000
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
				) / 10000
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
<![CDATA[JDBC]]></DatabaseName>
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
<BoundsAttr x="654" y="3" width="68" height="26"/>
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
<BoundsAttr x="247" y="6" width="80" height="21"/>
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
<BoundsAttr x="167" y="6" width="80" height="21"/>
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
<BoundsAttr x="571" y="6" width="80" height="21"/>
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
<BoundsAttr x="491" y="6" width="80" height="21"/>
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
<BoundsAttr x="409" y="6" width="80" height="21"/>
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
<BoundsAttr x="329" y="6" width="80" height="21"/>
</Widget>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="Search"/>
<Widget widgetName="year"/>
<Widget widgetName="startmonth"/>
<Widget widgetName="lastmonth"/>
<Widget widgetName="abs"/>
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
<FRFont name="宋体" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Background name="ColorBackground" color="-13222047"/>
<Alpha alpha="1.0"/>
</Border>
<Background name="ColorBackground" color="-13222047"/>
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
<FRFont name="微软雅黑 Light" style="0" size="96" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="2" imageLayout="1">
<FRFont name="微软雅黑 Light" style="0" size="96" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="0" textStyle="1" imageLayout="1" lineSpacing="5">
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="2" textStyle="1" imageLayout="1" lineSpacing="5">
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m9:$!'A'[a7&+5VdagU6dMc<XL#*T$'FXa_KPF_`[sG<eY=29^U14'gMooCi8Up,5K$daj'G
Ge,7I.9Wd@p[KXVFZ]A!_#OH(_ANtL]AN[#^WF\]A!u=1iP:e?Z[VN]Ag/HO1c3ToaIJ,@uITDWc
h5N[tF4*`B/+QMV_cYIGDa@Ib30XJcX!e2@C"7@DT]A9[`G^%tKOqRtV*SVO5KA_]A<7[;kq,h
6Hf^F)5?_r[ZZQZVqX.?%-d!45m.\O8R2pI+J%PRsUVX#JQ\%h>Q#lc$>g)<@RslbJ`:"N6R
)VV4LI@U,E^f_=)1;$hpigA#WuXQY:1]Aq8is6ETVF[1;5ttJ`:W^<E=1+nU90V=nWt%M;i84
Q*f-Y15jrs04[$2cB^>RIV.3:=$.<X?$lXr>0S`:nohsFb?l\4Q/637gq(+Co`_U_FgBVd_k
GaS@Un]AB>kNrq;8IJ.>M'l(1U7sOD'*'P25Vj=0p:F#Ek>?hQK#rE%DZ+,$0aB,EQ,,amkpu
Qb$/%^=k.tnpO@noAM`/!O(s9hf:S>-49Bhg0u!)p&qcg62fmi8.P477L]A4Md8p%kN\\\XXq
s8D\3s.@Y&7o+a0iW698H`C#?0aUl_]AVjU%crlIrC(F.\jP>1-E6$]AU\8paM&pJC[@=7Tkcs
-:T*05R.fIp]Ao27\FRo.<([@&Z,aM:EMno/GLb[P*;P(j-KFalcN>:\Cl/L?38!_XbR%qu.Q
>^`?]AQfqFHViA/>X.jAqMekZaYM=F!W$_E?Pf(La[5-\(V49jo.FG5/h=DfIS'1LZ]AG/=e8X
+uR%S+,l)\]A`9OQeKq12DrRb0u`$XXR_R/]Ab^f+p^;7ZKc9qFOfFUc&L_B<Tf]AFO1D&OcE#N
LK/Ln!!hM<g'f'oX)0t"'S4%2Iq$t0ae:+D-Lt9gO6r,'i%n64u:g0dn=NT12'7l\mfNG:]Af
"LGa6gj6'=VVd?S7Qn40oVQEo[OC/r48<#"t]AW>"Zf"b.,qc0[;Y=mZ$aC!l/0S+k8(FP0I[
73H',6WEek*0513>?13hA$0\]Ai#Q:jcQ[oa4r3e"ag?r&cT%&Qec\b4bU?OZ8<1]AJfAou@iL
m5PSl2bV$;]Ar0]Ag2C+dqNi%.fkSU(d$gbHg=0^`O4Y[?4q&eE3]A]A&=:kWS*qGa]A6HN`UZI9U
N")p2-u+Pt$p<1eR]A1?!m[lnk<2QPL"emXN1#.bra<m\A7mNm]A&-;1fG*->Vgf&D2Do@JI:e
qe9Qg39kbAc[Yn8\b0`!6:F(+&?JLug`VZIC44maQl*Dq\!T9=@!J'&`C_-R?")\ja#Ualq$
9T-p@:Dk9R-EiTp&SN7:+L3cY'gqqkOG:]AL(g;R8R=h+MIaIg\#9gn<ja.Wr/g8hpK;?S5,h
556bf'"r_SJ2#l3[gNCCP92)e_ap`?[H#UQIr.4*^O%\C6h)bdAJ=7)Ub]AK7*Y7@8)!c_=AP
gnR=bRkN&O0[<qF4CVmQp>Lgf:TqD+0?`CXrY]AOo25H2+lWG_T`7i3-WGk(s;=(as0[+6AXX
YU#%kWU/$RgD>9tqoi]A)2G"ej9K)Hlnqp@\<9s>nAY?r>M3/O7WFUU=WOAB6snK:[oB$BOB_
$p6g=<j,3'<NP0"\%kuYkI#6k"j[F9$IU_RTXM?u_Xi5C_S?daoj<[Ooj,3l(gB:`bj[f!P\
uZ%h8GJ@nPiDdQj@2Fjr0aZmHQKF0XX2N[oTgN*#0p]A9&Kl%mQ6L]Aud`Yo+U(7YY)[(DJ;Ek
g>7TQ/dN/1E%aQIEHJi.FCh`Wq5RnH3urd"p\=2\o,%jlE9F#>qh[%KGi71=7j)0ab<HB$TS
bLAE:\7aaTY#ZCr;S0J0&NAp6q'FW(NA+TtdkP&PFs3GW6mqk3%s$:B_iU_3'kfJf2J,Q0FG
ike0jR1*@]AQ>sF>n+#J&Jph'A+1*=]Ap>#arR+MF2nt<OrnD]A>NH"1:2oL$#"UE+Z9=pSVfj'
d8YC_fLQ%/CTBtar5R^r1,@g-3]A=Y]A@OO\L`WG*ZNX\856`"o8[K.(rBcWCf)F)&d!H02>$Q
e9@c60#P4-/iWS)[8H.NQ0Z!mH,jY6DsK:f+;NF\PuI&9i3#tp,Vr<(08DN0P")2PZ<rbE'&
oOFTg9W?e!tdM&.`0ku"9K4kg`g,kZ"s;3)bTLgS>FecEOtq/j\]AN*'_r:S'D&#4H-I@a9k0
;JGm^#_QW[':[:m#Y\9Sp_W)k7XXr3WXh,+W\_-9.#@Rc+df^AlWjX+7g6[2DlG"YYK7tJ+c
9[WC6Q]A,;s.)D:jPCM$PqC';Eqc2Jdo^\pVXQ,Q'9&QX0:JC3s.A5pO9d_GgH*91o^;ZGki.
2$.t!nIO=dIU-@a?CIpcNHM/E<4RV>$ZP@nYV]AnPaH;hFjg83-^B,d#I*mr>rWAj!b9BC1SO
e-Uq@8?XJr96<d9?'C*I21K5#]AQZdoX!-39b4[&rEJg/r@9OWDf$tofLLT2nta2E_+M^<;+M
_J',VrJ^&=-YiaOu'H:3<`<bh[)0CJQR5P(4CoX76P1j4V(S0MI&Yt4J2o1q4HDk,5=nu.AD
J!m"F3:I"O,`F'&F56V<E/N]A"RkIGBeQ"cl[uGsIl@KW'oRZa.\I+eJRaCa0mJ?u3;[R2E^R
DF(;9N)4po!9L8qY)NLP`4BDX%Qdh1A<(Uc-)bR1n1t&n/d=%"&]A@aSBu]Ai]AFB4J608h`n0)
h`738j_\#'s^K%Li0f!Dn%H&i=^nlW.V-r_^6+m>QU`Fu5lSCU,L-$N'ENTo?557Qma@C!0V
r2g_OUM9+nj3VJ>s.DM)?sLN,nBSZO"+Z)$8j'Rd^YILF<_hPh=9-q[U*HDA8-]AHPr=G&h?0
Rj>CjTQl=j9+prSdBAjbYk^m0o;Me>$3/X=VXJT9-$+O+.[%lH<u;SlIq[gG"^2_9&e4pa`:
OI--s4M$B8FZLk('TAd&;*3\u8L?K56JE"W"'ZK##KF9m#Xe=G^R98<;n'.gF]ADV:&;ug7O8
]AkbDGg/aJ^_!RXE7Z'n67@)Z-s21C=7Q379*>&fAI";PhAM:L74$hLj^G.6'QaRAP#k%i9Z3
q/1[*7QPNE0e>t#K3gqi0=k'n^?hcsG6P0Os&3V(GR,ui=%Lnp.$"$4O+"I8@:YiMp&_le:/
P5&YL51R7'fUG1O[tp$p[:Puj))k""'@!,1!s$R^Bchfb&:5#>sM+<kWF2D_mo/q`db4YBO)
,?cr)&9q`bX)W5L#8Cm^Ilbt=UPZ'#129"jdq=HISg422o;Sb<YUG'=1aUsW@lIP__*+:>u#
Q7gb"?9i-Wj!`fAD36XjUN0B4%IsgdqMu)I:jd"[/I`Kh^K*S+4qK:JKLfRd0qm[-@cj'QVe
Ik)\EQ:#3Y58NYUUj<J8%ca5YDIH/HIAa("4g;NGf%H`Y[+I5?eO@M='q0BVUYTQI>6#X/`H
>iaY?@=Mq%#/150c9^72[IX<5om<LN=Xh@S"&%j',OZ.M_\XYA8"HbWMJTA\O5U6/X"STiM(
^P2^*#unV2ec>s=0RQb8&*Pn90DP3LLP:tY>et1-CL,@NXgN0IZO>:K2"=[XFtYbSIqkuMo;
';i:NV.Q[CCi+$$$F9f(sofUH2I%2GXU0N'J9]ADBfX2/rUoAr5N#B\o!>I1djG(<d*I\EY/&
s.F?-%]Au^J=f%6P*(`n1i`XA&%ook=4uIO7U\h(,9[.b\LIES3MLrRDPaa77d3<JLHm9pMiU
\'A0aYddFco'^,WNokd/,(Z3fB5aCcYrC_cRUo!b(Ml9>I\aFmkI%0#Bs#'#\e#6^n9Gq"Pi
IFqlY.Im\AZ0W$TUPK;$aaW2NT#4<nW`:\J698JlNPY2Jb0Z=NBfU,<dCk8AjN^SHZ6E"Z2<
<]A3L4V`0B$J*QIkSujL+D/uW!Pi]A[@,tkA&UFp&fW+Q1<4RB8c)KK.lJdPVS:`J8-;m:X7dP
!arX-1()EuTpI8b$A`F).#HW95734UsgU<^%o9^=+J60*G(\t1WSoG9Q#Ma6jpYdMdHO\/<9
V=8HuXeMS=,$7=pE'PDKJB2r!E7JtVYVNfp#pLpGX.:^kk*RikGhKWaSKW+)W9',.8r^)Adt
7#+1(P-ScZGH"l$>f5Ah!s97=l+]A/>(BIRel('k2)c#H^.Qm5u6pt$HYnoI32_/$c4tnp2tr
mVGjT3J#;)6=(/GP*XI@'7uihM9qe9L#1jF'F^"`CR[,)r(@qf?Gm,P'2H#mGBIaj+V-A>1,
cA8tl;%kIX<A?^i`R)Vnk$@$/IZ',TqQE,>H[H]Ajj;QrZuAT.XM)pEo=lqIr'b;Q#ib5nqOM
([5g+:;'C=XFcu\Nl+I^]AQYM<SAM[OABrU_Xf(k#t2aKVkCMX5'Z:fd#?BI>fbh&"dY'R*H@
5k.]AfO(Bs9lK:7&!Cg&7EC*?&od[J'l=qHi?B.PrOm3S*UB_4ZOY+EJTj23"2;G_[Zu<J;,D
h8cC9.ME=,eTFiIXL?i:gd!m,+Sl5u^_@)j\<d_H3*cgR4@B+(02H"O"UpS<Ot/0b!q)GeJY
XOcidC(@ItN+W3Gu?QQSP!9AffL8*d%gh):cC;:&_A,\E\%\#"ccnTDfi&'a$bWCC@f3G3!;
mS[lWD"84&=%;EG3>lm<?ZFSjU,#WM1!Mg$gf[!Vs%1j/$)#eXF$2KC=ZMQ'__QY<O%i4q2o
M<H]A]AFuXB=V\N*41I5DK[3"rL2"b8Bk;>3<tOKbag*r@>:79"H&Yi1'3$.JQW7Qf]AmLY$pZd
4bY]A9>(7UE&qkC0W;FLtdF-U3;g<nXl:*SB:_2EYNj9QqiTWo++uM(imSFDNi?n2iSH-TpY"
S%HX%<i6NS28"-,$:^RCJ>EX^AVn#jc#6'*pi['f-p-Wsi$[cfB`b,!&!;;\/*s3%fti@$ta
CeP/XL5T0[@JaqV7(b6>sP7S>JMc6%%+B<M2);8unm`T%ApW&NVU1^WQ"Os8$g-U0g0/Hqr(
d3YeN/_!M7tqZ6,#^bm<XTpTGE%tP%'QAT?-7O=(3AKV/JlT)78E.=:-&@tgtW4KLbUub]Aui
maU%A+W@W^<8In@ueegu-9*n";cD;`puhF`;DNZ*7+<BYbZ(h5p,@J8SD@?*g[6`htmh-pYf
JsSi(!ZBH]AApXA&B7U]A%cgsETDJ`1d!&>TADWmdBJ>lLXiEfU,m@Xp!q/X1/SAL+VLc[WP[i
TYKH<]A!VF0rH[>"G6;?M?Mdo#%*-mn'a+Ykf)bDKL^Zg51?o'BgiC&5YM#;TVRN4V*^?1JK7
UTha'b0a!SuU:%O,da@#AnkYK@3iPlApB>!D!D4G"njq"hJ\]A9\?I/\Z1O$mGls]AJ]A6]Afo2,
q=P&)D&aK70tP`3VbdXG8aWXL"8ZC0ZR:%JAfKa2GpX=,TL8cI#]A1Ej/64MH*LUDCc_[@Ijq
(!as1BG5JdLaG&b%^3,$uirP>CY?;_GaGZYX"2#i<i;+\uGJ;kH=*7^dt$A9>bD*@qSP^%iW
5k?>T-U0.m9lB+DDnke'rl[n@hJ%mmk0*C2CJL^rDRd"136O&D`R/J%N,tS\CO+mT;bHpUcX
!?ioFo!J56jHP+jf3*<q&5rHuNughH)++pLbn&O5KEpO">F7]Ap90o?Oo_:!8&Uj(ishLDG*u
=.^[=_Qej]A3B?tcQ7U=Hi%(r$Hhusu>pM-?k5h-%DZEd@;2td"$Hh#\drpDB!"HfKDBA[N:D
lsqm?o?a#:D^mf,VkgQ;F\TWYVE7Enp"h:.)JfV%m1q%B[.7:qFm@R<.kaZ8n\P[W%^kdI>_
Pr\JMPeE&_P"gD$L_r>k21J("T-.M$6/!&EL,`5Vh0Q+;\!9)C!'4J>qP()ru['Q&;rk?G!]A
KUFr2i72r,!5&-<<s([=DI(92o$t\>?Li7>M^a(m^Jn\nkT-'h0fahCJ<)me3>W]AOU#UWJ-q
GlOe!RJ)SWPD+U^F3.&9Lg0DmM)H3<9A1*U.$4oTkUA,Vmr'8j$-MP%W#6U:+BU]AtAhI9<]AQ
%1IOccgFgNJWY.<Q*E+i$L1bhk/D\$=6'%i0C4FrI?OcW5J-tH1q>'8egpXA0DE0tGnpBCo+
h@bNF;RmD^1.MS7lH@?hV^ukCr[`VZ#4D;L5s1XYDRo3g8J/J_2Oh7&Nf2>O8Of_RmRqdi3<
Kb0qh3K-['9`2XTiG(X'cdU%FJN4/FKVgoGuJ6$N>WZ91HJH9jZ[9&,cicg/NbR-<;3Y]AFoH
"u8<JS;&NaOi.]AoZ&Tf3Y;@)fg@ft?K8cLMl_^T=4H%o-+_oIeodMl4)$1b`6r\U.`h*QEZg
@JNZ70.p]A[)r\Mh&!VYQ*Xjmq+6Mkl1Y~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
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
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</body>
</InnerWidget>
<BoundsAttr x="3" y="329" width="1147" height="320"/>
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
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$$$==0]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.RowHeightHighlightAction"/>
</Highlight>
</HighlightList>
<Expand dir="0" leftParentDefault="false"/>
</C>
<C c="2" r="2" s="4">
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
<FRFont name="微软雅黑 Light" style="0" size="96" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="0" size="72" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style imageLayout="1">
<FRFont name="微软雅黑 Light" style="0" size="96" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="0" imageLayout="1" lineSpacing="5">
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style imageLayout="1">
<FRFont name="SimSun" style="0" size="72" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m9G!C;cgCk1"N_>%JBFTef'@q?gI+P6+p#$Lj;s:dgfB(m6bRp;5o0X!u+Rn7io(G:8JS?/^
tt9>,mNK2,_p4c\$'lFAP_s!\-OD!HJ0-J:pEfEcPasX*)?mTAO&(RDD,__r'ID^%V<r\%]A9
$5()kjEm]AO65C,PG+:l3]A_U9/)11#MSj7;Z0!<1#ek*[h)=VLhpdUuqC]A_>%IZa%%M=hemV/
SHQQT=7&Tg!84;H^Q7L48XYq.>n-<]As)JSB7"iP[=mP*l]AK<HI'e0^3&.MKY%2afZa[,X5cL
It!_Qo`M&/;qi`qaPrSp>E91eeR3P10Nn*8VBm2Ll=8jD>h;st7!c#9dKKI<'`!n'V".HfZ]A
N,o*l8SNV%::9VuR_K>C$cSuGK3&M#pq9(+iS4(tTC%if.:3n;;&hY8g3r@.f<*bgNL-e$+V
9L`TtZc/^WGat"0Xg#'qNl^B[8^OO'Hp/E'3'5V-UK<)W&TRlK;7ngZN19O<[QE[`&,s"!/t
YL+-"B%(i/s/"WhTXH.Oa2r<VmIDZ,PL2p^eCVIU;MBsAk9sNC8jeJ"-,09M<m>gg+19Ad3H
)#C1)N^6Ng>aFM05WUk"H_*b6LCZ>6A,(9^,GBV>6iHTi6&%)R%n:0X0\/G*CWKG-rjsf-C.
lN3`8k-jmoP5cJJ",3-Xl1Q+FKMQ77M<dEDR)Cl6^?MK?*k9'J<mX3V:kBc>bp;9de@DCsOC
#M+7_'7Osm\8"cGYrMU$=hR^[m"^ndXo&8!\#!=)ag1PZb;s4:PLCn^HsMhR\Kem)><DJ14L
T3?7I+hu9$A&Kn!gO')=-$i%=m>m?D\@qM.T_C`Z;#WGTT.1HH5?iTK*Ucn?($%9S5.\R5YH
^H3TC@3ZcZ/9E$u5*7s(3[,U/pH%,GSG%i'3?;saooL%(=6KdXc*b?6BaFhXRGYu.eD93Zoe
/Z(2CKci`.n&)ks6)aqQnuJFXTR2l>PW*/2%`F)@2dW]AaFgY9qE"`oIF5U6;4bR7$QH6jFQD
\gIL6g$`:suLa,P/rfkRa'ImN>1G''^u^">5CBGGa`JnHsSOnT1>mC68*Z7$-joicG2]Afo<I
`MmTi6gRZrfAsj&<'bSr28u,+Y/&[q)D6#Q@LLjUFd/K?@N*U9P@[rp1%?Fo(@7W+E,lZ;\f
Y+j?_K)8qYY0/C[_iXSp`@;G!8QoF'&V:Ul/*k>dn@^Y%aa#>#3r79/Aat"("cH`@XL!Bpm9
WXdK%7I;uB8hs7b-*0Kd/cj&,r"mn3XAft">qF\F3)tsPS.h0g"N@7hbFK5Vp,#e,K#@d_EJ
8'70[Wn5sAf3MYT(;Qboq,aEo0RK(LcOlg0lFV5,0.#I<(.Xd[f.Cm6!7=J/9<i+=rY=1*W0
G"3=+VXNj\*:52HA]Ama3HnB(Eo08!NmmF)%HE@)Z!FZNabU3Y=*=@i\N?]A$:kpkGQc@K_P`a
Ilr.&fTDe"I-&p[-Vot=h<r1JmAo.m\3!Q3ocoS@c9F>]Aj39i[dOf1B;PBS$pu3GpG`MQ/Tl
M"KP^WY;Hbt72lQQ;R7V,,?HRmYa1SA/q_8X3R8qR]A3Vd?hpLQ=8@"`0kf+3PRsrEXg@Q+UP
IAA=1ecbq'uU3.Eb+`Upt@[!AKDhX8G4)Al3SS>#kn%#`%.ElQ#^-?cFDU$rQ+?al_o_.ll\
[T_(e&Ml1(aOOU^oJF6N.Q^8j-/(*rZd7oK+DWN]ALQcr!E.<<lFB96i\B]A&F/#-H3lGM]Ar9G
:Qj!nM\NEhR*!%D8ddIs:Jr0n3T5GfO-pYrX7U?Nh@?4DJ.&ji4TloEnQg8O;1/-&`'IqBO3
gK5@#cOEcT.*M^99b1&8dbF?D>*^KSCrR^HLBU2V0Dc9q7sG)%$jlmGcK)arO?E[o4:38)Eg
L)T]ADTZ6*bM)co*'fjLq;c]A9IbonI9M_SJLc_!(7Ol_+LYQ_o@Pb*qi-i8R+L68pf#6RElm4
'\QQ#ume@>Zdc=h9mlnkqMQs8"Kr.dL4slauJ8NGLcY1i^[mbmn.W_4$G(erm#2\I5=Hn:Qj
[gidjA3C&?[HR0%uCN70k&#/h:uC6?uNT53gM*0'fl^*mKYRL@a:tsCQ#rT_F*!p&;<P+grr
%^=om'XEb+>:I\6sW@qh/(&XGn9`[eKU!4G=28^OuOe686u!.-G)-s(akdfRHBG;UX;[gaYJ
Se:7B.uYtG3&2OeKKI\J#t%VRGg-WB8.hTg5NDP<oB0>UXE^b%;Kk@c4iKV*AO1A$BF(]AdGY
hhl/:t9kTUt9q]A(BCLqQjMucPEh3_QlT/\"G:.oY.Eu9S4o-D?f01[3H),%0=%-.>F:"J(Zn
&\<3'\$GTEi5.K8j:#r'W@/5UmaOV7[j=M1q=&*(WB3RsR<8eP[*4F9*0]AB^h8446]Ar07_3G
Xtc7%R#MoD;Pl)A`VMh(&f7`$V&7`R^5#YqPl/0"7im5dL`-V?H'_35cHaNO`I,@l?NU[9qT
a]ArEU8@/Dp`1LLe0JnJ`AMWT1:0AYtOn4foE?RY)`aih7`jJu=4Z'*o!6&t&1WW'15P]A&NgN
dQ?`CmirP9]A.(L=>Z6@!I:E8j)ZY2l/lfAL_6b[_`<('!8)a3TfB5`71C[NJ]APC:<#c37X4N
DC$caaLZ#HYkRk$LBmrh@=6Fhq8Ml$kde%En?>XYt2%!3o!d^YX)tN8&5cO2Ss^-Qe*(92Jl
-ahBS;(kE1QBcP_H5N3Rif<^8:$N>B+asFqKg#B0u76f)Gpe+F4<E1Tr^Wqq'V`'qY.->dkC
PQjBZ>ol7k'3Qm8t'5NVmM4&g(NI*IjH12(_7:R*!Q44Y6On<+Nqs+I7cjfp:Q$_4Y?RoBKd
_iJe6do0H"0aR_'L:#+"\&#WZ"Dp1P1Sd:`gRYtRn;PP]Ao)NlnBC:/r5DVBRZKn=qeE1l:RG
=JUR8U_/p4BA^cA4UMC1Cge=:fh=kBiekC,EaOOXEJWMI:pWIt8m;jRCT#J#%2uJ=^.t1?(<
<:JJ.,&RG's&Al%hI\,LeSoEdR*kd'mC',@<m+8CbN<`C\0b=Iq*V)O*GA;ha#ah=[KNpn`#
O8Gn`p*LjShoo9D7W'N=3;3=WIP;CJOh#I8^?du:^KCsiaN[b!^('^Akm+carmFoo,$&<+\E
,XDpCGmbL^5W]A\4,9,'3!rf<UC%cMFU)A_TN;@c7'<B;o=2WT.#8g!.l35"d8\5<=Yd43qVT
OO.Gfd2mi<(8UEDm%J-^921Bt4#T+/StPK;0/A1k/[*KSYTT8D5@e/a@,IU:phIt0,89g%V;
'$-3^9aG`&:3RZ<Y@e9O$G,qW[&XM(i/WSMSOn%>NrX)TKWp/n$CTAV/!4"!ost;)[.@fB9O
<IGd5)n&r[:GP@X=/rV<-cs^6h_8,XYVdl?D>k=Ft3pPb[1*p6o*R@"7dUM$P8YP-7K,Sq.D
;-=)I!C(RK4l25Ic7SOqn"]AsH.k#^lD&Dm:<Xj,TU<[s),WRN>qE$]A=U<S5DaWhn.pI,+Ypm
=VC,Zq-?gQiUOCAP6F%KV:j9g'#I\F>^s2K2:$GT!:Ha\gQOYL74kke6IY``G4M-U,N_*bVU
_J/5cN%ei]Aph:/S3^_G[?R?`B_0#"cL0>j:F"8d$E,VtV&7Q)YkTrif6%?m*d/*EpC^13mlR
Sm`6M3`b_,2>+[Od,No8jjVSTC)XYsO:BUTLqf0`Ki^61hO"4qBtu^'0N8+/nR]A#!);oDS(c
(P4A;8h9BOpZA]A?KC9FIH79F9U-tc$Qofr?Gd\Dk^5pr?Y3F6R/"opKT-e@6k<ZU4\%m4cfh
u@ho!XH\DusV&KFU4(;5X<G<SmP;^rL"@N%i)q[Kaf0\MCSq3*5&>F5qlKudl,n,&5r)A]A=l
6m*HFH%'4@uj[)"'.p/!d,4VMM.E\ifSWo@aFd?9koN??9_1N;QZ9ZLcl22$Su?\DiYq>qKe
VaoM-nrRG#"V\oKr-K.fW;gW,3M;454E^:XJ$+Wl5s-,<Q"V9N!\kIWSQ2AYeXUhGT9"-.c'
QK>YhpH5N)dCdgI8>A[S[nG&_kBk8A%h-+@l+%Cc_eR3V'MBZm"L8G4lA75frV*0g;jBqP+S
d]Ad-#u^^0"c$j1smuZ/pu8\Y(=&4b4cO%%OR'>@;/,`pAK467>6"QLt"^mS>$oWGhp\Dp!>N
Q"!U,$P0ZAnD-2skOg;Dj#n?$Q#UY"65j@ph#P_Sce"CB)eQ*2]A@8scC.8OjGR4:UuSKq@mJ
om#>VM&Msnqu-e92N!]AouB<dm=)K?\T[=Kl*#SB+n=j:d]Au%ESXB1&K=+V@KF!$!J7)@JnK!
`RR0LaQYTL2.`(SQ^)Ikr^3G<h"X/P%_JZZ0if!Yaca3p09(i1B#.`>E=m@[(+oW#nf_!#N`
'ME(lX>-/5R&e!(WQd=*&!jmd;DJ8-G2&YV&Qcga+crbC9,_)ilQ[<O?k:g/Nt=E%Ze)DN9M
)R`C7rmH%RMNG@t5S2^in-U,U3/L<H?,G<!F#GrD0_Q!aD#l$\Rb/J^cAXh*XsOo^D>*A2-A
#,I)XCQH$?"V'0;0%t"(-"F?'/-JI,@7ml85cWJ)-7#d*4e-9^N$IckdVmb4G:#4*qP^RR7Y
mMBCLR*_HKY/Z2h5d/-\!BeOi)O":je3]Ase+Hc_^(2]A?>8'nT`=f^;3fXCmUIAoKh'e$N5g_
4&I\t/uPt!!l294Mg8sR4V7!QR=-jao]Ac+pmGe.Rh,pd!_p=+YsBTe\sk<6@$gEEKq)LL5%l
"f%mT0MS#EA`Xf]AgihG2``%,k$;8%R-l=YEh;Yfd1q*[>6>\uQVrY5XF%GWo5@#QXhfKAc=u
#-qD!L!3CHg_Pb\b>31:-B-9rlS3_#C<KDrkrR_JLa,?@77s>Hia-Cj8,ChDI\I]AR=ZLpU%K
`Mu.<KfKmQPJ6RXD95e:tg1s?b3kbe@<,EZdJW_;U!GsMW?I.RrJRD^:LA?((A6@SOE77fI_
g>=-OZNa,P.6Td!>mb+/eZ6$LEb.eE-F^A^GnL!PtgEAkkuZE!&]ADSKJGI.+c?I,_n`$3;u/
_l/N;*RbGE*(;!kA5Dt3Mp+I9j..7jiV_a&PnZ4Hd-Se;<N8]AS6V__?_>acA6X\O$5YP<`sn
E28+^a\Noc#OpUD'>,9A(D5QWHfa/'>^NUA:Ia0HL[Ap+;R$,grlh$OQ:C*U3'*4Tq+JZ@(r
er_Mr0II09DhSiD')d:NmumhDSOI<R*A?IWaeI3(h4J1jJ3!n!Sp*9FT\<_<Vt@jbgT:.UPW
`o<?ieqBj1EnV>(?mKkbJ32>#>i)6\8L3t%NY\k_m?d^*Z[(M&D$oM&k":5[G)m=Pc[HCsAb
Bofmg#J3KTAF8m4oM+.ij,#O$5nhpmgp'Mf><0l/BqZCQ9^#R.-P>52G.?nHgS`]Aff4B!#X`
`b\WaVV/q>huA?IT4$1?!`D=`D;jE^OeSX(0QWJG=$c($+gr2^*?h<qt5;X]A^&TQ6He?/>=R
o-ec!hEHkh=X9YV#P/@"_h9ZS!_i\CTD^Q>%XuWj/ftV7nDa8<Vf*J6*eJY3FogF%AFi)bru
C1"5h:!S_N`,e/hr@3/]AXMFMGR#clYKZlX$@nc\[5bU&E1;-lR^P*qg(\r(!C$FZO!qYhq`m
`@@::/;FcjU4b^lWMl94WP(q"^FE=K@NH.Ff*<hel_Nb2k/h>IiNP-eGhVL5"(=cC)h(YJZ"
FuH=gA?9W:Z/%Tm^S$4_+=@6litM0"tbi16pi<9Y>7ie03fDs(6?K\`1t\+B76Lpf;-;Z")L
TW&8-Jp#l.[BFJQ38UnOYP]A3qKbjO;pKd$_tjC1uB!=0FXB,4?VsXm=SP/e6_CU!4f<M*T#R
V*")'[Ap65/,p)c<L*0ehK26C:lbQ",:+:K`;U>?]A/#;\AekLodTl8:lO/Y\I(Fb',BLShGR
jlT^%gCRV2#hihXYj~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
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
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</body>
</InnerWidget>
<BoundsAttr x="611" y="2" width="539" height="324"/>
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
<MC_Attr minValue="500.0" maxValue="500.0" useType="0" areaNumber="5" mainColor="-16750951"/>
<ColorList>
<AreaColor>
<AC_Attr minValue="=500" maxValue="=500" color="-16750951"/>
</AreaColor>
<AreaColor>
<AC_Attr minValue="=500" maxValue="=500" color="-14450771"/>
</AreaColor>
<AreaColor>
<AC_Attr minValue="=500" maxValue="=500" color="-11625534"/>
</AreaColor>
<AreaColor>
<AC_Attr minValue="=500" maxValue="=500" color="-8275242"/>
</AreaColor>
<AreaColor>
<AC_Attr minValue="=500" maxValue="=500" color="-4400149"/>
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
<![CDATA[交易金额(亿元)]]></O>
</SeriesName>
<SeriesValue>
<O>
<![CDATA[投资金额]]></O>
</SeriesValue>
</SeriesDefinition>
</DefinitionList>
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
</MapSingleLayerTableDefinition>
</ChartDefinition>
</Chart>
</Chart>
<ChartMobileAttrProvider zoomOut="0" zoomIn="2"/>
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
<ChartMobileAttrProvider zoomOut="0" zoomIn="2"/>
</body>
</InnerWidget>
<BoundsAttr x="3" y="2" width="606" height="324"/>
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
