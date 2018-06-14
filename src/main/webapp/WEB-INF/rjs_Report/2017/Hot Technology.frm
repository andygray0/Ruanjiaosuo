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
<![CDATA[select * from lxty.2017_bigdata_province_amount_money]]></Query>
</TableData>
<TableData name="ds2" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[select * from lxty.2017_net_province_amount_money]]></Query>
</TableData>
<TableData name="ds3" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[select * from lxty.2017_cloud_province_amount_money]]></Query>
</TableData>
<TableData name="ds4" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[select * from lxty.2017_safety_province_amount_money]]></Query>
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
					radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = 2017
				)

				AND radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`CL_NET_THINGS` <> ''
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
				radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = 2017
			)

			AND radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`CL_NET_THINGS` <> ''
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
<TableData name="ds7" class="com.fr.data.impl.DBTableData">
<Parameters/>
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
					radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = 2017
				)
				
				AND radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`CL_CLOUD_COMPUTING` <> ''
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
				radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = 2017
			)
			AND radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`CL_CLOUD_COMPUTING` <> ''
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
<TableData name="ds8" class="com.fr.data.impl.DBTableData">
<Parameters/>
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
					radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = 2017
				)
				AND radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`CL_INFO_SAFETY` <> ''
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
				radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = 2017
			)
			AND radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`CL_INFO_SAFETY` <> ''
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
<TableData name="ds9" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[SELECT @:=@+1 AS 排名, 项目名称,中标单位,交易金额 FROM  lxty.2017_hot_money_top10,(SELECT @:=0) r]]></Query>
</TableData>
<TableData name="ds10" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[SELECT
	radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLTITLE` AS `项目名称`,
	radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_ORG` AS `中标单位`,
	round(
		(
			sum(
				radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_MONEY`
			) / 10000
		),
		1
	) AS `交易金额`
FROM
	radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
WHERE
	(
		(
			radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = 2017
		)
		AND radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`CL_NET_THINGS` <> ''
	)
GROUP BY
	radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLTITLE`
ORDER BY
	round(
		(
			sum(
				radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_MONEY`
			) / 10000
		),
		1
	) DESC
LIMIT 10]]></Query>
</TableData>
<TableData name="ds11" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[SELECT
	radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLTITLE` AS `项目名称`,
	radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_ORG` AS `中标单位`,
	round(
		(
			sum(
				radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_MONEY`
			) / 10000
		),
		1
	) AS `交易金额`
FROM
	radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
WHERE
	(
		(
			radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = 2017
		)

		AND radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`CL_CLOUD_COMPUTING` <> ''
	)
GROUP BY
	radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLTITLE`
ORDER BY
	round(
		(
			sum(
				radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_MONEY`
			) / 10000
		),
		1
	) DESC
LIMIT 10]]></Query>
</TableData>
<TableData name="ds12" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[SELECT
	radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLTITLE` AS `项目名称`,
	radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_ORG` AS `中标单位`,
	round(
		(
			sum(
				radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_MONEY`
			) / 10000
		),
		1
	) AS `交易金额`
FROM
	radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
WHERE
	(
		(
			radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = 2017
		)
		AND radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`CL_INFO_SAFETY` <> ''
	)
GROUP BY
	radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLTITLE`
ORDER BY
	round(
		(
			sum(
				radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_MONEY`
			) / 10000
		),
		1
	) DESC
LIMIT 10]]></Query>
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
					radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = 2017
				)
				AND radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`CL_BIG_DATA` <> ''
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
				radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = 2017
			)
			AND radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`CL_BIG_DATA` <> ''
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
<Background name="ColorBackground" color="-15986891"/>
<Alpha alpha="1.0"/>
</Border>
<Background name="ColorBackground" color="-15986891"/>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.cardlayout.WCardMainBorderLayout">
<WidgetName name="tablayout0_c"/>
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
<WestAttr size="30"/>
<West class="com.fr.form.ui.container.cardlayout.WCardTitleLayout">
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
<SouthAttr/>
<South class="com.fr.form.ui.CardAddButton">
<WidgetName name="Add"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<AddTagAttr layoutName="tabpane0"/>
</South>
<Center class="com.fr.form.ui.container.cardlayout.WCardTagLayout">
<WidgetName name="tabpane0"/>
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
<LCAttr vgap="1" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.CardSwitchButton">
<WidgetName name="6cdf1fda-2764-4f36-b483-380efd9d5762"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Text>
<![CDATA[大数据]]></Text>
<FRFont name="SimSun" style="0" size="72"/>
<isCustomType isCustomType="true"/>
<SwitchTagAttr layoutName="tabpane0"/>
</Widget>
<Widget class="com.fr.form.ui.CardSwitchButton">
<WidgetName name="805cebcb-faa3-4390-9b05-d36714613021"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Text>
<![CDATA[物联网]]></Text>
<SwitchTagAttr layoutName="tabpane0" index="1"/>
</Widget>
<Widget class="com.fr.form.ui.CardSwitchButton">
<WidgetName name="8bf7ef08-4d04-403a-bdc1-9f1e0c40bed8"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Text>
<![CDATA[云计算]]></Text>
<SwitchTagAttr layoutName="tabpane0" index="2"/>
</Widget>
<Widget class="com.fr.form.ui.CardSwitchButton">
<WidgetName name="ff0d031f-cb2a-488b-ba74-b6f557b06046"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Text>
<![CDATA[信息安全]]></Text>
<SwitchTagAttr layoutName="tabpane0" index="3"/>
</Widget>
<DisplayPosition type="1"/>
<FLAttr alignment="0"/>
<ColumnWidth defaultValue="80">
<![CDATA[200,80,80,80,80,80,80,80,80,80,80]]></ColumnWidth>
<TextDirection type="1"/>
<TemplateStyle class="com.fr.general.cardtag.DefaultTemplateStyle"/>
</Center>
<CardTitleLayout layoutName="cardlayout0"/>
</West>
<Center class="com.fr.form.ui.container.WCardLayout">
<WidgetName name="cardlayout0"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="1" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[title]]></O>
<FRFont name="微软雅黑 Light" style="0" size="96" foreground="-8355712"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.cardlayout.WTabFitLayout">
<WidgetName name="Tab0"/>
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
<LCAttr vgap="0" hgap="0" compInterval="5"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="report1_c_c_c_c_c"/>
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
<WidgetName name="report1_c_c_c_c_c"/>
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
<C c="0" r="1" s="2">
<O>
<![CDATA[区域]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand leftParentDefault="false" upParentDefault="false"/>
</C>
<C c="1" r="1" s="2">
<O>
<![CDATA[投资金额(亿元)]]></O>
<PrivilegeControl/>
<Expand leftParentDefault="false" upParentDefault="false"/>
</C>
<C c="2" r="1" s="3">
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="1" s="2">
<O>
<![CDATA[区域]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand leftParentDefault="false" upParentDefault="false"/>
</C>
<C c="4" r="1" s="2">
<O>
<![CDATA[承建金额(亿元)]]></O>
<PrivilegeControl/>
<Expand leftParentDefault="false" upParentDefault="false"/>
</C>
<C c="0" r="2" s="4">
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
<C c="1" r="2" s="4">
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
<![CDATA[$$$==0 ]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.RowHeightHighlightAction"/>
</Highlight>
</HighlightList>
<Expand dir="0" leftParentDefault="false"/>
</C>
<C c="2" r="2" s="5">
<PrivilegeControl/>
<Expand leftParentDefault="false"/>
</C>
<C c="3" r="2" s="4">
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
<C c="4" r="2" s="4">
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
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="微软雅黑 Light" style="0" size="88" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style imageLayout="1">
<FRFont name="微软雅黑 Light" style="0" size="88" foreground="-1"/>
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
<![CDATA[m9G!?;cgCl0m;!f1j$_QS-m2pe(XVFf;]AsVUhHTiX#RMre7Ki*e5E,pLk7aPP<N\r-2+b^e=
)%oMLPL<'K+tir2`@V9R'*m=0)E8?AXa[3D%N,qd;oG3n`[HLsE^/LL6.6IJ."E[smYPem?D
C<ildWFMa4T&-R:Njd2:IJfs)B#Vo0Rn/oH\(i3O3#kIEKQ^>GUlF(VX>#o2$leEf6LJ3'ei
l(/4>Q30M\eUYup.2^R5)PnO@-YRq:X;/pptq]AjmMZc-$.M^l7/IbBQ9XDpQ<J7dr8mA:k%;
%%n$eVK$--jKR_$dbAP\n*7esV`nA36'[ZA*gqEmYVIV53_4ncNr&%hRW[bOI8'359S:RTG,
D8k%0XHP;ZY]AmJr%E.,XJQ=B+UON(d]A))C(WeMD)0qC,0K+A'CN8#\l0f01+#N)\eI5%Otp(
QDu>.h>de\a_gVQ5'-93mV((;*k'4c7gZS]A+]A%Ue+W$ie'2(hV&bq%GMd9k:CcTe/05A3Q%$
VSZ5;fE6X,Ioh%EGJ@G'9>+[iQ+?X8b>d,;.RN)(=dgmHW-KV:s)G1bm,+*;'!R,n#G4C<Mb
BEl)Z!Lj+cdU`F<DF@gl_B9F=^D_?`6ST[4(Kf&FnNLt:t>-VrbpFK^*.kmKj5X6h6p%\emH
qt$dr7%(3Z)"VslP5^#5R+Zp;upiWm[4kj!(!K%?%t*p\9ONmja#^nfofo;F_DcoJ]AKf'F6/
D%)JgbchlSif;P=#siqYprS\TUc"R,:%uI*&[rq(KY67r4C5(L.%(gsJ7!>76En8R2g1tJ[)
$&dgJ-K5HSQ4S<@uf8[)K]A',^Fh8\Q>T'a-TL:1uK*_8*aZ#6<O_b4:!CN82GoR\THDo_no>
N94j`67iG1N%(`#>lWteKC8F'J-a3>d;S3,F1o75'\&M'Kb[@B=G*OUbe!21sGW/Dl31GKle
elW6JphpJJ`$?qNRf>?r@pXBb@]Aa6;jTY"aR/=tkZY13`qA=[9J.h2loh#]A.\5TgL_Ms&'*H
u1(h_LBj<i[$U.Q@"Rf]Aor--gNdA]AMKZD]AH_Bk;GF4?+TtR`Ic]A>b%gUt#&AnZaIAa%/hO9)
W.);L7'/ZP@+A>(m$,"#Y@.OY*tJZbMDFB,b5rBK0>Ool1:\l'GALoka9MgJbEG=4FYtuDJ5
TlD*7c#XS[Ns%&%:,4[!qs>eMV3FQ_6ZOh[uK]A1+V@.iD728?"C9K^*JdO>Kne^iT.,hdVKn
Qj+pk\heW(.g,t)u]Ap:qDq$Ts1Z^qo'Yf73$BP1WNE=hJrU!cTP('g5n\R0o[KIki!S,Y]AEL
_9o_@UlR@$SBI#0\\arIMS3-Uo>?jKG0o'Al=fGj\uefi)@i9F5M6rhW0tti4E@kGuDii7Ii
^CPHu]A\#TGWb+i)\aA;!U6B;WCsRg9B6NW5]AN=I^b2Oi?JIOSTAhrGNb0=m%/AqQ\VoDqa4[
m=8^%J\087qrd`YqkL>M5I>1Hnk!V.I+iVa>RXbjQg?YA\O,#$Cq2Ur=R#a&kNch^f*k+>RG
;OamLW-qVAUl\Sk>$tANOASFh/nXc;1f[[cf@;e1KpqA^E\Q4s-1W`9[mM?($!6d$dF8/^Ge
<H70BY:k<HXN<Lm!R9W4IpCU`ZZ!eTORO*iXn"m'LKKli(+`m>XYNgaXi`IRVV[5qYrb%[1"
\U,WH'L_^_ehq-Q+a1l=nG_ROa6^=E%)\TC,:HE**!pS\,"n@mG;i5FR\*u2pHl"cNEeAI_=
#]A^m&]Afj!R,,af59+WO0$Y,>m..Fi_ED6(fd^pA`sI.nDR3ie(A-'6F>94Z%ed7N\&;ATC.-
#-nWb&ZeDKVQ63EDWd[n$Na-h;/6/s>m^0+?rJuId;?66Q;T$.E@C@N*_`"ia\i^YAYXO6%j
I&k50]A0X8/3!D<@Z#E6kmB,`S:r;OHq1J&p*1EMM<qU<@]AW:,$[g/M%UUP07'gcO\`J$DInF
qOG\!K("JSpQ$X17PI;pbnq$FI=II."V*OQo?*L9Tc2+DUjW2GQPO#:GOWf'Y^+YStOT!8lf
.6.SC,>l8V#N"c>4#YE;jXIliEGe6ET!'YeNfYm@lE2THd^_$A.u;3(/@Uqod/1i]A/i!*7@#
Gaa6@=t@F]AbBB"dkU]AcT6mT3TdYYras]ALgX43[cDh2bA'@YA(UR%F7"CEAX5NOigIFH^od4j
G*n/qCmr6\*J,K1?Z34`9G"E>$Fd\l8-fHASc@/A._\^^S<+W2j=3.YM)gB%k*ofq't".l&D
[UPi]AH"%r+WQqd`)HDM<G&1W!?'`(n_ul"m%Jm_;Y,cb.ggc%h%:X^e<&`?Zjni$c?`s;ZJH
^AK]A5-\oVrGI\O[<7u4n&HQ$:Rec[4;26Brjj$jLkS<Rp^Wk62Q$(.P_>@p7qNgdSDKLpt>[
JZ]AO27W!+ftef6F;/EVAATdI'0"4TEb-h<aMEkS!8CFGY.UaL?1</D?#8&aV-fD2[+,R>Me0
Tt=##0BEolNCdFQ<T(Hd2V'[G`h7LRJfGo]A;Xf<P'f*(OYhC%fnV#/d1I#5U<"2MZ';GQMum
;oApV)4pM7MZkNWn';a3h`MW[ci,)Lm&]AOBjsj-VmUbto\a2cO]Ad)M[dgT]A+kPZGug4i]Ajc.
N8t+?TVh)sARI.ZOa]AFP=&uT+LdSB)UZ8$G_/+^W-EVfu]A_0'?im$aubO4%2-YS.Ndic6_/Q
X+1g9pIb3%t!68hl;Ae@'>NJUB!dP\d3pPdE7a`W/``kK\2cH)cjrcng<H-r<fU[`8!)\Gs.
D_7Fj?be%229;$O3<PL>W0,>^fUhp<VJ.W]A!ABeo=f`YO&U5edp_9A['L(GoYmCV,s_<PQ*$
GqcX8CF\]A"&mYJ2Yk"If]A'%HhAWq;F4`%7]ATXb^d2>)6!#uJ7IP3Y*=o,0M)oIia7.gkM.jR
h.KWIW;lGPX&3EG>3jQC5RDN#nGlt\/Yt&9*9k&['cr]A7VPsZ:RNa&0@^E,FBXf$TL<d.<Qt
Jg7GV"Z3L7s)6,g-80',3Fq7VrAc&2#ZQ9MH*7^k!SSAhFQkDW*!=6Vmag%V0mI(_%+CQc=X
P(bRtsPSo:e]A+X<rE:'S=?;&CN0kAEFNu;(@6cQu/65m':L-5k%;ojFr&e,%"qQk@<5brq4E
=A_>"Oh!SQtk%?DPa.=-4Hp!1dg,!'b>G8S%$bN7SH*%gI+8'lSf@P$186lb&)O<;=OlR&\@
j(NN()u:m_,G?'`*'7m$V?Y[k;3Y'-EpfB2@ZZd@#HJJ'qSBrsnV@r`I]AI6\E4Q;=#!cmpC\
U$HD"IQ</,d6a_bS_oD"XD_APMg#)okXGG]A<i'O?V!n[#4+VI9Ar-"o4mtcA]A>CiQ$jhj;<=
G9P#]AGG\Q.:FfMNlOs8<ViA`(qXp+%V9cY[+=QS\UN-%`O*%R-4uK69]AqplR:8[T`^J(d0t0
ofmIY";=X!I`(ip>+n+AQ+4kTc&;FquWZV4j'`k%R\UsV1.1W?>;..lB0Spbk#_H&oN/4<S>
$9ib!6KKtq"TbP5(uV:B.S3,/>B8a'n"<I(fQ5T)jF0:e_o8cDG;E)CCI!L$qN8>Ed.%1$DC
4>27<2FC=JVG@;Jl\-6t1k1I=n5M'TqG1kQ-1^UVp'KR`;*K6%kbrG%^t;<2bJ^e6*dE/YA.
!K[dA]A`1DRk^Zf%L]ADM(GGeeiql[O;e<n.;[BqN,4_+CYOKNK9mgA44?uJ:DM^,&4ri_Z*]Aq
0N^I`MTR,>>7S\]A5![3HVY9[hV.12SaC#=:36Ufg!poO[L(?hT3iU"W_bV$68FmWY)!7[E\a
[0N2E3^^l%p^3'aCDh%1e<^0Zl_h=98GV08L-`06dIqU!<p]ADGhBSPSi#8!o<iuECOKkT?<V
;B<dmsb%K334Xc+2ou\;TE4F$*#_lO>aWtj:`A?:/O.'"3J85K9/_W%SVQX-R%5drEtIig*0
a(o([YIJgE]AWoC-]A,F/*a52uCsZM=5<ol\2IP?s&QUYX+%0aEJ=Tb^rfiU]Ane?)`]AhNitUuD
NtK0hEV=anK4/f._GJ!aXc),j&<meuM)l0=/r`,ZBgc8RrnGBPMK<4<'>FinLJcE9ciLVeR[
pe2hk\[Vs',ihMW]Art7]A59pNtu(WA50`a:-0L1@J6Apc.XiDLH*/5MY`sneTG?,(!n`Tf_)T
R\B@W5GP:VX"2]Ah=f`\[A1W;M=JqT(o;#f_-r'7'*\n@0#$^8ag2cW`U?Q+)5T9TI0)Or!e:
+@;Y?!K`J0"IqY1u-X&&jK\j4E3MqXHr^5e5D9:%gfs?lKHEGV$*h:ZKs-N<EF-MfM-SjWNP
\a=c5T8b_'2[-2;-JM=<0kf\4a^J3CfV]A\/1<obPE6;Lu_s6t8dpY`46_Lt@Xjs&$=_C$N*?
at.kt-a<IoE5obq%U@3gSkop!da%r]A`WtYDkbt(baHV8rWdHQq5,\(R!PTmH[:L0dcB*(pC@
XNA`DdPM8tX//6U_TKcHhLs;594@V19g@*j&JR#/Xfbp`M!eUfa7$f_$)3(7)1JH<:/<i`4@
rRFDa);@k8)!;J7PKrJ2p.M:K6034ToWJ!]A2aQI&:p"m^lO?J\DA=D\$n39iZNnTqLTaT#,R
6[TPc&s8qg]A[0)2f#\FlZ.pbL/hP^J<jf(Ku,@KiY7JR.K^*]A.QeQEU*r@(fm#<6!rVeR'iR
UG/:\C//p5JnE'*+pPcA'#0,qY7]A2!qcHuQaTSBc%^FojG#K,#f=PuAMT:-L46ch?6s623&U
0#5(%8P_(MKE.R?Js#^U6,)!)V#:n*NZPsu`O"M6kkuU73a]Ak0W6dJus1!d6NflSUQlI,oiB
HE*BP;1<QRb,f=R!=Z)O;YMn/"YuaV'!Zd"eWs@<\@SWn#.@%Y1u#[a>N(:#j]AKi>5K7,S9o
?14V!0m3Fa&LV,.6E;_HJi;R!OrimI/6-?HKqGp4-9rT7W)I*e))j'`dH!77/KS%?+'p82_Y
RoZj!k:/#@NtW6'`<ujQ]AJ`s<"94g]AWnpWj;<ua/C7*(<B+``8KhaEa&iZ6pI,-2d8[^WgCp
t6GC4$k]Ag#`D$iFe^a3Q4]AS%NT>prAU\GJ3k"@b:&9NT^<7)]A.<8jlE@Cg#?JQ[G)Ba+nEd^
fNLdb*:0?o.1"K^@(lomCu!j7GZ=lD#(-&"hHWee?:KL0\$dS\#l.S(-)I==d9K:F`u%92mn
SMCW2t["m651`I`c_`G*Z`Rf5rsre%<;3CN@Oc/4C>"<X6I:hE;1'_2lCeDIW#&C]AmKl]A;e#
k_JH'3K,iSe+`I\%Q/+r,dc,?%+tFt_TGJXJWGJqfRRjpsg8V:^Dg(PL;:n;4W@WQaBN;q'N
3u-89O9W3e,NgG=ustV\[=\imYAM]A_d"bck!2G"XU:)-M*DEu5lV]A"PE#!!QU<0c^![B@m/A
6)(5@0:_oHh;)e/(#[eB,Ij-dBA&X5@$&:`#@_4O[7D[u6k7f^k#k#Snacdb'1.LN>P-GMkq
L.b$1`rN\)'LnOHd7[Kds6Be5ANGQRSDiqS1Bm9VSVlqS\c`4K+^2p['3dr#"7)*H%Uf=]A8=
IGRfe0'595[\7\hhf'9[@H'MnD0>"02cahI?PLnZ@5G,DW1>1>rPg(;X"+Mm-iJ;CRHBKQEN
Scs-@cLuX=Y4gZ"qbd'>Tb?#5C1kE[/PIJ.)'JO:9aJ&3^`NK"N\g>@X3f6HcA[j0o4`9LBX
QD$t'QU"`&"24/>ZaD'rYR57W(0X78I;BGjiE*t=DRh&($VmN=Err&_O8Y;:K,mOhQ[/?]A$6
ZNF2UWkr8f^AY7B?/0a`V/mnUI*W^%ei^$'"_<ormVaJM67RCnd'OF;B2]Aaj*JZa-Wr)>\5#
PfX;s@TWm>SKMO0,oI=-ln?`Z>5KF]AkDi,a0k,hJCV#i,*3MCsfZ%M3A]AUY]AikLod5njX<L0
VEV83sI&(mM:VPEWmdcmPU(,&%`LJp#=e^VYF^Ne4an([>&-fedqBCCIGBW`f.oGUo&\$7ds
6#^#D*icj>>(*@dP!>CneNtq^nSPJ.T9?/_tN'"):=WkD]A"bDKFhG"^$X2J1c\;X&!J<[9AX
,bVT1#n$n+;kVn1P:d0=.18FUQ!:-X\UHE2j);Q9F5-n6s+GEpeh9%6u&S:2A^"2-oVG\aLN
^"$C`0\M2KcH1b=buE*UU'Z72%722X#ej0?&69&WBErI?K4Idn4cJ]AR5hH,UZAjN8q%/P8nL
I?223C;VS4moPgI':o`9;'OrEb:g#'H8tQA&,m@~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="502" y="0" width="428" height="277"/>
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
<BoundsAttr x="502" y="0" width="428" height="277"/>
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
<![CDATA[1097280,2438400,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[762000,12649200,4076700,1950720,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
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
<CellGUIAttr adjustmode="0"/>
<CellPageAttr/>
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
<CellGUIAttr adjustmode="0">
<ToolTipText>
<![CDATA[=$$$]]></ToolTipText>
</CellGUIAttr>
<CellPageAttr/>
<Present class="com.fr.base.present.FormulaPresent">
<Content>
<![CDATA[=if(len($$$)>62,left($$$,62)+'...',$$$)]]></Content>
</Present>
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
<CellGUIAttr adjustmode="0">
<ToolTipText>
<![CDATA[=$$$]]></ToolTipText>
</CellGUIAttr>
<CellPageAttr/>
<Present class="com.fr.base.present.FormulaPresent">
<Content>
<![CDATA[=if(len($$$)>20,left($$$,20)+'...',$$$)]]></Content>
</Present>
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
<CellGUIAttr adjustmode="0"/>
<CellPageAttr/>
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
<Style horizontal_alignment="0" imageLayout="1" lineSpacing="5">
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="2" imageLayout="1" lineSpacing="5">
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m9G!;;cgOp$/u>/]AO"%+/^`Z^QQm=rUXg=r>2#Y[UNFY#."VRT.ZP$Y^_T7-:=Nul.lC(EL_
!2=F=FV(NJO%o8><MDb2]A.&,Ou+H%1+4H84(D>j4n^K&#jVn]A#$GlReVYRM>QYGpU>Y0n,%O
j[h#+D]Acq4.puf[b&2[hK>Aq.V6)0)E7'.Om)ZPYfhbOYHM&jdrGjURFL%egOnEH)1!h!ZbS
-csf;u`m-PB.YWfJ*/JjGkfh]A7Lse=3YD@Od@tI@`DdQR&<\4Yhq[\/T_iaM?>d(]AcH`,1j@
69`nEfG3Y^g^fYJ!:9X"oE:>:e=cMZ%3?.fX7c-c);l%dj8#4nJ7hs_/\Q:m:Y*5&HS!.t`b
NIb5jMkQIfpMI"m/P06tH=JT[,48X^6\?0q&c(i)XUK[+W%2]A<)AgSK<kX@9d."r?>C0KR&X
Cg;[T82?f/9X5DM,Amq>Ms5@q*j[TYQe\lb,l4qj1qIeG7V/qp7qRMO&I`:tF]A_7TXlLJFrY
(=/XQuajFHo]A39XK]A0EMI#i8`aU3B1u`L.L#Qd6+*fN-gf<?*JM5-HO8iY\(QY<kkHMo$^8*
&G(7lQr@SYTFlN&A.#i[4jDGoaNA*e`7&n?,+3oZQjTuJ&4//W2sq\4dFY]A)qH/9eijI'@6,
1=PT,AqZL6PD7Aq_AN%^=F#M0_4/M0c3f2iu).HR,t/TSO^c0=)7TYg'A%uLm,>uCt(*Us&o
50j"n?+B\BAjT_0qBA!E+9GT$ksEK>XR8?<RBT143K+rp[\LgZk-DHe:/j$2H@<2n%)*Yc3R
J!L-u3.hlUY@uC.bVjfs1hSePq1VqS/Pe:<)ce@NjXb4d'R$[,u.(RFYbpO5q/WGb`!Nl$7Z
IWHS5'EU#\c^>ptVke*oTBRd$-`2M/AQA51Ve.U""Co9k$&?'>:[cVtUb#2(G.7g3DIjWXUk
qgEnOgR#.6-R03g4e?ql4cR]AM_jn!A+ujhe10`pVJ-^1JN\d*MMI^fgk\[<Ke\=q_">`@h"4
8<A>8Qqr6]A"FCWXG`!g_$<!GNh1C=;q/:Z5-oL+s,\fS>adVtnRkeWf9^k"$@j-@dtfojRdm
E[t;6h*=%XFrpZaM7JjpFM=1]AMq`ZT3LK7hh2o:a%.iXT";EY<>S(HC[>^KP7Z%I&#=:.4P;
t'$9<G&f@%&'a:TA8)[WN6j;B'5VklRdCCX]AAJ*,>hdE%Bm.HtUht@n0<;>2_e__jm]A\-C!3
-:5Q;tS^N-/FaoZ7bG#Q&=6H\Wa_tA4<kY<)oAiIZAA8(,Ll'%9MGpn?e#!c'LRVjY9#3,q7
bsrIj)aJ%PQ1D!cM3ecWA`NT$rHQ!n/OhZ?aug?2JJ_]A.J]A[&NX:"\As7ZZ=ue12Aku.1)4Q
k-abq>A.l#8qjLdJ&f^R>mRsuf>Dc.%36]APk@04PGnTA$gk9>Z+J465_td+Pu%M=Q.XP/2Y=
!9m+S2/TVUN0O7UQ\Q+a/A/BWp@6$jKNgESC4oSG88pG;6Ne2:Z2*[PDiYil0qb&pkTb;9Kj
b45Y#<#>DA-VHbd'a``D=;MRorANDjnA/fM,fl@+-iXhtjiT_?ith2Z5>srs''"\sogDG"eH
s[`qEC/Auke%Q59TYoS!+`km/5,Fsg:_'gAJX43/&QjW.8Be^+KWE7hi@B%mTB$Zr<\G.o0$
^l/Mf#nXr$H5!6C,$WMLP)TkG>5mV31A_H6F1OAliZUj-2VYl5Y"2)i>YaKg*t)/l8kioW)9
UW)t]AZH69FlSg*'S^@NE^QW;(I:kYF;MTnd:g/+&5J[Bl_K1Z"d;j%hKD:C(-B3'#V*9[S'l
(toPERZ[5=>X($2mok]A(I7t<p<)3H5G)H$ns%ePH90#MhV?7hlRuk%DdeN#FJ#(:R4EcQ&ou
fGdkkZ7jXnX+"$/Te!s3jhI]Al-'S1:)hG?t&.\&MYtR^@8)Bp[*T]APhoaXj5@-Mb#V/A6;%7
V"ltcC'1<E3Wcru;^f*%>LcpXXDUBT1lfeBNMY**HU8:EM[U:7R2[>*0#h]A$q#3;MXO=ai@m
Ob-*!"gDcPrf0dehr\Zr;E7uT'7)_l>.@GT8AI,o.cd71C/&@?%Ab+/"iDO,-ID=J3f4(Xa^
[A.P/OhEkDLe"$@V)/es%M=o+/r\Pqd_+8+,!'d)a!h6!o_Y+LG!S+7'>[lI_4,Q6[#_9Bo^
\Q$,N%.uVMr2U=d@>jYdhK=1Cp!KeVZkNPEc*"K8&g#RF]A,3ld]Ans#O:_RVi9<&?AE@Gt8TU
[le:p:K\kY%p+mQA&DOD`Pm]A:fAnP_COqX#@^r4mjKY)NrS!pTEKh+"b78[G\fLQIqTH:^nM
24%#jF.AO=F0^;t(fX%7pIRX4]Ad_!T__B4RO3dI4]A9t'?p@6?qdZ:X4.$A_OSqBnKt2?;&f!
/jRFN&nAuR^$XRf%J@,3JQLHVCL<.dH$AF&T&HhYelNEMV[0.L2^W\6[s/mgqgR\m11*01"n
k@hX@O4p12TP%mk%#YEREq^l;74-I3tqT^Thjn)+3R:XbAj'Zsl'IMSo:7rY*Q<-EY7lB9a?
WNJP7>`Z=cRmYk4cL8TH!\MJS>?f7#nVPg[nApXFm";0p]Af633ll\*Drp]A']Al9QBaPM(Ht,B
E`)nBG]A=QSB%u*jj\I]AEnE0)+)$.e.9cC&AJ3P`PTZ'CnQb[q0(@1rKYgD"[@Md5?.7-#b:0
O?nI25BIMN@?NA3&RnYWP$TpnOV$O6`IfqkY%Q]A%CgLk?7NHD!HZZ6ep"9]AmESU$m'A6)t"%
E&.<QP=10OYpd\(J#SKM00R`CJD]AQFVEO_2A_6p\d`Q4om9A,Eg1p)3k#!4;KfkiMHmo1k?e
5:%hSgE867$:q:8A.TZ[LA9,ci\Rk,C>&[2<sesf&h%8jn>khgej6`m+0eqlV"WhZY>b2Yd,
n`.G8Em[\6gteUZ!=g9`Sb%O0g*KYF:t=JO6\=8<+QgJfmF^R4<&$JXEt7it7/CTLhiWdlSp
9e_9F'!XKomsK'_98@r2>u<>6i/4*bFrQb]AeE<GF67Y#UGVHF%bS'Q8G0On%#,,6;S50U`*"
DcMmt22M07;FEiCnaA3H%S>eO[1;MquX5Bgt/Wi9G&5iF`HNJ"=!]A$T,KP?<U\g\3Ss3*:,>
c$+S1[24.L6a/Pr;PjMi7-)35c@+H?OMh"@b9ZEIR*#m92o'0.HD0kI-IE6eGd626AtfuG*-
m,53SK.OHm=Xp!b:(?tHtScfUb+oMY%Ah"EJl/4qR72dS4Ej/CQ1O1e(Y`Sm.GqPgb$dp+.t
Si-7CSbHPF-=(rJoKqp`d,lD$g=*DYCk/#&1\7NU5gB2aFQ1!3NPM>HU@@%K=7aqE"(36W.V
3SR<gkP??0T<nC&6>aZo$)dq37a[@MLji^f9+(QDqUVNHZFi$[k2[n(:`uQ"+/l#@_5hi`FP
q\1G![j!J<U6+F/!Ba4g:n33E^.!(4Q7'ini97[^JjbT/3$'"2:^J"cZ;n\FLT@%B<dfe@<B
Fb,]AX[R'Kh<(gYGZm$sKNci4=$htZIj=9/5fXY([\[hP?`mNV#>0*e&NPNq(_b[)Bm2VW-Td
<06_7A5OeSfeK!E&k<CLm?;\TWIp.Q-6;Hn.W[bRpa7\ZrJR%i!lFGHh:5DcduC#Le^W7&e]A
dh%ca0iCJs:uETCY6e1?2ttF62N`g;osC>b'+<mLhBGdbaYh"5GXai,,HBnep)/\3(@:RSej
r>)_00"njoSi\DL]A\5?R3cil6\PuO+Z4u@VTOH1,op4'tEg)E/:Y>Y?*K4/@uqXNWBo>B[40
1Q:rHhV\-W./NMjU\*3'br5^+?T&".PX39^CM[&3WZsGa3WTMjbO'CWs.l@1KD*a`/(bDTfK
$p8?G8&8S.]Aj'N?q#L#LD=qU1g182LsQF#d2nDfV0Y5ESp$41L<<\*%Rgc\Xd]Aa+@Kt/#H$^
:q3*#)i&L'^a@g(&m4rg"PjNqBD7Y@NBCX`O]A2aHS.SU8>F00Vc!@W+dm^uD@$kUS4n,WiT'
3ndMeNeGI19SfPZrT[:$NR68EGf`TV,:=p7m^GI5D/$15He2kkF%UuRW.@<="2)sS#`'&R:>
Z;B@?rTUS)#N:,Nl"[0QfFd"9JDUMurah#pI''SG@2t^<TAWNt%h[`3fcYAsV-c!-Hf#<ZG`
6@iSV3H(YL2"!\Xl-9`b-)j"7mcTET[l?F40ef7-N!?Mr<96JHcAehZSK6IO=SC<3Bh3Gijg
KZCX.hNh#op)6=1N)>'YaKh>oTnlj*Cm6!S?imaQ!4PD/K,in)a#+G/"P\+YDVt#[fc9F2[O
g3jShE?9\nm71@bErd/-9@>\BHX9L9BA<cIdpaSrJ5S*]AMBH.X)S.S=g\N<=h'@jDD\BVSg<
ja#@K3H9?o@&eVQgUZAXW28<Ik:V,oA<uMhTAp1jZ;?GokX'WPd[Af("MPaheM0'jN'/0u)l
uT(p*?k_4"R4q^\aP2>m"a]Ak=mTDiHPLF4-jAg4l%t9[jlGWq40=MO$Ulb!!@0aUm*81``Z]A
nRNlB_T!u`)Tt=i3[[+D6p/qP9fZY)l(V%U'DATgcmO"VPc@#"sE:Nqn$ch>'L`SeoONS9dr
AgJO:S!SZE`Y61Z:Fjk2;!Ea5X(>o$I/.u$hP"[F+ulCjE>7#YdO[R.[J%0jV42qjQr-6($d
uB*Q/scMq^#d`<gZLc8]Am7]A8Jjupuu.=I;fEA\kBX(JQ,0Sm38^X?NEPhX.W04`NojUq6`'V
/>`+?i(0&*SiZsH,ah4e'ojoIbECe\5k[hXqDdE]Aq3OLb<k"=%pm#t#m(n.\@)OLl=PYbDF;
9-4nO:e2XW;f@bmV"1%GY3eeW%"PmB00>Q:ADaDX+JSI-[Q_h7OoR)]A\$(2kthA;@k30c3D&
0'c8*:3]AY!@?h&R!q%k9lJ@20jm*,P/@W*5,@2ut]Ad=U,ijjOSP"Y<:_\8^D-W*RF7J=8R\(
I*)1^AD0=P7QN"+:X:<#C-ocGp>!s&qu;bUP=kqHT\,\%-D,lR1t-seD"V@(i>-T?k!"CcQB
dlVrh>dNW!b,YkbiJbD18i?MjW5To?f#/]A0c"+rQ$=6D]An^MM=(8a$#&?b`par?tml%Bl?R.
)\MoPE#>YL0d*e7%CR.8LeGke:og8?KEmOc!W5q"LIb.=F\OWe@l2tS!qO"2!InZ"igd;>W3
$8;3P!8+%L7LKU-JAZp1/bj;NeI?VClUCh2Qa79"$tjmMYpJD$f3@JEolpBj5mMq"ODuMX0C
ai`cr/=/k9mMS@9L?PQ+H#+"H"M*mg6GZ5%JNZVW>i2RS_,D)'.eJncg4hn^A.r2V^[%`0(X
_si>@HJZJ1@BdcGNL2=@H=n=4P)?1k9L-?'7bG;FD'M3C3m[PGIJ5=ZCW(gqF[>h)aE`&Oo1
)4<t#e'>/>>Da*NX=I\2&o;#Xj_BULmb-o3kchuF_aYE<^(!&G]AAX3TetAD3K#BYP[Bp%km,
F3ZSo#=,d>H8hY,AOg?YB.Ou+dmB1cg;!VjME<C)Nd`:?$RlSVC\q#UD8?5O8fQj(&)b_j3\
Qo7p5/F+)"Me/*;utRrn(,k029W<(-CT2;4)F(45HL?Wi*h=^is/hScq;P$2O<]AXgn9f40Wg
SYN/=0UlduW-39M>4OQA#c9UToQbWV4Rq.=agTS1+'UXk)GG(5NoJ*T=r?BR;IDH2,,BrH)h
9NXCIsnhl<"&$HVnSGj@bF]Ads0M(:'lTUi4aHr)!r~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="930" height="294"/>
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
<BoundsAttr x="0" y="277" width="930" height="294"/>
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
<MC_Attr minValue="0.0" maxValue="500.0" useType="1" areaNumber="5" mainColor="-15963469"/>
<ColorList>
<AreaColor>
<AC_Attr minValue="=400" maxValue="=300" color="-15963469"/>
</AreaColor>
<AreaColor>
<AC_Attr minValue="=300" maxValue="=200" color="-13532222"/>
</AreaColor>
<AreaColor>
<AC_Attr minValue="=200" maxValue="=150" color="-10707247"/>
</AreaColor>
<AreaColor>
<AC_Attr minValue="=150" maxValue="=50" color="-7488287"/>
</AreaColor>
<AreaColor>
<AC_Attr minValue="=50" maxValue="=1" color="-3941136"/>
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
</InnerWidget>
<BoundsAttr x="0" y="0" width="502" height="277"/>
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
<BoundsAttr x="0" y="0" width="502" height="277"/>
</Widget>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="chart0_c"/>
<Widget widgetName="report1_c_c_c_c_c"/>
<Widget widgetName="report0_c"/>
</MobileWidgetList>
<WidgetZoomAttr compState="0"/>
<AppRelayout appRelayout="true"/>
<Size width="930" height="571"/>
<ResolutionScalingAttr percent="1.2"/>
<tabFitAttr index="0" tabNameIndex="0">
<isCustomStyle isCustomStyle="true"/>
</tabFitAttr>
</Widget>
<Widget class="com.fr.form.ui.container.cardlayout.WTabFitLayout">
<WidgetName name="Tab1"/>
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
<LCAttr vgap="0" hgap="0" compInterval="5"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="report1_c_c_c_c_c_c_c_c_c"/>
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
<WidgetName name="report1_c_c_c_c_c_c_c_c_c"/>
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
<C c="0" r="1" s="2">
<O>
<![CDATA[区域]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand leftParentDefault="false" upParentDefault="false"/>
</C>
<C c="1" r="1" s="2">
<O>
<![CDATA[投资金额(亿元)]]></O>
<PrivilegeControl/>
<Expand leftParentDefault="false" upParentDefault="false"/>
</C>
<C c="2" r="1" s="3">
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="1" s="2">
<O>
<![CDATA[区域]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand leftParentDefault="false" upParentDefault="false"/>
</C>
<C c="4" r="1" s="2">
<O>
<![CDATA[承建金额(亿元)]]></O>
<PrivilegeControl/>
<Expand leftParentDefault="false" upParentDefault="false"/>
</C>
<C c="0" r="2" s="4">
<O t="DSColumn">
<Attributes dsName="ds6" columnName="area"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0" leftParentDefault="false"/>
</C>
<C c="1" r="2" s="4">
<O t="DSColumn">
<Attributes dsName="ds6" columnName="bid money"/>
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
<![CDATA[$$$==0 ]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.RowHeightHighlightAction"/>
</Highlight>
</HighlightList>
<Expand dir="0" leftParentDefault="false"/>
</C>
<C c="2" r="2" s="5">
<PrivilegeControl/>
<Expand leftParentDefault="false"/>
</C>
<C c="3" r="2" s="4">
<O t="DSColumn">
<Attributes dsName="ds6" columnName="area"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0" leftParentDefault="false"/>
</C>
<C c="4" r="2" s="4">
<O t="DSColumn">
<Attributes dsName="ds6" columnName="bidding money"/>
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
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="微软雅黑 Light" style="0" size="88" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style imageLayout="1">
<FRFont name="微软雅黑 Light" style="0" size="88" foreground="-1"/>
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
<![CDATA[m9G!?;cgCl0m;!f1j$_QS-m2pe(XVFf;]AsVUhHTiX#RMre7Ki*e5E,pLk7aPP<N\r-2+b^e=
)%oMLPL<'K+tir2`@V9R'*m=0)E8?AXa[3D%N,qd;oG3n`[HLsE^/LL6.6IJ."E[smYPem?D
C<ildWFMa4T&-R:Njd2:IJfs)B#Vo0Rn/oH\(i3O3#kIEKQ^>GUlF(VX>#o2$leEf6LJ3'ei
l(/4>Q30M\eUYup.2^R5)PnO@-YRq:X;/pptq]AjmMZc-$.M^l7/IbBQ9XDpQ<J7dr8mA:k%;
%%n$eVK$--jKR_$dbAP\n*7esV`nA36'[ZA*gqEmYVIV53_4ncNr&%hRW[bOI8'359S:RTG,
D8k%0XHP;ZY]AmJr%E.,XJQ=B+UON(d]A))C(WeMD)0qC,0K+A'CN8#\l0f01+#N)\eI5%Otp(
QDu>.h>de\a_gVQ5'-93mV((;*k'4c7gZS]A+]A%Ue+W$ie'2(hV&bq%GMd9k:CcTe/05A3Q%$
VSZ5;fE6X,Ioh%EGJ@G'9>+[iQ+?X8b>d,;.RN)(=dgmHW-KV:s)G1bm,+*;'!R,n#G4C<Mb
BEl)Z!Lj+cdU`F<DF@gl_B9F=^D_?`6ST[4(Kf&FnNLt:t>-VrbpFK^*.kmKj5X6h6p%\emH
qt$dr7%(3Z)"VslP5^#5R+Zp;upiWm[4kj!(!K%?%t*p\9ONmja#^nfofo;F_DcoJ]AKf'F6/
D%)JgbchlSif;P=#siqYprS\TUc"R,:%uI*&[rq(KY67r4C5(L.%(gsJ7!>76En8R2g1tJ[)
$&dgJ-K5HSQ4S<@uf8[)K]A',^Fh8\Q>T'a-TL:1uK*_8*aZ#6<O_b4:!CN82GoR\THDo_no>
N94j`67iG1N%(`#>lWteKC8F'J-a3>d;S3,F1o75'\&M'Kb[@B=G*OUbe!21sGW/Dl31GKle
elW6JphpJJ`$?qNRf>?r@pXBb@]Aa6;jTY"aR/=tkZY13`qA=[9J.h2loh#]A.\5TgL_Ms&'*H
u1(h_LBj<i[$U.Q@"Rf]Aor--gNdA]AMKZD]AH_Bk;GF4?+TtR`Ic]A>b%gUt#&AnZaIAa%/hO9)
W.);L7'/ZP@+A>(m$,"#Y@.OY*tJZbMDFB,b5rBK0>Ool1:\l'GALoka9MgJbEG=4FYtuDJ5
TlD*7c#XS[Ns%&%:,4[!qs>eMV3FQ_6ZOh[uK]A1+V@.iD728?"C9K^*JdO>Kne^iT.,hdVKn
Qj+pk\heW(.g,t)u]Ap:qDq$Ts1Z^qo'Yf73$BP1WNE=hJrU!cTP('g5n\R0o[KIki!S,Y]AEL
_9o_@UlR@$SBI#0\\arIMS3-Uo>?jKG0o'Al=fGj\uefi)@i9F5M6rhW0tti4E@kGuDii7Ii
^CPHu]A\#TGWb+i)\aA;!U6B;WCsRg9B6NW5]AN=I^b2Oi?JIOSTAhrGNb0=m%/AqQ\VoDqa4[
m=8^%J\087qrd`YqkL>M5I>1Hnk!V.I+iVa>RXbjQg?YA\O,#$Cq2Ur=R#a&kNch^f*k+>RG
;OamLW-qVAUl\Sk>$tANOASFh/nXc;1f[[cf@;e1KpqA^E\Q4s-1W`9[mM?($!6d$dF8/^Ge
<H70BY:k<HXN<Lm!R9W4IpCU`ZZ!eTORO*iXn"m'LKKli(+`m>XYNgaXi`IRVV[5qYrb%[1"
\U,WH'L_^_ehq-Q+a1l=nG_ROa6^=E%)\TC,:HE**!pS\,"n@mG;i5FR\*u2pHl"cNEeAI_=
#]A^m&]Afj!R,,af59+WO0$Y,>m..Fi_ED6(fd^pA`sI.nDR3ie(A-'6F>94Z%ed7N\&;ATC.-
#-nWb&ZeDKVQ63EDWd[n$Na-h;/6/s>m^0+?rJuId;?66Q;T$.E@C@N*_`"ia\i^YAYXO6%j
I&k50]A0X8/3!D<@Z#E6kmB,`S:r;OHq1J&p*1EMM<qU<@]AW:,$[g/M%UUP07'gcO\`J$DInF
qOG\!K("JSpQ$X17PI;pbnq$FI=II."V*OQo?*L9Tc2+DUjW2GQPO#:GOWf'Y^+YStOT!8lf
.6.SC,>l8V#N"c>4#YE;jXIliEGe6ET!'YeNfYm@lE2THd^_$A.u;3(/@Uqod/1i]A/i!*7@#
Gaa6@=t@F]AbBB"dkU]AcT6mT3TdYYras]ALgX43[cDh2bA'@YA(UR%F7"CEAX5NOigIFH^od4j
G*n/qCmr6\*J,K1?Z34`9G"E>$Fd\l8-fHASc@/A._\^^S<+W2j=3.YM)gB%k*ofq't".l&D
[UPi]AH"%r+WQqd`)HDM<G&1W!?'`(n_ul"m%Jm_;Y,cb.ggc%h%:X^e<&`?Zjni$c?`s;ZJH
^AK]A5-\oVrGI\O[<7u4n&HQ$:Rec[4;26Brjj$jLkS<Rp^Wk62Q$(.P_>@p7qNgdSDKLpt>[
JZ]AO27W!+ftef6F;/EVAATdI'0"4TEb-h<aMEkS!8CFGY.UaL?1</D?#8&aV-fD2[+,R>Me0
Tt=##0BEolNCdFQ<T(Hd2V'[G`h7LRJfGo]A;Xf<P'f*(OYhC%fnV#/d1I#5U<"2MZ';GQMum
;oApV)4pM7MZkNWn';a3h`MW[ci,)Lm&]AOBjsj-VmUbto\a2cO]Ad)M[dgT]A+kPZGug4i]Ajc.
N8t+?TVh)sARI.ZOa]AFP=&uT+LdSB)UZ8$G_/+^W-EVfu]A_0'?im$aubO4%2-YS.Ndic6_/Q
X+1g9pIb3%t!68hl;Ae@'>NJUB!dP\d3pPdE7a`W/``kK\2cH)cjrcng<H-r<fU[`8!)\Gs.
D_7Fj?be%229;$O3<PL>W0,>^fUhp<VJ.W]A!ABeo=f`YO&U5edp_9A['L(GoYmCV,s_<PQ*$
GqcX8CF\]A"&mYJ2Yk"If]A'%HhAWq;F4`%7]ATXb^d2>)6!#uJ7IP3Y*=o,0M)oIia7.gkM.jR
h.KWIW;lGPX&3EG>3jQC5RDN#nGlt\/Yt&9*9k&['cr]A7VPsZ:RNa&0@^E,FBXf$TL<d.<Qt
Jg7GV"Z3L7s)6,g-80',3Fq7VrAc&2#ZQ9MH*7^k!SSAhFQkDW*!=6Vmag%V0mI(_%+CQc=X
P(bRtsPSo:e]A+X<rE:'S=?;&CN0kAEFNu;(@6cQu/65m':L-5k%;ojFr&e,%"qQk@<5brq4E
=A_>"Oh!SQtk%?DPa.=-4Hp!1dg,!'b>G8S%$bN7SH*%gI+8'lSf@P$186lb&)O<;=OlR&\@
j(NN()u:m_,G?'`*'7m$V?Y[k;3Y'-EpfB2@ZZd@#HJJ'qSBrsnV@r`I]AI6\E4Q;=#!cmpC\
U$HD"IQ</,d6a_bS_oD"XD_APMg#)okXGG]A<i'O?V!n[#4+VI9Ar-"o4mtcA]A>CiQ$jhj;<=
G9P#]AGG\Q.:FfMNlOs8<ViA`(qXp+%V9cY[+=QS\UN-%`O*%R-4uK69]AqplR:8[T`^J(d0t0
ofmIY";=X!I`(ip>+n+AQ+4kTc&;FquWZV4j'`k%R\UsV1.1W?>;..lB0Spbk#_H&oN/4<S>
$9ib!6KKtq"TbP5(uV:B.S3,/>B8a'n"<I(fQ5T)jF0:e_o8cDG;E)CCI!L$qN8>Ed.%1$DC
4>27<2FC=JVG@;Jl\-6t1k1I=n5M'TqG1kQ-1^UVp'KR`;*K6%kbrG%^t;<2bJ^e6*dE/YA.
!K[dA]A`1DRk^Zf%L]ADM(GGeeiql[O;e<n.;[BqN,4_+CYOKNK9mgA44?uJ:DM^,&4ri_Z*]Aq
0N^I`MTR,>>7S\]A5![3HVY9[hV.12SaC#=:36Ufg!poO[L(?hT3iU"W_bV$68FmWY)!7[E\a
[0N2E3^^l%p^3'aCDh%1e<^0Zl_h=98GV08L-`06dIqU!<p]ADGhBSPSi#8!o<iuECOKkT?<V
;B<dmsb%K334Xc+2ou\;TE4F$*#_lO>aWtj:`A?:/O.'"3J85K9/_W%SVQX-R%5drEtIig*0
a(o([YIJgE]AWoC-]A,F/*a52uCsZM=5<ol\2IP?s&QUYX+%0aEJ=Tb^rfiU]Ane?)`]AhNitUuD
NtK0hEV=anK4/f._GJ!aXc),j&<meuM)l0=/r`,ZBgc8RrnGBPMK<4<'>FinLJcE9ciLVeR[
pe2hk\[Vs',ihMW]Art7]A59pNtu(WA50`a:-0L1@J6Apc.XiDLH*/5MY`sneTG?,(!n`Tf_)T
R\B@W5GP:VX"2]Ah=f`\[A1W;M=JqT(o;#f_-r'7'*\n@0#$^8ag2cW`U?Q+)5T9TI0)Or!e:
+@;Y?!K`J0"IqY1u-X&&jK\j4E3MqXHr^5e5D9:%gfs?lKHEGV$*h:ZKs-N<EF-MfM-SjWNP
\a=c5T8b_'2[-2;-JM=<0kf\4a^J3CfV]A\/1<obPE6;Lu_s6t8dpY`46_Lt@Xjs&$=_C$N*?
at.kt-a<IoE5obq%U@3gSkop!da%r]A`WtYDkbt(baHV8rWdHQq5,\(R!PTmH[:L0dcB*(pC@
XNA`DdPM8tX//6U_TKcHhLs;594@V19g@*j&JR#/Xfbp`M!eUfa7$f_$)3(7)1JH<:/<i`4@
rRFDa);@k8)!;J7PKrJ2p.M:K6034ToWJ!]A2aQI&:p"m^lO?J\DA=D\$n39iZNnTqLTaT#,R
6[TPc&s8qg]A[0)2f#\FlZ.pbL/hP^J<jf(Ku,@KiY7JR.K^*]A.QeQEU*r@(fm#<6!rVeR'iR
UG/:\C//p5JnE'*+pPcA'#0,qY7]A2!qcHuQaTSBc%^FojG#K,#f=PuAMT:-L46ch?6s623&U
0#5(%8P_(MKE.R?Js#^U6,)!)V#:n*NZPsu`O"M6kkuU73a]Ak0W6dJus1!d6NflSUQlI,oiB
HE*BP;1<QRb,f=R!=Z)O;YMn/"YuaV'!Zd"eWs@<\@SWn#.@%Y1u#[a>N(:#j]AKi>5K7,S9o
?14V!0m3Fa&LV,.6E;_HJi;R!OrimI/6-?HKqGp4-9rT7W)I*e))j'`dH!77/KS%?+'p82_Y
RoZj!k:/#@NtW6'`<ujQ]AJ`s<"94g]AWnpWj;<ua/C7*(<B+``8KhaEa&iZ6pI,-2d8[^WgCp
t6GC4$k]Ag#`D$iFe^a3Q4]AS%NT>prAU\GJ3k"@b:&9NT^<7)]A.<8jlE@Cg#?JQ[G)Ba+nEd^
fNLdb*:0?o.1"K^@(lomCu!j7GZ=lD#(-&"hHWee?:KL0\$dS\#l.S(-)I==d9K:F`u%92mn
SMCW2t["m651`I`c_`G*Z`Rf5rsre%<;3CN@Oc/4C>"<X6I:hE;1'_2lCeDIW#&C]AmKl]A;e#
k_JH'3K,iSe+`I\%Q/+r,dc,?%+tFt_TGJXJWGJqfRRjpsg8V:^Dg(PL;:n;4W@WQaBN;q'N
3u-89O9W3e,NgG=ustV\[=\imYAM]A_d"bck!2G"XU:)-M*DEu5lV]A"PE#!!QU<0c^![B@m/A
6)(5@0:_oHh;)e/(#[eB,Ij-dBA&X5@$&:`#@_4O[7D[u6k7f^k#k#Snacdb'1.LN>P-GMkq
L.b$1`rN\)'LnOHd7[Kds6Be5ANGQRSDiqS1Bm9VSVlqS\c`4K+^2p['3dr#"7)*H%Uf=]A8=
IGRfe0'595[\7\hhf'9[@H'MnD0>"02cahI?PLnZ@5G,DW1>1>rPg(;X"+Mm-iJ;CRHBKQEN
Scs-@cLuX=Y4gZ"qbd'>Tb?#5C1kE[/PIJ.)'JO:9aJ&3^`NK"N\g>@X3f6HcA[j0o4`9LBX
QD$t'QU"`&"24/>ZaD'rYR57W(0X78I;BGjiE*t=DRh&($VmN=Err&_O8Y;:K,mOhQ[/?]A$6
ZNF2UWkr8f^AY7B?/0a`V/mnUI*W^%ei^$'"_<ormVaJM67RCnd'OF;B2]Aaj*JZa-Wr)>\5#
PfX;s@TWm>SKMO0,oI=-ln?`Z>5KF]AkDi,a0k,hJCV#i,*3MCsfZ%M3A]AUY]AikLod5njX<L0
VEV83sI&(mM:VPEWmdcmPU(,&%`LJp#=e^VYF^Ne4an([>&-fedqBCCIGBW`f.oGUo&\$7ds
6#^#D*icj>>(*@dP!>CneNtq^nSPJ.T9?/_tN'"):=WkD]A"bDKFhG"^$X2J1c\;X&!J<[9AX
,bVT1#n$n+;kVn1P:d0=.18FUQ!:-X\UHE2j);Q9F5-n6s+GEpeh9%6u&S:2A^"2-oVG\aLN
^"$C`0\M2KcH1b=buE*UU'Z72%722X#ej0?&69&WBErI?K4Idn4cJ]AR5hH,UZAjN8q%/P8nL
I?223C;VS4moPgI':o`9;'OrEb:g#'H8tQA&,m@~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="504" y="0" width="421" height="280"/>
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
<BoundsAttr x="504" y="0" width="421" height="280"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="report0_c_c_c_c"/>
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
<WidgetName name="report0_c_c_c_c"/>
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
<![CDATA[1097280,1790700,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[762000,12649200,4038600,2019300,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
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
<CellGUIAttr adjustmode="0"/>
<CellPageAttr/>
<Expand dir="0" leftParentDefault="false"/>
</C>
<C c="1" r="1" s="3">
<O t="DSColumn">
<Attributes dsName="ds10" columnName="项目名称"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<CellGUIAttr adjustmode="0">
<ToolTipText>
<![CDATA[=$$$]]></ToolTipText>
</CellGUIAttr>
<CellPageAttr/>
<Present class="com.fr.base.present.FormulaPresent">
<Content>
<![CDATA[=if(len($$$)>62,left($$$,62)+'...',$$$)]]></Content>
</Present>
<Expand dir="0" leftParentDefault="false"/>
</C>
<C c="2" r="1" s="3">
<O t="DSColumn">
<Attributes dsName="ds10" columnName="中标单位"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<CellGUIAttr adjustmode="0">
<ToolTipText>
<![CDATA[=$$$]]></ToolTipText>
</CellGUIAttr>
<CellPageAttr/>
<Present class="com.fr.base.present.FormulaPresent">
<Content>
<![CDATA[=if(len($$$)>20,left($$$,20)+'...',$$$)]]></Content>
</Present>
<Expand dir="0" leftParentDefault="false"/>
</C>
<C c="3" r="1" s="2">
<O t="DSColumn">
<Attributes dsName="ds10" columnName="交易金额"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<CellGUIAttr adjustmode="0"/>
<CellPageAttr/>
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
<Style horizontal_alignment="2" imageLayout="1">
<FRFont name="微软雅黑 Light" style="0" size="96" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="0" imageLayout="1" lineSpacing="5">
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="2" imageLayout="1" lineSpacing="5">
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m9G'E;cfF%#p:^$m+CDe>LOIf]A%r7b:f.TGEU4*Dd:PI`f4s)o0!/ig67Z"@+h;=SBKOc(BI
b2^_0(uc\moLRa9YA?/L+ppDX(;&9S+>t0STQ6KRDUfkJjr&oq'A\/:QsF*t!%/mlBibcLX6
go:F,1s8%,_pp$%&+p]ArQiU<B:4bA@1&VR,*4UV*_7t4JeJufM8I!5LIKpC8Lo096[[_6Eib
I3d$MdMruE:!AQ0A<EOe$^CVKe6WFmC/!hB#"?E]A<Okf;g&*#4H%*i1HcEI\'N'O?<i9=?e'
P#C!/I"Uh#PH$O_`++k'>hahCJ@/$4M^U8E6.dCb>0;q7G:S?I:2QL8-6<i56%D/J>ldZ9NX
0I;HX+.%32`m>a^N/m)8+16koI;#'j+7cK/ZJAThPt@2,YC@3gp!bQpg;Bu<2_^<3AT.Ui[C
1OlVKrYD^A#sd>OJr^f;tpkZSsI_`mbj?^IL#\(oc3bj2Jj%"(S,_jC#-]AThiIE,!q@d)DRj
Cc!s"SO;_U=\WcX2($1H^H]A-QtN?mO(74Hs=$<$6h<`8OUQK2MN8D7E#Nq")#FZ;Qqk=U\7b
9s,>@?H5q]AK`6+"'\dQi@%RUbfNt(%5&eumZ"@Wb[Y3DDC8/uIb&QfI-5h[3^U3RKsOB"jXo
"6=c+Dp[Q]Ap+N=!hQ[`kKqgbTU:>G@(qcZUl2$s:57?a@qH^-F,]AXK*C5aC;]Ab760f"VcPdh
KTqB/$21fVo["#WY1_*`.m@@qi]AV#R_"_"Um$\VQh,Z#:k.#ef;L0\5SgQN$0"jNl999hKAq
nc<pK>G#o!s-)o8i'upngM"=hG0*IOaod]AHt7QlkCP1L.O;-',<ZF]A;BO/pu:nb7/XFRkl07
(gY$g9IYR\O5(*J)W,uqn7rApJKD">fU./aMFTAI7Od]ANfEOC&go=3ZJ#<Pgn0<ap=/s6Rip
q&qb=/7kO=YRN!LW>q-F7G:s87D-sU2"gL7Qp?FRU``b;,-J.Q/R,&R(M(IZ0/F8Pb4KIds@
FEDbbc9h,Y"pFm-=0aTddP<kcK'(%3T#K9:Yj!(lp4S_o6(-)LT[*WLeQ4?kPX;6K,a]A:@Y0
Sq`lDPV;JfV:^cW.(\!aR+s(W=hRtC]A*-YifKZ]A@\J&>5-l8N\I&]A3d5T<4#k&u,b(F6I?dj
n+O-cl=2B=D@Cf);,YNHO/6=jDYe$5NHP"*69,Ps:JH6n.\0Y/bm:?0)kZK`Dmae?Oh";KR^
%g:9";!U4Ii1D###MFbh*Sb(1JAZ'@YYn=_.+R,l_6PRH[pD=PV'g(sH;q6dfZ5Ki^9$1t3b
f`a9SU)rX]ACb1YHNAe=[J=3+/blfsq>*M*91XGRe&`XsF4k0We!IrDTA5$FfS+e0k#e?_\!H
4kP%Wd[2^QuZr`V$X9mVJg;CS-&8=!6;H\BdL:YFLBJ^&>6r:usiTd4*aOl(en$a*j/r9<T1
>J=<?RLGLo=nKqTS"'7gl%Sla0jGu&S1$F"aIA.OhnJ99mCe,607+B^MU#ScZJBFMRk^[4>P
[iToJL?\(>d%8ba6&/bc@e2>U\C6mC%OuJ,-?bm=rlg"$MR>haUS?Z^qS>TuuR%H&fH;%%0@
BA7I/LZ&spb4PGVT_Esg/E(.?_JB./&r9P8AFR(4K`ChHKU3bIRs$&b^;;4)d=dq(,Cr,,ID
JJ@AC5OD:.^68K,U)[pG:>TB2#+LnG$U#V/am*YRe't&"na?*f\4#,pZl3?QEAl6?9B>`Ht(
GNG;\=O(34qi&U(I2F@VOCaUTVj,(&^QK=$dD(jQFOoaC<"lpFb/p!m$.P/Q6LKr/O<]AW7cr
dIZ.d?oWCY6sEpYT8e0Z]A++!$o6OB19hB_i2[!EWD-5*BkttI;BuO?%et7WqHhrSWWZhghs7
qOYrXm#X^)'Uf%mPMAdN7\2Z37^GAR5-f`&QpXf]A>m5B51uenk@qgG8mGoKqDe0b>q.7C>)r
*q@3=`RbVg*s8LMUr]A1gg5JtXsS@%i+8fet8I!)>a,nX@El=W4kDqfA_*A<05\il]AF'gt^HE
FsuD$u:I[cTf6ZIGFgL0U\1XGFnX_.]A50q[*$t0?3-J]A^$,3/jl8WnaJQK-K=]A1fLQ't3o[8
T_`ruib[*nmnN&1ti_pHZXCskkqI.7A;<JF1Yac(GBV7#b/;Z%N$P`2YX3Hu%'+P3=>S6b._
`5,Uf#r^PKTSi=O%I?`R#H$sE4hE-E6p$*+K=D:M4*&2RAdSgcp&>8I0X<3`.i<JrI(-16T8
0,C&j*G`%NtX4O(nGsel/QK[f+`@opmrGg#K$,#1.8P5;RT2(S!(@W#THXBZX%iZaL^]A,/&C
[ojo+sM^Vu.GMrA<=Dmf]A7IQ<)*_32^)A&0geMRh:e_SRWi^-+`Xc_75ng20NgBK\j@+i)ff
t&-KfZjZL0QbbNV/'iA15(e0Tp#r\`Ybj0.dkBQZl7%+\g1]A=a$W&5$B(e]AWFZAOEIB<mind
=P=\.M[()I?L*PjCHefK?2$gorJ#8aQp!Fj8]AH!1$;+Bm,i=kZ@$AR&nmM9aA0--3l#>"OXf
Zi_]A2dS:@+=mKe"E@F4m'n6Xh0q7l3`$;T2o2'a^Xp7s!X.+8sZ@.dR=g'Tth]A.-T$^i!@NZ
<"fiqV3Y\(%^)m_>1t:.h\n81CCr.k%")K+n?t=]A$!`?MFd!]A_cdOif<1G3)4Z&a62S#n=7+
=Tp;s/?,`QY0Hc*nJ;#OR7>AOtTbh^;B4ocp#URB#qgHLJ:^jW?"H6)6lXe^\`9USVc*88>1
+"j+%fJ6-/p!X0(!L;j+lnr^i^;Ga3D'r%Yd,Y;1g0s/$BC[ILaF*MQI.A(bqWAa6W<e7R0o
7/S%"(Ae/nU?SDpiDhS,0L@/1`\A%Ck?)lrpk+DN;>e2rIQ8K3W"W2c!uW8ON!3=M_5P*n\J
_@WHWo-\[upXMft]A3EDsHD_h"2@t*(22:]ARMO$L2&LH-u%%h>M$q)CWo%7=,$eP#[TG@6djb
\22,be"gF,D1a-n!p"c0SP6l^o1C]A`FGo_*&.5_JoR\Q%;[_K;+#f`,dZMRfUj0T7cdSKW=3
!rXni_:q*"YO81QP`Yg5iL;\BA</rbugIkQG*>3$&O,n5AB.>1*In(&h4S1VCA,Q;5Jb2QHs
4NU#44&D<G%Rm;F4"JB,SadIo*RaWe,%T5=.]AL'UkImMXd6a$#+#VC&#!+:s&+96ZWaLHoRf
$$Tjl5c:>Or?5RWD,H48YZIfljR/00/FSnkOoH0g+I46"6c]Arg1G[C*-Rg8@3R\9>RGlrK$9
Lol?m`f4(;f\0K'BEqM[U<ZKPqVcs($BXn`Ht%==Y!toCGJO`D.nW8p>_toHT?P.bV)%VY<:
gb3S8l7.'Kg&l*3S@rc8D@\hm_SUZ>PtRHRG<O4*ps&^Aia$F&8#Qd.OU-Ji]ACMkKM1F&9ms
I<Wt&\ftCG]AQm/Oha%2[5>3uj((@.\9kCcW_@!r&:p)H;\`<dL>HC-U(?+Fkd>G/bNVCZdjl
6WT8Q8WB1s/<!Xnr*Y]A4]A'0K/6tNH9?>o7L#/S$M0lL-1S`=8mldfD2oE$W)G*)P49mI8hI&
=F'K#>LR(To'CDc$d)L@EJNbB1-$*Eq^&`Y"h9qb4sM*)!,E*=IQ."CY2pOWuq.TBKH2QEdr
f!!)(ks=6=dN!'dXR6jrJ:gK5WR$)FRKcT%_,E'CO=L!aHX(I!8t5T@+hJ-*JV)&d9Z[5q-a
Eh<&U&XnOn@HAmMZ^^H#prBNs+cE%48h`>:hImOWVM@^LTilY1Ca+,.MfR%5a*=,Ss"AoY"l
Q))EcM#"#g8T&Nmn`5H9mqEaa9\rUp\3cW)\pg7t\fYR>5mAj9lJAUKCg_Ef!_qR[bV!&Q&j
-sJWr<&/PmV32?hduC03E[RjH`5.mMprRM6EM]AF)(oO=_T9oGe$Qd^U=Ta]A.GW__#b\Q%ee%
fR,0#NX!@LZMbcDsrC:Ru-U8\g5?3%RnZ#PGn*ZT)44TLY@qAjf-c/=7tBSGNFE2R/*,/%_^
J@cA)k.9J'6uKk';jJ"6\-p&)Tp[cI6%hjH=)YHi8rEQRd#(@mqmCZKk7V3b/m]A+KM!&6(@d
*>3aqEYD!4kmo:@HQ7Qr8:(g,r-f[_e.N]A+mA=>?$m(EE6YpL3L'ci?$iK,KF:\"Q.oP/SMQ
9p2CRj*>N?oh0tWW5?80DA\8/Va^]AJ091F>'6S9UbXF\)sn=dbl?Q^UJ)iC$0Jbq(PU&6D^&
0XrL!JT9PZ!<RUYJSutke\6[Rk<#4:`CV.13>nm<;Mu@XdXmfcW+(7kb:/m5H`/:4cLp.*VB
'.Z.4'2fCB.p@ht`4SO'/9Ko"p'F@;46"N+Aac"`$+ONf[B43!5(?_MA%'o4S7NOAdXKu#dL
JF`$&6(^VP<0[SD_`drTB<iKk%0Ho>0Y(Jn4tlXi'huY*H>b,+*M#,$e9TjldfZ'B^t.Ut0p
T+U%O4F,\c*!$6)M>gML9?\#R_6>dfTgT<FWQ`#_\/sS#pPPr#j:2:gI[/=APJ5/>WTtW+t-
VlA1$/RP34&rh;WoKfq[<:;F\eQ2-j9<!27AcP[=,_^irQr>pRtg2k)G>:L%'IO[a^\X+9tL
*6LL[%GWT"OTKBP:KqMM&fbn#4EJ[Ju@L[ah_eZd%?]Ap!Ts%*:n9+=rM*B(Y)&b>'K$H:;iS
/pLK\3AK;B!V`me=jC&kHn%#<o`=Dg^8!=pC!?`S.9/arqgS6uoW9b!hF#p[d(O_a[YJ0Kh:
RuFEL1f,TQkQe3ke3YBCUq;aMXX_gY4%Lf.!i:GBWa,[=)pWKBa:DlNm8Pj2kNt[!,<?rS.t
aD6Vr3<<)hKoJl8W2m]A.a<CHoR)_L!sUdQFTpt/ruM=$^jk;1Z^X^(89cU+UDY1bbj7Bmd"p
'iFRt=JbSFI9ipO_&RUGt*Hu`;e-SlrY.Eis\_a/e$!$dGQ,*>eB324G5q;tbVUFLe%,hW/*
_/?@islTsLA!cGUT2fuBilSPWbgl&ViS2&kJ+jZSA9QhL2MC;0S(Y-d[bLNi:[#b]ApBi>Cjt
IRjpb61fkLqGaIasNnm<(d_?LK;i96TP,44o>33&%NU[F*DdVJ6V$(E5nd2;jJ*OX`>3;b"!
\D9G/rPd?GI*ZLha:$an.dB18VTZ?+U3q^%k6h=#<AJE7.LobR@c<Ln+6>apkQb%QQJN9Ue,
"rthGVCY5s9;_K3/eO91[Yo\FZ-[(40X:6/"+MGJ]A22m!1)Hi.QT2T7*h%g@J+HjQ3`V$9a9
V=uOC"76,<!TI.Ynqo&X`6!%O02t-Gf@KJ@5VTB\9D"&LIhYH-GY<6PQ=.8*=]At3aYg>+m+m
pRUE'uX5>Q*_G$mAO-)hnLJS'9eL`fC''(N>O93'/dTfn-1H!P75LA)a?ZP,2Dp'+`q/(rjN
TPpVt]A2'rl;r[AKpU:2!=N!':3$7hZr^T=m)(@QIXD,Mn3Q$6C+*rOY<V;FH#9VZnSjhE]Afj
@3Dce+nW7u.,Tl7kXOa`,J(mAo)>(CVUbJ]A`?g-F1?F/P`A[*-a\?a?I*PttBr[)a]A`($5k_
qB3Xt(h>,N5!:q8QBrM,a+Y1LZfmWeP`WD*k,76c=T*RZ.tmT?'G\'dIa7=QL==4+IMq3Uru
bn^]AmZf;qXoB#B*[:?S(,i&FZ]A;bA:;_pamSDn=^/.WQj6=e<&-rI,4_GN^a?#sGd/LV=UB6
q?KP1ALAcTm*!A4Br,"8Oi!VW*'S/j1P`nZg]Ap"5J-[A=mu>#~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="925" height="292"/>
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
<BoundsAttr x="0" y="280" width="925" height="292"/>
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
<MC_Attr minValue="500.0" maxValue="500.0" useType="0" areaNumber="5" mainColor="-15963469"/>
<ColorList>
<AreaColor>
<AC_Attr minValue="=500" maxValue="=500" color="-15963469"/>
</AreaColor>
<AreaColor>
<AC_Attr minValue="=500" maxValue="=500" color="-13532222"/>
</AreaColor>
<AreaColor>
<AC_Attr minValue="=500" maxValue="=500" color="-10707247"/>
</AreaColor>
<AreaColor>
<AC_Attr minValue="=500" maxValue="=500" color="-7488287"/>
</AreaColor>
<AreaColor>
<AC_Attr minValue="=500" maxValue="=500" color="-3941136"/>
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
<![CDATA[ds2]]></Name>
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
<BoundsAttr x="0" y="0" width="504" height="280"/>
</Widget>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="chart0_c_c"/>
<Widget widgetName="report1_c_c_c_c_c_c_c_c_c"/>
<Widget widgetName="report0_c_c_c_c"/>
</MobileWidgetList>
<WidgetZoomAttr compState="0"/>
<AppRelayout appRelayout="true"/>
<Size width="925" height="572"/>
<ResolutionScalingAttr percent="1.2"/>
<tabFitAttr index="1" tabNameIndex="1"/>
</Widget>
<Widget class="com.fr.form.ui.container.cardlayout.WTabFitLayout">
<WidgetName name="Tab2"/>
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
<LCAttr vgap="0" hgap="0" compInterval="5"/>
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
<C c="0" r="1" s="2">
<O>
<![CDATA[区域]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand leftParentDefault="false" upParentDefault="false"/>
</C>
<C c="1" r="1" s="2">
<O>
<![CDATA[投资金额(亿元)]]></O>
<PrivilegeControl/>
<Expand leftParentDefault="false" upParentDefault="false"/>
</C>
<C c="2" r="1" s="3">
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="1" s="2">
<O>
<![CDATA[区域]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand leftParentDefault="false" upParentDefault="false"/>
</C>
<C c="4" r="1" s="2">
<O>
<![CDATA[承建金额(亿元)]]></O>
<PrivilegeControl/>
<Expand leftParentDefault="false" upParentDefault="false"/>
</C>
<C c="0" r="2" s="4">
<O t="DSColumn">
<Attributes dsName="ds7" columnName="area"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0" leftParentDefault="false"/>
</C>
<C c="1" r="2" s="4">
<O t="DSColumn">
<Attributes dsName="ds7" columnName="bid money"/>
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
<![CDATA[$$$==0 ]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.RowHeightHighlightAction"/>
</Highlight>
</HighlightList>
<Expand dir="0" leftParentDefault="false"/>
</C>
<C c="2" r="2" s="5">
<PrivilegeControl/>
<Expand leftParentDefault="false"/>
</C>
<C c="3" r="2" s="4">
<O t="DSColumn">
<Attributes dsName="ds7" columnName="area"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0" leftParentDefault="false"/>
</C>
<C c="4" r="2" s="4">
<O t="DSColumn">
<Attributes dsName="ds7" columnName="bidding money"/>
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
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="微软雅黑 Light" style="0" size="88" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style imageLayout="1">
<FRFont name="微软雅黑 Light" style="0" size="88" foreground="-1"/>
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
<![CDATA[m9G!;;cg[s!H"ndgcJh^ZsrH<a2slU8f^Qi=5rV3;Iq+0p%G+LM5qE=U.keGUi:?PkMA6?C,
=EQVC7rqMUYLZmoY.2Y^B96`UL*bGG62dcNNjb3@AGLB^<%J5-mp'l)aZ80(laKg&(O2n+V7
Fh`cMaS"t`%;s-i.+DCVWf3W_CJc[e@'X2>p'D.o]As%1%YTG=Ak^%1(\PI#b;F2c2=Ws_O'A
'3ZBDS,oDZAgN^fl@"()YII\Oq'kbX@cc)?ZZ'tgd1Od4=*K3eFM_5NAICi>7^+^M:aZEEfd
\4IN6mt&Gk7sdXJ6g1/bl7k*2u0]A.Z;HTXHk(k]AaVP-JKlnMf98H"hOY,['g;:S:8P=:bAjF
rcW*f'lI1hCr!VVV]Ar\.^t['$5'g>X<*%dPbDN^g?`mAt\fl"9a#me]A:&]AVl&(,lLGL3c/iO
PDm#r5%DXIL1o80sPUL$Oi;5hAP%L\HEf=[S4U_:^=*GN0]AS8S*^o(g#ZWZ.5i#*i0XS,I<?
HMq<EK>s=M@go;hd?a7aac0%OVG.i$oiH5W;QD/-KGX-'C\VE`%i2=[B&l^4tbU_KgQt)Mk9
>Z6KEB?Q0*MRTc.We/Zfq^#V8u8`b7%J3PSurX4f'Y5t^R@cu@nWeE:[.K'F*?fik)H2E<4(
c.'m$<d/W%EW'?F#!-,H%\)I_4KXLt_O]A./q**i2#8Z_j((P:N8d,l;k\KK%u8q*At@&b4-I
m0me[df+QdW5'(Y3ob<l/Oae=T-mCb)tfU1l?^n,+7YM%M4>"1aL821987!okY]A!_>O%E0a[
`UARh'2am*UUCUaKI8alkJUfB]AmQ96l-O3T[^"\C?!#FYl:<Neti"WRjgTV'[dVO0*CPj@%:
ZUAP2!\h3eM?aB9VL-&+tgS\%OCg1DT?K>k>_Z&<^^ZK.pqHo;A6JL*+MF'J2e;8(n;T(8)?
TrdRM-P1keNpT$bD&+"&!!57Gp/!,kM;[$Dp$k<Zm/qmN,jO[WpjhKl4NET1TrE]A$0(?j'f+
=1Pn?eqg*1"D1rA\YojmaJ#W!rAWLP(Ti%ON?)k2dj'%b6+pKQN)Dck<D@r;1om`Ycj5h@'Y
50o^*[o`4)\!W1?qH#g_&eea$,AYoa2e;OuY;L&Z/`e9kYKO^ciJoKW._D&(jG<_>oZN_"?J
fimHW,:Vs*:"$D<kC_(c[Eeq&_G?NfeB5.n>)e`J.Dk-.JRZ!S,SR1!k&_[:eR5Xl*)EHH*1
Uh%MpUj0SFCp80lg&7!T6PVh#%c#^jJG:&te+Y##D/WUh/r%Ya%%*WgPH"ZWlQdJdYko'7/3
I;1Ml#S^Q/NmJS_=$"Rm=@GPLcM1(#)\aMKOc]A_[eCuO1hG@mYo,VBoH8fIcm?2Vi*r_SV]A.
g'Ga\Qq$[<`P=o!La28:UI%8XoD]Am'-`phWU?[g/ph2ft/uCtR?`.WlCP;7uae2AG'D]Ad&rS
#X8.@cj#qSCoqVr<d\Q*-$&NaD*]AWK>]Ao=LSoF2WGA)fM[a`u6:S(UOWh+!"c\LruHY7ELTC
RX=NYAjQGgGLcMSn?3MT&<S<uZDg>piuH_]A93DgC./PBCkDsg.#Lahl08]AHc+PqE?/7,rN@<
b@e39T/9Y@(+b0CjN1FcXe&VNb/fB.QGl\Rs8$tF`WO;q`@E--+bJrF$Nb=Mj;:_57(\lt[%
kKV>%9"KP_6oO]AhE?i+H\Y+_r7>*s0VG@tUJ]ANa/%7j>K^i\68'=b)2(*-oi1o]A2+*OLmCA)
siZ=hGW>MuYs&ImPW(@`%$JEO+kD6@[\>;?-SU7OfB@)IL$a8o=fc+a<",k'3_GV"!RO"T'C
KFh!T+'f9498`.u6ESDSQ[,c*s,`OE;Q5J[H90+V([g@Y/2Ge7;hTs&ou*"*mTUN*87ct2A&
dJ?ZrOa]AU14jGQP(^s@&,38g>l.WaP$gIo)%Q>K.Do5mu@0Z/Ah2hqZUa3r??8]A6r9IJ\<V(
BS8G?;g:5LkomB>g1RZ.Ir-Z70jN@_aI;PdNWtA_mOHIIVIE;$LYUTn;O)4#TokaW>KRIe=S
r/]A3QH6$>>ANC"ns#MYGUe`'cLuspT1*!alpC%Na:j%=(-c3X!S1>ng$S6k:$"_Y[)IeB'T@
ZWIQ)ekZ\9VCIdo^dI&]A;F/[[/4[q(c[%g/ep7HDC5kHHP#c+t.9q(o8@Ml-B(=u?<%A2[T:
']A-^82a@o9orFCuaH\+QDf#=dqm\fi/dK'I%Jtmg)S87W2WR.@U6EAFcs+#O?F>#PbW0TKZf
?cpWTej=`Lc:?21r$kGII$T:u-W*G]Ar%Y@2drOckqj?Y=QS'[*N1:9`@^BcM==,-R%"8H]A,q
6h:C5?l6WQLcO]Ab6BR//jL,)BJnC?&?kDaTPL6VC)SUB;M,c/-(/J,;qW5P4WcCLn<+l+nH@
XSg'`cu)VmH$>-`0:liRSmn6kl.1a/I.Dd,ef7oQ7GTM;JfNk1E<tF[#P5bFB<XV=(VP017A
6O`p+gWAog+>%oR"Nl6ul<\agkN:QPS9\(k%85FH3L`&KN*.o7Ltj=djSO['P5?ik(.WG[YF
;nE5dDG4pf58KM-#&X"L[_34KMPK7M^BpL,N5ot7"61sU]A@,>tCqr]Af!(Nfkn/+BO8-^O[X/
O3ISFl;sm*YWnmWKsj<("SW\pW,j%aRKaMn3IBO9;8C.DkHN4kNZ#eS,:RO.SE="VR8'2]Alr
L^k`,,^@(.@\FEX"KgQ@/B@Jbg#/6;`a+k`A]A\ORRZh<0h(->o>g_"-Baj4&&nC8Orf2SUDY
bC%fJ19E,5tLr/J<9=EUrNXOqV^W09LYak"RcAsg7o&/8h0BhcIRhSPF/7L;_C#\pktl#GI]A
3Hl'aGKD)rnASPSk1W,lX9Sd%+;NL9&^&Ch2!J2`Uf-4jsbaDfAmk<32ChXFY(Me"f1`c\jY
lTs\i#o7KY_/nE<F</;sHbarB-T0/C7*$']A_Vs2*(q#&,!*poZZ6_3WNpG^!]AaUeEon:roq8
t)!=r_"Mm1rP&AR[c"*!MSeHY*^6-4C7oZ3-UFBaZd(9tYeBELgdKVt?VlRGJbe3!YJcGe@B
Zq4adgO=W</.nmc"7POf8bf%!`W4/2ENhH_4oY;g?0qIheRc[FAV%Uc]A_<\0XDs3!Zie,d0A
;F0?oa!kMZ2VeW/naU*CoQf3>Im=haOMUP=el*HN[mDUdV#*3Qu&-5Qgn55+]A0FC]A9qDh&NI
:G*_</>P3gmXCeAbd0f\.J7Tg.7%@+^b9mT6p*ZL!3hKY#'$Tkd,F2;)RQu^Kcf#Cu>]AA+"=
@njUZS["4+?S3@BX05f0-Y2/@a`ui`]ANN0cW%+l:Bp4>\QltK%I\o6sY[mq+U+W[28*n;,#L
M#:dA>JRRqIjQ=$JmCgLgu@.e]AX\7s*jSiZi(5(6CW]A.E;VYiJ`G6@(htbMe9&'><qK98>&V
RMNVJ")_;u#*2,.?(**\"Cl@s&@/A!7Bjq]AbBDCi0)$VC;p=hSdA.:`4RR\`Gno/NV&`$g&n
J_l3<Th:7.C!oRU)#!?9_#^m*o*ZE#7U)U@nE65QAN95oaG0DH:oA.B,d'8O17!aTTE%/i.H
=%m!6%rDNsJ''fk:Y;5;lQW:6c_dE<_SWX)TUN+_@FQ!e]A)CXh*c]A\Y7"YSm]AH6Tf))jk7aN
L:Sp+,7Cf.8ZtS\5,`M&-:[mbU4^/[9c7!lSH^?65L+]AhS.Pl"gU8]A$J>$)=)orIp94osm:l
AaO>ScEo',%0tn?(j!:f!r'^Wq2uO'URL>/i'rr"eloB/+,[!l;Q'n=5r1J6A$@2*LS/oIKk
^XcL,F68?:11(dq5Z[5>.(d)P;\m0o8oaI+BlRZMSREm#>oDrJ'6dprgP7_4\jsV+bPp<8W-
9g*iK_8c5=710jb\foo_cGN9^jW)#0iI1-o;I6_8Dq)tY'@q.p!GcbR>!95VDJ\R]Ao[FJkh:
_+_AkqZ+S-_CVpQDUc+/ep[!t<;oOgl?ejs`OBY.L&LGK7$UWJ/>5c59Z%K2X[$A5&`dmT;k
%#1MQ^`Vp[c`"C)-`!*YgJ-(95TstQE9V*n6]AUOXe)brfM(tr\5aT+*"uA8H[:1XuGWZd)r^
FQ+O@&kj$EQ0]An,3BZE0Mfl,JpJJ6V:]A2I[?VNOYN87W!QG&g,Ee$q-uRS!Ct)WX#S=flpP!
^JT_Y#iui5q_73D3/RnLt#[cT`HVRr!\7a;,\2(Xs9Kc!`5:t\0KZkUuan6^f,R-B`BLZjo4
ePscqXd4HEa0UX"cig\QgXY/?,Y`H+ll!E_27[K5eB,c3,>:qqA-uV?M0QFA:N@ULGa*BY@N
UUWZ7h%)0*ST\5,\SW\RqW>MI"\a;YT2Uc$EPRUBO&I\1<%5cH`0`rlofRO+LS@42^S3c6eq
RL_Zb*.M4Ae"9*X:SW$Y]AJ(S>ffd8nd]AO7=<G?l\"dmW6d@>qGJ:p[p)<`?iTjsH_C<^*mm1
pW`mn\?)$VF;H6Cr-b")MpLiAU0)JW]AhslD!0bL%Gh\rOK5"3s!*Bll!EM?)1Dg_neqoV0Y;
I;.5\PKC[6!BG9Gm(p/H.C)BiS,i6UB1NWtMknMFFTc_D]A4Z'5%]An,mf5U.eQAfLAE-Ppk4n
fK]Af$@%t9i&@W"J4Ubr7hL.b'C\mfdI6>%c8^O[>U%oHX>THTWd$,DTVTiS@!EJXZmb*H!X?
P8$TXdn`YaBh0V-N/bS7s[JpA9H8C@S@1T]AZ#XN'.EpL0&j8,nJTUb5_Cc=^ZL)K^q(O/\MM
L%+SX"OQ>uWhS[u7&ZGK#h]ABiWFC*ZTIYWqB5OXc3VFq!@A&=5>jn#"5Ji9`_TtWjD@)_]AD3
*+1Vt5M#77@+d,0i*BSnc`*9-RC<pU<cp8bl>d_AKGh;X?b&f9[keqXeibrin"<l'7-mfC/J
R~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="504" y="0" width="421" height="280"/>
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
<BoundsAttr x="504" y="0" width="421" height="280"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="report0_c_c_c_c_c"/>
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
<WidgetName name="report0_c_c_c_c_c"/>
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
<![CDATA[1097280,1371600,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[762000,12649200,4076700,1950720,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
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
<CellGUIAttr adjustmode="0"/>
<CellPageAttr/>
<Expand dir="0" leftParentDefault="false"/>
</C>
<C c="1" r="1" s="3">
<O t="DSColumn">
<Attributes dsName="ds11" columnName="项目名称"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<CellGUIAttr adjustmode="0">
<ToolTipText>
<![CDATA[=$$$]]></ToolTipText>
</CellGUIAttr>
<CellPageAttr/>
<Present class="com.fr.base.present.FormulaPresent">
<Content>
<![CDATA[=if(len($$$)>62,left($$$,62)+'...',$$$)]]></Content>
</Present>
<Expand dir="0" leftParentDefault="false"/>
</C>
<C c="2" r="1" s="3">
<O t="DSColumn">
<Attributes dsName="ds11" columnName="中标单位"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<CellGUIAttr adjustmode="0">
<ToolTipText>
<![CDATA[=$$$]]></ToolTipText>
</CellGUIAttr>
<CellPageAttr/>
<Present class="com.fr.base.present.FormulaPresent">
<Content>
<![CDATA[=if(len($$$)>20,left($$$,20)+'...',$$$)]]></Content>
</Present>
<Expand dir="0" leftParentDefault="false"/>
</C>
<C c="3" r="1" s="2">
<O t="DSColumn">
<Attributes dsName="ds11" columnName="交易金额"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<CellGUIAttr adjustmode="0"/>
<CellPageAttr/>
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
<Style horizontal_alignment="2" imageLayout="1">
<FRFont name="微软雅黑 Light" style="0" size="96" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="0" imageLayout="1" lineSpacing="5">
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="2" imageLayout="1" lineSpacing="5">
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m9G'A<+XcJ1P-DK^/u.;^4Et8\L';@C_?n-dos#12K!DJ3m-*<cl9e<QnZh+)07`OQPqdr22
FUA_Ra&/.3T)C#=^u_EY+I,5%[>'c60t01W(nRkIfu:D;j2oB!5XFg_^"[\o_i8H(OonGQ7*
go*hh+HST13]AK>7A&2aFW?U+)q"9ljiLtN@sQi%rSAB4cWg)T_Z,7jg_T_*:)_f("6Z$>_UH
5D=307<<g%B&pVV4Mbt]AqFJZb(J<Ij2lrRB5c%3b?6qhH9-?2SC$,`f_KXgY3-S"bYN"$la+
?TaYi<s6+\ZR@3k>ZQ4:c'A9qJSGZt!<[J;Is6Hi`#_d1jnFoG;8%XTe5l7b8V'5%T?(.XE-
LORWu0WS?HR(96sgtP/@ebd!n`n=-ULFc"MgA%>T26hJ;W^8IRa6h_r<.&2`hY@RJ^8geiX6
qo!/jF+ImS+G/P0Oj*k7QstDq]A9e?`ZK'g]A22:o\1H7Xa8i9LNAq0WctBOjCNFM=mMGj]A(ar
$VQ;8KhA%*GW%O&_)11>c"R_"#s0S2WOE/uV#s38RWtN]AjltGV'n'XD6WZ&e"]Aa++E"C*3E0
%%.g&up0AO05EWDG&h:;(7\(*`)\`>ALO7e?(;aE[KX$DFX!7=W_1C/G63QiK<_VZDI/_<:@
-%O8P#CUq9dk[Z<9ZlX%XtMsV09%Y$4<nKH9afURHUP#*bEH(rn6J+P?u>g1J`cPd=)?HTUh
pdWqF"g$sF^L&f;ktF.#,l*XT3I-Eo*@rPIkrXe)pPO^N:ScrBh::6s<h7kt^E`_OAb'R]A1M
`^@hHFQK?H8I=ZUH4@+J7>(g?:(QHE1Cr(aGRa&]A8@-#BVAJO2]A8r5!AAs5Lno1qC%9r;;I,
]A8%Qk"6`[o(mRt8B1t;Kqda2`)Sujm,-@-*f+@C:Ul/G%td%SZaYsWL7/Iq+YTL<24YXMJ@e
"!StZ0PD55+>tDSp>%%r0]AV9aiDcR(0=krYuVXoJ_@F+AJ;Il26L5jfs16=*-,]A5&kcH:;=.
,Hb%tXXPh=tk.o7%"SJ.(^oc1NOC<63N4LpeGjPoqVA.Ds7P`on6VNGd/Ud85)K?I3#EW$Qu
caUSZ-39RRf;EWjSB;GUU)r#g+Ugl$U[b'j2L>''A26V8<d'.$`E@$Dr#NnYd=e;BF%[ln2,
YlReG*0g.DkGFT&b'"Y1+1H`+Xiff>YkK,Gqj(,C,g1KL4,!f_M>nLnO,0R<Yd2hg"A$jRl'
@)nR*S<*@g`O--"RJIP1Vg;:.*UtamQ^5V7]ANQ>&9_)4aAOKYZ1qd(h2li!]AHc5E;9LV?>j1
=&e[E,buJ>&Bq$konr2P*`;VL.]AW!rB#lI'.i,q_[s\9]AFia8O^:HSeb7$GQ^R?Ym\E64Ob,
dugU'h;^E_W%0"Rdg[/@N3QQIQ4P:YRuR>DG]A=1_;/LkU8b@m`h7mOQbPk59J71e%ri:SbB?
+0Jf?XtekGPqum.lI,=-/_LZC#%(I&b\+X(-alu2o^!u43,M/kQ"u0()$(hmD9mWOD19`Kbd
-Q]A->;^cZgke%W9Dt1AB2)KTa4oMplp7I75dI13=2M'?*kqe/GWBuooqjJ'D@KlFC:'[Sk?P
8BCKu$JF2smhMkR!-,6(2akpJ(8Zhs3a=h@Me>5Er@0UoXln'R05bBt*(Z*k4j'"F$*OZ*(q
H$tB<4+5BT]A07`j;c#[^s2)W]AP1Ei%85+j]AuCE*#q75A>/Gg,6o9A?i79@3?mgl:#mcJ,-#b
#D&SR`Xbb@(G$OJ_src9,4Yl`61mS@JcXcVlu\G_lP3Z;Jh@tr>"G7:'i*'3jP`sUU&'ULOP
^r"ef<F`tj9j9MB2:jK+7S[+rP?(,'*Lo'ls*UXfG,s3%G/D/]AQoZ#:*774JBPf`\IRpmjS=
BIg_J@V)FnQK)G(f2_c?gOUF@I!/<u7!*-7'm$A7Rl"L?j1%nCU?Y'gC+fOa^)gQThJV.:6X
kr98<bUU"ZR>]A\,[An1*$*T-bJCHs^GhXe0pJb"4m"p4Kd>=HF9k_8\uLK/hu`Sk[k(PCrtk
"FiD8Y._emkn6\\\^2jD",A?CU(B8L)isOXV6Ug>sdqZ/n66OQ8gZD15O0en`bSEY\PBEjU!
T$X'/3cB8#GN?p[r3e6@^n!PWMpU<j4h+':AXBn_JT9(+jb`1XM`<gQH.X,R)V'M2q"<tq"T
ih[Ig"4rf3beNX(/_0hD*!'[;r38o78m!jpP^U5$qD;)ZgbPh6SM$g:FQ[B&laC]A%fruT^i[
>%%YarCp80n.q_T5-*fjg?+h4>7F^@JkCU_c$\7:mCCe6_Uk6k/3>\p@(iaS,MQhS^eTC.dZ
M3H+d<\-CY$;VjJrfck^,m!e]AXPD8G:1mXA3*H2)0?EmIH?lLn8^d6kuCS1u_,;aLrXrgCBp
t^U76,*R#-le[Ds!bhUKR\Z(oOC^Q>+rc*E>SP*pNf[cpuZ$)>uVHu&PL62l"EF7H(cKZJ<N
W>)t7VLQ7K!ih$#8<F(qt+F`6Mq<6F0^+T@jbIR(KDl>*tBN*".&IWBObm@GR*KOM5'en&lF
.p3.%r6TQV)o1`CrG=<P.+PusVODIc_JjC0mjQNQF4*W_"a#3L8qWr:JY30gUW1GpA2f'KKW
rOXNC(hj)#uSe.mlRi!&!=d@BM\6M0pPMJUk8/NWK\R2em$J0kc@l;=<(B7GeR804.t/;pE^
'V)OM>=?NhA70P!'gi:N2]AD)/8J[oUK&``r]A=cTi4c\7<<#FjpCm&Im7Zj)9pbR?tV't8\A3
OU!#G7\0cgfI$^0`nCtH[r`<;=PLj[7>:_mE'kQ2Q)GtE[3Tq9J.ga.^p9mgONJG!B/su?ka
1c^+p[RR=5r2_TU572n81RIgjmPE2F.bRV"XO^E%2("\]A7n.(I1f%&q[FP)S<:F9$/c-l=(\
*d]A_G1F(l$?Orhq5$+*,^5.`mk,'6SrOoUNNi]A<]A*;"(T7HF-f@.O(I#l-]A<)!"gB%ZuEHQ\
qFj]ADVt^bA^iZ-G9*rYWF%R,Zfo9;Ds-dBfXE-0d$BFXN]Ak+7ZF+.j(CHDT5!K@:3JUX6WaS
Sl6Mu'A'm6.WYooGPQG5+_R^<B"N3EIl6g^R''<?2<>[6/a'F8Ce$KuS4r6lE3/^X_@as!T7
YtD;Oa0>$FQ,K5WTu/&fV>BI!<3pm1I&RJW@6s+`\`u`mrJ!8A&dX&,jhR6b2d1uKMds?+c9
Pdg$'3DUVE2Rc;-#ji6M4Nm#(0:?31gu"O>Z%$?m!g/8C"Yf$>_JG&YVK(79Jk`a6q1'3IFk
Z<#,uS"2$QcVjNr't>-n*^FA+eVm>JAMN6Y4\Eb15Y'Fs&nQK"3?um_p_j@=LBP$#*n_I;K]A
MD#FgSdRT1'kbQJB13H&sBL9eQo\,0,FOGsT7f9?A`cRL-#m'=DJ<T&50`KpT,o/>UKrS7Kf
PJK_qPK1LWj"T#J5k@ul=QD=S]A&8HD)-"-l9DPkO!)\>WtbI@=]AOEstPQOR1k2#N,3VDU0RC
@DW^"[(]As^T9=Z(gFf41o9c&=HUCBjIR&@>[V['Or]AiE-YOWbr]A!^`3A2oYTW!K#B.CAC@?;
0cVP'NqU^=KTb34;kD]As872l\ap2S3etDBKSQm]Al!5_MgPL-70SBL3ZVdKMOIR_CLogjNo]A`
=LgNk51!0^kZ'XVe5&+'4\jpHp"as,0T*H-W\odBe:,Ee54(pKkbX(a+<=@gO'_]ALTO!12RK
(k=d0#<:MAUU)"u2[L)9&#!hZ@Ee-U2[r#?op@RtFS1I$[a#'7P7;2m=hYIu!=dEHc8lFu#!
CMf.c<9h;?HV,+bX#eIQ#c>Nif8&Y2)(4Q_E/S-(;1R57Xl2,sl-u.^rPc)TMaR359]ANjp2q
.QNKK9+XH!"#9Z#ldErPRK)`#]Am<K<mtE7ke"Vf.C*<DmIC3cLAs!.PIg7AfGA[apO.7P9(r
PYk.8B97j;"EgpY_!&8J(mbB[-$8GE,e\PP2nU\/NI-5=t"ULPV.T%at(oUO<[D8&IV<kU+$
A@$(a=,@q2pm<PJ4:=i;B4o?!J!nD_.F5!\NOEpZP<T)B=FTW>b!elQ_Po`S_=n6ha0[UUO4
uHD;++\X5QBoZUutsS!=Ba!S,h^Zm3K3&L(U-@...5]A[Y%8;9kDKLT6t.h($"_m^j5)I`Ac-
?4ir+t@F'ChC/p1ST,^r6b9bbe;<D8D"qLt8:u>&,9^<:e[`/7Q.a/Q0DD+bZ30XT^$;W\=p
!paMnHC7=ie[iFF*G9em<"6%k7E1b,JJ>TT[H^hA<rMV=[]A'D7sDPmUE%"nhX^DC\iVE"GSK
pD8.@RRB(9SC`2KQT:Q5F6p$BBnaiB%`m8%P[(,rE2EoAIu<^sli[t/4)fAloHN&kWRZI%&&
4r"a!$G"*)c%=Wm^s"G&J5>E/%AuVZ51,1L@QFblX3B+a3@=DWl8C+'bDu'?N@ftjCmW2,l8
%8tN&Hf:3spVPG9-<7T(f9'Go$8:ajoKli@OAg)=?Sp`1AM'R$I<)Sf[^/?)bf8s4[%(rsk+
T)*7(^_N-%A%+ifd`3ADFT3X73#c'q?[q7T$Qp%H_lI5h',pI]AY0'VfW<1@$jM7&PVpuH"#@
k.5/*I$%cV1IU@NhqP1oEDaESkKhj0=665rNLq[K[O)<W^$I60#HNhCC2Ak'Kete2OL"OPqE
]AU/=)\u!I=0i]A%PgPrhfJ)X5>R0fkie;j?#ON%AA671MO_/"s6SIA**&OGTU%lm6DiXV+Mgb
^17$]Ab<rDQ6XWsY^8jWZVu^[MU8^gW3iRbJk80&d[MC_B39-n-9+A3tPquAu51^[fUo.X@Bl
,TZB!_AAf@YEUA$B"ZBY+PmY&<M]APana=LYu]Al78$DYD5-MjY$'Hh[)ll]AGNkYU^/Wmlh>!P
I#>9Lmp#+@npBk7/!At'l%BgTCi71"DQ:>mt#Ek=)3!;31DJ*(`?bq]AN2e.8I)'2*NCj,toJ
R_=(qF89ei`0]A0^?!1tP7RT+]A^/7(eIVWTN>9:RT21m6eVba4@;4%USFN-:>US3J.jK<'l+a
&X*;`c3lG'C/Nn!BMp)>t*g4dq/[;16g#D[RG4Hf?IR't>;iUa"cVARZWJ6@55)^F:T4gYsi
^SAgagc9m\1C"ch%p$5Zs%#`[C4a;E)G5)Y6n:Vs3RbU;o]AGJ.<?o+J;@)m]AADPr'<R:XP._
uk/b>Nbu@k#cfMT;TegO\V/m^k/10;<FqXl'(YLp0i&aSGph*!^$XQ3tsgi(7gkc^i9ledO?
MK8cI6L1K#One*!?OEA^38a]AuFSmsi_CaF^69qP=QTlV1&P/,EF(VOeM>f]A?FZ=^C$7=hV,V
/=')cN6t/^f/C(!,j.qlIK^h7c#SWo_6asZ9!\.Z5`#$)^T1=ghrTsclG5CRiT*I[Fm.C?Ia
]AZ"e7dLVaMV2Nu0k@^mMM:(ug`+Z66$ekiJt4nhTI?ed[V#L3A_Ypb*"\N8?]A6n1!&sBTuJY
#e#;-Gb`,P(!V:mlpUVMe!QKfB"Nu2);:gkX[7$EG:mV,7+Q,D@<SFGJCQT?[)qV,S0u\i$s
CM@Wld1Mct.]AJjYK/d0u<t:o4ED.YUd0!F7j(fkjt5m&D+V2epaA(Ouu['&c3B)L!qBi^70(
nXKSW==W?^\q%fV>bAr8^ekR3/TD8U_"uCK%&G9h(0$oZ8-'g>+)VMn"dE_mf_K1;5`:SnrM
da;0-@g1DK8HEFUjEOB=+RqRioQ(1+Kg,oYO'TPfM#\sn?9Wp_iA:@*cO5DE8Y=!qq-@ha5%
)u:'@ALbR33h4K*hP5EA&*j<I[>gA8tl!<~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="925" height="292"/>
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
<BoundsAttr x="0" y="280" width="925" height="292"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="chart0_c_c_c"/>
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
<WidgetName name="chart0_c_c_c"/>
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
<MC_Attr minValue="500.0" maxValue="500.0" useType="0" areaNumber="5" mainColor="-15963469"/>
<ColorList>
<AreaColor>
<AC_Attr minValue="=500" maxValue="=500" color="-15963469"/>
</AreaColor>
<AreaColor>
<AC_Attr minValue="=500" maxValue="=500" color="-13532222"/>
</AreaColor>
<AreaColor>
<AC_Attr minValue="=500" maxValue="=500" color="-10707247"/>
</AreaColor>
<AreaColor>
<AC_Attr minValue="=500" maxValue="=500" color="-7488287"/>
</AreaColor>
<AreaColor>
<AC_Attr minValue="=500" maxValue="=500" color="-3941136"/>
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
<![CDATA[ds3]]></Name>
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
<BoundsAttr x="0" y="0" width="504" height="280"/>
</Widget>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="chart0_c_c_c"/>
<Widget widgetName="report1_c_c_c_c_c_c"/>
<Widget widgetName="report0_c_c_c_c_c"/>
</MobileWidgetList>
<WidgetZoomAttr compState="0"/>
<AppRelayout appRelayout="true"/>
<Size width="925" height="572"/>
<ResolutionScalingAttr percent="1.2"/>
<tabFitAttr index="2" tabNameIndex="2"/>
</Widget>
<Widget class="com.fr.form.ui.container.cardlayout.WTabFitLayout">
<WidgetName name="Tab3"/>
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
<LCAttr vgap="0" hgap="0" compInterval="5"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="report1_c_c_c_c_c_c_c"/>
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
<WidgetName name="report1_c_c_c_c_c_c_c"/>
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
<C c="0" r="1" s="2">
<O>
<![CDATA[区域]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand leftParentDefault="false" upParentDefault="false"/>
</C>
<C c="1" r="1" s="2">
<O>
<![CDATA[投资金额(亿元)]]></O>
<PrivilegeControl/>
<Expand leftParentDefault="false" upParentDefault="false"/>
</C>
<C c="2" r="1" s="3">
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="1" s="2">
<O>
<![CDATA[区域]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand leftParentDefault="false" upParentDefault="false"/>
</C>
<C c="4" r="1" s="2">
<O>
<![CDATA[承建金额(亿元)]]></O>
<PrivilegeControl/>
<Expand leftParentDefault="false" upParentDefault="false"/>
</C>
<C c="0" r="2" s="4">
<O t="DSColumn">
<Attributes dsName="ds8" columnName="area"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0" leftParentDefault="false"/>
</C>
<C c="1" r="2" s="4">
<O t="DSColumn">
<Attributes dsName="ds8" columnName="bid money"/>
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
<![CDATA[$$$==0 ]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.RowHeightHighlightAction"/>
</Highlight>
</HighlightList>
<Expand dir="0" leftParentDefault="false"/>
</C>
<C c="2" r="2" s="5">
<PrivilegeControl/>
<Expand leftParentDefault="false"/>
</C>
<C c="3" r="2" s="4">
<O t="DSColumn">
<Attributes dsName="ds8" columnName="area"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0" leftParentDefault="false"/>
</C>
<C c="4" r="2" s="4">
<O t="DSColumn">
<Attributes dsName="ds8" columnName="bidding money"/>
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
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="微软雅黑 Light" style="0" size="88" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style imageLayout="1">
<FRFont name="微软雅黑 Light" style="0" size="88" foreground="-1"/>
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
<![CDATA[m9G!?;cgCl0m;!f1j$_QS-m2pe(XVFf;]AsVUhHTiX#RMre7Ki*e5E,pLk7aPP<N\r-2+b^e=
)%oMLPL<'K+tir2`@V9R'*m=0)E8?AXa[3D%N,qd;oG3n`[HLsE^/LL6.6IJ."E[smYPem?D
C<ildWFMa4T&-R:Njd2:IJfs)B#Vo0Rn/oH\(i3O3#kIEKQ^>GUlF(VX>#o2$leEf6LJ3'ei
l(/4>Q30M\eUYup.2^R5)PnO@-YRq:X;/pptq]AjmMZc-$.M^l7/IbBQ9XDpQ<J7dr8mA:k%;
%%n$eVK$--jKR_$dbAP\n*7esV`nA36'[ZA*gqEmYVIV53_4ncNr&%hRW[bOI8'359S:RTG,
D8k%0XHP;ZY]AmJr%E.,XJQ=B+UON(d]A))C(WeMD)0qC,0K+A'CN8#\l0f01+#N)\eI5%Otp(
QDu>.h>de\a_gVQ5'-93mV((;*k'4c7gZS]A+]A%Ue+W$ie'2(hV&bq%GMd9k:CcTe/05A3Q%$
VSZ5;fE6X,Ioh%EGJ@G'9>+[iQ+?X8b>d,;.RN)(=dgmHW-KV:s)G1bm,+*;'!R,n#G4C<Mb
BEl)Z!Lj+cdU`F<DF@gl_B9F=^D_?`6ST[4(Kf&FnNLt:t>-VrbpFK^*.kmKj5X6h6p%\emH
qt$dr7%(3Z)"VslP5^#5R+Zp;upiWm[4kj!(!K%?%t*p\9ONmja#^nfofo;F_DcoJ]AKf'F6/
D%)JgbchlSif;P=#siqYprS\TUc"R,:%uI*&[rq(KY67r4C5(L.%(gsJ7!>76En8R2g1tJ[)
$&dgJ-K5HSQ4S<@uf8[)K]A',^Fh8\Q>T'a-TL:1uK*_8*aZ#6<O_b4:!CN82GoR\THDo_no>
N94j`67iG1N%(`#>lWteKC8F'J-a3>d;S3,F1o75'\&M'Kb[@B=G*OUbe!21sGW/Dl31GKle
elW6JphpJJ`$?qNRf>?r@pXBb@]Aa6;jTY"aR/=tkZY13`qA=[9J.h2loh#]A.\5TgL_Ms&'*H
u1(h_LBj<i[$U.Q@"Rf]Aor--gNdA]AMKZD]AH_Bk;GF4?+TtR`Ic]A>b%gUt#&AnZaIAa%/hO9)
W.);L7'/ZP@+A>(m$,"#Y@.OY*tJZbMDFB,b5rBK0>Ool1:\l'GALoka9MgJbEG=4FYtuDJ5
TlD*7c#XS[Ns%&%:,4[!qs>eMV3FQ_6ZOh[uK]A1+V@.iD728?"C9K^*JdO>Kne^iT.,hdVKn
Qj+pk\heW(.g,t)u]Ap:qDq$Ts1Z^qo'Yf73$BP1WNE=hJrU!cTP('g5n\R0o[KIki!S,Y]AEL
_9o_@UlR@$SBI#0\\arIMS3-Uo>?jKG0o'Al=fGj\uefi)@i9F5M6rhW0tti4E@kGuDii7Ii
^CPHu]A\#TGWb+i)\aA;!U6B;WCsRg9B6NW5]AN=I^b2Oi?JIOSTAhrGNb0=m%/AqQ\VoDqa4[
m=8^%J\087qrd`YqkL>M5I>1Hnk!V.I+iVa>RXbjQg?YA\O,#$Cq2Ur=R#a&kNch^f*k+>RG
;OamLW-qVAUl\Sk>$tANOASFh/nXc;1f[[cf@;e1KpqA^E\Q4s-1W`9[mM?($!6d$dF8/^Ge
<H70BY:k<HXN<Lm!R9W4IpCU`ZZ!eTORO*iXn"m'LKKli(+`m>XYNgaXi`IRVV[5qYrb%[1"
\U,WH'L_^_ehq-Q+a1l=nG_ROa6^=E%)\TC,:HE**!pS\,"n@mG;i5FR\*u2pHl"cNEeAI_=
#]A^m&]Afj!R,,af59+WO0$Y,>m..Fi_ED6(fd^pA`sI.nDR3ie(A-'6F>94Z%ed7N\&;ATC.-
#-nWb&ZeDKVQ63EDWd[n$Na-h;/6/s>m^0+?rJuId;?66Q;T$.E@C@N*_`"ia\i^YAYXO6%j
I&k50]A0X8/3!D<@Z#E6kmB,`S:r;OHq1J&p*1EMM<qU<@]AW:,$[g/M%UUP07'gcO\`J$DInF
qOG\!K("JSpQ$X17PI;pbnq$FI=II."V*OQo?*L9Tc2+DUjW2GQPO#:GOWf'Y^+YStOT!8lf
.6.SC,>l8V#N"c>4#YE;jXIliEGe6ET!'YeNfYm@lE2THd^_$A.u;3(/@Uqod/1i]A/i!*7@#
Gaa6@=t@F]AbBB"dkU]AcT6mT3TdYYras]ALgX43[cDh2bA'@YA(UR%F7"CEAX5NOigIFH^od4j
G*n/qCmr6\*J,K1?Z34`9G"E>$Fd\l8-fHASc@/A._\^^S<+W2j=3.YM)gB%k*ofq't".l&D
[UPi]AH"%r+WQqd`)HDM<G&1W!?'`(n_ul"m%Jm_;Y,cb.ggc%h%:X^e<&`?Zjni$c?`s;ZJH
^AK]A5-\oVrGI\O[<7u4n&HQ$:Rec[4;26Brjj$jLkS<Rp^Wk62Q$(.P_>@p7qNgdSDKLpt>[
JZ]AO27W!+ftef6F;/EVAATdI'0"4TEb-h<aMEkS!8CFGY.UaL?1</D?#8&aV-fD2[+,R>Me0
Tt=##0BEolNCdFQ<T(Hd2V'[G`h7LRJfGo]A;Xf<P'f*(OYhC%fnV#/d1I#5U<"2MZ';GQMum
;oApV)4pM7MZkNWn';a3h`MW[ci,)Lm&]AOBjsj-VmUbto\a2cO]Ad)M[dgT]A+kPZGug4i]Ajc.
N8t+?TVh)sARI.ZOa]AFP=&uT+LdSB)UZ8$G_/+^W-EVfu]A_0'?im$aubO4%2-YS.Ndic6_/Q
X+1g9pIb3%t!68hl;Ae@'>NJUB!dP\d3pPdE7a`W/``kK\2cH)cjrcng<H-r<fU[`8!)\Gs.
D_7Fj?be%229;$O3<PL>W0,>^fUhp<VJ.W]A!ABeo=f`YO&U5edp_9A['L(GoYmCV,s_<PQ*$
GqcX8CF\]A"&mYJ2Yk"If]A'%HhAWq;F4`%7]ATXb^d2>)6!#uJ7IP3Y*=o,0M)oIia7.gkM.jR
h.KWIW;lGPX&3EG>3jQC5RDN#nGlt\/Yt&9*9k&['cr]A7VPsZ:RNa&0@^E,FBXf$TL<d.<Qt
Jg7GV"Z3L7s)6,g-80',3Fq7VrAc&2#ZQ9MH*7^k!SSAhFQkDW*!=6Vmag%V0mI(_%+CQc=X
P(bRtsPSo:e]A+X<rE:'S=?;&CN0kAEFNu;(@6cQu/65m':L-5k%;ojFr&e,%"qQk@<5brq4E
=A_>"Oh!SQtk%?DPa.=-4Hp!1dg,!'b>G8S%$bN7SH*%gI+8'lSf@P$186lb&)O<;=OlR&\@
j(NN()u:m_,G?'`*'7m$V?Y[k;3Y'-EpfB2@ZZd@#HJJ'qSBrsnV@r`I]AI6\E4Q;=#!cmpC\
U$HD"IQ</,d6a_bS_oD"XD_APMg#)okXGG]A<i'O?V!n[#4+VI9Ar-"o4mtcA]A>CiQ$jhj;<=
G9P#]AGG\Q.:FfMNlOs8<ViA`(qXp+%V9cY[+=QS\UN-%`O*%R-4uK69]AqplR:8[T`^J(d0t0
ofmIY";=X!I`(ip>+n+AQ+4kTc&;FquWZV4j'`k%R\UsV1.1W?>;..lB0Spbk#_H&oN/4<S>
$9ib!6KKtq"TbP5(uV:B.S3,/>B8a'n"<I(fQ5T)jF0:e_o8cDG;E)CCI!L$qN8>Ed.%1$DC
4>27<2FC=JVG@;Jl\-6t1k1I=n5M'TqG1kQ-1^UVp'KR`;*K6%kbrG%^t;<2bJ^e6*dE/YA.
!K[dA]A`1DRk^Zf%L]ADM(GGeeiql[O;e<n.;[BqN,4_+CYOKNK9mgA44?uJ:DM^,&4ri_Z*]Aq
0N^I`MTR,>>7S\]A5![3HVY9[hV.12SaC#=:36Ufg!poO[L(?hT3iU"W_bV$68FmWY)!7[E\a
[0N2E3^^l%p^3'aCDh%1e<^0Zl_h=98GV08L-`06dIqU!<p]ADGhBSPSi#8!o<iuECOKkT?<V
;B<dmsb%K334Xc+2ou\;TE4F$*#_lO>aWtj:`A?:/O.'"3J85K9/_W%SVQX-R%5drEtIig*0
a(o([YIJgE]AWoC-]A,F/*a52uCsZM=5<ol\2IP?s&QUYX+%0aEJ=Tb^rfiU]Ane?)`]AhNitUuD
NtK0hEV=anK4/f._GJ!aXc),j&<meuM)l0=/r`,ZBgc8RrnGBPMK<4<'>FinLJcE9ciLVeR[
pe2hk\[Vs',ihMW]Art7]A59pNtu(WA50`a:-0L1@J6Apc.XiDLH*/5MY`sneTG?,(!n`Tf_)T
R\B@W5GP:VX"2]Ah=f`\[A1W;M=JqT(o;#f_-r'7'*\n@0#$^8ag2cW`U?Q+)5T9TI0)Or!e:
+@;Y?!K`J0"IqY1u-X&&jK\j4E3MqXHr^5e5D9:%gfs?lKHEGV$*h:ZKs-N<EF-MfM-SjWNP
\a=c5T8b_'2[-2;-JM=<0kf\4a^J3CfV]A\/1<obPE6;Lu_s6t8dpY`46_Lt@Xjs&$=_C$N*?
at.kt-a<IoE5obq%U@3gSkop!da%r]A`WtYDkbt(baHV8rWdHQq5,\(R!PTmH[:L0dcB*(pC@
XNA`DdPM8tX//6U_TKcHhLs;594@V19g@*j&JR#/Xfbp`M!eUfa7$f_$)3(7)1JH<:/<i`4@
rRFDa);@k8)!;J7PKrJ2p.M:K6034ToWJ!]A2aQI&:p"m^lO?J\DA=D\$n39iZNnTqLTaT#,R
6[TPc&s8qg]A[0)2f#\FlZ.pbL/hP^J<jf(Ku,@KiY7JR.K^*]A.QeQEU*r@(fm#<6!rVeR'iR
UG/:\C//p5JnE'*+pPcA'#0,qY7]A2!qcHuQaTSBc%^FojG#K,#f=PuAMT:-L46ch?6s623&U
0#5(%8P_(MKE.R?Js#^U6,)!)V#:n*NZPsu`O"M6kkuU73a]Ak0W6dJus1!d6NflSUQlI,oiB
HE*BP;1<QRb,f=R!=Z)O;YMn/"YuaV'!Zd"eWs@<\@SWn#.@%Y1u#[a>N(:#j]AKi>5K7,S9o
?14V!0m3Fa&LV,.6E;_HJi;R!OrimI/6-?HKqGp4-9rT7W)I*e))j'`dH!77/KS%?+'p82_Y
RoZj!k:/#@NtW6'`<ujQ]AJ`s<"94g]AWnpWj;<ua/C7*(<B+``8KhaEa&iZ6pI,-2d8[^WgCp
t6GC4$k]Ag#`D$iFe^a3Q4]AS%NT>prAU\GJ3k"@b:&9NT^<7)]A.<8jlE@Cg#?JQ[G)Ba+nEd^
fNLdb*:0?o.1"K^@(lomCu!j7GZ=lD#(-&"hHWee?:KL0\$dS\#l.S(-)I==d9K:F`u%92mn
SMCW2t["m651`I`c_`G*Z`Rf5rsre%<;3CN@Oc/4C>"<X6I:hE;1'_2lCeDIW#&C]AmKl]A;e#
k_JH'3K,iSe+`I\%Q/+r,dc,?%+tFt_TGJXJWGJqfRRjpsg8V:^Dg(PL;:n;4W@WQaBN;q'N
3u-89O9W3e,NgG=ustV\[=\imYAM]A_d"bck!2G"XU:)-M*DEu5lV]A"PE#!!QU<0c^![B@m/A
6)(5@0:_oHh;)e/(#[eB,Ij-dBA&X5@$&:`#@_4O[7D[u6k7f^k#k#Snacdb'1.LN>P-GMkq
L.b$1`rN\)'LnOHd7[Kds6Be5ANGQRSDiqS1Bm9VSVlqS\c`4K+^2p['3dr#"7)*H%Uf=]A8=
IGRfe0'595[\7\hhf'9[@H'MnD0>"02cahI?PLnZ@5G,DW1>1>rPg(;X"+Mm-iJ;CRHBKQEN
Scs-@cLuX=Y4gZ"qbd'>Tb?#5C1kE[/PIJ.)'JO:9aJ&3^`NK"N\g>@X3f6HcA[j0o4`9LBX
QD$t'QU"`&"24/>ZaD'rYR57W(0X78I;BGjiE*t=DRh&($VmN=Err&_O8Y;:K,mOhQ[/?]A$6
ZNF2UWkr8f^AY7B?/0a`V/mnUI*W^%ei^$'"_<ormVaJM67RCnd'OF;B2]Aaj*JZa-Wr)>\5#
PfX;s@TWm>SKMO0,oI=-ln?`Z>5KF]AkDi,a0k,hJCV#i,*3MCsfZ%M3A]AUY]AikLod5njX<L0
VEV83sI&(mM:VPEWmdcmPU(,&%`LJp#=e^VYF^Ne4an([>&-fedqBCCIGBW`f.oGUo&\$7ds
6#^#D*icj>>(*@dP!>CneNtq^nSPJ.T9?/_tN'"):=WkD]A"bDKFhG"^$X2J1c\;X&!J<[9AX
,bVT1#n$n+;kVn1P:d0=.18FUQ!:-X\UHE2j);Q9F5-n6s+GEpeh9%6u&S:2A^"2-oVG\aLN
^"$C`0\M2KcH1b=buE*UU'Z72%722X#ej0?&69&WBErI?K4Idn4cJ]AR5hH,UZAjN8q%/P8nL
I?223C;VS4moPgI':o`9;'OrEb:g#'H8tQA&,m@~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="504" y="0" width="421" height="280"/>
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
<BoundsAttr x="504" y="0" width="421" height="280"/>
</Widget>
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
<![CDATA[1097280,1562100,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[723900,12687300,4076700,1943100,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
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
<CellGUIAttr adjustmode="0"/>
<CellPageAttr/>
<Expand dir="0" leftParentDefault="false"/>
</C>
<C c="1" r="1" s="3">
<O t="DSColumn">
<Attributes dsName="ds12" columnName="项目名称"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<CellGUIAttr adjustmode="0">
<ToolTipText>
<![CDATA[=$$$]]></ToolTipText>
</CellGUIAttr>
<CellPageAttr/>
<Present class="com.fr.base.present.FormulaPresent">
<Content>
<![CDATA[=if(len($$$)>62,left($$$,62)+'...',$$$)]]></Content>
</Present>
<Expand dir="0" leftParentDefault="false"/>
</C>
<C c="2" r="1" s="3">
<O t="DSColumn">
<Attributes dsName="ds12" columnName="中标单位"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<CellGUIAttr adjustmode="0">
<ToolTipText>
<![CDATA[=$$$]]></ToolTipText>
</CellGUIAttr>
<CellPageAttr/>
<Present class="com.fr.base.present.FormulaPresent">
<Content>
<![CDATA[=if(len($$$)>20,left($$$,20)+'...',$$$)]]></Content>
</Present>
<Expand dir="0" leftParentDefault="false"/>
</C>
<C c="3" r="1" s="2">
<O t="DSColumn">
<Attributes dsName="ds12" columnName="交易金额"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<CellGUIAttr adjustmode="0"/>
<CellPageAttr/>
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
<Style horizontal_alignment="0" imageLayout="1" lineSpacing="5">
<FRFont name="微软雅黑 Light" style="0" size="96" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="2" imageLayout="1" lineSpacing="5">
<FRFont name="微软雅黑 Light" style="0" size="96" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="0" imageLayout="1" lineSpacing="5">
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="2" imageLayout="1" lineSpacing="5">
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m9G'=;cgEBM83fPV6@<Mof]A%qYteZ&8?#Kj9[_W)D67DRI*Z7YZ%F?>Xe[0kKTOtggX<(P['
(7H6nYo@H!NUn(,^_tKPC[UNuQ'(,*HX88-C*'0?DbYmp,4Xe_YAZ_Di%sn.1kJPB6FXHgfk
km="]Aec[T&e3oQY8mQhCp_Xl):o.koNW=X`")B/_Va6&406BL<.cTh$NP$H7s[VrVBD#(0>f
tUYbbl`SS]A@X^k3e*+dhl$C<J*?hg'=Ph3Bq9YLd*qTTQE9p@7iLNs)<IpZ<dsl6VNu,&je^
W(2QV^rM@E1m163h-4_SfG1R2&_P>UeZRb@K3U)`p]A.!(fLWU+YhlOD`]AMB1J004:o)A1Hh6
8Y5dRn;e5tQ7&-ePKPWJhig9:h>La",&GS$?V'e%Jq0iG?CP\IkL@qn[_L*TN@I+rb<@p4UM
t!HG2ldspHE+R<]Aka-b@&iqD;6Ogc'7dAqTlK(RoV*27bI_#qNn0YHX$f<7r,R%DK!lI(AGL
f3f1WDbRIDc@InZC.1'YeS$Yi;Z>OBFJT^V&S)j/]AH:VINNWf;MdVlC^0bU+4RsI$gMZOJBo
d*&*Kh,?=P-s%eR8(X86*)7^BDo.ta^BeH>p8W.[l'H;_C,3P^$@nJ]A]Aj`>&b'!>pj$)&:S7
:`cHA;$idiW9>^K:b?2nm)Zj^h-O-Jh7UXSBe-$@15+/]A!meF1oU76SN\mNatl:W38Drq):c
o+tl`ppnZO8[n<3Q3ZP*jH01m-#Yie,rXpX8&)sYp3]A3plR4##c.K6Hr*u.m`K<_S*,rX3En
1$";bJED#itGqnaAOb\B4Rg\M;En\DDSsF.YYjaRAZ*[JgO[qs#M[+#QKQU>O9p.J%2ba]Ae@
FA!^cm+#h[c-99&3Y_:(qT"/,%ic<7!?;\#s'FqR_=VBqH1;79Xpd_gRGbSDcorX:jVt+6(S
,2c(g]AWkPI8g#RITHob6Z#%o'Q2pgAAmHM:4l;UBII5SpHCN"T5?C>4G.sQ@_T(&"'4VOm3u
mMQ98iNrti`*<>jR>U2HALl%;FW5d9]A9RG=/&K$u]A&lVshAI,\CL9;9Vq@b\-F\C+@:6Z!<Q
B)Pb<-TG1@IZYH/;tg]A6O!8jrUf#c14Af.s`Qu5JH"JQp.;;&+YJC-<]A4NPpcL4BV5>QmukH
S:+1nHc.T%E;TcP)i"0/6=5f7tr\bUh2r^_oMjjsg-PhQHhkj_ia6E39A-[p7r.U)_jX`V;H
/%%.O2_3=>U(I,8q91kDQTO]A-(\&8aAZ"DE,$Qc_fL:uYr#CpNr9Z`[rP;hhcZLTpOAB0oMg
eDe<%#I\iM_8YH<c(E1=Bh:HRFh/g2Q:Hk(I)%Z=MBK9paTi)om[YT6cI,A%=&6h88G)5D"0
t2PCmUj%e]A8n_.1&'ZFCgo3>[(GkFoGgF\-&Ui+MIH]AFe:=#0B.U.O2$jgDH;Q5#F,TWLZCb
7d'd(WkMr_KHL5X:8j&*,>7u^ni,[e:ZM,b^=0k'*jSHQ4o;R.B</HdA7!PU[+6$oIZ5>4Sk
f.?AnY<<!XJM]AQLlR(n\q^bLb*E1c(m21TE]A*-a9@)lMDW4Lq@A&[[4-DI0:`qX\;!n+>g@,
dFd?mm8_PhHVGZc(gS(,$L=+AmE<DKl<hpsW8Y&ep^"K]A?#.nZ;7e$]A`FC2^!\o0K83\g11"
Y@FUhNO0Bp;]AFqEpaP_MG3<6]A6;tPWW18!GDlLYDH3%s.g_PG^oG!%p9<*lXi5g)FGB%@;'&
sd94(i`Fr*a-hi^6QcE?Un'$Xsjs&=]AUpgrCR24C)`G/[5+j_0IYhnEJb:#N*:fA729nodOU
)Qsc:*G@;7>:h*j*^l:VeEFWt!V/"$&0OTX34Y@8`BILP&BUufrPZcoiMOjgdT'to,T%Nrh]A
POGG:b*O,=e8lNE9$b8`t<4bWT(73u^#sff!id/O?!qV.cWB6Eci*ZsB#K>d-,"g=66%o\Ns
7(uDPg<6F[FcnX&XE27jOS,,?O,Y<IM(8u&1iZfnf6YlEqSmPPYq'IK'VR!E.gQJkO0$62%H
1n>o@!M%\LSS5U$91^XqI7pU'P:89b@"VKl946tdb?U\g'qj)_"TL<"=./!9=4]A&DJ=+Ng5W
Q]A_JBrbkf@R&G^9>%SXj3(I!?N'/(Qg[2srTP`I?oj8/nsC)Icfa^tL(Om@[bDVOlUgC*=\?
hqT<:Lu*S#E<rV-9\Q]A5^Wpkjl(ef54mi&bI+(f['`_39bA6A9lhh*"X^["W#A@b<#]A-,:-e
h3Cb?tA.+#^*Er'-%,s8U`XVmAm+T4OShD6_Q)<0BB]AB5e(ZScn:p7K8:MU-tn$;u4gM#1BO
u]Ag478D46?Fi+"-qoW1N74as;(9\*X*`CL>4Dl_81-3HOR,o.+/RFb6GF@L%.Ok<8\Y0?_MM
l#/s"@lLF`i48ST%e=IZ,^0uJ55i@_3&8F&XS^,:'V8QSDN3UlqF@qEL%d)\<TU.0&7E+LMi
`sYQl:Xj[I,9rtI+b7fJMG$>aX)aK,:Yl&-kt1&%BV\rL);2mRhu3(8KVaJE;7rKh2Kh_`[U
RMSXSB2_@aL`^QcE&LWK'LNDpCU03LC7Fl4l,8\FZ<V[[YHbt$Sj73FiT$WO1A6e0@AWI,7h
kGpY*VHcOadJ_HT0op4]AQ%SO"AYE^!9e_fqqG@IuU]A4nidJm,j?JaX>S6>IUr`=@*d(q"ia>
:=fq<@m(G[*>UAe5@5(\Bq]ADoY&bbo3Zids'F3dd[L(p@*Gti,0L<?0@.CeW*H1=Mpf3rWFg
U3t7Q03<;Jt9!?NF1I.6fb\6<aR<PC[CdF/`Z3KWR>5=U)(Q=N3Tu?!!)9.3l&#4Va5NHLOr
(*hr/GnpsaTXZ0SZtApG#5AFWZm^nYaLj;\AG9#D2g1127!i-l]A.]Aa>3:;!J%4*V\c:Af/N"
ES\%Qkdt6n\USOqY#'@k^&Cs9ENa8j%Schu@O!BJMA7:O=ZT1l493K006ZJ`G()4<j3S;t&2
a\:,iI]A_DOr-VC-i\Z7&\.]A6"<SXX%%%.k!aJd2nF7=;8GncT74\2lIWL@*`:$?5")tFXnco
h"<\kF="je:pdt_;HqnY*8gk4l+-[na6&Ymlep&'Phjd4sUQVq\A)ST^/Z`Q?k^m3l!VNC&K
kab-iMKqBhq6VmRb&8^e]A$6:cL:efC).aETkXi.d&N3!^,q(c^9hYH1>cKZ792u7/Og<af')
bR_E`o[6m!Q0EkbRcn'OH4nPc-YBI5@e>V]A\0U7`:rO-bHo\B7cN,*.2gXb0Z9S3PNc.c2,?
9Hi\omh$:B9OqD@fUjht4m5\>C35.Y",(SF4H9Qa9nO4F0ONU-Fl<0cGhgJP\P>2emm6W(&^
sG_q*GZ3@@@^4M6aI\hW=F5<X2srLC87$4U#&82tDR%ToPtWU8Mp?Gh[R[ArWaY%]Akh&<Wd#
@?*ggXY*4kOlb8d3Pu637k9C>BD2'bQ:5u"Db/c#nX/Nk=OB':4+l;H1,VbW7(<5hU]AR_th7
lNFe6PGbI77_ajR\^ccj2/(QNG;(/gG$q5D?S,K*7h^D.T1Ic)h`O7+R<lA</Nh6f%mE\Z`:
;S<n2\N*d3hM9"kCp\s%;%q7/&C;_1==.Im&r7.IZr:rI2eYf8rNS0j3^1#jei+>6dl+@Z9&
M0RQ!Ado!O4I&Ctr"DmT\mX)2^0%)pQi.90JlfuS/aNp]AB\5+m#g4/Cp0oe*)+fnaCg&"3[O
*emphhV1#-D:k[D[.?d7V=Gnj/>UiG]A;UHR2>dZ"bVGM^roYeb%l=P1Pi9j-;u%2+:7rL6')
O6#T#DLW\kCQB`XNE]A_h2i<Um8@Kj\u#6kP2ap9DQ?;\=^@A>.A&<6P'$D]A8s8.%ciO7PP[]A
g;'K\IiWX"tAt[V5_Vohh8.l?Ua47R4f&GI`$fiY\K4]ADQJSP\7=5Hj9Iia%fO"\DH%[G58&
pVI\`KI^96!]A()CV:gZ?dAG%s@=E++SC%ISc3RmVj+<I"@(0I+5C+I_ceJV.71'LnhTFd?=G
n14Bjb3]Aa$30<dBn`6W;N>.;f`648<Nn.r)$epZG>\5Qj%qfs'.^#NO)RokZ.BB`iISUG?Tr
sK\SrJUE$=-N[kg="B&FFZWAS8\;=\"PF+I!hQ;.bRYI.GW_Ei046I'Q\tSh-mrCH_r`\UDC
ARp6BK/U&q_oq2mD\QB(WZQ,qod4'G$G7LmlkpGGq;&frUa""%]A"_323k^d*IRG32?Mu!O,A
p`<[k!-]Aj&Q*picn/n?bMM$W;mGWBC%MAI'/Jg?$tode6-$P^9IWM)+Ap,Np$glsilKP[kP&
/7]AJ5&fmL:7T^BtPT:L.`fNqN7%E7;n]AjS]A!nR=U/'S[56(&liP;@k_dHK%JD:i&3S;Y/@!-
)SH]APDW3@-4=EMLr!^p[p>>J,ed)edC5'YgH*jLgU(_s$XTp&h_0#G&(Lc./>G)8=bPCtEXE
A]Au**sO6:e$h*$Y/.<M8$(#qr2/^N)?pEA-7YkVs%>QE?rk*;)eF&n??^00?gnIPa)]AAQ._Y
oN3'+YZVcO]A!J*odC1BR=h]AB7`HAPWiccRHS\DpUU(SRS":b66-#ZJB068GonYa/ZL8n6F)>
"#_4nB$#H94/p3D9#JNniWnGf<)0,.kF2WUlBhd8,1<KXE0./0b6-h`E9t&8UB0p\C\`F_-%
)[V9c(AF/:m)]AZf_,$E_:!A#R6Kg*P+t'r0=WiF''DlD&$X3mC>!UN3B3\S`caqPm))*)kL3
SLd\p>ZWOke`aMEW?`T4M>jLU,dg_k6V5%2i]ADkqb4MeV0S1&KXN-tcfY8oljEa_q'H9QsG!
\U1[6nkXM?aQCY?;"CltPd&&2(n!#t$L9aXc.GeVQdO'FA7D=O>#@$EuAKCL60Y7Vk^SHJn6
U@Ykpc-g9\H,QrT&rlH2bl`h;/SW0H!g!EY>g6Xo<g+MY$GBgg%!>k"P5\XC:eK1,6Mn[f42
o\leh36<K!Osc!KgpfI4u#%=-@U*Eb9B>%=aobk`[=q7"%Q"1>T0O(mXZ_nnGIY7d(+9GhF"
`eZcGX9k%4JlrSTtTC%YO`1uD.OaD>E!5^2=HaR]Afn=5MZtN"!\7aKhfnTDS4aj4M+Nk-s^2
\GBreBsE!+MM9"i1#F6Pg2nT?2L4\c-#X4,^?4p1P\[fSh\_?uHCQ-)]AbFm4T.NtS+$brSJ;
2YX=e]ATsYpcml(V@FOf\=.IX]AG`G&I)m:@'>r,EZqpp7))WCGA:f^mbV>ArlDhc5cnX=rc*1
V5cDLD91[K\k%,L%17&RH]AFsu,LJW%*BDj8DI/M+l6[Ro%O3Csgfa>>[%Bg%daVuHo@u3UNS
bsV?43p.VH<U9F]AOOGopEpjmGmlS"JuKYK?t8%2n9^_arRBT,FF'-s7+JtPA7.q"b@sC#:qq
=<<.54?LD-R8=[D+99+4i0*Tpo,Kbkfs*Kn?6]AP.f1qY'UshVIGIO4R"kZ`GrPr[lT_GTae@
D+msj(#;mp=E#joNfD3ai[AHU,%7M(mC7Y+b0hs^$NKogi>E7k_$!kbh+ftU"CVgA%>.LYgt
Q)NA!k8&KUKn*b'f6@f)_k$S>F'Lk\C#W8ln$u0F3#<!9F(MG"juQo(65P^(?,PAjKqlaM4q
&kmLg;OppI(j1PoQ'9*id*q&d>]A=Z4-a^?d`[)cmid$=(6s*tjpHoQj?SqOtP/t.h7JVd3f-
+lZo+i4T5-_aKoB$f^P\;.I"nq*mR;KJtg)lbTOqX.G$]AG&6l[N2^k:>1YW5L2R+pmM(VYMA
o&~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="925" height="292"/>
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
<BoundsAttr x="0" y="280" width="925" height="292"/>
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
<MC_Attr minValue="500.0" maxValue="500.0" useType="0" areaNumber="5" mainColor="-15963469"/>
<ColorList>
<AreaColor>
<AC_Attr minValue="=500" maxValue="=500" color="-15963469"/>
</AreaColor>
<AreaColor>
<AC_Attr minValue="=500" maxValue="=500" color="-13532222"/>
</AreaColor>
<AreaColor>
<AC_Attr minValue="=500" maxValue="=500" color="-10707247"/>
</AreaColor>
<AreaColor>
<AC_Attr minValue="=500" maxValue="=500" color="-7488287"/>
</AreaColor>
<AreaColor>
<AC_Attr minValue="=500" maxValue="=500" color="-3941136"/>
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
<![CDATA[ds4]]></Name>
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
<BoundsAttr x="0" y="0" width="504" height="280"/>
</Widget>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="chart0"/>
<Widget widgetName="report1_c_c_c_c_c_c_c"/>
<Widget widgetName="report0_c_c_c"/>
</MobileWidgetList>
<WidgetZoomAttr compState="0"/>
<AppRelayout appRelayout="true"/>
<Size width="925" height="572"/>
<ResolutionScalingAttr percent="1.2"/>
<tabFitAttr index="3" tabNameIndex="3"/>
</Widget>
<carouselAttr isCarousel="false" carouselInterval="1.0"/>
</Center>
</InnerWidget>
<BoundsAttr x="2" y="32" width="1146" height="686"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.FreeButton">
<WidgetName name="button0_c"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Text>
<![CDATA[2017年热点技术篇]]></Text>
<initial>
<Background name="ColorBackground"/>
</initial>
<FRFont name="微软雅黑 Light" style="0" size="112" foreground="-8337437"/>
<isCustomType isCustomType="true"/>
</InnerWidget>
<BoundsAttr x="3" y="1" width="1146" height="30"/>
</Widget>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="button0_c"/>
<Widget widgetName="tablayout0_c"/>
</MobileWidgetList>
<WidgetScalingAttr compState="0"/>
<DesignResolution absoluteResolutionScaleW="1920" absoluteResolutionScaleH="1080"/>
<AppRelayout appRelayout="true"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="960" height="600"/>
</Widget>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="body"/>
</MobileWidgetList>
<WidgetZoomAttr compState="0"/>
<AppRelayout appRelayout="true"/>
<Size width="960" height="600"/>
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
