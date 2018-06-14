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
<![CDATA[select * from lxty.2017_11_bigdata_province_amount_money]]></Query>
</TableData>
<TableData name="ds2" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[select * from lxty.2017_11_net_province_amount_money]]></Query>
</TableData>
<TableData name="ds3" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[select * from lxty.2017_11_cloud_province_amount_money]]></Query>
</TableData>
<TableData name="ds4" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[select * from lxty.2017_11_safety_province_amount_money]]></Query>
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
				AND (
					`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` <> 12
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
				radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = 2017
			)
			AND radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`CL_NET_THINGS` <> ''
			AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` <> 12
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
				AND (
					`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` <> 12
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
				radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = 2017
			)
			AND radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`CL_CLOUD_COMPUTING` <> ''
			AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` <> 12
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
				AND (
					`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` <> 12
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
				radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = 2017
			)
			AND radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`CL_INFO_SAFETY` <> ''
			AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` <> 12
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
<TableData name="ds9" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[SELECT @:=@+1 AS 排名, 项目名称,中标单位,交易金额 FROM  lxty.2017_11_hot_money_top10,(SELECT @:=0) r]]></Query>
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
		AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` <> 12
		)
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
		AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` <> 12
		)
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
		AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` <> 12
		)
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
				AND (
					`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` <> 12
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
				radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = 2017
			)
			AND radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`CL_BIG_DATA` <> ''
			AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` <> 12
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
<Background name="ColorBackground"/>
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
<![CDATA[$$$==0]]></Formula>
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
<![CDATA[m9G'='3F%^(qZd$%JEHl&P.=5Xh-6bm:n-W,Z/Alb:7Ar]A82:5j&kSEM2DiJ_SgRKX]AD[6"f
oL.?):.:o`J-c+^1r!W_E2L-sohK-5]A+#9Rog"RJ2GR?'!Ok3<r"/K7EBGkFTfN44!Bk4jS3
<bbspR$NK/UkCt2eo#J5rSFIYP$rnJWpZ4pF!<-WVM<B(,a=?"M1T%k#HH5]AUR0gFOfm>@Tk
C6H(meV=S-Pq4MH-i1)/^D(GbGeW3p6T[lip#(8$Ek&l\t%im+g:k>ipPi0H/h,,4>QeA6U!
+S0CNo>N!%lWe_3]Ai/qS@[lljfCe2Dd9DS3-WkEqZB8ki?&'@"Jh7b6Y0eW<G!aH@ksN%m#N
dJ=d[P/X/">"Y1u$C%:.VF.PaYEdp!Ssml%E@X!j`b239:XC^s6!ee2GBCtZ6PS:bqR%oriE
%8Bd[]AHPJ^d2ZU_gMt1.65M@lh1&WSb,h;b+p'"c=NP-[+9#A1#lbXL]A7)/3@'q)tmqH1.<o
LUO-nsZ8XNNRCZXr4RtcW@BPV.'oj#PN_$cn859(dJWb0q)0^`!\jlT*a-9gE97NI!mqo\F]A
>@aN-#-&NcmYSCY@mN(pne*L>sq\S-9ScQf^V[5r%_5(N(Vo=hQU<sCpP--AnF7dhVMrkOpX
+,U-`D&n>s4nb)iDEb`L]A\mGZJk4BEed0mD`"ot$'ed\?Bo&STE=HW<^LQ=Q`ES2F=0[+QIE
+U[YTOgUu:n\[N"\Bp1??[U(p>:\M9DRY]AYM7M3foH%%6r._s1/\QDT99J8VkYT%VnRRL$@4
ronB3>m`AXjU([,+l0V"J#b.brkT4[fo?@7)o'^Q"(%V6siEc[h!kkd5U?ol5[McQ8cnGE"L
p`[<bZp>J_eGCLp5R7)"h:"+eYPpTIRGgXefY!+Ab0jJirGC^Y[:qB-0bYo74jBrI"EbrhOb
g3"\]Ah]AISKs.ZTqbFfgZHQD`e!?r3]Aiqj7,`gjT2sOVdI"eFUY,^rJ6&;t4@g_Bl\Gr/8c`c
s'9AGG8-s(M[/O).+)r2hZ'gUqiAa;dpY&m7)DT5'ua/:5hRo[>D&4c#gH:FRp!QB+SM1h[O
.ShA_[Da-1A(2r)3hjkY3EAEu7ogh`"^sb]A;0bpFqL&JB@t8>#WZa<!@.pbNIJ:*bhe@@hU:
p!*6F,'[/pgenZ+bg">/lo-D+6@1<FZ_@kh_QAe^sJKWPiqN$h]ANQG&L4\bb8?emlM\M-mY/
U/)%=&dknI#6=JF!6;4u7/phLn'o6PL&lCLh,QA'4g*h/qib<hN#RP)9mk6@A?KIR.n,i*Hk
#.2de;ia.[bn;(j'4JU4C:UqJZ@rO&Xtq+]AKOs`&nA5t^:1dod`hf1_-HT*m\&VdN"F2':uf
*\p;EP;_>l8=O2muR*e8a?HfUqI;&@9+"l?2kZbK3#.-N18qWZWm#!DaQpg9\Z1ICUj`o("g
ds&K1bH<(#Sk[:J$;Wjlpp4&urj;Z,U?uCg2i[@<PXKp6?!dVMVsVh;dB1>2Z>:*B-)588:0
3@ZRh*5iNUO%H*NAQT]A^!<6/-aaOWWl*H68%c=jNAr^Q'`%L6M!T"g"cnSm+84t%V5P+Z#1@
$J2V^sin8Ym!SSilMdijX^4h3oC'70.^[CiH]Afm&RoB-:gPbA?(]As*X1i9Y(H_SO,m!7028)
\nQTfBWVGYS^4:,#8r1l-^8j$)@?@fn2M%P$7dK'>-Pb,#\lTl4q:#!6\iEA]AP7;KXYH_(EW
PVY:5R]AV?CuS=5RIJZt--I0^ZXE;9f\j<FLY9E:pZq\6?*p5hkF<TLZ/m_6.>A6NtVEmuO+V
PX:7C"d6/37KW##:/<\=:+>!)=]AXKY#i9L&%87H5k%!6a/JXtf*.X:EK0VP8#2"mA'AZ\(I5
*JVpAOFfY.d]Ar'923;X]AJ/o;[_bu"_bc4:7AScJa(,kRm!"/Kj@D6GD"1hHK)Td7A?&O%<61
Rh!QSlJ[%i_[#o>Ln!Ic9$%Ff3G<L6gd"1N3!s:oXm;qKl^^jt2+Is1&gU)$7KqGZ@3GZ&XW
MKg5KUTB['=j8s,baqWP"E]A3,8.So6BS,lk2^YtLG[=Q5aF66k*RXg9fZUu\(;>?n5SHD'&c
;WN,+7>G?p.^EV6lRC!J3_\of47>]A=[Q8Z*PN:/ZQ@j_]AC#7>N.S_rH"[22.@V`2oChOP.K3
5!M9/+Tp'HH\]AI!riNA3QKEu6(-M2sh6k8O?+UQ=ELs6rG%jshZ_O>Y:&n$\-QQQRh7Q7E@(
Ee[Zrk`1\FfLf'oH[g7KS8_l?ra,0$Ym`-hZ6RFiW8%\hDk?9Zq,1MSIRmhYV3mOa%'kJZ]AE
</dq5cT]Aet;l&7tr.j<MC+B6ejdST.UJbbIfkhs5s$-RuGq6i@"e=ksbJPGg3[._V!,NlsoB
+'>'h[fQFI=T\H`Tt#g9]AY*E0L#QBDl!<H_'coiB2+k0!H#<r:FKsh>Q5]AOl1k&`-dIRf^\-
*YiFaarM1=o$7a=f<?TRU1r,?1VJ`@6HlRVT@jFrKtfkJ%R%g(Q?n]AKtl+(,Bg-keF8Ve/[r
%8<rd4jE(R5EuMr0f^mQY>]AokfX34(0Q8n).j.._m<HZoa.e[B0>0;@Yt%5a5hEi^YRR6R_D
s"*o`*\QfPfX8!O70R8B5F3cOQl!0/krAaa$h-LR8i?$o[QN+,+JMd1?uL_14X/V4[Ji)MZX
JOilWIp.]Af`7/2%LSWTMcQh]Aq@.QK]A^Oar5GL8mt-%iL.98&3V)(&JQpV2*oa]AS:`KK!@0?7
[O0Qq&,PVBF#$9!9d>TIOlRq.L11(ECfh==C,r8UX]A.UYd.Uo)Fg0[8"VVNG\>5s7,^8N=<G
5.,:NYG!.>sig?2tbB5eUmMqGFCT_*TKCEl]A(_UY[jBR@MMXohqLYQ*5=rrCB9=MK1g9^@?S
6p\AdRSt`m]AI!To@aXdF%KpFdY60Eln\-Yu)cprLG/gG`h_PEO,Q-]A@VXtQ#W<h%f2LWO>1-
J=Njj<]A<GUN6)DL+Mr"c1h9*]A6OB]AH/!L9RtL\!*B<4B=QV"h6`5>gA*R!2b&o[OOC7;<rmQ
[c1cG_=QlUbN=Og_6#.gag%96^^(amCa9(0>cW"gqd87kpJEj88K#nBD4,o)l,L3>uF9ff'7
3,=ja#i>aU:1A85`S)Y;UA^@0Q,]ARrW?*:-8c3`^DZY?X@0419Z^%B7\e8or8@be35LDoeWi
#S"s!>M&pYspn01174nqpVO^fk1)p?UK>`_LjKW?1VB+U4."3FM4fR,&@^fi+1-LOg@lCC>J
(&\its5fnhF+>-g^#+tVY%b\aHI-tjD)!)MA=e=^W-3iAFO9[hJEp>?>RsPil*39<1>%=\.p
k'ZG>0mDSI"P(N?70sLhQb#rcn/S^-q<EPTPMTY,IXrMTZ]A$4)@@tikF8@<'iS%3Kg;'#18D
]A(dEd^@?&c>j61\K=A8P\qsVqjFVqr]A?m=)djWu\2T"U8)DDe&F6=Tu[4W<trbDYetMI+kfX
=A;'_qL)5MWR?h7/<pfErORk+7'b$[&`_"h/]Ak++la[nRu02F0?DiRLFcBX?X)Zl&:1.OU)F
58!rshL8k7HM=93%d(_#Bl]AjTOQ$/t88qfLZ)n.o=[>Wk<]AX&b\c$XBb_S-Vn:hr>`(B/h5N
&)b;I.(1=B(5*s+X;Zu4$I+cXiH2=>?=rXS^<0>@cUZ'=PbE_qIK1pI8=u_[3#tf"OCZmWM8
FE1h<OtI4l*k=#>6rcq]AmB_A`>Zb#ZT8EOBHi%D:9QR08;B;GdK(rbVcL>D#+Z9e(;0]A9LUP
ucm:6SIW/AE]A3LOK@>36ni""A,.!Gs`_MW:.Em8706gV>G#l8b,*(nk@]APgK!9%B8R01\*6+
LEo[kABmQT>EQA1*6YcJ?.1")d'WFYIRe@4]AV_^TLSMC1iOrJ2m,Eb]A$J1*dTu&j_8nY,[3g
puPsJs[\,3)b84jT'rKa2qS3t2AQ.OOF-1IMpiSurs>S4cDopEDr7oBJBWq:j>V'r\'fqZ?U
-gWrM9kK2Ti='1h?nGW7ZM?$>4a/n^KfPGNJ>Q%lLk7(b)QiMI!-kbUU`*@Xja$es`_"tlD\
ji<@1RdBH*fMT0LpOVE`@>A>7bH;1aW8nQ2A)fLiA<I%K5.0RE\Y:7Ac\ALEH<(_D)e.@jNj
M15#Cc/FNn_?G8hpRk.D47DQK)*Zfl9`ktEJQ=G5bYkJYnmr&HE^PUg56eCA&SSdkTEM&=`S
\+l,du,c?G:dN[!kJoGSjWKU?kS0phc[c^14GE)!l2A\2A)AGC&lhh6*NP3@)X+-%LZ\+A;]A
_kFhch5!b`1Dl2ANuFH9\I]AeAm$J55&.r&i+=K:h&mFG6tNp:,WIEn'gH:;WabWCZ6-rpDrY
^jtL<3Mm^(U=>R_0)j</O?Sl\e2nXj%e$Vd'aOp4!,PX8g.9RI88XPmChd<EaQff'Eop@;dS
ajf!BlV:C\qI'2@JfJ4H*J<GsrG,IMNtnW&n$&e0O6W%\^#+"9i57QGQ(-&sDh8TX>[<CDHd
5)89Q#4c0DL?/OD:282\/7mDKG.cTl`VA?6H^b,elhmo[/d*4)%$#2P:,CMbQ^Gc)M"%Z0@d
oVso>*,3HL`V1p8a:/dPX@V:?(!ndg8]A_1<>!4lQWj8"Ml%l9T#Plmn1^TokO(W'p(9IlA,o
R@!cqAC*h$PHFbgTM$lAJ6inZ-o(<_]A;Ael=cK;*Kr7B;!BO("aWCb:o010q@mb%cDhm2S<Z
KfdEG8\*oSmb*3?_[\-VPX"-3A+8."ie++t(ZuflRmsir[B4.ACJPA]AfXi\EG;8pIi;0;LQ<
aOCHI/n@X%1F*iVV`Zlbf1:1XT4KL=O'5FRS>?NUiI]AGC"E.T25WqZ6ZPMX-TL2D/`KVRRB1
dM'<ck1>oGA/NAfF,f+l`-r%R6!m/'.`>.-ipVZrS.S-ZAWNG=#Z\DMp`/\VcOjK0X#-=`?\
EKP=Gq]AXra%q!l(c)<;q=BTj=HF*-):je\_c5s7_g3ka[4_s>\PP"BVLNCBU#V;]A+sL-h@mM
tH;lNrQ'cnOBH5!/6C"jK\ORC6;NB$MY)e![pe`5"tqG@u0.d#C#U>Y+q=$U+B"gTU2`ou2s
G?ifaLEU"[c?j<D%mmWfP\\6p,5PnQp3l+f&tX=,#m[VLlIL:j6e8=g02LKHMGs8KNJjJ83H
O/VN!McSCPnJ`N[YI<EU20gpi0^;iF%r"?c2uA>6UeOe;W0^*BuQB`>Qc[ZW3,B#hT)_\9_8
@;K;B99sE!pY"f9i6F1)TJg+JBM1i&#hcbTcn&gbH1)!@'X(>8c7;N_j/+bn-5B&F@Id;U'@
=60b[EONsa:`uJ,;o6I-inFiA);e,\3ckLpToAC?PdqmA)7>>d@:RBjpZcGO\Z6T1YUZ22Hr
C\T9Ia<JSdnniOo6Fs#d5DF\EHiaJ\l;Mr:H>4BoFU=^\Vi&U2W]AA`u=.TDKKol2W$YQE)nr
Jg3.h=)lL?_dYDq-SchV?ig2=YIes8l=dbQd[KEu'T%1)hCW1WeARp:R*$m4*u8EeL(5H'=9
KlLZFrX^j/SHpIpRPI%_LNfmLFr1mn+j:N?T*S9lo^7.@"2d1(K&[9M[/8npR]A&+RuV;FR66
/\QS8BX>68W96CtgqrP7.$dS6olGbD@2td7gZD$.\>gkZDhXl9?A4M<1R0(@7@>]AD07qDU)G
Q[9'qdOeO)8fD7(c4BqPnh0*hS9at8KVF4ron";-R(`J`V.'"i(kpAM4K`\Qh7f</GRZK;H_
)^&Ln&5"tB.)^*M-R#kX:@7)KPc0h.1[J=7tB\ga%T_8P2=6[oPUmo(dSZ#e>:$>[;*'sjKj
FS$&q"^d*K<VUe!IIE@r6sDQjor$%Dc:LE^cV<<paa@F=JIlGa$m?.EAdq.,!0V+ac=s#8Wj
h^J*.[5=L5]A@^_jieXYR"Z?U/pP#INI4-JH7!?<nG^C3\Ds>&?e?tFp!$r4rL+W6KP7AIfm9
?X0>SBm4Ho$FAdH>$+O22JC^`.&[97^jg9q;AJ?(d@@$0*gN#"USpIP*9'Q@SMg_J!5B<;(j
i[C.0G9,s7&8=M:Luhgg9<+:)S(G;g!9jYO/9C(*<m9l``RVUjdnD.."IIVED0I$(AHFhcA\
5VbYk\PK4-Rgo3mqppV$QV*m6Ql26gHGVGc)hc,/;H>U2PW9$BJkOf-J=$fQd8NdFt?=-']AG
?(Jl_T`Mlgs("!71J>[Ki2j*Z=f/V9ROnrbF^X03DR7Bf!c+UKmDhON)L/tMRfqN2C\[]An()
UTa]A,R;Akl%3AOXn5b7DN*@lU<u.4ELeimI[`uq)*e&p&U>^BnTX,_L'7T@h]A[#.XIWmbO`2
u+L0.>K,kCjgn2DA#WaFuT2^U3!323QMKM=ch#7[(?ET>i*@Jd1`qSnK;s9f;:FP@XY97?le
P2ZUoS21DC9-H,,jYqiYNOEdK);_"&+NVsYBCd#-;P)sp/U6/]AQ!C&rB;S/as:7@(F\ml@3!
qfX'kP)<>!Vg:lF#FWi5.(3+^qc0ZHn-Dm9@MXagUrfYKj[*<9F="2(WI-_'-R/5VcML>*4M
FbY&V:d*d#<K1Uppe67uapKE5%r-3&T$M)(5YpNq)N5)seVPs"0NC:NKJDCF>4_ap%8S`R2A
FiYi6kgc`<WOgi87bBc^I]AfIDJ/I*r~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="503" y="0" width="422" height="295"/>
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
<BoundsAttr x="503" y="0" width="422" height="295"/>
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
<![CDATA[1104900,853440,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[762000,11247120,5486400,2324100,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
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
<![CDATA[=if(len($$$)>52,left($$$,52)+'...',$$$)]]></Content>
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
<![CDATA[=if(len($$$)>25,left($$$,25)+'...',$$$)]]></Content>
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
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="2" imageLayout="1">
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m9G!;;cgOp#nJ-9UOu""C@#t1=,SnM[+#7)R80Z@gM/e$HUj2VTqr[*<mhT!"S/kcN8mlUS?
aVBO@**i;K'a<RUW9"JusV=j<.8t71q(:GT+F*,U\XomPutDXS(r8(!9ptkoX1\S,N85^[Lo
Fh`cDEMsHt&0n'%C#_HYNpZtiY%RHe'#RX]Au24XT2NTXe9KV5I=SpTbSruiu\D`aGni7UK:<
mNhgfbE&AgtT/^N`9tHaWJ_^XOtB-WBMAkp$7ilql@4"`HNB:l+jgrBoa=iH+F*l&C]A/Cf5'
jAe([jT\=ON\()A_?MX$SQ<t/rSLmOLf4:]AM6I)'"qIk57cl"P>=617AXi_s)?_FJ"ul&=6f
k:\bId;bmsaFHZaFQBlrma#)PbLHDjFB(m?l5O%`nFT1>G*[L*D;Ab_:I$G2%u57C?^]A!?j4
EeimOP'IqL,.0[Mn:^R.QgDosObkk<,0(fOAjBp\e$M#-q>CMph@'):p-ER1+k((m,@[?sd8
F=C[,7E:$4JYJ0F9O">oKdW'BD^1Y6A>dJU1A?)A!@U4^<`5/a4<kN<WM*)**6n4F\f'V1CV
"GgdHTQ2!/L<=N2m@"u""P1SF*OI\fO"X5$<.P>/u``2oGMU`*D^-3N,CcBX$eDI/=)BRkg_
PN:)[iPT',IW^<:^>Uo0eRRVI)AJc$%krE4)r.m>PF8:?eKDf_4e*e(iCCQ4T9CHGoUU'YU/
jq/4,]AT5-.c^g;h$^4MVMh_b>,;#I5`P(L./+\ssBA#%]A:-HV/Fu.S``TL7T5DN8Ps"4,S`L
VaY#P:/+47]AM]AL=oiXp)X.lp3mQSlY^.ZoAh!2lO4PUXM*-@p5^8*8(Wf7KI;/Q(3W^eUYC]A
e2KKkDn"TTYS<"cP-*8Q,]A%ik9QGTabEiE2\T/#\liP!!Ik:P./,(j]AL(XF9W:bEmO$KX&9:
&BlNS#m$7CXW&T`SKaEbjHRUMNF0]A?Q[_(.Z1g3pon[.Mt+4Q2VF^&p([^"mC2E?7[OofS0J
PY.lp^h'V.KKAPFJmGH>GaS!TTq2`#Y4*:EJ^(n5SC<P("`kMF6Nk9cW^f%9C:E3(P;HW9R%
YY9@61/jF%$B%dPr2%q>,E:8[H/`/N$]A6,iX<XXB'>KQ6TBA+3-6PDE(6p()+"+*/)7D4hl7
Kc09s5Ab[(_j6jgsofDapMiHb>NVpDKJEZUZL&nq$9WO%&DLWCDb/6o`F;D)WnR>VW)Oa'F^
V4f_g$G&TnC6SXbZ/,B(4er^)!ZL4?.Z:]A+ZJ4lD_gpniZLCb83dRg3J_ji2c2u0B:(j)t3?
:#pYou:LBWajKC1M7T3YpBXF58XDU^;4ceHksTi2bZV!M2lLSGq5m&kDp'T_u-;>&%>o>T2`
$`3RYk4[S&PGo?ur7s$;P^Ts@_B,&ZBN3"'d]A]A/O5pB.hSjZ"#hi,t%@6X8dtQ\b((=MrkP/
,lHctF2*n\-aCW6@a=L^IW^b-U+K^RgMn*k`7nRY-LA]Alhi-k^HG=D`[IEA>b'?+7]A;@u5cL
SoF]AA6[h#(D^:+DKS=NRhl0`a20+8R`i\>f31OVX,D`YUqJ[F4V60=M*oDU6!*;Jqa<JWWUa
8-)&p@[&ALlq7E3p6ZdK>'Z77^,.pZn"_YAjVg`P-nqb2/6m[bYfD[Ktdak>"opc[3ii5!58
6BBHO+D']ASV5elMuA&,]A%cPVGqdXf-$!:%;M$/DE?/J8T32$1>rW<Kp.+Z+Q4*KH"["DIB<Q
;Uq`E&c"Zfi__0dHo]A!3`kiU5\,-=0Q'2]Aa3Rl6mef\S1#\!ARPnpMkC4G()H5#"e0BT1H`b
bEmB8GfNpN`S.0Fe^8b8A_m?#brH<T?6=CGROJk>O+fIb*C[^A`<GDR_c<i%rbJ-)Hp)sHpR
S$lC-+iO""DUjM1m&.1$;<!EC6pAGe^-QFn$OjT:bY:C]AAX@DR(_ZLDrI[,B9&.STZ!2HQF9
AQl^9&j=ma5oQ+Ru#GV!TEJSKVe-Q;e&*2g%+bmE'LS_!s7C#/VaC([/K)lEr*Ri1nKJU+*+
13E[IlB$(#UG1Z\8%t6:d@[M"lHJej"D[Oe*djo)^33gm<&5jc3ShsXl$U<[./2WD<%2DHZg
.A]AHiD'EYMu-nd`u?T#6f.#,Mg/_sZ7PHa6WcD&;cp$de5]Ah9"$-&9A0F^1!iRjq^GMi,77o
4s.&N(`(f=S[JPXn3'TC>m:!P*[:j(6.r/;QQ?C6D5)Qj:fOFdi(L2ClL1uG1:c'Q3\dNq;%
QsO<\Mse&V=S/oebC!*]Ag]A`9lZ%o,RY0`gD`!4WEEtMa5E7h`+2$l1'ciQ8OpQs$P@@c#k+q
h<<.K`9#kV'T)*QcBuU)ic*%KQ=.eIG52>X(j"35j?]A0X,3>r(u0L7gXV]A%I^!o-.F#l,MdI
2"KAann#CXAf1.o70"WeYoYrQXZ^171NY&A;<*aOkNBB&RLu=)h'CFV1>7]AFO\'>;I3db^&X
rEjB_P/1AmNQHk5V)PWZ\B;qR)k!uj*P01Zp'dK98Ok44cL0i]A8;0M-T]A*hd.[!U*L*NY44'
=p[fZCELmXQO>))M)pZc4KYHCW0OJ6^*TBET2+<>L@c@=1F/A9H(i6&&aVs!Q^=_oIDd(<Q+
2eCq+7au#YhO_2E`\LKqViX*%d,e-F$HT\FNE<;j]A8`l5CRYFn4+fVl]A`mBQ@-,SJ]AFC=<Q!
2;-_RY2gkmR5qS.%LRZ5OVnEj"82M)o3!_jpmS^q!!76d)U-6:$U>-^d:G8>D@lugjk`s7Ep
OEK$bR9hgbIJY=l%lq6V"MJRH38ba@OcS;'j0@o_Ab@c(Tc;K_^/^JL.H^>`ujs&7qrc``SS
cN7V^kg3f`5mWg*BMI"I)6`dq>(Y.hb:D%`YjGe!]AHL-t6KlOEE9)YlCTI4e6=64ts3]A),0/
D"&:FJV(1!$8['jUe0P\hA(YSEJ)i^m,?sZTUQ>Ac$`#Xe;.\WC_Gttr)4Ql;"pQhoX@AO8G
+TS^BO?Q%j0hcoad\%<bRKU6.TMiA9D-K$hD`lL6l;+4$F+nb#lGcPW9.BIO>a/dSR.OJ%-*
I$p&a+O/(jO$B.n4S6:msLr`N@$BkHO)u4!+,m^o*#AVDq."7[@"*hJ\A,1+(Y\Xqs[>3o8W
>%?8G=kK6MDBsX6\_\MZjbM?UL?aP3ObWlmW.7Bo*+'&I4l?-q2@h/"&j_dENS'$9PR<CC=2
nCJK@6E`aAjo[9NpHmAn?-;:1a-KTOMq,*u!M6SgTofX)\*E:5#cJ3B+j$5bc]A.tiW%Y2[j<
nifmW2ONk?=OGE_bLb6cj;F6)5TR.0T-/uWE]A:N;>C_*c$:C:h!P>G_.^7+Eq5,b'KhNej;F
DU0p&U3oQlSRen2\PFC\XtE+E<h/=^7YJ4/h/ZXl>+jS]AUsfn@25cPt>^feAU1]A"K"\UWL2K
]A^ZfhH>O@DVY#Z"Zk97_Q>+"9!WcP3qN9!f="P*S!!c*@T,N`?<5Tlq>$E`-LnXB:eJ16>38
fh^!,,9b27<e6>d8ir<7"3HZ'6m@A92P1G,9G/HH";C.iB`PKiTf.=Bol7-dh_<b>pa.@ja=
+X/g!j)%23h,?o77YoDNP<#1oYGa#AYVQ.G_pQH@e4\W,4KfH4O=X$n[uN'M$So1iKm]AY*0[
#O*?!#kJ_+&'UPC=YRXN)O4CYH9/tU_ja<2-T//_6$5%[Fer*geX;ZpcN(BBNjmEZmo_k1.P
HBaQl(aUY0bR'J%N"CUb_liTGr<s(Kp+sLFb1dfS&Vn7N;LGjp80uoT++Y*j3daaYLqBj"_C
dA(9TV&Xr/ARFjEm+n^-5mEQ$NP)m!nOBY`n^+`!mSeWn+q]AX#$^UsC:52=4W>Qfj6CGRW>]A
0_to0utBqgi^YT0Y<)L_qVsn*c%1O`uM2I"?^Ab=M`AN/jk0[7^i2"2#Ah]AMN%Blg$aM-HG%
tumW84R6,)*I=#3n)@ncoU/O"M!0_P&QMs3kkNc;cZ777o@,9hY,je[%o>&1+Yo,$>rXP@Pr
YVmNkTXeRa)rt:QOqV6!OhS-#U_7#O\BEe?F4B@%+\I:d;HVh1MoC,tb>9%V(`LtX_<_q)$H
Fh;nJ%J#Qn7L<*;tPS)&Mse@"r]A"iV0DiWAHkm+(BDCA@/K4UOaVIonS\YV9Yiq"QWp[`O=>
q#&@O#Eqe$kiNp./&J:d5oaMh;l6AU^3>4<?"@+`5;@k%O7_c6GG5$T]Al47"i^GL8gYH'uXJ
Gho^Cn[irL`X<'p;RGENb(lG;$m2([&:mcGdB>q&'iaU2f"J[Dk"2R09>pHJglRfEVJ@iME;
r\/5]A/bbREe8n`p(r-6[@d'r^6=D.\F)hs9RV7!#ab!N-maA)#W2U5s**kkO/=ba-G]Aq1c?Z
alB:.1:'Kj;hiW$ZI%%bB>2+eK=;$)XiLoG5;<qMaKeT?g><3@^r7;rjK:.5.`#,\A(qr#@@
'-b$7P>a?ks4mU)Glh,CiE6?mJ?29o5JSJ?BaghqVftV*@.rg;.`!POK*QQ+5Qoe:I.U6Uh&
VNlhE8Rad.&bon,IaH0@HTQE*hCNZbmJ!in7k!.I9MH*]A@+)L\e<;D^?-PZ=Ys'doeJYt/1?
&KI'bEDr;\ob=GXi9R"@(nsGL0I<3$5C58_"FqE<t&MJTQq,?A^;1/`\)`AJ>SJ4(HGWO(0_
9T.3?9JUlArTh.;$TH1,(R/bj=$^k:J\qf!Xsh#>5p]A:mGg9P^^9r8W2T]AS,m>["Jo3QDi5t
5!"P@<r1(_ic@&=AmAEc"ooCU]A2[6h!*=21e$?KUFQ(Q<^TJ1bo7GEU4`M'T"pj4hd%U6`LC
Y07Urb(Cr(-R;Qf!+)+,>8eC@[n''9c46Lg^PmgO)n']ADQ`j0pi1Sma.X:<TIDBkW]Ad:a`-1
1$E7.6PHL*hW8J0:So=]A"B_P1$`."7\[Gq/,J_Z'b##VLbg]AoGFOZR`%_1dCqk@MYVb_%$nT
(E[S?u]AmlZQB@#ZCUMUH!"U(k!V<3+`]AeGb]ABO!hulI9eUtbfhcY(#<[-6[3I+a2@7N`qXnP
+fQD=,!_&"a-#u@eb'tmWNSA"SZ\=B(IQ!V_M%"5IUK#6&CqNkds:pS+`2E!i9B=p!=b20&T
X/a!)I8^m>dqqoFBE4n;YL^cEX!T3^iP@UW`^9WPON\7D0arFCUF>.smO!,c!rM(3,asZ!kQ
O'GR(>iY:#1OR#d9pbZ>hi)*chNn(I]ALR!/^D1&]A=5(jCDX'4;sU>@D37-Ycqr^km&MIcH;*
tY\o-*Zni3+U;U1njqC\FaZuIF3LieX$.-!s4'lb>JF?,>nX.%>Ymm'OQBRQp+epdo[&2m;P
EQVH=t0gp`jQB4#;Kc'7QH(Tr-[M31C$pO5WoAm0/nM`MQD?>[o5h)QYA$>.[_OQ^t6:'&=*
;%,7i&\CN47o\.;U'<P[E4as3>d*]AT?G&m#ZeLZ<Q57D:[b5BgdQn&B?H8)W<G-KS/U\n.Gu
Gq'pFZ(2%H)'c06Dh/W?>J[s;3DU\ZN3q*`!4;L<Q4]A#oam`\71d5oOid"lZ8dgOREJf*2M;
pKY"EgRCgY.:/9fS(/,&QWloZE9g!;QAdfL#<;H0"t2kn/H$2TF:`$0+SF@]AV_j+Jt&c%qOR
FQUU#+%]A%$*,BICY?@Zg6Z?Sd8@DU:idKL0[g5juRGJ9&CC+<*?qu%[s7&lKcYh0q=:oe3L)
aH?iLFqH^L]A,'NTQb>j2Zh:Z[<`DRe"HR68^u>r,n;R'Op%O?`#V=`/l[X&5>9@V5)2QrMIt
BtI6JD0[PRULRo@;t4OohZ2^pJ7>(ACiKg2fl#^!eWU(AM>=;+8.H-oSTQ)DK__(d3)17%JD
H>2IgJ_r'#D(W!A/KgD5"c=M\(juXS?7h_&Z?\nSNY?EJA$6jMHEu?4Y_QkK/aPXWq,0(9qu
!k'-]A4NU3A1m-D*0+N-VOA?^Gs<3?:6)Y$-Ur8fO'Bh*1^oh9.!kp,<rJ,-/f"l[<;=.<cNc
Ir2oTO>l><c[Zine%fk8t1ZC-h^i'C.+/u:cVE-inG:MAOi&A`1SeraNs*Gs6bHc&YR@uh8+
p!i+4nm]AR:]A8V'BlEr'~
]]></IM>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="925" height="346"/>
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
<BoundsAttr x="0" y="295" width="925" height="346"/>
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
<BoundsAttr x="0" y="0" width="503" height="295"/>
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
<BoundsAttr x="0" y="0" width="503" height="295"/>
</Widget>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="chart0_c"/>
<Widget widgetName="report1_c_c_c_c_c"/>
<Widget widgetName="report0_c"/>
</MobileWidgetList>
<WidgetZoomAttr compState="0"/>
<AppRelayout appRelayout="true"/>
<Size width="925" height="641"/>
<ResolutionScalingAttr percent="1.2"/>
<tabFitAttr index="0" tabNameIndex="0"/>
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
<![CDATA[$$$==0]]></Formula>
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
<![CDATA[m9FL1;cgCk1"qSpL>2#o>FQJ#4rrB^Q*t!67$:O:V(G^DNCY4p%TV6qW^3Apabb-k]AjiABG/
1+sY_^f6&1M?$$F/W)X=/puU3oBu8GJ-/+QOe.kO-^R(9s'GSd.]AtK0RjU(]A0`9pUf;TY-mu
Vs7>NMT[BM]AN5@8boLghiGTF\VX"]AM0bjQT<s0DF<A%OHHp?YE[Spth;Y*PO>UG"I$A2aa*=
++F^E\_JtkoZ(s7VoJ3ZpnWARJ-H?X57+NnT![SF\Wa8CgFe'l_.hc3nn^o]AQPECE\o3l*)p
dQK[qq6OcSFUhd7f>NX6BWLDu-$N(_'iMVOdGMVK.KT&!Ld>=nc0^-fPpN-g,WE_C3OD.'rL
lc--X0OHasc/*mbT3;r:g3.`CD\=]AjC[Cp3HUHlHS<%KQG@]AN*2EUjl[o:=,[>kVL`0X_=CY
TNRBS5%qfqV\^[Ce"5[oT,h0\'0fGI27O=PZr$Yrfn<\nbMu6#NW=ANOL.7ZMm.:S/Bq_85_
hPJfD-eNosUjVV6J\D)I%S_M^uAdWcD-augAD.pXcQtXKU^-+,K>_lP72L]A)5mcnQqa#iPah
<d*V*TE,SZ`_J,8910:]A0/r/5&;[p(!!6!*7(6=`2g0P26Wo]A;lJuOR7eIa3qlF>kr:V_]AMN
g[Af_gTb'XjPlYPQ'pUC;QQn3WWJXhG'Bd?DoS$:QAn3r\u?RE1#&KagcnTXIe3nc1]AZ*#eQ
82o/i`e/N*Med*'.886_2b3&$H^PQ[*8M]AX$p-A(q,0pRjba`C7(`q+fK!!D?[$3U@qSF%k+
k@4QWTmnQfc$<5kYo54`>^jH)m8#a,6U8)euOpQjU\LjkB>!8$^'j&%B2GI>^VTg@NM6H,cj
L<bFCXja8LY\"\s&XgSpMlBW1[n1rMhqu7Ss[dMPOe29Bq@cnZ[N$@O2burG?.aMc\%7R&\.
o?H0D&4S\fYUl@)JbY#1XQub7JZ+2fPO1>?7lhgP]A:>F3!khP.DhW.,0n/N4]AYe?<M6,%WP`
PQj,TFn+-'_uk/Un'*b2GGj/?_mRmq7=>Y*Q,>-V;V2)YhAOUWS0N2mH-Enl0EY]AkS=nY-Sh
9t_aS_g\m?3L"QL(D]AMt6:G>(fKB/hKk/00[>sI!L70EVIhdlaPteurO/Mo[U/H&G\QL:bNQ
"h78V1Lu&6*Zo;WAu0e3Vg-4UK<_lQ=%m?<E]AG9"'$-hF'-pYukGE;oZ/(UZT"6GCJX;6Y25
?BXjlp1M`;n1MJu/AiD=c%iOs346O2G%?:(;eg@Z=J1G[V>NFN+oj'FgRE;&i@rDU73FS3LZ
LDk*^\D6d%&YCR:)WVXER_J)V?@?pnpeBi2/^Jl>b'NZXDus+oG9_#Xj8?T0SbY2]A82:&E(g
0\jA1^X;"4^;39;FK'ZVu2O+X^FR3$knR9b-UQ1XFb8!\SSqcgm,d8m_oP_kgCmON:%8p?jY
jTXpFH0Ti`[5[0ff4_'WfIhYt:n=GR>./f7hKS0jVDMi!_P#>rZ,@[Q`r`_s?1OOqX@=f#9@
_^MP[9+#-4Xt9]AZJ+`'75/'`PX7:,sSDRp\,NE3EK&UT?5:72Vr"tK8j-2STsXeFlJ.T7A(r
pS2D6Mr0)K[/h[sq]AY_b$!K3L*AAH&)mRN;6h!?OIakJ(:rTs7A2gJ-DW/T!XpYfi)W"H4pd
t4-Kj%Fi^+2/H=&#/1=rg<2oqqkeT8/88/P+ftY8,_["#&h^M+n"gOi`4g%c"?2K#auGIj43
WMa!([Wb1:p6[.c.kE/iG*":BGt#nUlW.-dXSVj'Hjh:Smn=OqeJ3=<+3$<.]A%HX4"b'32Hd
V:>Jp&G?dMN"AmRL`6\g4hl6gZ868XIGLYR#cEu-VTQWfLc<MJK^PpBbh+eadEEL8m>df1"t
W0C8-Wnu[puk3TsiKRiMFf38^m9IZId'Q*GFcWMK-,l/Y0r*Yj2-!.$S80E2=Z--r8#q549m
J7k\^0aFCJ0a*4QdZ'lTj]Al(J1`hXRI+uq]AOH(nW:NKD^>?bYp:Yf`;eVpN8Xc&9`2Q^!n2I
t,WK816%?4FRHBY95j6\&]A.f7r/nPfJVuch@uG,MRmGp!1E*%2r=:kL8`'Pq=*ihHQbb9nBV
.N^!"#$8MJ2lGCc^Jcl88)#<9[<c7.-p[h:I%kTu0/mE8tcX0\-M0)QODF3l%=%7]A"j,o-,Z
cB-M9r"9b%RB<k55>uWqW8YlE5HH28B4mM3RsJ,2C@f@^I2VTnED#VBBQ:W0h*OY[.F5Ul3?
k1CGas.fL.I<0>'1SpZU2m0@I`I+?mI<r*+>?J"j3qc/:Oa'.5ZsuW%n$4`;6D%VXA0KFRL3
8CT53\T=s!JF&i?C=;+EqPXPVo7)Fl]AEhH$S(627!R-:s$iJ09jSLE5!8u,JlC$,.TC(A4?7
*m\ch&GR51).>dol_6u00(q'leOHYEZMJDG,B#Urc[kU5"1-<jIY5]AY]A;9IJ=nDhnb:gI!u.
$.<NT7R4s8`GTsF*d=ck6=fYS;L'tP`5&7jt`S;Q8Nb_:#k&Upf>$*">;cu'%m`\Z%FW>3qO
`V:/pE0t-iC1?\'GLP;`d)!3t-;(h[-\+$uV,(1,\LI,ld#S'^W*[9*m]A%Jp$APG+jc%O9W*
bZ`mkL:sQ^[%7.eP4PohC]Asaa6B9*S"IALYkVcIgfq-3T1/FcU@;>0+jR)5Z@)%\>:SfXX-b
`/C4"j*#EI[,;K%\n>^pY7H$Gc,Oe((d;O3aPPJ+I]AO1*:q?i+arKaiuf_V^_,6-(;gn(3Wp
>t1XnXIpFm247]A@WH,]Am$[dQ05c9_WaFkFe`ILU=^K9Y]ASohaV>ngtH_4;a^maXaI,8O.s6'
'=Ve77]A\`/8!Q3OP8X\J2Z>lU1)/,iiuPB>iq?RN=[CNn:^a:F:MqST<le%D[4R-K_IQ'rtN
/o6!^flY9n-la'p\Omr-2:/R`7`(]Aoh2%@&$WLf%'CH0'@-GV5CK3XPB-WIlFMYYd$hj;Z!f
]ARg,2>,KA"a94j_jLp(iDNBP;%i3,TTDNAt9)TRYNR?I&RW]A%ImEV&$UAa%mBW@!a6<!e0.X
,#Nh>)@#uj7M/g,%/'pt>n_>cGIC<UCVB7nVX82a;`1B_:;ROg84F.WLci>UnEIE7N't?,A?
:Kn;$>.Jpp[dBZN[9U^3C8[J!R=NW2*Sa!#a0fBaTQp=,Xl?5>s5PBmSf\,]A?OJZ!p]A3u;P4
<;.3<)XBY<O*RK]A:sAlV:q1./:&&O6Dl%C?"NW!"s`-)gK=@1>q,[Tf;39cal4)Yd3_E.+Og
q[Ft)+U4t+q-c]AfH[U-W:.6`j6.@E"_JE$6aT);tXiCSpAQOp4.WF@=EfF*#dDj$:j\2@RUp
Gg(Dr"eUjbJC!mg22ek"C%3ih<IQV+6"al#1K()%&7+,L5O6QDF\!kRQBU<<j:d`9j/RB!UH
Z:nQmO:mE*KEO<?C%IInYf$tkC_ecZlUMRY@jVi>.DZh5q?P5NK2A1W,<lo;1D^aK"L[j4U^
I_e&%s+bACBtDBVt*6b7tObgq-uB/k%/3,<kX7@lEilXm3;!1gs.dC56\<a-VnMUj3(k\Ctb
M;o%dkE5eUf\HGkfkTBsNNprrZH)I[+OG;,geiaWrnPTKIZA(1Ytr?qfa=)mD%;"1*<K"kSU
%A8!=eXhpgcuMPgn9'LXk_CqckFa[=JgpnU:mV1lVB\R'>kQ>JV=#d0^WP']Aa(-/TK&0DT^H
81O8$9,)gP&OO-;3FT#%pBpNMei'lpYp3=^h!GNuQ<:`@T_A8TT4([!45oMU1oQYlrp[msBF
r(T^5jO*KTO$-kgWkUYHHH;kfH%@O6R]AarDsr6p9G.+e-p5[474k"EbPouQY,0;GPt.U'_(M
qB_abl7miQF9&T.bq#o]A5]A[Q<KKFAdLi,7=@/2tME@D>,B<PhrKd-=#29\Emfd6*4"%6\_c1
P1+,Z1K_8<>l=)j3ib!=59G-X`4hNZBJZ\\FKYm.]A^aT#0&DahSH`hE$=W.JBE'S*_i__!8+
5<'FV*G:TbdIOFQ71GV9!3??KW`%rU@GPaIZ:rm4%V8c7S;)o!K2e(M_d\\VcoYbJg'f^S)^
ph@(3d<;o*-,Op[Y-nguoD.&Njid8ABb;_G<iP>i8Tf^iN7;<TKYc5:eJloZT.uZ=PA9;PZ`
f)a`fITbQlc-ju8Oo?p&gGM-aIIkWPH`rbY1W@Z%7`Lbju2H8YCQ0m/[I!4hbQ"BMk:fnnhd
0S@?TBQV]Al(rD,9YX;hmE)'Ie0&k1'YT9scY=(13KtlZiu7#F,XnU@=Io+Oe?\=Y22]A=l+A,
St$u%8M&^B_*;FndN_#ggVXXaoS(ZA%AMZq3B;Q>@je=u]A5?AI88L%E!Li/0HRAP6/S_%/tX
kTo]A"[2@H(1#9U>#:rIF_=Pe"qSWuc.PS]Ad,]A5pV$eQVIC$;`GD"L,O\NlC`"eJ?aIgksRd6
TI"rL@ZI2TUc6c.0bu^V[CPY^J'eg#%+coPPX77$=Vu>,uG[&eSsR,eeSQ>8850.^IR'&*bN
n4Xm1*WL%&"T6_(^q?NduUZr[(1=RSP<GSi6!/RZTVQlhsKGB2ektnAEc:8,MVc;2P1"VG@&
2!l4ZA?NpbYG8kTP&/l5dpup3(bY&0e7Js#'$[sre*#YUc]A)f.bpphHf.6Z*3:R^;EMKKeTr
!J.O8b\nqPjtK6"u629u#+,aDHI-GS!,H1EJR6k9:<q/<nSRH&32GX117p%jrNV`jqpORF`j
W(M9J4@qK+AMnkF7,i5,;EM=lL_u*V:jrG0%u*ua_+V3"O9EP=o!^,V#Wls95+0nap#)`hSu
f[`VD+(Qs*D[4#IFF$`ei1HletE"cZCE<nG5#&>mW8,>rr_V^=[$jB:9tF.]A(R,fMF`q_h-h
n,)U@t_PYpFQ74@SA6hN`Yq$tSOU3GnHg#X/h*49"*!qbX(b#;WnP7,PJ#qjIEKNXAVI/^8G
/%r;,NX46TcbV(kC@#c1'Hog"'Zu\Ffd)`/6*B72oF-F\CS)a@tH@_8D=ITDmt#+E^\)C&>0
iKR11(Ta:&\DA>2Y]AfYsC[=?)iD5TL&7E7'EZ#&9(`@rDnVhJjA></\D)2;oH)IQa8f1aKYU
pS$KpF]A27en&1FVU#0MN0FV*jW\r0eNYSJ++k,]A7n(f=CeH8/OmFUk<UZEC'(?kNf%bEsl0"
$5GC3;[J5RCdE7&b?YJ6aU?R0`Q!@KS,S:Atf0s8Tsd_jXlW,=u^)aofno0!p(+ToU*?<sFN
#NuHYSU"@'I]A7DjX+jhktfaPnHBj`mdA,((pH$<O1,RIG4Oeu=1?UR$0k9@S(Srjm0]A`[;7a
q#0"19gO6E*_BFN.Q8lk)8rmj"TgD7-eM&P7Y)_S4+;e-MhQ=X"4SZ./Xm3iP0H/EgYsf!W"
!dWDK2LXs"Pt4kaU0<[$uVcE]AE,0ne%B6u%6GG616KboH"rKp>)nJ\[6b!*BMVh^C.BBN/m-
'">CgY.VTX:Ebs1')*-mW)-,T/DNe4r4>D8U-O;QgMSEK*/CVu2f@+==*Hd<K<PZlNnHIlDY
f<eB7?I?"Ec(Z+@HQ"LBubMlX#>l?:fR#^WAc9A!+!&4I9?T<3p7L2/cI`"$tb!aOT,TgqZ]A
ni#4te^eFosaW7?Y-3imn`DFa]AOGfb5_8IE".bk7riQ^OYI5N`[__/?mcUATJdB;HJ+2%(;_
mf\EYlf1nGh3X3iB,L[\^`-=_3Yo5ZuF$Bg#QOi;8EpGdcWo=eS&C(P0ou!$N-d;b_m(+"]AK
`&NI(km]Ahbp&[Jd\q<,G'A(`R)cN9k4"F*eC.hsiZ4=*c4b1/]AX0p>r,s;4gUM?oCnbh?gO]A
;_]AAoAdq('5a!X,HE*[3lVOpq#3mcm'WQ2%!d"jWJ"qQ`&XF_XMlErd^n?W!0S<0'A)nne#L
s6=CRD4n_n6LUVV%:d%D^bkJJfZ^OJZgERlJdfe*J[t(od_oY"Cs2anZ_g"]AfW4bJDhFk;ZM
0AZWMg!Ko(FlIga-]A(\]A-'0gZ"]A#9>DXTG?>&jS*R^?0#h$^$m>1f4>2.?%lg]AMh*\g-_:3C
07!)BCT!\*=nkeJ6KF&N?uhLc5Gb*T0DYrjMrMc!1Rs9:s-B>Y59<hA(+@LbgfIgbK_GLL'N
jl`3p\f`9_;hTM.n4=V*&?e!HCeZJ]A#"BB\5oi>\Sim"(X/M-r-_ErZ96617a&[=od6%PD!"
c-=t]AXM@G*JLjcq`b,dG-D>7u1%p..%)s^/\u!2[!oK(7#NlfDiDQ>1mg.3HAqMn<R-gJb,:
%V,b2,K`ekoT__]Anj'-B#LI&m1E*A"e4_k:S"U/PS#7LJa,L%>$*ET'HGd*FMNMVd__dV9[F
t5VCY]AX.>`:#Nu.'2q"r*g@1-k-]A%T.;]AJGY=0)5!cM"%tB=RV=8E^IIJEI@8%sM<W^[ECA/
ZI>U9V@>5D8.8D4^=VaFMR&B:rX_to>:X[@,3bl@e6R!KYa[N&\0G:"-[sZ":Nud0n'Qh`Ir
J9%2S"M;+%uW#eV(3Ga0CT/lkBH5cH.\]Am6"h7oKL1B^le'9JV@Kii?#@WB/6]A(JJqp)tY,n
HE^KnT;uITXA4.cN0/jF+Om-6X:6$J(/KVHbRAZcB:X;j/A)EZ^Ku4pd=U/!msb2L~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="502" y="0" width="423" height="294"/>
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
<BoundsAttr x="502" y="0" width="423" height="294"/>
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
<![CDATA[1104900,853440,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[762000,11247120,5486400,2324100,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
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
<![CDATA[=if(len($$$)>50,left($$$,50)+'...',$$$)]]></Content>
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
<![CDATA[=if(len($$$)>25,left($$$,25)+'...',$$$)]]></Content>
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
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="2" imageLayout="1">
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m9FF/;cgQe$,dc<g<q0[9:Y$ASrQXC<2g*nB^IpBa%JPD<f49&%b4["BuL,cOr`j^)3<G&3^
p#5Y`>PD?D9k_j^PGDL`ed:M?kKa?ipEr84(C7n$@3&3*=uecP&odBAsGOR$G(n[D$juhn.a
Qig.QAk5(.,1^65Ws*9*Am8"#I.n(#A)5BZOIsLA8j?3dSEmhVP??mbYYH-cMFo1=_ltTLSK
H6#_[/6=O='e+4pt7kIIhI0.>o;##AT>MuJ3E@skOsoSOma..mZ6^`;j/Eu>HXRH\=B2$.nE
f>0@ZR;#HV!dEj?X4B3%-/R@%7VoUWBC7RnAQAusR$HJeFZpe/n!q:E:UUAUUI;K?$GQF)j9
DiZ(q<\=XjmV'i#@_kc9ES)I:RuVgH=)N,!!okb_;GO.YY,to)`[t(C2PpuLWhY$*L$E*5?Y
.]A5W@MjJB06(B`V7,B2+oN`Z*m/%^-+h>XZ/($O*(`)"o7o-%[nE=(PbVh,MG=>bf\2V9h-"
n5,PJ)"e<e]A00<W0[^*KFp8gEr2RuX\`#CO*pBGomKK-7jSEs139T$1`EQY/:;:TOM(G2K^l
PG[c1*NZ61A).`HB)1lC?,FH)$6[ECPmF,Z*YBEBWj)AK8&(&\j+ml=CkYYDO+L9=76m2)b[
VY;"L-_[XD,6[GQg/>)2#7PH2hAW\>H>b$jWa*..?\AD(Rp[oTi8OQ5M]A\j'0L;m="`*4pgs
1erq!cR(H/$Wcq+mbmRCM%rYhj`]AXoR]Aa4ma&\TCT.I(qhiTFhWgN1!43=@G_,n:.:H7"7]AD
D`u.6)f3[su4U'%,=$2!eCmJh:9b<;_ldFbBUP*3kp@'sY2Ok?a*h>T7CqU,64mX168,),!+
3ZUK6i^(G&lSX:064%EU,E-+UJ@@-MUg_*-7!YF1]A9?#gVoJ"fOf"Q_&2^NKM_(C+J/Q\FU>
64kd"f]ANI["Yj))Tt!3.EYeHWU[P2.>K5i'l/dhl[Nb56]A7_EhJc5Z>R6WeL7S`aq\>u=DSC
!$Bm$bd/"I>jbmB39CN(6t/3`+[C#SkN`g>c-7apeEjQF]AbnVP2p.Yi#5ZGU.=;oj.TimUf0
^Nr(e*RA$F;.$O<CP`1(kLuA7'DDhp^`)ngS8YGEJ,4aR$15Yqj"[VXR`GU%QQt6;).o/S&u
(=BNelPn;kl9X]Aq'+WG$2fk%b<Pck31"F"q[GS!P?dBCQ#a@'nE:O'<Fg2N"m^SG7.%*@+Xm
;@UaEe4s4BHZjAtS(.%Wg&72srg1#.mM*7N<82tM'!0*N/L<C]A,.t43ETF-mS>#1O]AjOKpam
"e9c?dIdjThYcj`>!T@EphlqAs?TkFP4O6?0UR[!mt?sg5!`W2qS&>lE!.s:cnWL!.7"=#Qp
g!C#iJ$8UDKu*5G)0QbN?CKRm5:@iR:\+AD5?g##+5Dc\cdrH*rdE'$"m]Am`f(d4JAB;)ao3
BrQVh!jJt3+/0if6LV"Nag[hOl"s3\6p8c_Urk:8!a7T'WDNV^G/dUf4I^*U0r1UV*>hsN41
$E,Z%5]A$M3VABSQNtn\"#>>R-U;=SnF);7GEBd,9T`Fd;R/_k'ok+To"kdo+>UNC"0^PPic+
?RVhWK_)i/qXV>MILZ?6fkJDXHUOnFGmF[9Fk1c`RDaFaVBf8]AkV=b427uDV1V-/J<e)_)kR
H$tK*2qX&P"XXTbp_7>2Wp5Md]Al_G<fmJ43Qja\ifbREWZ`cN[>gR(6=LD@*L>uX(KEVcq!\
8ESW(g*/WP#Nh_'@3r2G.!q8.9#mI*U#c3$."]AL2JN[YWom:orCiS0pmU3ha6;N_<th=bLZ6
k^"@O3;WhVJki_W:0#O`bi)4S*A1?#e-.t0R:aYH1_hLRd30J_ci6l=5q?!3JUd:N7mML8Kc
I;J:>nT*O@j;W4]A6UYVN7h628.7n+ogrjb,gnsOqH^hq8<P+irc:"\/Q8(bYcoU6,q8uP3.m
t;EM1kKa@7=P+6C>h%M>jES[Lj^C:r9!"Qh<On'dP_9bmjkm#pA/k;%(7B0EE;s?mJOfKb3$
4q"*1(]Arr2IoQjgjpBJDj"o9IZNM2\Tjgnna0C^.D`CN!j"JD3E#.B(^`2P@bU$\L-Z%ja01
_+,#2?"Unt#!Se"GBiLZ@:@Xdof.N_K=Z:=q]A>,(AIbK:U'&:j^]AY=2oq+/0PY?`n*e'4hZ;
N5m>r`!WVf.H3">f:k[_^<<'a&S>eE-*FOe/NG7<J'qb_qU2bt$Ujh"+/4s$3(a-h/.n/-1M
u6"s+(95J8lZ(I<B)EZX[p.;3Y)gElHn+)RAGe@AYSJj`\f[hIZI7T^BUpSqWXe$^Qj&&)(d
5QFVV+gD`r3bk(e1W*!PJY,-!Nn[tA$r)O9#I7%"g%t-UW?O*n.YH77M2Z<!-Th26H8gLO`j
&Z.XC]Au-:D<(TKUeVeh3nFW@W7h9Z)%'Z=dR1:+<%IO<lJoA)eg\mA;<hkj%)1+ip9kEPj/A
aAL8EIXrXR12(SI"AM<22'W]A<nKf>s)Nb@,a/\9&\Hhee_%q6MY:PO>LG>q't!*]AlprT4<gQ
3ian$%@'OUdjI3`&a+DQCH6!GLk[*3ZSN^6aGC8<Lq\Qh2$'B;$ec/:E(DY[<">#.U#cN<1a
J(X(1Bu8g!c9smrqf0-U,PYqoi#ddP1N!VV6T5!X2>$r&sDR6;^D#3U?hF9S;e:=P$\$8V3f
a@4A&6&>9\Vk.@[Y1<M:Q26$gqV4aAX-?LQsULSIETUOsGeSp'H0MfkQV5b<V:E8ui.=gP[I
C**J64S^D4jZsZ=:>uZhBA=$?mIX8b@eN*p/+,"eSsUSlYa#4\Z5<c,@@I`Dc5PZ+hoeil/#
9Yf@,:j'u%%\N*Dd7'J<^T'*i@X*QX=E!Oo$dlF?%\BI8EA+&DWg@k;G9&$AXcSG%QunHTZF
<Q(sV0Lnpq.VG,j>j_c/&Ub[a-Pfrc.A_f[^oEUkMNEtqY.M%(#qn:JJ_`Nj\8i5)Al\kGcC
\N<]Ajl)S1+.hD1p;Xc$QP"RiY]AadbRPPg,&-jm'4h\6WbEW'a1lNG04JMM1PJW1ec34>adXi
2r!mQ46g5JS]A">^agS\cD(W5rhF]Ab3Eg3E!8]ANh-k#Mm%RiH?.&I"%JmB<5G+%"iF#R5eETg
$:M@4@eE`Ap^Q6.6NH12e56T91[RU_CuSBVJC]A3ll7Y<4`FY`VHl-P1[rIj8bW@$mGimnK+m
$2nP!.f*5"<>liKS&(4HPNZFX3mj/id,f"F#[?k^/lWABS.]A]A'GFJbOQ`'Q2lXTOlH0ir$se
I^(H=_PV4/Wg,Qh2a.8eIe1gij*.Wm$95e'YCoH586V\NXoH3^k7*2:*Z?YRN*cn]A?iO7=,G
bZcQZ`HL7L40^$#F8XQ9blPoBk_rd$KH?A]Aug3*T%1t)4W=OJP32F<rlS:j;ER/&-m]A[[/o"
"\=]AVK4V-Wfii*g``0M]A<9%d;<(-[KjKmD5"&Cjg]A]Aj&>9*JKBQmYcpN"gUCR,/KfT4rk!F'
<'g]A\aUA>`a&V^!+SFFn^8&W`H/k.<6L\&\0Kb+6G^2NrC95r>JGhkG#E-(mbmVX:?fNRKPe
s9^5j:Xi,`GD+C1mEOu`4?XkaF4Xl!sEHk%t?B.4LOY#(A9rYa$b#/=:.?u=LN8+_P_Mm"h6
,B*k*Bl,-4Q@T`aVY,:4<979$;b&B!Y,`]AAg3M'@=d"0#pX7CJ3G*_qPdF!&`#aBICj9Af7`
e!G5o:`_>WV&]Ad%+Wi'?iq#l$ORZ2bY!MW1CuMd*"UBrrNj3=E7lB^K8384p!p!nD+S&ImC7
M'NB"LLsMdK)%bV#bq-&Es0o9U%^FM^<W9C&gH[,Oat:2D\<:(837b![dRfX[eHHadPfk?]Ag
Z6rNLcKIXd9@#BTAs4-Z;P=g/CTTJW*f:MAuY/iK/VEC`Kk..7]A:*oK0QHs]AT%`.on%l!M^W
hW\^?l]ALRMiO9gOF5))MGh,LdTY-)?`>l>;ii!Ij':<0,e0H.NG,Tn5r$]AJ1-n9q%C&AP'RH
%\4p/<T-fbZc-`FUlrflC1^6#1Fgu.6@,-\]A5o1T,qq!.dN=7)1'o5^cU!ILKsOMX$,<q>.r
6nG;n+PdO3.lHNd)YgGWa%>5MT#[4[fK?1R:M\8o^b(J(3Mt`o_5gg<6+`"B9:Xr>Be7#H9`
=1ao9-M=Kt?\@I1-Doilo95\F0_V"1%'YZ)8</J7@+GMSjC7!bA*,N#/\fijPnP/lqW[as1&
qRE)/RQAO$m=ra%nM=,<Rf4Y0Ms0<'H!m$`i3H(S[Zs?XRRE'@?2Jp$jCB7,/cSGA8X"UY@^
.GNi5)k:@BL7+VU84igf:/O!TLXBl'iLLO[;e&D;*hTW*Xpb1$65PdferVa(-#I;O`RjTTTX
eVbTZ0"3rTqZleW)=g7+&"?^N`_0f/V(mtsL5qn2'hU]Ae9tM@Qk4;I5V=3rBSm,GSa"Hf31A
g%E#[fC#prW5MQ/j-r*<&o:<\Cl:&\oI;@lN$\B()k1kB#]A]A/q+JgW,\_`>Q!f/X`ZKNM4P+
,6<)2ln*XJoB]AX-l[1EXUOE"^1-IV:;PP><th?OP7.HK3sF?qLE*bqed@d#'5oaK;=NU=4aH
6_K.om`F*VI&UG/':pY$W0]ALgS'&J<)a6T8=8UB.!)<Ea#V0U@M0X8^;nRpf@BQ)CBJf5Q_.
.BmOW>$VGfdCFI2e4nQd(*Rbm@urMht9l:t5ODj\(Q'L^N?Ej'-<"d^Tk/>aZD0RQ/&)!sc1
+Vn*Gr?@QA&lN@m1F1G'YXEej-1WWV;TMuBLk[/`#h+:<lUlf0WH@UZQTnTdkpn-<mYX+!gk
:4(GN_4).RR@D=-bJ1nR:/o-L]A(Q._=OM,<&J=q[Lf/ekn5LR:]Afj]A(@"0'4!(&SI`teRjdN
a*^eFPkE:=IjJ*EipTL&J?Z*2>6B]AdA#tJ8c2k3SYMju^L:9WqfcLC5_drn'[2-ocFWT5dI^
IgVn&i*P/Uia\U8]A7"^nW8YW-,iU)ctpT8f/E7TC74CmfM5pkgjN328eGZ]AT%%*[8TRbP(s"
Ec<F1oWBCRKKOcD<FS">/=go4a8n_4/F74g[BNkh[i$A=&\25#iE8C'&+gkYa[p2[^cciEe0
IJBgM,1bRDqVQtoS3W.QKE;[r6TH&qCY?%H*[3L@%hXR#"2b7(q:eGVY`*A1J8sO]AfWa%Rl#
Mo>aG+_<%A-LV0[o@O@_qA5MoAb5!3RRO]A#c3/^?T1:fO1ZheB"DXM/OS.R04)1\Oi<DqE)(
>N7RdQM(j*6.*fa/TH+JCG,hLm(ds?3H;M^G))VO8+/[9_+7pha0d[`Sqa(eir@.e;`s@(]A5
+^4XdHus$6X;t*Lb=RrR-fn'jdE3T2c8:n%A=%eVQ(f?3&%ZTnnFNPkp$Ok#;^a-,hOEX_X[
'1moq[!qprdr0$ln8_De8PEWmit7nM+h4A/D_Mu_kMGO#h8$Ac$j"^:O$_AkO*f1KE[LdT'/
&tikplXa\?o-n@oiT*rq-L!161@.cc^PqaYA["2JIh*K3\-`[_T[&Y[HHg@4]AcHF4hN%R40_
$-Pi"-VSX--]AA"a[Ie.^["\PYq8`d6MV-IZM*<.E^<d>YIO%DJ%!ZCY/2intRmJBI%u7UHWc
YQ)-*g[hD,eiI/p%%&867l`,c/:'Z1#X&YL/hJtU:EnI<*=1To;cLn]A=bI-YErq?p\7D#rMS
msZJ6".i5c3@oLZfSsI6PZ!]AEeor0StqJi7aunu5\Fbp@XVKn2`Mk?X[<cra8$`fQ<2iP<SV
fWJBHe#?.?5cQGZQZ:jmpWUr`[Jj^G(lMTF#)e,'k(lJh\!/HT+$8GT_)&QIr2PI-O$@O5,X
&cuU_-IS<Z3!,jCO`gLUrc4'p(]AqOlS._"i,JUBqn>hIflIEj`AjATdX_+R$(^;0!%Q@sO7m
46lGN+uO/t2lN_.dE<]ARs>,"BEf-aPeo2+Iu@/K?\'(5Sf7#oS;LsmkYH*8[&!e.Fa]A_'k]An
AOJq6IF_/VZ>SLL2>8:%$68:I5aTYXhI(=u26E=7F<'jcGH+rAAGG`<#/pS$EO[-tDe=R!s^
5]ARh]AjAPo:;RXWn+'D:\CLpM6NY9U:P`S;D>lcPOj&g;/%:g'K5%KASKb9XC>J.)dLO#YMpW
$7\-d!!'g!$Y^s%WRqYbs@g71s1=)8d8^ns>tE#?X@^d("uM92QBJZHpl%_dV?(kU*3Mt!2J
SFd6mHF!P``c:1Gj(g:c-&oo;=94ZR..b6+n_]A&n[NdM&4$OQ5IN,tU]A@CTj(aQ:]A"E@M5AY
_I1>+u8=Q9bs4=e(BITBc_]AUMHRYHlW-#s$+@+_aqd_D7=ugmHs6J#l$4E%uXaUr9CSKruV
~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="925" height="347"/>
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
<BoundsAttr x="0" y="294" width="925" height="347"/>
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
<BoundsAttr x="0" y="0" width="502" height="294"/>
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
<BoundsAttr x="0" y="0" width="502" height="294"/>
</Widget>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="chart0_c_c"/>
<Widget widgetName="report1_c_c_c_c_c_c_c_c_c"/>
<Widget widgetName="report0_c_c_c_c"/>
</MobileWidgetList>
<WidgetZoomAttr compState="0"/>
<AppRelayout appRelayout="true"/>
<Size width="925" height="641"/>
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
<![CDATA[m9G'E'3Dc:1to%]ALA&3TgBs`_[rm&`=5-_?,a2tIG3)o=eQ[,ET]AKg#b8*K2b""4lh(J)09m
^0bqE_>dBt'!4dA?pf>$'+O,_?k%+Dml!Hj7YWP"B9JSr%;qD/\;,>nFSknIL,chsnp\pH7p
954<PfGj!amU@,\Sr]A;eB]ACWMHH1Es()lLV.iLHOrNrEVcM(-%k/?AKR:Hl&MopqYu9/c0Pg
KJ-IS:5,<AE,>Xgq9M58]A.@)78M_4a5dIhSu,072R)Z*Z8mto,A'!Sb`gihpDt_hr6WC;*6j
'eAYobe[7KCQ?[n?+n7^IkSCQ]A^m<dqNW`H$m%j(!$]A;/*LqdSh`g?Qd]AW*d`W9=t0SeU#j\
[S'DsmIR+q<RJG5g-`??qtC'F:V<+X)`RQ,M2I!alI$E,20EnikX09elQ<"bL1Xibf*lut-r
7/o*2B_$kpos3AXrR]AW;'!:3qnjAb*^jHL&&enYG3:Om?[@+JP>+pQJR>\W3#b.:Sm7G`p!3
M)5R-IF^\h7_$_oGU=(P)[#Ha-2E2bP]AJ"JC4t,+Am:]A1PGbfG2G=IGJb/K6c.n7g-)701SS
NWblZcoS%<FR)^fY7]AOI@F[pDg_e1=rOo$`UjPcX2VJXBJ3VkgagWEH1uU,AVc=m[I:t!FbA
fAk(W(+et(R^#UsbJ[qh6bRF&*M\O,$dbrVSB70P49kF[#Z,,*7Y&mr/>BgYhI\##^'W':,U
bY1pt(f+Jk>*6#%?qi49^KA?6Fer7/eD2UJnOc[Bn&pYI!aAVu^<"r5:qB(fe7J:o(soW(#`
U^.)ntr>B$8AYC0fAhV5KYTP]Am?FT%`>GlH6fHbVT-=E@H\.P.U3coQeD!DP#Iu1/.sB]Ae;2
`/_Kfs\``AY)d[$`Gh-8%=QT!9BOH%Gdlkkb\5!mfMQGt&KB,rV>+/SZIWf5<)HNGu&mlYlF
*KRSp-+NY)K[G0"`mJ&@cA[=qn0Vu\UaD@f:`[lrP>4;<Ol\!<+Vh6[_8M%AtDRITg*fq>)h
Y35YE*0EqcW^98\1:ZXDiV;6e5;=ef`m,%IB=ZUN"Xg<[4N(U/\b%o7S@39='kRP>fspUXmK
In?;G`o4Ll;Gn=_hUh[q]A(5@>O3##c:J2G;M>'`"VP_!,;*i>K_ITUg(<e&[p%tL/2,,rTib
!EGQQ<?D,uq?S>TCh.VB8!<^.=uX[0KHp8`mC]ArhTNRoa,dhqY]AV+kIA;=bqnRoLG#=B-H/#
e(t1L#Up@6khOQnL9RhL!_1U98WN@!Tj.3aOdliGD1V/b'Ao9jUroUmmZ,Ht>3*SCS7Nj'ZI
$XkCR:qd@Y5FArYBC-H?qK[pSiLHiSQ9D7Uh1$R1*/J$QJ'1/YAkmIC#bt_F*cE4T7T7tr'f
&Ueq"UF[&64\,l5oX;P:4(mjp<o_ZT0sim1gBf4!0FQ=f=)5"dSA<cuEpEh9Urgj7t-E_;F6
qeYBfRj^sD>]A3cpGp=A=f\Al2mLMm`VVom^oqc0%<b&>io_Mh"!m1_$$bMKR\F:"^fN')i'F
.39e@tR4,W]Ad2OSlGKJre`sI=0L)_Qi#Ql/,FceOd6Y*"8VAn?27`a7s:s,bFgM2r=n>W46t
ZnP*G1`A52Kh,QHog9Wp9bW!!$\RO7&HY#-upc3omB^aGn.9d%3)Q6#@Ts8B=#+"!G54g]A>b
J]Af&/5cL$@\+S*$^THfs5se^S'^@E-=5,RX:J4knl[KnS;sufcbmeRbBK;I`A4icE)T18>'P
ui^AZHCgPFDaO]AXF:dRub*g3EFBZQQT`#nMrlD_K^j(TIaP,G"Q(O_9+cMo;oJ<WD>MD<'9a
K-gj1"W+Bf&rX[Wn!A6j&puf8OF8QCVU+k2A%?l(g(>1P@,^/UY>s8.L`g8%#e5$?6BhhT$P
iO>5(#o`UI[Pn-W9U$0W]Aa,GOd-',F)=bZHZ7FZ%nh=]A:/6(h3YLrSQoAP1t$(kE=%P$\C=f
_&/j.b4]A?BUNGCb[,M#["hN:)WBWc'RB\la53cNfg-E:2r9<Yq?jn1[$\9K#UAX;K@B75T?E
Pf#;6/dsp4H6_JkF!b`#,HBS"fD\[Z]A@-LapaQDN%X@D`US8V/&a97=qH_%AMjE8U^0k+@ub
\X?D*omrCXICLqLCf0Nn_9Du,YsZHD(5ENeuKltdo,+@X&ufH>J-i^qq:3[HIFk3Org:%lTk
+8XBhe!9u:X1^W:c():nHA3ga'l1br`A0Rd:Q/fOR4D8M31V?feFQdsO.M`<7Q\A=doP%bN(
'oH<tc/AA"dr$`G6::h%K=(o!':]AX&Hc(3fBm>.2A>$QllosMIY04I(;O5*Ie=AKl`$ir-<l
ArHcY,[^N0So0m8@_.<2E4]AFe<Etk$,apj(tM/l'c>PW$kg-.9J&bb!#LOZhBhl(2a)#N4PT
3[>cBq!ut+Fb?ldm+9;aOV-tnj2/Ve0T$phs>X0)nc<BJuahdjI]A]Ag,C0)Ra\?L;dgH]A]A*Pd
5#i<&21Q\X\bP41.cQ7Kr#eEr@;q2kIfonP<Q&)A(%rd+3D74:M=qi/S(aa.Gu!^/4:T]A&<;
MZ!Occ`krd;t!B>3qqDdN=WN@NV7m*iL$/+?L,\5V=.]A<?&s#Um@Stel(`]A[]A'_#(W-EsP-u
_b,M[(65lm)?WhAO^Te/tj"8R(usl-63pP<kIdF6W_s1escj#;d%^_j1lf!)MW]Ah96S-'(rV
]A]AS1<Lo:/T?j!-4AVuu4$g-o@K9#K!86<h)3>en01>i'd3q@!bX4T-'-lU\;%81u>SGgKB92
SEL@gCf=6]AR^<&lM\Sr?M&bsI&@t$b-Q29)$#tN!O?I6%@@GF?)r.RP4d\PPp+P(?[mo#W@6
O@3jeH4!X%#E(>.oSZP1S$h>1J)I?2a6AgI$IU[QPS<#?DNT=;=>K*+rC;mf[.*9@`++j('u
UW'Nh4aqr)rO]Ai\]A*Zdf'ETYf5RA%')YuQ`+2GQ]Ap@;JgR=li#h.R<a28j^M(27><4SBdqDL
Bt+XrXRqk*K&M\"BE:B[il]AX/+pqAGLYO"q8_kk._/G,knsHR!>UYkVojY;/maheNtZ4p[K\
L)mYdWWblJO3=?6sp51S0rdVk_k:TVO,5p4fW6a`CfWN0RYN8r`+L%(+RR"i,'f_mK:#NR;f
7Ud*''$[;J1Af,3I^U'*8]Acrh)bGl%B4V2b7^M=j^7rP[okCMNfJW(R?rP+1c*A(DL=_+nff
=iK9Zc7qi:=#(a'%)i*)"J!aGS9CMB.qF[BRF>ER1en#AAYXXS"d/K]ANa3R.@gI5*`f2<o3)
hQ:7TF.+8`TZEqu4p]AP3'1Y8M_(toIdFQY%!0h3Jm$6i[8R@"H[r=?tD.CX,0k<>qCY:JT,7
sEc\hUMYI;::7W.bpN"O`JI`"4O]A+4\0jlql"COG-OR=:A#_*EXVRiH\`MP[Zb%1G6<5'$["
oM<>!#Sg.'[cc1"G!<G;1YfT@]A5hCJnN?s=tl=t)Jn[f_i['cVe=E^nJUl6VK+f,Mq\tKYeY
lJQ7-.n!D&s"lO$tduA_)X*3`<p$Ia)r=a-eHrUC^(i3`kJsX+cH7cqdU,i3C<s<f:jCaG>Y
Uj)H8F4;jGCF']A0&TA`Oe?G1$ZK8Kl5UXbg.R_rQQ&7iuk1^0e`6/`g"$f3l.or]AtTf#h@XG
6DN7a5"iW+85^2(A9Rff_WHZ3X\1s?:<0<V\8rH[PCL"7+g+]A0L([Rq&eOLr"^)MR(8FFp)3
]A->BD.\LZg#RJ6E>gK(]AEfcn++o*gD69hMq.u6>Tl62(\OfPYAu\<EpSH<R2VG4Uhn]Ac!_Z7
3-%^i\+<50Yi5ks=3&RB1.@4PoI$$.?7gnuK#s5,2XG-LB[88p8PsTRWbX8?f^2Ije<Fq.O#
YP<,ieqiN_2rRjJ.,[:hfjpr5C#iH$;RE(nq'-7b/8FbZsm)]APT`n3F+kO5Ltg_,(`bf;;h%
t32/bYhC8K8IOIeXuHC(R$3ufV@#g2em?>Jq)9j0Lh&Qj\"]Aie`i'N@#8&+r]A785R_.Q^BS]A
VsaGrjDX?DR11Ukq"&0[?QAI_HE@_$XJG*D-DJt1KNH^=Ra[tij'7ueD[;>fFeJ#qCUc`Ws(
>&hG&/&44NsRjF)qdf"ed\h@TMF2I59?E0jXX>dA;$a)O"^?cK+$89JaU!hVhA0CQL;o_rjb
u@@3Q:Zf=So,_H_qr_fl[iCpeEEnJ1FD!FW71?IjCXp?(Pk\"B1:EsiJP`8\9MLWq0F[\[Rn
g?b6FHi6Z2%B@J`DTR<6rCF=RS!kY1e9pQM3+%DpV<(tFqAmS.9MuLd2@[-D?V%.FWo3Ja!2
dT`bq-%5ajQ95K06hldVtc6AG3D8Fh'=e!guX)a(DlN=&f9d@Z*a"B(dRRo.;Qp(,&r!b@bX
>Qhr5;!6;Vb(>bjnBZ[Q(jV7mf<>=!+!IcEYqZSZaGF-(Rtj2c`clWsM1>>m;E*l=o0iWl)t
/mo6*r]AT[KRj"m?K;`qZ@/p%TF+JYhV.k;Ok:IW80%\QK'^1f1oJU8uS6)_5PWJaV6*al?Ne
*9DCU(Ongu%8*rR<+f]AA&Ri7Cs(YmWC'Wj6L4I@@%5'9-png&GP8ZQOHJ0a=^JZV13IdqjrP
)YYJXQF\r6>DD2#b)FZXtYgK%mhdhR:o#X9auEE<_&]A!<j`5459I5/7_kIM^m\30qUWPD$_I
/=0(aV\W09V7`ZhLF&RN2C?F=qhC/$K,K4:6o!ifO,\EsqJlA7Ns_)lQFO-MhFDW^H''==gG
.@7O]A0IXs)F_'_oJL[u=h%0'!7/&138#">paVhCnH!RP$UK(?G51p"=C1*B%6hb3^E%@*PO2
GigC5GgqK$=@;3IKJ1gM:c%/KG8En&>de&MR>!Z-:@&B"Nn,hs7Mrf&MW?630[5JZ3)rmYJn
n<kujRU8XPpmR7I@nkUBGa^$[@`(LjbHmIEUeLG=#njpU7a#D\f0;<&g\Pgq4C<)"o/S80:q
hfgN]A#M^S^Y1s#k.?(FoN'o=7!jRW(5<;1cY&hsn$?TcX'LcHRfe09S\;ZD<"ST+$4T%/Itp
0.3Z-M)R^c'iZb'p(AEKp;0R8u9]Ab2+.N+4e^:c%Uf&>`hf4<o=pTn/Pin1g]A]A((H=TGQp28
fEJ:kWK;('k^Qgn',o2=>k'po[0-nioqj1J+ENQm=?hXMr?d3OacIf-rM-(*#jq&]A_DBbjCB
kr]AM2P81<$^gt:B66BOC!o0>4aXr;_0n`nSVE<e:"!Hd-f&\5>E2O'@&%e&Be%"+`kVed?0b
t##D.C&NoZrjY0)6pQ,=FDQ9YFd%ke2f@EIsSTtBm.W2SpoT/LNV.,jkrYED50<;["9ke1O3
46Lc&(Yfc_#jfuhkliSkU02f[h6:%0YbYtj%AJ:f%S'V:=O>NPaZ;NOC:'glfN2Rf9AR&J\O
`b%'KWCE911X;3Hdth>r)GMtsR0W5=.AaG'\06?.j%BX'n-chs8l]AbC#sqNnFM]A_,Yo3t4C<
]A&gO/,(/2qJaHWj(]AAo[[p[QS=3\?lCqbB,.tTkI3]A=AA3=NJ!&Ot`ICDj*lHNXl3orkhC=F
Knh.o,Rn_<O6#p9T)g_l41,b'u6Irh[,A]A!?#.&9DhT;U.Gi=RIFOUZWiR8bo`ga2I"QqA<+
#&?43?IQi3Hl(/_P*Q#_^1l6f-?m5HUa&[KS\7>Rm%p29%K]AoasJk[6MJt4O70fY0RcIqNO5
JsB##dRC]A-BC48;i?]A4K3PmJA$GEGX/e>;+=n/KAo#i]AL7KfAd+N5[WcoG5aMtjR5t^[GpPm
sVQPX85*P4.?*iE>D_=I:0-]Adso07DYk[",`m&*ZP*E0G)lE9VA^V7*)?j9LJI,l8sn1f4(*
gR5M/\ES=_qdL*=&Q^]AmNuDEO\m:3u)6oKk0j(Z0,;toF@TVFG'S9hZ+Y#ZsXY8I4c/&QoAZ
!+3f?]A=cGR5W"$+Wo@HeA?>?PV3Gm^>/Ze5YggROYkBk9Liti4KHD^ab4djB=DU?#5jOD<Jm
>Y(n=5!&D:`h'&:BlA,pVMrj*Bo8(tFn*WJc#h(BS+i<$Qh'&:El9t_FY%qh/46$r(R?j7'I
!4e*_o(d&]A3aE(_X^+^VhkHc=Hmk\b59^A2:e*'Gm9l)@[WX]AdWd=?P*g2ZBS91#1heQ08qf
3KGV3cm3<@%Z"R)@U)BKX-_c!OI$+ldiCI#sffT=m'a&3n!4Wb#mRIonFeu>Q(8m[`dqfN>d
$(s4[/CRWM<%sS<AD;DX6^B6+OhNlsWa;kP6C@/Xo.("D39mk%%`bT0<*/#r;WcXupL-6UnG
od27A`F(g.:9HdUR'8q6a4k7)I6EC0"l-mTSrU'thJd`TV"![Cuq\l<b2FCG@</#OdB[%sDi
G^W+#"50Q%l+(c[&2MG>a\_3Xb0F$-kKkkk>@KS9fI\JPEnMjFCMM4<bKY"/W&d<QeG[OKK;
j>>FU%]AL^#uYe,*9;CXV]ASD@MkCe5jRp$EboDqQ5:%aoc_l%n1<f*h/PXaHn?H;l&4(dEAu%
-oq^\$j;)*#IeTX:*'(-4HGj#.6S!T"l5Ur':heD1<X*Rk<=8Lr>Y'[o<<43kTi[kF6-7"s_
eDV$Ln1SWmE_QQ%!$%FsKgCI1#jCp4#-^eW$Ok"C*B_"59Y!la2<d>[Hqsa=M;>I/BQScA:X
pN]A93u;?IP4(]A>PZpOL'$g'@m0%JPnJMiLf_KeLlb9MG]Aa.6oePOW5%dTi]AIOO_.@G)&8I(]A
_7d*/HB.d&'5Bsc"H>:-.JQQO:"1E(jY6QM7^gC?Ohb&1<X8(KFRYhKo?\<(G0jWI,0/J4Ba
k^ta@.R=KdW[B`I>FR]A^O>C8-hf9!q8WF7~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="502" y="0" width="423" height="294"/>
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
<BoundsAttr x="502" y="0" width="423" height="294"/>
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
<![CDATA[1104900,853440,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[762000,11247120,5486400,2324100,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
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
<![CDATA[=if(len($$$)>52,left($$$,52)+'...',$$$)]]></Content>
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
<![CDATA[=if(len($$$)>25,left($$$,25)+'...',$$$)]]></Content>
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
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="2" imageLayout="1">
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m9G!;;cgOp$(qGoD+b8E[)Q=JYbja^V7s*oUn(8ONXn22N!Qf/4&eRIN/psbOQ=?"=mK(W>J
9,qOFq[*f@A<JT_Jd4XH1m%3/je,_$!14L_rG[+j##bIBZ?bY@ja`Zpf<"&(Z?&m)SjKqtL'
'a$*_b?8*`Ti7S)56%[ti_]A+(p&75lupe5sD%/A0.1LYVA7+V(_)mB2d4oaZ0f04Z_%p=f0n
KMK%Qu`5p2c!.Mr^VG:Qa1=$AA"QAdeQWV^VJ7)lID-fF\4GFm^n=jqpX!!m>JEnRs&S$;I%
2jgMj`Ta]AuB,Z#-,eIQBWq\osZO/<nO!@n!G2gWj_WFOo4(GJ1$Q9JdhqItD?N_`'=bcJ[^H
+d0/lriKn<b`9-[Mie.<]A<:ACZeapNJJ1tjc^J;O08U1IB`7qRYO8[31%rT:K?%"Q%O/*Hc1
)[SY:J2olmB`315,7reFKnWJp*(:2gOUIIIgmkglI?I9euZp\Q69Ob<t#472D(+F,JlF_7&]A
?Pc6i-8n5MBM_*LJN-"6q5M.8dDP*hA`Z266p<#F4a1$q&a3"kYZ82/`,^56mVQpO.d=*6%:
VF@@Y95VV;>R$)4Pk<\[MY\Ro?7"b3RM]A48GBWi/_F[>`r8M/Em2C:6,A"ZRr!dA;FS0_',R
g(nRBdSCPk^J^JT'Y)L'@/63T9j%-'ON6)Ps7IW^l^?$$caY_HdtM1;9!:deR"/gKZ*S'fid
bL%CkYNEFgkssSUc5YQ`"iXL%b1uG>^3*UXH6SN1?Apn0/]ApA!lZDFLeN6aq8Bn9'2$Mf9GX
37o^0RrZ]AeeH3BXP0iS#k(^/b_6X1Cl#oBeT6s-2t;5I@l>Z?pu0NWo0mV=cJodVOtmZ7,ed
"L/<_o_2279cqOV3Qp@.qkb=sgk<$_roKE2-g=UcHX!bItO-?V?&:HlO'".)@kngC<ejbkXZ
qa,Y]AO'4DcsSd$4(s(5@sbugEO7*p_bn.j2QmrG,V\`%Z0oc;-:/qtkIo.,>e8cSSj$X,h)i
b?)m&W=`F*u05pTstdQ1D>/Ml[,E6U5)W.3[9m$<;.`W%Ko>J%V.mFk.8a1_s5Cqs<$l66ZD
[#fVh/q:O9d5ns'<aDk378E5iA;PHEK&VSa,ia]A"KrZr^m^tSE/G=9i_n-*Ll_F=kB;M[LA]A
0;r1XUB"8m]Am?=DSTsF&-")\DteVdr3*$Wb$p^pXV"07O^M(C1RiB1jdT$q]AAfQo[QG<_.KJ
.Mlti-iOu^KlI`GP+$PK#6GD>5B]AJ%B'%QPRG,j>ii4q;Y^H*p<Z&7ct;pRXkZ@25oZ'ecMK
jN#G$J1m<6mkt1)oL80p]Ar5=YQ++2_=>;/(55;@Z0?P#Vcr>10t)UZ7^g(X*Y[CO/ST\jS9@
D,X!cdj)tj;UJ%hs@AQtc;[Lf@3Fn_u*Kd3_Wj-@7h1hgJ7M_sAh@J]AdYF4/J*!la;K*cRB&
WC5i=7KQBt:LDRmqW"[ffsTW1Nr"+RGN+K'6A%DO1]A:_(2(CPurTSZ0ITt4tR?a:LjZh1FaF
e,\)mQNNj?7]AgrdtYnHoMoX$(Ec&?<F`d>7r-Zo]A;=]A>RYW>#-/,]A\<d-`9kq,FFd6+V[E4K
+DSL8FDUm\=?jY;A;e=cH/u%tHMIN*/_J,kO#bfT0.W*k@ij*XndrQ9YQLC1@[3uqXs0$T=i
&+n$q\#$TF!<L+oC(-<ZdTFEKB`d^71EGM82*-'[EYYM[.R0YfP5'5-?Up=E_XC<q_h#!`K1
MkNgn`lCMU/MLfPW1q<G,QV:VYU<*5iqkQ(_mVZUGQ^d?1?+8a=[cCI\`T8DoXR<eTkY"[ne
JB?uLLAN&)^5M>a4o:Yi,j5htR=O]A*kKKa[3f;)A4F9P1aW]AP/?<a5LR>EnqS>),q+Qn/M2K
1=7:N<!6PAeGG:&m9FY&^4u/]Am)F/PquA]A&QnC4NqrN0hTO_KdncGr!5X4QjP.i:W:jbnTN\
J#1_fBZ88Gn$N3@^"#Cf\DM'>EQ"UW/\qL(`]A&k!L[Qgn&lO2^a-\9-U\.PI:_RCFu&Qp9?$
K"?XdPuG"nm4Qrri\XPV4U>7TVB#5DWN&b`8G"Xe8>LR]A527/.<eU2SQn1l]ALirT7,KeoJJ4
C>\OOBK8?8lX20aW)Po4kU'J#8fcXb<]AimQDWP?gFVjEI+p=qA-K/HJHNkbk:CXX-d&p4^>-
,g&p]AeF2oV)h7+YDB%g,CN>5D$-0c+LC[1'S;e@o<+B?ETqU"?V9FP5OG,="$3j&J`FC7HP6
[\6RK;:.5LJNo"#P/PMA'BiFKKbgfP(jT3"UO"`jnSI@nju"K44@)lfYAK,E'ts,U0K,ZqNY
gd?q20e.3fMn.T1n5e28DM/,>15p$0h9'Q@LAJ:";otIp=Z.M$qU0,Je621Pg3Q6P8q-RbSc
PEQIN:!,XiC<JL&IG6#cJ(p?T^m@2PbgI"it*>DE]A<1?mcC?!FkXS"*l<G#^!UWP4=m'N$%8
$HJ3!O72A"[V2mW!35:,iSS$J8C#-s3Zr/P6@Hig<=kQi53q,l:I/"6$'91GJA\!&l?r!mL'
3Gif47cVgS<ekH)j`XGF%;O!2H6eW!AI=[Y[omtL<\XrZCi\gM97UJJ1H2C+q+&0h'P4H&%%
fuMIsD`s]ASE@9/H'J%gY*)$l8_\q>._n"Br?50Y-*>T9]AcbLJ@4CM&(g'VJFWLiSMph%`q@8
ib#fcn4aiPEGu'^^!W60I6s6I>'i56dm#3-^=+@_I@54/K#'1*Q_%0gD:jF:GQW\ddj3heb[
+:KIL83<R6!Bt*dh1_#c/#`l]A5bW1A/2,/7fi'Z;b>*rRg.tg(uds-Qmn(oLg43p;#&0GoA5
,^PLpiU5rOdVV[:KX=1&8O:<:i@%X>Y585G<QTTuHA`3PpmRg&4pJY*ooC*igo$:_#F&=gXQ
SirWdQ0HE6>3AC0c,QkhD+s:rg)G-12aLc-cn&'6iQNWj0KkG9/m131'J5dtf5W$X?]Ah5`Yh
^4u60NB[95G';%3K.^6Xs.2re:4"==BSTDUCtO)j>S$&6(OBA8WV/2h/XS,;*a=>D7^7H^@Y
I"n[8,H_(e*XpA2S)-C#*M/4%M]AO$*j./-XBP@F*UM#B+Q"_Pj,R4=SFMHPZ-1m6&oNNb;O!
S]ADB&>E.DJ&3@%DG9CoQM)_Ai5R)&PsSt8R<rhJ#YKA7W500/(nom(,:If5/fW<RMVr1_qPa
QLOU&ppi1<oNhDADtnJZgOq:2lVqb=c;XVRq)n.ZKRGHqo/eK7u(-mANs$0;W&bS.HpZfTso
"Lb,AM,O>?Sdh2W1eIMdGeRQ+KGX0s+LRR5?dD,bj<dVHr*Ib'(H..T6c1K)PEd_=.m+uAW2
'U<$cl5cR<;T=S(6AN=Y($"&nq6i'W>G[e8L[UW'Br_nBC@+W7iu$9P`_MYcIi%\9C:5oD_<
T_m,6`rnaMT7`kP2d%hQn!L-Sa6DlkB0t&]A5bX=h9#u`$G9^8>IM>h=N$CXjI015mp-d=4g,
10q7+J;uIXlQ;PjXT_9:n`!B]A%pJ;[a2:(;PlIB%q30`3pEf`hNnFX]A;K3!XYJtt0B/p]A9^d
gno7@'a.F,bVWlB`b"AqcF%[\L8_<=7@f*SAq^W1o0@QA*_cC3uI#S5\/[Ui_g4;jj72e1#Z
OnX%ILtb@27@./!$7b3h;70\Y"G'Ij5BfN3)>[beUJ#5lJX<X:4r3^:;Rm+lW\qdA4576RM]A
7+>^9.q1>At[Ad1[d4MA^*/(\b3^R7IrPTLEdX:i2O^$mDBE60fAs\2qL^c[<^cS]Aroib;]AZ
aR>!]AaKo"Q/>E7<HmdHFT5B-/"1j\_F='Cpg'(b@CdeVt2P1LecTTkZ?[(d]AAepLKl^s+E:%
K=1,I)pC#Z0Bhol@9,6W7Gl^IF8!l?b]Ama`gggp3aN_(LEQ*HI;sN7/!b%d(Yq%>m$H!6WLJ
Ip<Y*odiU;+Tlbhu5')"HWC`I7_Fd6j`QS%L4Q[GjR'frX0=K3[WID-n<IO7\!VTXDa^3I,Q
m8_F,L3k6_ok%9VPI`#iHdtkQ5hOn05X\O/6Y4Vg6(<PsFt#DI9GCM%gM?8(hP"[.00NcA#D
YHt81a1=45Q5%+!(9[LF$Hk;7!9"I8bJWUE;<e.67LS3+_QD?I*0s8Asn\2CFj2FQj`.`:"f
9/l\895As1KQVT!4E:53B+;7'eJp$91!O6Ecp@K3u1P-T;K">%DPns=,qgJRGKsIacI`GdM1
(=RMXD+!V2GNTHJ>g"I=aJoh58!64PJ^bfrq7oP'$*8"`%_u6:'#^)3:h1+;<Z6CR/8+Q#;.
^Pa$q9\D^UM`9\2mR7KS:MSh!+7?#?u@BGr".j1MKkB-QGKNugX_"(Sm@hMdkNDbUXnVW`Bt
,^<[RLLPe^Q&/>Hi1p>a51`$+EDW8lC1'8_JR-]Aie&TV()Uk<,=-R'8=rRIn:G20$H+'q+ht
?%2/_iCISlAg88M!g_]AI-+?%dk1Sn:5J:iCCERSqT34#sEeIN,H%jD+*I!YjiJ$8MWIJZjns
,eN;?u$SdMJRqrt_Cc3a1^u40'>El3A;QH.0C6)*+#-@;$_,V$pa77hEOgki)CT'C-d+%p&9
hihONJ"W\s1$G8YkWUtN7$s'6R?@T2;(Ka_[Y[-Is^]A%KT*'a2Zb!#`%oJ6?L%g]Adu$7NFnB
4>Vr@_mCeUt/dXJmO-ah9Z6:X*"pGTG!!ki)*>"JE[>\L8?h$2uX-c5GtZ:',CQ@hPDSgL(J
ZSfBs@0B:GV,5W>0j"bKa'kB+\+q81/5?r8nN><Vs'3\@euAqbM7Kd=Y3o%CmVHq]A2R;2iJ?
dq8>.d"%9SYmp]AReVFl@o>bW'+BFW>Ji0bUmL9)Bj)BS,#S^/AOTk0_>+&`(WoH(&QfYZof2
H1Qn/<g&H\NJt$I8Z1m8%eOqiM:,-FBUuKA?i17Kkf#Z#YrF.E*^--%%qsVGrD#&JPV;^NTZ
=KjH?JI#4[9AgY\j0YBVWXJnhXhr#?Zg?.a^G)t"R9F*CT?68NEW_&+7?hN2H3",[IqO@<dZ
hg-Kh71c$4]AjY94aFM-MFfTdMqaau-l>LSW/"\U36HURll05iO"a_gPD8bR4?:SlsoURt]An0
OIB,rTUb&9$P64^%_2@]A/.%nkU,t1_G5t;Ob^`W*mN0c"!,e,2EoY\,S=((Fj_Fl;ZcSkBQ:
qPEJ@2K=Xs^oa\aa5dCKK9#PIhEq!fsc%V+H-&efTQP!16\5:4`/`X_;/,`lWH*[#nVEh&7L
YVWN@CA$nmDRmqMks#IOBE?JFTP*;Qo2K$N.!FTJN_BX6G[S7$\V!R,.,t,_3[`M/RVY+T3p
XC\F3!LQqh8Z^]AR&!HS;%;!d9_p1?J^0GY$7bI3N8%'On:`H?kq/`;#1aq<!a`.mbYHS4i$f
i4;cO[ob3WZn5.FHA4%*QJOQ:Tm2QHXI*)M<j!0G16iX:J-l#Q^k>d9N_:m0&2XoB,H_lDmU
1RS[nZEM<l(&2>fAL9`3*a"<6#)ndQbFP.qX-H8%md9M8Z3UmW"plNT!Xn$c3Y+E/R%FTI)I
bj=Qe>=3s/3u6mVp88OJ$M\HZFn-m+EfICd^G91P&>qP3r,&r>6#oj3I05"nPe9*r6eFJRsa
af3.:Yr>qg7pe"Wn>8Hfu.L6OhKL7!Y?Vu=&#nMuXq]AV,LR2BKn^a1"B`Mb>q/)$@a_NUgq8
irOnS[PloA:)Z)<D=3iIjhc0T_sgGgP@QPF6OF8<g&.*81h:oX+NqNSdE/(>QoZPV;]AP[GIt
7"Ze"n%aQR,k2R=cLH.&,7\PS6VojhLH;Id5oB[Y$&2SKe9R:-o*>S_S`@j'\IfZPk=8;68s
HkuG@b>J!+PH_74@Kt[=<?G1%B.i=e_Hj)OojcmP3f?)A'e6KH2u72M$KfUO4M)QQ<%i@3H;
$pjST<qOP*ea39i1#"8[f9P"g"?&ehqY*T8JJn!dG-Q4FU1ZG;rOAs2Fjc!U%%0/8ZL+4YF"
UU51&fK2B#K%T8=TJ/;kV.GH`oHSr-"b'b=u8Tg>8M)m&^P2QmOm/D^V<.o(.#fKE+rqR.3K
ERFOepoMe>'9iYShf['D$>s"!q7HtncM8=-li;;a2'Vg\JGOD]A@pPTP`LU>!9M`rZ7?\HA]A!
Ep:mCR!?jSI8f1!Z.P>'5.!]A;1Xn6H<EGS4HW\7^F8S_m7aW"B%pDuG.$)dg@ojR<*V~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="925" height="347"/>
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
<BoundsAttr x="0" y="294" width="925" height="347"/>
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
<BoundsAttr x="0" y="0" width="502" height="294"/>
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
<BoundsAttr x="0" y="0" width="502" height="294"/>
</Widget>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="chart0_c_c_c"/>
<Widget widgetName="report1_c_c_c_c_c_c"/>
<Widget widgetName="report0_c_c_c_c_c"/>
</MobileWidgetList>
<WidgetZoomAttr compState="0"/>
<AppRelayout appRelayout="true"/>
<Size width="925" height="641"/>
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
<![CDATA[m9G'E'3Dc:1to%]ALA&3TgBs`_[rm&`=5-_?,a2tIG3)o=eQ[,ET]AKg#b8*K2b""4lh(J)09m
^0bqE_>dBt'!4dA?pf>$'+O,_?k%+Dml!Hj7YWP"B9JSr%;qD/\;,>nFSknIL,chsnp\pH7p
954<PfGj!amU@,\Sr]A;eB]ACWMHH1Es()lLV.iLHOrNrEVcM(-%k/?AKR:Hl&MopqYu9/c0Pg
KJ-IS:5,<AE,>Xgq9M58]A.@)78M_4a5dIhSu,072R)Z*Z8mto,A'!Sb`gihpDt_hr6WC;*6j
'eAYobe[7KCQ?[n?+n7^IkSCQ]A^m<dqNW`H$m%j(!$]A;/*LqdSh`g?Qd]AW*d`W9=t0SeU#j\
[S'DsmIR+q<RJG5g-`??qtC'F:V<+X)`RQ,M2I!alI$E,20EnikX09elQ<"bL1Xibf*lut-r
7/o*2B_$kpos3AXrR]AW;'!:3qnjAb*^jHL&&enYG3:Om?[@+JP>+pQJR>\W3#b.:Sm7G`p!3
M)5R-IF^\h7_$_oGU=(P)[#Ha-2E2bP]AJ"JC4t,+Am:]A1PGbfG2G=IGJb/K6c.n7g-)701SS
NWblZcoS%<FR)^fY7]AOI@F[pDg_e1=rOo$`UjPcX2VJXBJ3VkgagWEH1uU,AVc=m[I:t!FbA
fAk(W(+et(R^#UsbJ[qh6bRF&*M\O,$dbrVSB70P49kF[#Z,,*7Y&mr/>BgYhI\##^'W':,U
bY1pt(f+Jk>*6#%?qi49^KA?6Fer7/eD2UJnOc[Bn&pYI!aAVu^<"r5:qB(fe7J:o(soW(#`
U^.)ntr>B$8AYC0fAhV5KYTP]Am?FT%`>GlH6fHbVT-=E@H\.P.U3coQeD!DP#Iu1/.sB]Ae;2
`/_Kfs\``AY)d[$`Gh-8%=QT!9BOH%Gdlkkb\5!mfMQGt&KB,rV>+/SZIWf5<)HNGu&mlYlF
*KRSp-+NY)K[G0"`mJ&@cA[=qn0Vu\UaD@f:`[lrP>4;<Ol\!<+Vh6[_8M%AtDRITg*fq>)h
Y35YE*0EqcW^98\1:ZXDiV;6e5;=ef`m,%IB=ZUN"Xg<[4N(U/\b%o7S@39='kRP>fspUXmK
In?;G`o4Ll;Gn=_hUh[q]A(5@>O3##c:J2G;M>'`"VP_!,;*i>K_ITUg(<e&[p%tL/2,,rTib
!EGQQ<?D,uq?S>TCh.VB8!<^.=uX[0KHp8`mC]ArhTNRoa,dhqY]AV+kIA;=bqnRoLG#=B-H/#
e(t1L#Up@6khOQnL9RhL!_1U98WN@!Tj.3aOdliGD1V/b'Ao9jUroUmmZ,Ht>3*SCS7Nj'ZI
$XkCR:qd@Y5FArYBC-H?qK[pSiLHiSQ9D7Uh1$R1*/J$QJ'1/YAkmIC#bt_F*cE4T7T7tr'f
&Ueq"UF[&64\,l5oX;P:4(mjp<o_ZT0sim1gBf4!0FQ=f=)5"dSA<cuEpEh9Urgj7t-E_;F6
qeYBfRj^sD>]A3cpGp=A=f\Al2mLMm`VVom^oqc0%<b&>io_Mh"!m1_$$bMKR\F:"^fN')i'F
.39e@tR4,W]Ad2OSlGKJre`sI=0L)_Qi#Ql/,FceOd6Y*"8VAn?27`a7s:s,bFgM2r=n>W46t
ZnP*G1`A52Kh,QHog9Wp9bW!!$\RO7&HY#-upc3omB^aGn.9d%3)Q6#@Ts8B=#+"!G54g]A>b
J]Af&/5cL$@\+S*$^THfs5se^S'^@E-=5,RX:J4knl[KnS;sufcbmeRbBK;I`A4icE)T18>'P
ui^AZHCgPFDaO]AXF:dRub*g3EFBZQQT`#nMrlD_K^j(TIaP,G"Q(O_9+cMo;oJ<WD>MD<'9a
K-gj1"W+Bf&rX[Wn!A6j&puf8OF8QCVU+k2A%?l(g(>1P@,^/UY>s8.L`g8%#e5$?6BhhT$P
iO>5(#o`UI[Pn-W9U$0W]Aa,GOd-',F)=bZHZ7FZ%nh=]A:/6(h3YLrSQoAP1t$(kE=%P$\C=f
_&/j.b4]A?BUNGCb[,M#["hN:)WBWc'RB\la53cNfg-E:2r9<Yq?jn1[$\9K#UAX;K@B75T?E
Pf#;6/dsp4H6_JkF!b`#,HBS"fD\[Z]A@-LapaQDN%X@D`US8V/&a97=qH_%AMjE8U^0k+@ub
\X?D*omrCXICLqLCf0Nn_9Du,YsZHD(5ENeuKltdo,+@X&ufH>J-i^qq:3[HIFk3Org:%lTk
+8XBhe!9u:X1^W:c():nHA3ga'l1br`A0Rd:Q/fOR4D8M31V?feFQdsO.M`<7Q\A=doP%bN(
'oH<tc/AA"dr$`G6::h%K=(o!':]AX&Hc(3fBm>.2A>$QllosMIY04I(;O5*Ie=AKl`$ir-<l
ArHcY,[^N0So0m8@_.<2E4]AFe<Etk$,apj(tM/l'c>PW$kg-.9J&bb!#LOZhBhl(2a)#N4PT
3[>cBq!ut+Fb?ldm+9;aOV-tnj2/Ve0T$phs>X0)nc<BJuahdjI]A]Ag,C0)Ra\?L;dgH]A]A*Pd
5#i<&21Q\X\bP41.cQ7Kr#eEr@;q2kIfonP<Q&)A(%rd+3D74:M=qi/S(aa.Gu!^/4:T]A&<;
MZ!Occ`krd;t!B>3qqDdN=WN@NV7m*iL$/+?L,\5V=.]A<?&s#Um@Stel(`]A[]A'_#(W-EsP-u
_b,M[(65lm)?WhAO^Te/tj"8R(usl-63pP<kIdF6W_s1escj#;d%^_j1lf!)MW]Ah96S-'(rV
]A]AS1<Lo:/T?j!-4AVuu4$g-o@K9#K!86<h)3>en01>i'd3q@!bX4T-'-lU\;%81u>SGgKB92
SEL@gCf=6]AR^<&lM\Sr?M&bsI&@t$b-Q29)$#tN!O?I6%@@GF?)r.RP4d\PPp+P(?[mo#W@6
O@3jeH4!X%#E(>.oSZP1S$h>1J)I?2a6AgI$IU[QPS<#?DNT=;=>K*+rC;mf[.*9@`++j('u
UW'Nh4aqr)rO]Ai\]A*Zdf'ETYf5RA%')YuQ`+2GQ]Ap@;JgR=li#h.R<a28j^M(27><4SBdqDL
Bt+XrXRqk*K&M\"BE:B[il]AX/+pqAGLYO"q8_kk._/G,knsHR!>UYkVojY;/maheNtZ4p[K\
L)mYdWWblJO3=?6sp51S0rdVk_k:TVO,5p4fW6a`CfWN0RYN8r`+L%(+RR"i,'f_mK:#NR;f
7Ud*''$[;J1Af,3I^U'*8]Acrh)bGl%B4V2b7^M=j^7rP[okCMNfJW(R?rP+1c*A(DL=_+nff
=iK9Zc7qi:=#(a'%)i*)"J!aGS9CMB.qF[BRF>ER1en#AAYXXS"d/K]ANa3R.@gI5*`f2<o3)
hQ:7TF.+8`TZEqu4p]AP3'1Y8M_(toIdFQY%!0h3Jm$6i[8R@"H[r=?tD.CX,0k<>qCY:JT,7
sEc\hUMYI;::7W.bpN"O`JI`"4O]A+4\0jlql"COG-OR=:A#_*EXVRiH\`MP[Zb%1G6<5'$["
oM<>!#Sg.'[cc1"G!<G;1YfT@]A5hCJnN?s=tl=t)Jn[f_i['cVe=E^nJUl6VK+f,Mq\tKYeY
lJQ7-.n!D&s"lO$tduA_)X*3`<p$Ia)r=a-eHrUC^(i3`kJsX+cH7cqdU,i3C<s<f:jCaG>Y
Uj)H8F4;jGCF']A0&TA`Oe?G1$ZK8Kl5UXbg.R_rQQ&7iuk1^0e`6/`g"$f3l.or]AtTf#h@XG
6DN7a5"iW+85^2(A9Rff_WHZ3X\1s?:<0<V\8rH[PCL"7+g+]A0L([Rq&eOLr"^)MR(8FFp)3
]A->BD.\LZg#RJ6E>gK(]AEfcn++o*gD69hMq.u6>Tl62(\OfPYAu\<EpSH<R2VG4Uhn]Ac!_Z7
3-%^i\+<50Yi5ks=3&RB1.@4PoI$$.?7gnuK#s5,2XG-LB[88p8PsTRWbX8?f^2Ije<Fq.O#
YP<,ieqiN_2rRjJ.,[:hfjpr5C#iH$;RE(nq'-7b/8FbZsm)]APT`n3F+kO5Ltg_,(`bf;;h%
t32/bYhC8K8IOIeXuHC(R$3ufV@#g2em?>Jq)9j0Lh&Qj\"]Aie`i'N@#8&+r]A785R_.Q^BS]A
VsaGrjDX?DR11Ukq"&0[?QAI_HE@_$XJG*D-DJt1KNH^=Ra[tij'7ueD[;>fFeJ#qCUc`Ws(
>&hG&/&44NsRjF)qdf"ed\h@TMF2I59?E0jXX>dA;$a)O"^?cK+$89JaU!hVhA0CQL;o_rjb
u@@3Q:Zf=So,_H_qr_fl[iCpeEEnJ1FD!FW71?IjCXp?(Pk\"B1:EsiJP`8\9MLWq0F[\[Rn
g?b6FHi6Z2%B@J`DTR<6rCF=RS!kY1e9pQM3+%DpV<(tFqAmS.9MuLd2@[-D?V%.FWo3Ja!2
dT`bq-%5ajQ95K06hldVtc6AG3D8Fh'=e!guX)a(DlN=&f9d@Z*a"B(dRRo.;Qp(,&r!b@bX
>Qhr5;!6;Vb(>bjnBZ[Q(jV7mf<>=!+!IcEYqZSZaGF-(Rtj2c`clWsM1>>m;E*l=o0iWl)t
/mo6*r]AT[KRj"m?K;`qZ@/p%TF+JYhV.k;Ok:IW80%\QK'^1f1oJU8uS6)_5PWJaV6*al?Ne
*9DCU(Ongu%8*rR<+f]AA&Ri7Cs(YmWC'Wj6L4I@@%5'9-png&GP8ZQOHJ0a=^JZV13IdqjrP
)YYJXQF\r6>DD2#b)FZXtYgK%mhdhR:o#X9auEE<_&]A!<j`5459I5/7_kIM^m\30qUWPD$_I
/=0(aV\W09V7`ZhLF&RN2C?F=qhC/$K,K4:6o!ifO,\EsqJlA7Ns_)lQFO-MhFDW^H''==gG
.@7O]A0IXs)F_'_oJL[u=h%0'!7/&138#">paVhCnH!RP$UK(?G51p"=C1*B%6hb3^E%@*PO2
GigC5GgqK$=@;3IKJ1gM:c%/KG8En&>de&MR>!Z-:@&B"Nn,hs7Mrf&MW?630[5JZ3)rmYJn
n<kujRU8XPpmR7I@nkUBGa^$[@`(LjbHmIEUeLG=#njpU7a#D\f0;<&g\Pgq4C<)"o/S80:q
hfgN]A#M^S^Y1s#k.?(FoN'o=7!jRW(5<;1cY&hsn$?TcX'LcHRfe09S\;ZD<"ST+$4T%/Itp
0.3Z-M)R^c'iZb'p(AEKp;0R8u9]Ab2+.N+4e^:c%Uf&>`hf4<o=pTn/Pin1g]A]A((H=TGQp28
fEJ:kWK;('k^Qgn',o2=>k'po[0-nioqj1J+ENQm=?hXMr?d3OacIf-rM-(*#jq&]A_DBbjCB
kr]AM2P81<$^gt:B66BOC!o0>4aXr;_0n`nSVE<e:"!Hd-f&\5>E2O'@&%e&Be%"+`kVed?0b
t##D.C&NoZrjY0)6pQ,=FDQ9YFd%ke2f@EIsSTtBm.W2SpoT/LNV.,jkrYED50<;["9ke1O3
46Lc&(Yfc_#jfuhkliSkU02f[h6:%0YbYtj%AJ:f%S'V:=O>NPaZ;NOC:'glfN2Rf9AR&J\O
`b%'KWCE911X;3Hdth>r)GMtsR0W5=.AaG'\06?.j%BX'n-chs8l]AbC#sqNnFM]A_,Yo3t4C<
]A&gO/,(/2qJaHWj(]AAo[[p[QS=3\?lCqbB,.tTkI3]A=AA3=NJ!&Ot`ICDj*lHNXl3orkhC=F
Knh.o,Rn_<O6#p9T)g_l41,b'u6Irh[,A]A!?#.&9DhT;U.Gi=RIFOUZWiR8bo`ga2I"QqA<+
#&?43?IQi3Hl(/_P*Q#_^1l6f-?m5HUa&[KS\7>Rm%p29%K]AoasJk[6MJt4O70fY0RcIqNO5
JsB##dRC]A-BC48;i?]A4K3PmJA$GEGX/e>;+=n/KAo#i]AL7KfAd+N5[WcoG5aMtjR5t^[GpPm
sVQPX85*P4.?*iE>D_=I:0-]Adso07DYk[",`m&*ZP*E0G)lE9VA^V7*)?j9LJI,l8sn1f4(*
gR5M/\ES=_qdL*=&Q^]AmNuDEO\m:3u)6oKk0j(Z0,;toF@TVFG'S9hZ+Y#ZsXY8I4c/&QoAZ
!+3f?]A=cGR5W"$+Wo@HeA?>?PV3Gm^>/Ze5YggROYkBk9Liti4KHD^ab4djB=DU?#5jOD<Jm
>Y(n=5!&D:`h'&:BlA,pVMrj*Bo8(tFn*WJc#h(BS+i<$Qh'&:El9t_FY%qh/46$r(R?j7'I
!4e*_o(d&]A3aE(_X^+^VhkHc=Hmk\b59^A2:e*'Gm9l)@[WX]AdWd=?P*g2ZBS91#1heQ08qf
3KGV3cm3<@%Z"R)@U)BKX-_c!OI$+ldiCI#sffT=m'a&3n!4Wb#mRIonFeu>Q(8m[`dqfN>d
$(s4[/CRWM<%sS<AD;DX6^B6+OhNlsWa;kP6C@/Xo.("D39mk%%`bT0<*/#r;WcXupL-6UnG
od27A`F(g.:9HdUR'8q6a4k7)I6EC0"l-mTSrU'thJd`TV"![Cuq\l<b2FCG@</#OdB[%sDi
G^W+#"50Q%l+(c[&2MG>a\_3Xb0F$-kKkkk>@KS9fI\JPEnMjFCMM4<bKY"/W&d<QeG[OKK;
j>>FU%]AL^#uYe,*9;CXV]ASD@MkCe5jRp$EboDqQ5:%aoc_l%n1<f*h/PXaHn?H;l&4(dEAu%
-oq^\$j;)*#IeTX:*'(-4HGj#.6S!T"l5Ur':heD1<X*Rk<=8Lr>Y'[o<<43kTi[kF6-7"s_
eDV$Ln1SWmE_QQ%!$%FsKgCI1#jCp4#-^eW$Ok"C*B_"59Y!la2<d>[Hqsa=M;>I/BQScA:X
pN]A93u;?IP4(]A>PZpOL'$g'@m0%JPnJMiLf_KeLlb9MG]Aa.6oePOW5%dTi]AIOO_.@G)&8I(]A
_7d*/HB.d&'5Bsc"H>:-.JQQO:"1E(jY6QM7^gC?Ohb&1<X8(KFRYhKo?\<(G0jWI,0/J4Ba
k^ta@.R=KdW[B`I>FR]A^O>C8-hf9!q8WF7~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="502" y="0" width="423" height="294"/>
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
<BoundsAttr x="502" y="0" width="423" height="294"/>
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
<![CDATA[1104900,853440,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[762000,11247120,5486400,2324100,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
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
<![CDATA[=if(len($$$)>50,left($$$,50)+'...',$$$)]]></Content>
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
<![CDATA[=if(len($$$)>25,left($$$,25)+'...',$$$)]]></Content>
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
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="2" imageLayout="1">
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m9FF/;cgQe$,dc<g<q0[9:Y$ASrQXC<2g*nB^IpBa%JPD<f49&%b4["BuL,cOr`j^)3<G&3^
p#5Y`>PD?D9k_j^PGDL`ed:M?kKa?ipEr84(C7n$@3&3*=uecP&odBAsGOR$G(n[D$juhn.a
Qig.QAk5(.,1^65Ws*9*Am8"#I.n(#A)5BZOIsLA8j?3dSEmhVP??mbYYH-cMFo1=_ltTLSK
H6#_[/6=O='e+4pt7kIIhI0.>o;##AT>MuJ3E@skOsoSOma..mZ6^`;j/Eu>HXRH\=B2$.nE
f>0@ZR;#HV!dEj?X4B3%-/R@%7VoUWBC7RnAQAusR$HJeFZpe/n!q:E:UUAUUI;K?$GQF)j9
DiZ(q<\=XjmV'i#@_kc9ES)I:RuVgH=)N,!!okb_;GO.YY,to)`[t(C2PpuLWhY$*L$E*5?Y
.]A5W@MjJB06(B`V7,B2+oN`Z*m/%^-+h>XZ/($O*(`)"o7o-%[nE=(PbVh,MG=>bf\2V9h-"
n5,PJ)"e<e]A00<W0[^*KFp8gEr2RuX\`#CO*pBGomKK-7jSEs139T$1`EQY/:;:TOM(G2K^l
PG[c1*NZ61A).`HB)1lC?,FH)$6[ECPmF,Z*YBEBWj)AK8&(&\j+ml=CkYYDO+L9=76m2)b[
VY;"L-_[XD,6[GQg/>)2#7PH2hAW\>H>b$jWa*..?\AD(Rp[oTi8OQ5M]A\j'0L;m="`*4pgs
1erq!cR(H/$Wcq+mbmRCM%rYhj`]AXoR]Aa4ma&\TCT.I(qhiTFhWgN1!43=@G_,n:.:H7"7]AD
D`u.6)f3[su4U'%,=$2!eCmJh:9b<;_ldFbBUP*3kp@'sY2Ok?a*h>T7CqU,64mX168,),!+
3ZUK6i^(G&lSX:064%EU,E-+UJ@@-MUg_*-7!YF1]A9?#gVoJ"fOf"Q_&2^NKM_(C+J/Q\FU>
64kd"f]ANI["Yj))Tt!3.EYeHWU[P2.>K5i'l/dhl[Nb56]A7_EhJc5Z>R6WeL7S`aq\>u=DSC
!$Bm$bd/"I>jbmB39CN(6t/3`+[C#SkN`g>c-7apeEjQF]AbnVP2p.Yi#5ZGU.=;oj.TimUf0
^Nr(e*RA$F;.$O<CP`1(kLuA7'DDhp^`)ngS8YGEJ,4aR$15Yqj"[VXR`GU%QQt6;).o/S&u
(=BNelPn;kl9X]Aq'+WG$2fk%b<Pck31"F"q[GS!P?dBCQ#a@'nE:O'<Fg2N"m^SG7.%*@+Xm
;@UaEe4s4BHZjAtS(.%Wg&72srg1#.mM*7N<82tM'!0*N/L<C]A,.t43ETF-mS>#1O]AjOKpam
"e9c?dIdjThYcj`>!T@EphlqAs?TkFP4O6?0UR[!mt?sg5!`W2qS&>lE!.s:cnWL!.7"=#Qp
g!C#iJ$8UDKu*5G)0QbN?CKRm5:@iR:\+AD5?g##+5Dc\cdrH*rdE'$"m]Am`f(d4JAB;)ao3
BrQVh!jJt3+/0if6LV"Nag[hOl"s3\6p8c_Urk:8!a7T'WDNV^G/dUf4I^*U0r1UV*>hsN41
$E,Z%5]A$M3VABSQNtn\"#>>R-U;=SnF);7GEBd,9T`Fd;R/_k'ok+To"kdo+>UNC"0^PPic+
?RVhWK_)i/qXV>MILZ?6fkJDXHUOnFGmF[9Fk1c`RDaFaVBf8]AkV=b427uDV1V-/J<e)_)kR
H$tK*2qX&P"XXTbp_7>2Wp5Md]Al_G<fmJ43Qja\ifbREWZ`cN[>gR(6=LD@*L>uX(KEVcq!\
8ESW(g*/WP#Nh_'@3r2G.!q8.9#mI*U#c3$."]AL2JN[YWom:orCiS0pmU3ha6;N_<th=bLZ6
k^"@O3;WhVJki_W:0#O`bi)4S*A1?#e-.t0R:aYH1_hLRd30J_ci6l=5q?!3JUd:N7mML8Kc
I;J:>nT*O@j;W4]A6UYVN7h628.7n+ogrjb,gnsOqH^hq8<P+irc:"\/Q8(bYcoU6,q8uP3.m
t;EM1kKa@7=P+6C>h%M>jES[Lj^C:r9!"Qh<On'dP_9bmjkm#pA/k;%(7B0EE;s?mJOfKb3$
4q"*1(]Arr2IoQjgjpBJDj"o9IZNM2\Tjgnna0C^.D`CN!j"JD3E#.B(^`2P@bU$\L-Z%ja01
_+,#2?"Unt#!Se"GBiLZ@:@Xdof.N_K=Z:=q]A>,(AIbK:U'&:j^]AY=2oq+/0PY?`n*e'4hZ;
N5m>r`!WVf.H3">f:k[_^<<'a&S>eE-*FOe/NG7<J'qb_qU2bt$Ujh"+/4s$3(a-h/.n/-1M
u6"s+(95J8lZ(I<B)EZX[p.;3Y)gElHn+)RAGe@AYSJj`\f[hIZI7T^BUpSqWXe$^Qj&&)(d
5QFVV+gD`r3bk(e1W*!PJY,-!Nn[tA$r)O9#I7%"g%t-UW?O*n.YH77M2Z<!-Th26H8gLO`j
&Z.XC]Au-:D<(TKUeVeh3nFW@W7h9Z)%'Z=dR1:+<%IO<lJoA)eg\mA;<hkj%)1+ip9kEPj/A
aAL8EIXrXR12(SI"AM<22'W]A<nKf>s)Nb@,a/\9&\Hhee_%q6MY:PO>LG>q't!*]AlprT4<gQ
3ian$%@'OUdjI3`&a+DQCH6!GLk[*3ZSN^6aGC8<Lq\Qh2$'B;$ec/:E(DY[<">#.U#cN<1a
J(X(1Bu8g!c9smrqf0-U,PYqoi#ddP1N!VV6T5!X2>$r&sDR6;^D#3U?hF9S;e:=P$\$8V3f
a@4A&6&>9\Vk.@[Y1<M:Q26$gqV4aAX-?LQsULSIETUOsGeSp'H0MfkQV5b<V:E8ui.=gP[I
C**J64S^D4jZsZ=:>uZhBA=$?mIX8b@eN*p/+,"eSsUSlYa#4\Z5<c,@@I`Dc5PZ+hoeil/#
9Yf@,:j'u%%\N*Dd7'J<^T'*i@X*QX=E!Oo$dlF?%\BI8EA+&DWg@k;G9&$AXcSG%QunHTZF
<Q(sV0Lnpq.VG,j>j_c/&Ub[a-Pfrc.A_f[^oEUkMNEtqY.M%(#qn:JJ_`Nj\8i5)Al\kGcC
\N<]Ajl)S1+.hD1p;Xc$QP"RiY]AadbRPPg,&-jm'4h\6WbEW'a1lNG04JMM1PJW1ec34>adXi
2r!mQ46g5JS]A">^agS\cD(W5rhF]Ab3Eg3E!8]ANh-k#Mm%RiH?.&I"%JmB<5G+%"iF#R5eETg
$:M@4@eE`Ap^Q6.6NH12e56T91[RU_CuSBVJC]A3ll7Y<4`FY`VHl-P1[rIj8bW@$mGimnK+m
$2nP!.f*5"<>liKS&(4HPNZFX3mj/id,f"F#[?k^/lWABS.]A]A'GFJbOQ`'Q2lXTOlH0ir$se
I^(H=_PV4/Wg,Qh2a.8eIe1gij*.Wm$95e'YCoH586V\NXoH3^k7*2:*Z?YRN*cn]A?iO7=,G
bZcQZ`HL7L40^$#F8XQ9blPoBk_rd$KH?A]Aug3*T%1t)4W=OJP32F<rlS:j;ER/&-m]A[[/o"
"\=]AVK4V-Wfii*g``0M]A<9%d;<(-[KjKmD5"&Cjg]A]Aj&>9*JKBQmYcpN"gUCR,/KfT4rk!F'
<'g]A\aUA>`a&V^!+SFFn^8&W`H/k.<6L\&\0Kb+6G^2NrC95r>JGhkG#E-(mbmVX:?fNRKPe
s9^5j:Xi,`GD+C1mEOu`4?XkaF4Xl!sEHk%t?B.4LOY#(A9rYa$b#/=:.?u=LN8+_P_Mm"h6
,B*k*Bl,-4Q@T`aVY,:4<979$;b&B!Y,`]AAg3M'@=d"0#pX7CJ3G*_qPdF!&`#aBICj9Af7`
e!G5o:`_>WV&]Ad%+Wi'?iq#l$ORZ2bY!MW1CuMd*"UBrrNj3=E7lB^K8384p!p!nD+S&ImC7
M'NB"LLsMdK)%bV#bq-&Es0o9U%^FM^<W9C&gH[,Oat:2D\<:(837b![dRfX[eHHadPfk?]Ag
Z6rNLcKIXd9@#BTAs4-Z;P=g/CTTJW*f:MAuY/iK/VEC`Kk..7]A:*oK0QHs]AT%`.on%l!M^W
hW\^?l]ALRMiO9gOF5))MGh,LdTY-)?`>l>;ii!Ij':<0,e0H.NG,Tn5r$]AJ1-n9q%C&AP'RH
%\4p/<T-fbZc-`FUlrflC1^6#1Fgu.6@,-\]A5o1T,qq!.dN=7)1'o5^cU!ILKsOMX$,<q>.r
6nG;n+PdO3.lHNd)YgGWa%>5MT#[4[fK?1R:M\8o^b(J(3Mt`o_5gg<6+`"B9:Xr>Be7#H9`
=1ao9-M=Kt?\@I1-Doilo95\F0_V"1%'YZ)8</J7@+GMSjC7!bA*,N#/\fijPnP/lqW[as1&
qRE)/RQAO$m=ra%nM=,<Rf4Y0Ms0<'H!m$`i3H(S[Zs?XRRE'@?2Jp$jCB7,/cSGA8X"UY@^
.GNi5)k:@BL7+VU84igf:/O!TLXBl'iLLO[;e&D;*hTW*Xpb1$65PdferVa(-#I;O`RjTTTX
eVbTZ0"3rTqZleW)=g7+&"?^N`_0f/V(mtsL5qn2'hU]Ae9tM@Qk4;I5V=3rBSm,GSa"Hf31A
g%E#[fC#prW5MQ/j-r*<&o:<\Cl:&\oI;@lN$\B()k1kB#]A]A/q+JgW,\_`>Q!f/X`ZKNM4P+
,6<)2ln*XJoB]AX-l[1EXUOE"^1-IV:;PP><th?OP7.HK3sF?qLE*bqed@d#'5oaK;=NU=4aH
6_K.om`F*VI&UG/':pY$W0]ALgS'&J<)a6T8=8UB.!)<Ea#V0U@M0X8^;nRpf@BQ)CBJf5Q_.
.BmOW>$VGfdCFI2e4nQd(*Rbm@urMht9l:t5ODj\(Q'L^N?Ej'-<"d^Tk/>aZD0RQ/&)!sc1
+Vn*Gr?@QA&lN@m1F1G'YXEej-1WWV;TMuBLk[/`#h+:<lUlf0WH@UZQTnTdkpn-<mYX+!gk
:4(GN_4).RR@D=-bJ1nR:/o-L]A(Q._=OM,<&J=q[Lf/ekn5LR:]Afj]A(@"0'4!(&SI`teRjdN
a*^eFPkE:=IjJ*EipTL&J?Z*2>6B]AdA#tJ8c2k3SYMju^L:9WqfcLC5_drn'[2-ocFWT5dI^
IgVn&i*P/Uia\U8]A7"^nW8YW-,iU)ctpT8f/E7TC74CmfM5pkgjN328eGZ]AT%%*[8TRbP(s"
Ec<F1oWBCRKKOcD<FS">/=go4a8n_4/F74g[BNkh[i$A=&\25#iE8C'&+gkYa[p2[^cciEe0
IJBgM,1bRDqVQtoS3W.QKE;[r6TH&qCY?%H*[3L@%hXR#"2b7(q:eGVY`*A1J8sO]AfWa%Rl#
Mo>aG+_<%A-LV0[o@O@_qA5MoAb5!3RRO]A#c3/^?T1:fO1ZheB"DXM/OS.R04)1\Oi<DqE)(
>N7RdQM(j*6.*fa/TH+JCG,hLm(ds?3H;M^G))VO8+/[9_+7pha0d[`Sqa(eir@.e;`s@(]A5
+^4XdHus$6X;t*Lb=RrR-fn'jdE3T2c8:n%A=%eVQ(f?3&%ZTnnFNPkp$Ok#;^a-,hOEX_X[
'1moq[!qprdr0$ln8_De8PEWmit7nM+h4A/D_Mu_kMGO#h8$Ac$j"^:O$_AkO*f1KE[LdT'/
&tikplXa\?o-n@oiT*rq-L!161@.cc^PqaYA["2JIh*K3\-`[_T[&Y[HHg@4]AcHF4hN%R40_
$-Pi"-VSX--]AA"a[Ie.^["\PYq8`d6MV-IZM*<.E^<d>YIO%DJ%!ZCY/2intRmJBI%u7UHWc
YQ)-*g[hD,eiI/p%%&867l`,c/:'Z1#X&YL/hJtU:EnI<*=1To;cLn]A=bI-YErq?p\7D#rMS
msZJ6".i5c3@oLZfSsI6PZ!]AEeor0StqJi7aunu5\Fbp@XVKn2`Mk?X[<cra8$`fQ<2iP<SV
fWJBHe#?.?5cQGZQZ:jmpWUr`[Jj^G(lMTF#)e,'k(lJh\!/HT+$8GT_)&QIr2PI-O$@O5,X
&cuU_-IS<Z3!,jCO`gLUrc4'p(]AqOlS._"i,JUBqn>hIflIEj`AjATdX_+R$(^;0!%Q@sO7m
46lGN+uO/t2lN_.dE<]ARs>,"BEf-aPeo2+Iu@/K?\'(5Sf7#oS;LsmkYH*8[&!e.Fa]A_'k]An
AOJq6IF_/VZ>SLL2>8:%$68:I5aTYXhI(=u26E=7F<'jcGH+rAAGG`<#/pS$EO[-tDe=R!s^
5]ARh]AjAPo:;RXWn+'D:\CLpM6NY9U:P`S;D>lcPOj&g;/%:g'K5%KASKb9XC>J.)dLO#YMpW
$7\-d!!'g!$Y^s%WRqYbs@g71s1=)8d8^ns>tE#?X@^d("uM92QBJZHpl%_dV?(kU*3Mt!2J
SFd6mHF!P``c:1Gj(g:c-&oo;=94ZR..b6+n_]A&n[NdM&4$OQ5IN,tU]A@CTj(aQ:]A"E@M5AY
_I1>+u8=Q9bs4=e(BITBc_]AUMHRYHlW-#s$+@+_aqd_D7=ugmHs6J#l$4E%uXaUr9CSKruV
~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="925" height="347"/>
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
<BoundsAttr x="0" y="294" width="925" height="347"/>
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
<BoundsAttr x="0" y="0" width="502" height="294"/>
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
<BoundsAttr x="0" y="0" width="502" height="294"/>
</Widget>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="chart0"/>
<Widget widgetName="report1_c_c_c_c_c_c_c"/>
<Widget widgetName="report0_c_c_c"/>
</MobileWidgetList>
<WidgetZoomAttr compState="0"/>
<AppRelayout appRelayout="true"/>
<Size width="925" height="641"/>
<ResolutionScalingAttr percent="1.2"/>
<tabFitAttr index="3" tabNameIndex="3"/>
</Widget>
<carouselAttr isCarousel="false" carouselInterval="1.0"/>
</Center>
</InnerWidget>
<BoundsAttr x="3" y="39" width="1146" height="770"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.FreeButton">
<WidgetName name="button0_c"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Text>
<![CDATA[2017年四季度热点技术篇]]></Text>
<initial>
<Background name="ColorBackground"/>
</initial>
<FRFont name="微软雅黑 Light" style="0" size="112" foreground="-8337437"/>
<isCustomType isCustomType="true"/>
</InnerWidget>
<BoundsAttr x="4" y="2" width="1146" height="35"/>
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
<BoundsAttr x="0" y="0" width="960" height="680"/>
</Widget>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="body"/>
</MobileWidgetList>
<WidgetZoomAttr compState="0"/>
<AppRelayout appRelayout="true"/>
<Size width="960" height="680"/>
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
