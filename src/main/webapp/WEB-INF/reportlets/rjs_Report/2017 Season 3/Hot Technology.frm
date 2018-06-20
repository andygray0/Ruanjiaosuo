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
<![CDATA[select * from lxty.2017_season3_bigdata_province_amount_money]]></Query>
</TableData>
<TableData name="ds2" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[select * from lxty.2017_season3_net_province_amount_money]]></Query>
</TableData>
<TableData name="ds3" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[select * from lxty.2017_season3_cloud_province_amount_money]]></Query>
</TableData>
<TableData name="ds4" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[select * from lxty.2017_season3_safety_province_amount_money]]></Query>
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
				AND (
					radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3, 4, 5, 6, 7, 8, 9)
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
			AND (
				radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3, 4, 5, 6, 7, 8, 9)
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
				AND (
					radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3, 4, 5, 6, 7, 8, 9)
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
			AND (
				radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3, 4, 5, 6, 7, 8, 9)
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
				AND (
					radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3, 4, 5, 6, 7, 8, 9)
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
			AND (
				radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3, 4, 5, 6, 7, 8, 9)
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
<![CDATA[SELECT @:=@+1 AS 排名, 项目名称,中标单位,交易金额 FROM  lxty.2017_season3_hot_money_top10,(SELECT @:=0) r]]></Query>
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
		AND (
			radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3, 4, 5, 6,7,8,9)
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
		AND (
			radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3, 4, 5, 6, 7, 8, 9)
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
		AND (
			radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3, 4, 5, 6, 7, 8, 9)
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
				AND (
					radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3, 4, 5, 6, 7, 8, 9)
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
			AND (
				radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3, 4, 5, 6, 7, 8, 9)
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
<border style="0" color="-723724" borderRadius="0" type="1" borderStyle="1"/>
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
<![CDATA[m9FF+;ch[:0esWS%A!2+gDU_%\N3JM6u]A5mM^20Rd[!b3[RETCUK)'.:d@=.>cd<HXY%pX/U
2m]ACQZ%87#R-.P2KH]Aek6&m;/W'r8-"hr3?dH/3To.jXlEO.5&6jbZg``cl$CrFBCGfcpO/W
G^H!Ag=WHu$`$ZoV#kIK.00R&a6,lP/KHBpchgtf1IVS-K"PG&Mq=t2tD:sE@F\uWIL9s=]A@
7>*A`*0m&H-:9qpSo:"M-a9H0AJZe'-,3o."(`VIJ=Q$(>.2"c=d1*^g2!0djq$ZHfgQt5p%
5rD'ehM;pb2?L!=K[#?C*IbS;R><Nf'8Y3^:M\)_THTnf?\MRjb2%J[9H]Aj0Sf>_PO]A+:0'f
D`t6"U=qJC;)BZeA%F"=,qM8$d!&.\,.%a2e/j9Z4C>;C(+NqYE+:u,%,MV;-n5r<H']Ag+?f
/!SXcN.35`;gAb.8mpTdUcJ%:\m<9/4WPDZ:^^eW#2fb$.3D)d!_"M]AjU2_<mLim]A!em"Qqc
#/KraN-D-Dff/1cpA]A85PrQ.ks=0sRDQ4WuH*kFg0oVt=V:tIs#0[cDg332AGf0('#`!0ErC
fqq/.X_h5@pr"8/!@#LFTf7EmA`^b:1[ed>\l6d3o1A!*-YAW%i)5c3<&m)K8!PBEBLM-DBZ
#eK\>[[e9d'F9U7#Jrb$.;gF=-6)\_4qW<aP!\?Fu_N<_=7f0kes_$aj!91YlPU+&V[Yr2f!
Xm!2]Ap#7bIbPRf$mEl.-_L=gMDIo-nU->ilmM-3]Af_F"kb9dPQOCkCd&t6*oeYWahK7d`pXm
mS+d_H3$>bi6Djio;!lum#Y3G'qHf1/icRd4]A"cJ4!Z*m'n.`?b(_>_n,t?MMO]A3+Zo%WhT$
c67GL71kOn(C2&E^lD_bG%35^tE3409>LoTj@KL&.b3L%ln?k;!bb6G&MR6^fNRUVsSS`GbU
4O,7<5i6d]A'0[:`IG3WnLJbJMM%O@'@:E`^GY0+d"kB0*3?t/\u+VVq9t,]AT0lsP?I%YihnY
d%["X:RPu=e+A>_W]AJD)2CN55V]AgiN,91uGYA,[!tQ*WdP4d)]AZ<]AHqf8o`^d-U=SRM6r+kA
]A4B4&LTnsbYU#rog@BfepWeX#:/]AX+r*>p.(Dh*_0D@OS`V/r5/k)h`?M"nCM962*)!-f),F
SGmRU2m$jnROVo+T%_S]AJ(H`$5JceNFK6@3#(iB2Ynr<Ung6eP#jo9s:3iKsSQg.q00Pe^s)
]A@pSsaI_Z,>>O7\146[+W,[TY&$G<TKhL)`rl^f0Pap]AO/\+I>U;rhuJF1LhOq#%=B=#B5HC
G.Q&@N3,^.V%?rVU9&;'eYL\qXDuuq#%FU>sjgI(Wjj<`;_:1M/1Yrebf!MoWlApQ>4WM[cW
+O[7PisI1AUkr[E[>RkN#Qn/3$[*73.58^@>T3Xk,=GcMZt]AqP'OYiF9@&A:IAXnSIVqO*oi
MH&o4bpq>Zfr#p!qsi$?(%3K<?)i`B1)qR=f\D%Q=RHRl4%H-^8M*r79BhmDfTgB88\t&aj*
(cI3U#CnFNq8!!"&a$:7<?..MrKHm;^8BEKO9NO3*_(WH/H$1TT-pil5:dpmZ+`jNUbd1C+G
dlS`]A+P@D7&q`*HD2%)XlOO:[13T+!u?"4OD]AI[]A6Rop2[2!5Ru':-s$Xp''iY,pU;XrpIY$
_S&mp-$YS`)0E,]AKc@8m(m&.Xb.9u4$;ta+!-*Rr<;kTF=ba#qnL#=b7V5,4>/km!K/q#6q+
E^eDMJISX?9XOD2=":N:;9f\DGg#j*sGr$&",-@$"^:G_L6,?<97(c$g./[3\]AEjh>]ABfcGj
!if4t]A9mn>.:J%UFPY1Q4MMkr?s,#e45AkjSS(TO2^(]AeIRlS#!_tckjE8cE9g41]A)fB$_Xs
-uW,u8Cg[W+LUa=-#Em+1HKd&Fc\dW<n1"(q,8=JaNVOPrf%T%KW)p.s+cF'-TMZGs8L(3Ps
eG&mmUIo?b&$X&WqfZ=dk%d:u32<b[Q*[WsO'!@;"r,u)136I>N`Mir7ZG9F/hoXD$T9%W/1
-kNH*CV>/dl"81UiT.HZFg"P!jpRO/MT7i[d:PQ30Tu*N&:Kd?q1[&Vf&7r#,In=fr#nOK^j
X&WPt4fRXB4W\4H"^WgWUNM=Cl44)#q'=VTV\Xj0.QVj7:[05Iheg`$]A.K_c5/h<pP;6A+tZ
DWGccpYH5RMIrV'JH+Z8m3fLb#C^bJ[cc*iDJ_H)j/)rL?U_kLPNHpjOj)Zr@*c<.ScCaB4*
BQfQ7"Al)iBV&onsdW;"2e!,@QS'T*[:KDWh5+H>aI:+A]AU=1N]AC&LDn:i%iGnJo;]A4SnlX3
G%+o</g:KYQ:#%;KZZf$Gl]A(<#<gF'\FFF4L4ZD0\K;9EQ^gNB?kX?#-2iu,l/MO;02oEOT/
G4-5S6C&%e[Kno['>`e50=VpnUa_\_4Ec;ccL"83b.37B[Rdnl^;D3<S3OeXaiK?\WlJu5qP
g;9"OH[mQg:uq,83k\'m4B#=j]A'Gpai%XWjNX:%ojXR@PQW\SG,\IJhcEDJn2f0AYT#1->du
J5hdC+/b>H.uJk4J^O+U;AaVj6J$IG^D"tu-([aLJR%l3YbPUl+Nf-5Gj#6*nGngSr(GWV+-
Y@X_glVF"MIdeSk-$r[o.GfSoth>be2MRo>Q`85g4Wb@p\kc1>>+I=?<ShV.$\mlUQnG8;Fl
@oPfgU5TZRQ6DE?UVC/hPq1e&d>Pj6sWSIFPfF:%QFl>O#?QkL5Lalej7%M)B':)eS&s;jkW
8JU#Wk,k=U.L\5?o$E[4h*2II&W'W$gsR+,a/=1/4M\"R_FtU2]ANh?k^<J.bRIBM+Ra.F5+%
\tl:X`81*?6m8-YYpnl7-aMGa^B!JU@OL0msC>o75L!U_m,$!A96:3V_A^jcX6Rge#h/2%:S
ITDQ*^<jX90`0qd2UAQ7jGCQF+.^<)"N&Os7VZPnri=9O@5Mj:Y"bWea[+3pe."(-!&C%^0`
^Su"_t;A4TOWdJ*<OQDK*eT]Ar.W6]AJ6RlQ=a5T4I^0^!FVT[<OEHdTf!gSjoUR)64J_@9B"d
m)EI=m+N,N&\Y,ZJ&PL!$J.gF!8fTXGoO"`s=$>%:'KTuNK+TuP&`MIh&.k1[i0aJEf!aJpr
POUUIX:*<jZ!MKIhh+@bXDHHO>S!%S.nk8[eRXg@m[Er?2EP+?9AYF^(R8=6J#2ehtL)$Pp+
Tha_#"*T@C2<l=0=\X2c>C6BLR+c7h:U(lncG@[jN\bV%6laerS?^VsKd#:I[B$V-\l^r[gb
Y9Pt3eC$%]AOGnjlW!^+JqXQAkF73,T<M4XXNpIOHfl?p(XOr4NeXN^RoJWaY[4^"SgtE@A`:
LmQK+QWlJ`?gm\W.sE)&c2U^n/^56EnmA1_c,ENSuFFW,jYX6H3Adf2hKJ9%4o%+r3B(La/[
ud@^NHJe90om-NPS_8TN#_r"^'10$To1u#>oq>uEQnN]ATr7=S+b(^Fm6'k3^c@gBqLIP)Y_l
onon<)?/u3c=gBFDrX*ca&8RK3VDI_YsapXK-QtZ4*67Hao"J#mI?([b=S__omTOi3;sq9_]A
35JoI4K>2C&`;`]AUF/o&]AdSlmBu5!sn&)X/eEgLm+_(W_]A+Fa=2>6a7Bg.L13RB@X)E+K0:l
>s*mC8`?%>?fqLE2B04WIi+CA,9Z7JLEuhK;88%k-&Z:J.%&f%<rIY:ohQb^@@6#FUOB+`mA
GJ"'s@55L>L\Y:Zb:X@47DQ@X,gYZJ)mpU4;&7rI."1aYMD^V\H/FnVdWm["XI6K[meP23p6
(Ws(EN^]AC=ef3E+\%'`d-5ILdU6O@tcQO"VJ0WKG^-->`+F;SC5e$`;J&2?oW4'46["71iMe
:qTa:k3fQHmW4u,2@b/ZaR5p^nhTA\,mG(c%0Z,]A22p0aD9k'kmU^sAdk+-jnbs2Ar))*?^q
[*aJ#)cY>rN='Pb@/XC87;aI`du7OaC98029;pC/Wq\\_'%S$6`="e-j7s1$UXVnc[ThX;YV
d?'g_.hQnQ[R&`HT+K6.:l87l`rIM95B/3tja)S'e#U-aq,8[XA`=J\R[DrL*qN7t'-FVnW-
`&-cf,:^?&g"9ncO8n4V#<^@<^T0U^kOZ7'N?oTDr<?J9%DO0ij!qJrm3AcTY54;Oqtk)9JB
TXWH6t=.',E^h'24+!%E\pV&>3FC7d`,cnirGd'XYYfC1b^A4p_KST_Ub:,F>oa3+?L[[>6j
LA4mN1qS.Z`-d@OF@2\^Ho]AI\K-4nTeWc8LgUs?3<X-U^fhJ)?aQe-&%=\2TZ,Hj5gIMkqAe
I>rjCr3^%l+E%=WgFM^e;eJZ9h%JdXYjH2TK=q'=06#4h1X_nCI8M7WL>6PbBUZ@qKM;YG$j
T%i&Z#OB8X0m"NL+HO<<"\9StXbl'/l7D_,p/c?1A-@c'g>s$IARfRZ4I("<S!#QLY,=NSNK
%<RBNRCPMGX9[BE5F@2AJ*SLI[%p'W<7q7OY6YJ,<YJ>)e'>1B$"GV^:h7$@&t#>_pn++aE9
+T*j#o8OdjF6Rf75JFn1_0]A=MRnd5B)OKNKZ4c[R@VXB2l(n2+bO5+i*11.[2#1jn\@@!6l/
JS0ha(3`Aaf5?7cCu5%PX<c=*jN5DPC0\DL>=Kn$8O8M$(q;q7L6qt<r&\fN)C=_W66iP,p>
IL+L&"I]A;WlFE)AJ^>";\'3>.K'p]A,&CBU$ZiU_8)HjaQ%V3\MreY"gr]A_[#bKl`i=/Nt*^M
931#T\E+R_p+55amD[M4+5ilU.W3f56IgV4(lc3f1mT\m%W0qXBDd-hO%gV.F,SA%kC#Qh\M
g/S1)X$b7!R2/ab)gKD+TfEq-/A6#&PtVgY!Zb;i4i1#o$KIA">dtX]Ac6,N%Qfc4GUtN5Y8n
!N3kOZ6NQ;.U+g$[I>MkHoE-+aC+D[Ji*Jc!Ef"Eb+kYh!"4e,n\`bab4dZ7Ca,<)"N4p`3A
qk9*\1>aJi$MPRGKc.&4i9>$%I67rC)=a#jnlr",Bl3:9X4%FB=TFdRSCJMAHGj`gd65mau7
f'cA@l,TUMs,\f);c*oljbIJO"PYt<R_7H)%ir>"OTUX4skR4'ohh&TL=cX@ZLjEl&e6@iP.
`s7EAp;-6f<*@9+.)a`D.e@e`ZIS[dL6T$EcAqd#b,Ig%OVHZn\Ib3`:iBG+eI!LW+bSQY!K
J,B.,]A@QaU\WWc5p*gR-om:P\Tb`1V#h)LJbSOat-ECI)k1Ah[<M0f'M5<j@:5@RBB^n:FC`
GLY2s#I0#C`rQjua$G??U_)ReH!0#%#PhkO]AE<u2o@6D3]Ak5A0?"jCAMqREi"Qc^V?r7a*mq
Y'bqI"l;0&V25Q+hNM25DRPmg^,4%,3qS#=dTYR>pZu+Bd[aX$`RD0W47mE%R@3BfFh$[;ka
+gcZ"lq/2I]AQ2o///h,h3d$5h%7UYFj=2R/T8hp3-;7hDZa9$n+U8DT5Q-.c#(AL2:5*<IdB
^Ep%do)pm?Yij&=+LnbKm"cjU:_>XA+Z$ID>RJNm9K]AEh:bYE?A38/?Ua8<>05C6r/'T^@]AX
gI=PBM[mkd276HS!dTDfTE)5=&_6%!B1f-V"'a!K*4f[PLotYu8,"-pAIoFKm8S4^*T.Q-"X
K7^g5l"Pg*i_1=+(Oj&["VTDmA[LkP0%+>7uVQSn>hi1uN/KFH-S'@+t>,?"%K/qq\It?-*3
'k"/o8ZVeK4$6RpdYV(CF3Rj`Cd;Ic).5^4A[42<=h3[5nE(_EpjPbliYR\4<J8H_46/qLaq
W-J_I^f#V;?Y^ZXIhGU?e0N5A_U(/M`Gj`.+r1@#UdcAidh0@TbifI)F>Ll@#9'@,YDaHOj5
rDMKHhu!dUFH2,%bbdT1=YMdM"H%fCO^R9%1po8.X/e8bpY"RdBd/_!AtW*s=DFcL>5_JhM_
YiO.-J,%0g<F,Gm<>R1ddOY4:e'Cck`i;%DeZe.R`Uu:pF'$\kAUJ@nshqEWU&LgLLWqX0BQ
\+jDX/5:+Md\o;f'W(.A@4g39BG]AYetJ%U4#&P=K2fJs3]A+m;'Z1Gijk'M,6`)($7,ZWt>*[
.DMe3IOs$8HFO:0a]A"7\`ZBq/mk2ZaRZ\F>Ps1Yc:oBm@Eeo?i>J-)^B;U#(j2tkpfQ=Q4EZ
A&g2!Q`2&/,VS\8Se,r1t.b#F*,=\%BVeXE_"abP'ZU)[g4r;AU"B>`_qi0RT!<#TCTpj2*Y
1XoVGKBpUqeUBeWV7Q_XeS<o4JMdcoRp[uXW2Y6\e`oI.)""i'C0!XXO8+gN'54nDY`dn9a!
[(Dh,s4n4MDhA4@WoN,:[KNQg6&5Y=)`+:Tob@okH`7I_P]A7A$3_M[%n;Mk.iVU:5$2CWD8!
LKMl<bqLEDbEX>.W%AhUX.HEkAo]A:;YRmQjs5G=H'm\FXDp,5"pkW?FqlIsCKb+h7K!7IGD)
mFb?H2;fpA6.Pi!D.0/;XjBQ]AYbFD$Vh/C:EU[oKe:D;-6)7IVINSSCfOW2'<$_P'Ij3!hh`
PF:Vnl9V):m0Li;HE^fEkq_cU4cJ\8Q/jAgfA>V'fiJ5S!U9Nt^4/#\%W[(+@,Q&>(-E!pU=
"[lu-<9U::T@'r05?_K$.4.D2FaRJc+XqrQ_MPGcRVHqR-1##oI]Ab#3abL)kk=kp,*s$jtIU
Vd<,n!ehp\t~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="502" y="0" width="428" height="294"/>
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
<BoundsAttr x="502" y="0" width="428" height="294"/>
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
<![CDATA[m9G!;;s0H2#m;?tW^B5&QItG"gAs^#'s3RnYMjYPcl%1!KG#ieBN8N\+p!i?p%E^6fX,-'W5
ug*V6lTCW$$m#JlRXCb!E9V!XY,^_DAu!#Y@e:R1nr)V4K>GThOiIr55q,cgS.5Du]ANLn*`@
+HZNcn`:5Y'6P)*ENPE."?P)9IK-66NA%ehU=`\0:0aQJ]AIcIi&hb)2^DL+>%ppEK"ou23F\
0k1e90TO_pZ`PN2Vrjkn\W*1\*(I<0tshPDkfF4r`(ti;,nK\1Mk:G0.3R.oj#hZCTj_o\02
KL8SpkH%OP#;@$)>XO@'@qC\iX=(F)p%Cq-lXaYO03>fl0a(!)5fg:WGLj/+qC@kYsD'r6[3
$;X#B<%QANVqMk`p\eZ-U=D>,R.o&hlU'm/p$CV@B>pd8`6BI<1bg01#.,UAQ?2]A4l)]ATHOo
SY]AK(e#'6Sjo>S#@Y)G`7l_iICjuYa&h@6CI0LG=Bd6Ih:C2A.tR2qHm9C$sVG]AAmV#L5B"K
0dDS:nRu4TCFOsN]A\"T[Pio:X",KP@)ENr8B(L,]A]A8ufrY_>PO*nu==Jl6r@V7Hjqa32]AJtY
SMfVfYQ@a^g8S-\-]A:bNKIlYcX.'/1$&PI(U`@p]AcLu(2narZ;i?rN2`eH4r!eY.(jlcK/&-
\8D^fR5lKsm./WrE>Am<Ms`jpJgP*jm):c#aGoS0M-lTF%5>gf*_np5kl+&NG!?P305POA6%
es847r$KG[,g$I=qIumLp7@;ncqCr.dU^SMfB+&?$XONkpf\Ug'0F`)?WBifDsDZ7B7qks(_
Tc*k4,a('6/Mi2!lnQ#P$E3kjg3F3]Af:oKhO^SDISX*o!6AWSGLQs`X1/[r=(i8F,m"i_&ld
.bd'-]A7=QKI^p]A=N<pEJS?T9$/Ffp3D^Km5PH8EWd\XZ[+KF%Ep"_')A@9[f5f*30eYc3"Fl
A9f!crJ-jiFZSM7#CWeT?"F38,G`6B`#Be.,4*ak.,CLBtJ:&`S.I`kfllf+An5rqpF!I<6!
EpO*DsI<n4edb!Hm=nEjdXbX1*OZLLj!^KC9f^l@8<nVPfI6=EBYH264Cj:g=>kUh4IFU3t#
]Af"R$_%!$V=/\0&T.64@TGNo'<r_HMU`l<pIG)//>p,Yh0Bh06*LH?7h'h\(ASMenD>1HtIH
^tb6[-dBDg"s#BS!4`5:o6@[eKW%Q";-&NkIG#d/pqaHO%unAI`>.K@TVh=?5]A2qQ,*W*T_3
]Aj\K9+GYIs"AJ567%8LACE.T@5-\#!0b29bnE[9m32;NkAR/,UCLZk3P%no&)$?mK2X-fK'E
B-3[=ctI/K2B>m>P^UPj,"1SY`;4_]AE8NkVT5SrI]AL%^@dbYs>.^I#59`Z-qPJQ(46k"ti;P
5+qdQfgmq?W%_fHbajLpeHI%N+dfL'X,@j`A/]AqD!"*f>r,@,WsS,Gr-4o#LXO_Ris5q?NdC
Cbo!G-]A,-[2l_8eTjpC;qA,W^^MD.fDP-b:LG7&rMYB8."odUk78;Wer8B?`jDpQ,7<`?!4=
<YsiBn"Wc#`9NaDk6T:Jq539\r.G1jY"LCE%44Cb+nhar\<-(Z9SEPOir$aCO=E-TFeR@PDA
cj_gS.mD\YI6?WBDL4/*_C+"H.P5SS[\4>nf3(T^*OBIFQk.`6H6U%H9Na7XLo_SP$J5[+u*
7CW\O]A<^gI_8HE%Z6u"r`Q;u._$ZY]AUcR_<(?FX1S9RNG.&Pq.YG"q#7bCGSL<`'*D<XW$'6
0TO5\2@%GcI&_8p!G_rl$G,^/aJ'G4h`gVJ*'`MI4@JOTNEqND^"d(>?J'_71a3Y27k/Y:^.
&tMW=`DEA?9<pYWD2\*!m.9G2:>)$mH"hd[H,YE"%3UTM(F0,gT:ri0m70=&]AbJrjVnPSA[F
o8A&tc&V`pi=&:e#O[VD7D4+B_$NK7^sE?`I^U;Dteoq/;<"f=a@q70_@nfduiu32XN=kt:`
)D;WdXJ:=muT#]AAj)$Bog]A^P)IT'tZ]A%jP&`M,AL=Vi5ShO*eIW37h[.,;:0HT</'d%IIWT8
1`EeeWu%UI:!)B7BF6$a8d+PP3A-(fHtl6h%AVR1@nq1Mj#$uPVi++EY7dLSp+"e3V4l9),O
<OUX7\'_g\Jl_nAU;ouJflA4rsSM+?brDGb-%&`nM><R@gS,-b6sChU8:U%l9&HLTb_"`ng_
`?!hNMr#a`Gf5,<"Hs:,'s<;?3pY]AR!D/XfYhbu#"i7W""/4[ma>Ut9B7Oh.!j5g[F_S)hP0
i0"T%O\)c67tmAlsoIL<2&q^e>4f7+I`RRu3Y6Vi$"A7%FZ4GMYd0=Mh-dqPgH2>n&kK%4BZ
lX96,]AljM&,Vto#aJXclYarIa"cC4L^i(,'WOc2e-7toC(ki,+?aFrpU1`V\hqj#K;cUqAl)
iFV28bJte/,5Dj2Nr:kh6F*4?,t@]AroGVKe1*%k_f2F"/[gU$9?Ztm>==rA"Kj,<TkA*?l(M
HimL]AQVGnJC)UQq7oT#s*V(2e&\Zn_Lq_,btLnOKOL&R\9\VO7CZ*N%+CLXm#6GM3ulGa,>g
<nC=(hVohD+7KD8bp$HJ%>VFRZki4jKh?F'UEG:M4d]A98K/CDG*+k8H%$I?lp9=>8<WcD?/K
OI6Dr+OqPYcMYj/0)tBF?DFc8R&bR:%t-.NrSX,Nl\I86TYJq<Bi1"k#I1Ab^p]A1+bt.43L?
>'"(4lLXppi=@OqaH&Cc>[TPr_D1l^SoiqGdW,^X$>?A(\Qe4B3iQk%e?_FHUr0&T)Jmg'if
i*=ojdu*i:m;eY:V-BV+$=<(p=60<h/!YbW8d=\&]A5jh#bZ8Z:4lg*)'U?m9^9Ct0eGVL#C/
2Brd:6cCN=\&XhhNC3]A69(45m^k)a?AE"Lb2Sn%afO^fV+H7$[,o6Z)$af&ZY=>W_oCU*]AW#
aAUV]AE!2"'Z,S^mY&S)7f<_!q5u"BEnN]A:k>I<JClIJCDln]Aa%(P+?$(#ch.8hr!GjY#<'Ol
5FD]At#:JiY4pBNgA]A<D$-X>1U=sc1#qH`<frg&ir;O<aTu?AS4mYc-L"ATq/'nVCllS<IKM2
:'apRscHHE2'fpk3ep\[d#qNmQ_<L?r#d]AYSE0Cr;*M9+JM&7^[j:0+MJ_Y3`Ap3_':laA=)
$mCfHc[u>0l-:0+O%Z+2q/h.8UWC/3ER?.p^"*<5$D9+/5*;[g4e(#frl=,]Ab.@G*lB$\2[4
"h&<VMJ$2u,&feqW'bQnpeVJ'd5d6N>^4bf^#(m!3a3hn3jX0)F/n8qK"I@RpFF$4,bAEo@p
/_]AUQD7SaMTS+#AYYDHI+O+#d!&bGk@+H^TFu[9rjC^Kr!CDrR$Dji5,RQi/`B#tPqfBOakW
p'*.:>S84F&Dd)3Vg-D3aQB#56hggN208C'5*VCnoLF]AjF_?GH91FK;*[0aC8#>Qtu)h","N
KQ1(nK!+TQLK.qD_[@WPFJoM]A93d)YHlCl3[=m9(!J$9?E[a8oshb/4@or<-;=7Zk=$>gY`<
Pka2Kto1DB+"WK2q$nrG&B[.?$0E+1Bs?[RiA8Z)?RmKFg5RE@;IYf6B46?"hj25kAiNc&9I
&&HM,S5[gAe.=hY'a;RZu=E;]AMk:pm$Y@&+]A_OG-Rd!da6jcOP*`Xc_nN@NKFPH60$,91m0m
04NPJeU^_'KS3>-DGp+_(cGbK7L(.]AM_?1#bSd3nL&E+o-8TTIjZlj1io)/*T&nelnoc6nj@
\8[=.(uP!EE.#Q`bEg=t,dPH31W-MAVs)?KS>k*YB[0p\9;_B4moh^c4l]AUV-u<#KHQ>&.!`
g29GiFS0;j<j#W!f\A#D$)N2,%rU1rt/"KSiqMURqWMr^_CK^n+dTS#@?2gRDe+iJ6\9F24@
T^[?M<BW1JUOQFU+>YHnP<.:K%o[,.?(`8`.%m>1F<',[=t5q<Ol_DFbn2JWd\-^R(T?TRf!
*1p!C4eWp(C#X4iBY*,LKG"g:&CC=+O7"\s*r/8@8Z!P/=)CS@t`X`6TuN95EL9*OfBE;,oo
HO-^Zl3X(]AE\JdKf8-$D]A,eA/KR;KcU<Cps0lQi0*d1Pc"a8h/?8(-Vit2ndbk:9BZ!I^$`X
G]A,`'4EjX`>L9847HRaa,sk""5hsThpW?"Z/dWPS,=Kh['N7?9da32+ub'hK@u9Idc:#=P>P
7#TH.JqlrH/Z%OQKfs,#UV;$>*j"5gS%=UthpbA&j2UX4u8U+SUD-R0ZAmF=Lm9,$?0[ouV0
FFpf4Q)6(R<k(F[$_#D\L?mK9O?eo96<=)-n?ZNYeMGZ_ZQGPN=oXMRqf(kT:[6QV-Z$YbPW
>5XOsn4-A=!WlK$V,1'o";r6?2M;I!ha[hsYb\]A1Z6qFV6X$=Q`,R![5_aBYUh\^U>m%6\jn
eeSiWQ?Vc5DV`Co&q3+/\$9\b@4h7@H]AieDDXl]A41=h-@&-/2:j/sDqEW[TX:8J3L?4p^/L.
'L@)Q#dETi;tR/g2gf`*INDRsM/JdOrd*G:i&7H4N'jp4HXCEu2kGb#1j9>MsD1P><t_GaT)
W9V#)c\=VE\8heQ\XF^oBZ"QmIfG/&@dT@%B-n<//LPEEO+b39_ej&Q5#T\KR&r&W/&(X>J^
Bji'M$]A7%1BF`39C=qLU`="(m#9%aZ'<^>Mh8E]A8@`.3$+"<%.526jB*r:=-B_MHG1%:#)gX
B.LQA.S:CVU.dBt2?/CW7sYpNCu%\p(N1c@)7nV!>0NL7?,qKl)mk2/R<!t).>!K3WQ-'ZiH
0*P]A^MDlTmDFNQF(7>s-p?\N`bC>kRh[arXkeNWE'*'<M'$ir&VNq3()uc]AA+NjCoWEYtm%e
@ijU4@U+Q]A4(b6UZJ<5Dq*/fJ0F6$V:]Aq'&XTs:I?n)n"bT^D/AW`f&c)ScdX)'ZPh\]A"Q@P
M<tW6.(I`54nl/6'd6I(bj.iq.\o[(kF6KqMGX([iqL[bd.bE0gG.k?9*CC[GdH/a<oI[E.f
<IWSG(1At))7$b?5uNOF"F^q%_Y-VVum'aChFS`1tK"Y>.:]AtmWA1Yr]AIlQb1UGE=V!j=-!!
_s4""N&LHY2P1R_h!P6"8kMT6GmP9LG5^%gj-C9LM2,Y:LD2LN0KV>LnjUHt&Ja0ZhH=oObQ
hl'2;c9,fgF7[Qk05"#6qDZ0MH>c_QKkNB+KW$='-RC7]A965U!@X:TOQgt>$gb(SE`h7<qNs
#5gBMMOn371Y]A&82u:J;]A>O5UiCUE;Ld]A#!>Vmd%p!sdX?*t_N+KpS<AP9W.r(Ec_fG)R`E]A
2$VZet)[`=/KS)P6`O$R]AK7(NZa"@Lb<B;iKnC&MIeX[4Ac4(7IG_1Z_&fa$oii`<"+mBA7l
A'nSGlb#VXL>B1/M&K"deXL4a@ZIXs2-brW]AIt4fs/<257U"6\cMciB$!/?o;LaTO(l@h+Q*
^a;!_'c-BU=6:1F)Z:ujV"b[V?;VsEfVaUrR*k)&uBJ+%rE;8U*s!KU-kIW@:iDUWTUc4HV_
B\D%CM?d2_\ZALKMh2e>3kE"4*R$1[3nl&fWFueU!&O<@:9hWWr%C5iJX"giHWl%&18'D,WU
_5A8EiBgF!-:0DK2^3(3$!FndaC%@-6t"2W`E^h39kD*!)%[;D<W(3!K`]APOl$I:s`jV'KC:
&_62\:P7m-*,!ND*J"!h%m[u1eYrb1YN9Sm5UNP5qOoR4J,J]A33N+B_"@u9`b,6;YmdE<_SO
VYt,$nUZBqGELNfYIa(-rib`LD!Sj.M@]A'g54@g[d%hAL_<*W7_i)i3-uZ'n/PL5GNhR3i8\
iX)%I:PB=5*@%&<G>i0H1?.=*-j'a6?D79Q(i15JbZc6PCQ>%k8U%5p%V=/56tdJ^a[F2cp!
![b'[P:E<fl4u5$=C?m.;h,0$YMk:_s%t@AD#"ZaU/Do$U:.+th(H194`,0'.<H#T(q.6(X"
)i44&*UE?B\+f,aU+DZShB9H\O=cR?R[nqlHI.jA(IT:5@X0DS3;t-nW9Z#\#`J"03e>:,0D
AqBK%a&KhMR)R?=\d@*+m'r\pr3kY9Kj@P6nTu`tsLL"R+=ua+uWUbQZ(n%nKUG,l>DK.m=E
Bf7V<!KdQD9qt8bE,7]AATis<nGPB2@@d`aNn`'2ZVF*F?eS;6J:Y8:fI0&meG3K"<K^i".D(
`C+P2mB`.^`)XX`k?V\EcKhSfa+`_Tf.%U"C*4nh0@e-pUdFq"`8U9.+;IkmT1kq$]A4c-2Iq
k*dut1P@dfs,f_']AccoWBrhWcoE-QTkas+$m!m(k14Z'%34lg'r`8A(Zaeem^.)+N.0hOe0P
EhCRaVV'?QhON$6=pRVtQ:+d5STQ7Nt(J5W/VKR5\JAg?RkheeC)Z8fU1=%A4^VR,iX!+=R&
'Z-O8-'@ph0QEnlb:F.T[_#gb_.E4.3c]AK;uq$O&G",ji^%3F7s*HNC&M@_C]AfUZ>#?";F;/
9]A62$@pebMAZ>IP&-nS#9M>H*S4IrmX`PqO1bsQm]A6MAGdJG(=sbEi0gTs"rKiVB,Npr`+oE
[a.fEo5%,:D@NjB3W<hpP4\h/4O\FO\t%r=;G.F;n_!ild:.HC"SqB#&>9<.$QbSj<%7B.Nu
rkK5-qof:'\AE<pnEfQb[%9N0`9sRTn+Qcg1r=>[1jeAJjE(2_dm;Ke2dTkeg,H4RmJ\1~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="930" height="347"/>
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
<BoundsAttr x="0" y="294" width="930" height="347"/>
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
<Widget widgetName="chart0_c"/>
<Widget widgetName="report1_c_c_c_c_c"/>
<Widget widgetName="report0_c"/>
</MobileWidgetList>
<WidgetZoomAttr compState="0"/>
<AppRelayout appRelayout="true"/>
<Size width="930" height="641"/>
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
<![CDATA[m9Fp]A;q8<@+aCnD9s5ap.r>BLVq$i2"BsM+&Wj#@:p-`s@iGQU,2,pu)EK,kN`D32T1Tub<3
4X57oLs83sIm%+Jg>(+ODQ.Th3;O-67,iSFcG'?9mR`S^3V=]A<D.KQbr/SHa!BP^\(fHYEP#
K/.]AF<b_'CZ%(l8uVj9H'@3akN`h#?Y0BcbL4>nW%__sA7^#Y%52XbOa?^AF(H(35%id^F]AE
EE/2R4gHt/MmC69dq(PIe;^iVLH;BUZ2kLnE=AC?0%/c!N'jsW!U$"B-&+`S>8/fnm(KO>9.
'CG'0.=.E<u3Q*f+kIV4sgHHFl#oYJZ,]ASF6qokeqRG&rps*V$X]A-boTnI_M#gVRj0GY@J9L
Z@OhXFAFsJ`8B/8@fZ&M<rDFg2!XhM`&>97=+>C>qjQXb>L8-h:?i9%?6'r?q4cb!YIlro.J
Jsgm3]A-Pf%%dX^LS;;'8p,icB>n=8DK,)g7/=78;+CU,/ftPH*O&aOXbHOjEbI$o;A%]AaGB*
SUp'H&aosH3H(\=g(2-*S+#'(G`^s_HHAnbJF#n+pih1#_E]AW3dosJE?KB"Xp6E146HZaMNR
t^$O`<R,iD%D)YogY*^RZq%n8\N+_X2O,Z9XM0Tp&\)af5':0lX/NG'qZc/$sQc$Di!i<]AK+
kW5&CpJ;ApJ@r(skHmP3uGl1]AMiHtbB3IV8P<D>5S=E%O63J_"J7"SK?MX]Aj[658p9jrR1"+
e2]Au0Dhgb2Vfrr5efUj?;::j)kU1]AsQ<\303mF-"^tb7C<pXCAm_MM:Gi;?2ZfE"e#)ig9H?
faEd1eDqFc3[#m*=,59RZlY=AsdL3Bk4Snh8=hM@M80-9Y"f-N@0g?*T4+;<J0n-)Xn3:p,o
)gR09J3jiqh+a6>p;3n&`mEN$l:pH:c[P^Q-:(Tt98sQo^XE$YH=D:8Ta&'CM0_hK1q#%I:A
18p>*O=Np(7Rt'-gLs.s#qg)ba<hI)VNba2X3;<95c;Fg"`mK[Eb.*RM?4@6=)M&]A3e"9CA(
b%Xq_O_"PS%V#g:t-@I,QsWajHVUTnt-($SJrqOgp>eY>+age=lkQYcIi49#IUEMZf\[QD-7
s/K[;Mb2Ea=8e*C:o-27qm%l\plb;S?Qf385O=Rs'kqC#m.54ESs7Hdaqa3LXjPB^Ec2#]A/k
[)0d9&-`%oB9_>u*:.;Yb7al:hCcJ#luN^&F`THE=J1^Ubj@;fC.)Ca1$L\M^RgpY6XcP1jG
fl#ICqWJWH%o&]AfSF%j4=#QM=S21@9G-1[<BH@6ee/G:A3o\hRoaq+GYY?@Y^6R=_=A<6Znr
-3&:L)^'j5tW3QmhB\Ql<Ebp<!9NJKBm04M-.(?iC,cs3QEMe)dH,i<J3Q<q/jpJDoGi7W\I
uW'0f8tF%VqS=6('38@jY;C;rog[2_'c16H9BYEDr/:.::paX^1uj\J\8M]A/kc<*&\\*nX`Z
,Nnpm<p*hra)T[SNY11)Jk#N"a'@LDH\LjY'fR_:[T;Z`p".I-;)aJ7s,JXsWLC&E$[mLTRM
Y+60tHYF-#Xi+=?]A#q';q/&/;H<b,d-%UZerLa=@Mk.+8O2bnlsbQEH0`UK*G`T`7V_lbg'(
lF_U%4]Ai:c-'R>J6p;LHYQ==e3c3!]A^>TkKNCVM:d^jlkocBH<0mp[6mK-+:9;*-k%=*9+a3
7,nKb_d^Irbn69),IC\7>GI1UFp!*9_N5*VR'>P#3Xs_^h%2XaGh$FGE`tlG@u8^m.FPC8;G
u/F0dEnf3C^.kf6V7qmboCB(?4b,2:<@Bdsds\q<%kH.,IqMa2j!E:a*RUFr=pTN7"\h+ur5
C>)c*7tirI?-!b8$k?h2VdMo@UOm?]AL#(%j2JE#-+*iJ\P?l;SI:uPBi6f6oK@u0)[)QOmLL
rC-G".c)7k5P$PIqi[Uuih\3aALUQ0OP=i<Ce+ohXa-W<,dVGm?3RDSKjEr`6S\*[E*JP`7/
7$*p:K3B>cW9C(0Jg@jb[QV(J2fXZB2XE3B5SLqT0`LeQepSM_GnoA6%]AZ/4nWHe4\Or^]AEK
)Q"8qOROI!ORUJ_B-Hi>'3K-q8QoMYP-o9m_s$CBgs.XU46f=3b;RR\%_A752!/MiiOc]AUYo
YTK'a`CB6_a>CMF?BgWse&a>UQ-DW?M"hQ-\)qlp7pkS=%(]A@4*@866K;Mbhp6\uf(GoP/:t
@;i&`WP)6+IJB*iE&W(LS#glA)eP"_L7mbof:M1o'DO-ZiO16>$P<rQPP:VUiX:%Q$+Yu(6E
L6Z=F`DDXA\PTW#_+W1_,Zn^@!9m+#6q9D-T\9WD97Gg0b73&-XpH:`_tE*<$qSr%eNHYjad
cZ3X6s?mtp4_T3)0AAejT0hSbSs1#TJ+*iA+,K/Bsjc:7S+h!$7OPI"nH8Pp6MGLL;XZF@(N
gQZq<8<+q*>Q%1$*+L3dJg7s>Q:unk6I]Ajd\JVsOU3C.%p_=3qt\dTRgs<i#4tUJ$M/$jDU"
*]A<RGCVQ@;F`USm)uZe3m_IM:c=mH8uc5MF9D/^h[XQ,7ed:h+-@R]AiA4p*0%Xe`1>g43#$\
QN",PXoKP6cfT1@%uUT=4%d2ESDb'@[[<+c?+rWop9dg2[I(X6P0I!$?:+&,b$BBl5F4N)]AX
;*ddkq#jr9R/h.(Y)bRr'#]ACLF@@bH'j&s!igjI!!T=;9)=Xj>4RDBEdJ3hq[>pM!X\JgLG)
Gdn?/$f(Kcr2gTE*)`Kj&Im.tL0E%lJI>a-9<ibV<+1B$,[i]Ai5=uu'cDo@edHH'.rNAkXOC
.:EPs+g6n\^3PV(B*<jmNiQK/]Ae,S:c=9UgQ0OTIU(I8`^$VX_Q*K73aLFii-A[#X[d&/bph
"!([FI?.j`h(VPI=\k\rnXa"uAea3O0$_!A`L,_otu6GrURAK,d6`.BD.Q5P4"d=M-h%lb-?
'rq&=K2BQd:]AC;OGg8=`^%Jl<Mu55h^)BR5XOSAoJ<[;-2@i'-:+3-/D-*iV?KQ7<FILngdh
FAGZl<9SGm!/13cl\Z_E<J1_o"cf-k-&k5?V_@iu)goe_1Ke&/LXHVV5uNikQ'e1RA(lYm[q
Z!#-Q-6^\u,UJ[cVe8Ps@`hg_DdK2+H9.W.8erD*177eDYUXiFibfHeDC*&3E;ST%>p6:ecY
4u!>)Y@P3B2bElY(bFd%+?AOl,,>O:&%;h:>%H+Jnc=LOu65m_Hjd[(3nDd&rc#lk9Fp?lE3
@f>sVRaO1;Ydq\M!th#2Z=l>d0[AJ\72-*EM1c;$0[//PN"mM!%O9_1Okr\5Wo,0)77oZ2>`
+m4jrM!(_CWC%T1:2,s'*b+&o_oNfIA@gUMFa2ZPL=K,-o9DftlmhGSl!FK!TBNLh"\2[\8C
,lYMSk8AK&3,NYio?.;6'c?3p<QU-Hr'Z;[!1nHM_.n\a4?DHo-KC&t0MleB+/d@i?K;)h`p
X$i'$!e>C%_M8-8G<T[Fn;gaAoO_]AcD(gg(r_g=SMBg_rSC/EFkI)%L%Gtbr<qU2>K.2O^He
$)Y[51p_X<GjiOHb4cIg]A[i&\H%#)jY$",S\[)t>7_S?L4K[qkMJ7_WV\8.OB[]ATCP1Ad=HG
]ATd^o^Z7f4-JJNnc`-bGJiIUXV[OhtLBD>4;d3PmR=O8?q_Z;W<4*i<:Bi@?:"HcFu[NnV,Y
nhc)+NY$G)i]AtNip^_suB^VEEH@Z01#%CKIFh'Bk[!T[DCHu0h1WdR-R,]A(E:SMrRb8jY<^\
%7)eFE_l7cFA>nYRg.Vr:"/3_+7Fen7*?.,E0,kfFkT(pFUD>8/P8_rh!CZ:%O.!56dFfhs_
M7uA;R+Dt0:*(-J)$8>DPCZ)fjIUBjC-au3]A/ZYLRghOe8[sK_5I'$cYR6Ofp)>J`N9.W_FM
?=/bf0M]A@#_Qeso=<Pr95,F>)@Yq0p\W>XV94pqZ@X"$"hU!P&,?cGbfSRcg48NO/J("]A'0n
#]A3=4N=lN8GbaU<HQ'1[4K0d7Yqc)?1/k(_m2YP"S(:g[QWel/%VK:jDeNhm<iaEInHbkr`f
Yb!+AFpNEL%ktfb>`Kmr/_KCb%YcJjaVO\gDHI0W6Qd]A%&p5gs/e(.1fmu:V4`BEh'q*G:'W
V4X(]As(/%_1BGm$r4h)O2@nAH@Z=Shp5DSW7nV>(".`f="leQcV,D2K&fHXSgkd:EUUXW;dI
a:o0gh!Bm3/?d8G-FS.E9SR%u-IUN>kCdQjq.<5)RY`RfPlJFeM&&:f7Gnu7OEeOR!m9p4W9
.'@Fo-@_ki$_lPdYf5jE=oOho&V1<?rs*rr+$j+reb6rQ?nnI;EO(`&osnmd?t$3"=lLtN-'
MmULsOVS+$te?/Jc5K2M-^JhG&PI8bRTjJO-/''^%4VgF^gS$:uI>du3t3F$;5&K_Bt'^\8m
H8t[1a[Jm?H]APGaDO,\Vh(PHXQ<eHk$?=F['!Otm)e#3%Rg7><29V/[69/#e,Y1*H[i5mm-A
'r,'FAEFS@"H.:Ec*^!nEdH"MLHV6IP[li?W.DOsgW/U13V4]ArNdp$HCuP,!\S=)@'N.6"o6
!.]A8!sTd3qTQHrMoGR">%U@NqlTe/r4(GL^0NbX:A32@0&@Nh?PCXq/]A'2\Bf^QE6".j4:n^
`8USfeOAbPA*RaG2&7,E83kOImSIcD!\\i('pt8:d5W:*Y#t:]A(@D6<-eq*<]Aq=R1Jni0WXQ
1._uTd`LPr-!&/NV!-Pj8UC#"_r#"mFIgQOppK<CDGJWGiC9@3UeRa2N_<^?lr@ejPp>*'2I
lWLrk9;r5UWDdc&+RLVdq@KIOoFP0/OCg#E=RofbFnEId0:iW#5l6&;%G?&IBrSWQs2T8h2A
LE36?9I5L&:7]A5snk)9YRqaMjHc!US&l@RBKl;92q(&qqffB&%D_L?`cMBF9'rcG_oulBH<M
r%UW0md6R=maT0$hg.>7?)gtf1i;-e1+FSs$]Au)k]Ah3;FBQl?mY<DlFH)G)_e2PBA'F%tK!&
-aWEBR'*O5r,rK"`\BKkrAMk.JSq&>thiTl5`J$H"21Rat\FP/CI6bI2LfqK0dfXO5U`&T8N
hIWjZU0SjSc!:OXmj(6&/N3qLJY-Q^ee%9qYgnU'DG1ZS:TAsJsNk25e#mh"pe%E)ZmAXDF=
Ui%Bqa?\AEgT-\1-07r4_9<XOI;qFQ;*q*_-sJSl'Yt_7B]A(T*Ym\/F0]A6CVAQ7)P(ZI\k+M
n$^n#0l%jpVHqa$F7s&,!.XL\Q+Tk5ZKD$+"gf4le%^hr5S_h0;%%oCWN-?Q.Lr+On+9"mOD
:Zk5@TZHHO)-3qA?C<fjjQc^"]Aik,QX@$R'gHu=*2"Ahso;P7mtQck\HSI,bH3p.q,",ABeR
a*gm!NQjhF[SU8i8eIY*JR*5:@VR[35Mn*mV[7;Y]AZi!OI,4?Wj%2K<GW5;QQ<Wm0P&>+V7(
7R,>J]A7]A)COqjF%U0!Zoa6,2R0'_K7I+EXarEpQPD,!NRds3!aST$;kPd:g9K3;f2qp,$O^k
\2@q:Y5c4TV-29g6+V"IF??"FT.'lWlNAMF[eF;W/<::b<bV<$Bh&g2@S"YbUf@ISPqX$q=J
P>p0(@\Q,pu8_n>9/djpdX^EK0s<Y3-3PS\@4R4g=]AAE*Y^B`oW2?h'/&H$c=S_HGO$bXM,d
p0Y".$V6d^j^g$YC%#'0efScO!,"AW>%0J]A:De\='l6H%5J5P'8!F&5$]AB1j3Q5E*V&0fYnl
=P#.R*]ASN.G!eBgE1Y6'-%9[FK+s/=kXHNn^*2'G/k1eVfFf5,VGN91kh$j\Zd$@ggOqLK*h
p:lu><EBf;:2_N0N2<0"eq"1LG)K<T(iN,9tYX`_oH2gX<Ll9P1k!=M/'iY!;&rSARh3[F6-
AsA]A^c)jZW&O`<BJd>eHIVHG5!pp#]AD@FPMSc-?p#Qsf-!R(JXJ7\9XnHcT^'>h,bZs!&3^(
@BBN?"m9*t%/l#%AmtV'U_<5.T[-X+R$*`sFbt:H[,J#H?@,]A+B@)FY(_UK%/6q<r<fYQ]AXC
%N*FI`kWpdNjs=EWA&/*49brMR6:k08PZ4W,`Gp(tlOuFj-0fp>3S=gg9gdcU8J)cPc@f?`b
"h6=_87"p[b!rl*78Ianu*s8K.;t<hq1Otf/FTjbQCe#!2u>D"@7TV+tRtmDa%s\d7Uj_FnS
.NRu=(!>X">q/2Pcg/J3b2_4^-Bk6j2;rT,Y=W+J;DbVi#!j=Y[57#-"T4(b)mAr*S$,\.C'
YhmYDXoo/6-(mV?S]A2eh'0k0oPf[VS0uC"bS#3R(WqBcMo,"j/>EeDK)V$]A^'dLk\n*<@d!V
Gef)tmu>CLAXZn4e(cKM&C\8"/'78+_L9<LWW(psh49,Od5E;sno,ZC!/4V2;VFG:NeTHtQ8
`%'kY$Ct@Ahomp#J+n._-c1%!dWd&<[dDR;F`qW/!D$B6nM:hlUl6_j-'hkPX`aU%#CcT_OI
HBJ9i%dU!oNu39M.=op6?JRgAN0BN[=r&!%P:q&HShVMN54/qg<2`=CAAVR8<Zk.FXc=S15l
6'Fo0Dm34M0H36l'!_n?>0r(FBQ+\c@*\(G6C*u=2\QEk^uPRS7@)<>,s$]A/VnPu6er^]ANfs
FP3:B.*8/t=dE_*(BbAR!5/-%Fb$9PObu;]A<32JK$tMW(ZcKoU=``PN0a@*chY-PoPO0e=Fb
VWc2u9nAG=1,NcN;c*TEh.g,<cnn-k(Z%h\C`3cHOXu<,X7=g3t;#3QCg,:BoT%d"0l@5;cp
D@'K'7[4lm`.Nq3\Q+78>6jD't7DQ2n%XpcIX"(MY%t:ua0]Ar@TQrf&n=*kL^]A%m0OiZ\RTQ
22ch-pmJt';:-r]A!s$'h*DHeiN6$UdV/ej%T(R1BOIunMY4(T,Um0OnT?#q$eYkfKo+4B'Z'
PIW-FK86q+BLm5`KqR@\O26[t\VEqtlg7B>;D?N~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="501" y="0" width="429" height="294"/>
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
<BoundsAttr x="501" y="0" width="429" height="294"/>
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
<CellGUIAttr adjustmode="0"/>
<CellPageAttr/>
<Present class="com.fr.base.present.FormulaPresent">
<Content>
<![CDATA[=if(len($$$)>52,left($$$,52)+'...',$$$)]]></Content>
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
<CellGUIAttr adjustmode="0"/>
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
<BoundsAttr x="0" y="0" width="930" height="347"/>
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
<BoundsAttr x="0" y="294" width="930" height="347"/>
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
<BoundsAttr x="0" y="0" width="501" height="294"/>
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
<BoundsAttr x="0" y="0" width="501" height="294"/>
</Widget>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="chart0_c_c"/>
<Widget widgetName="report1_c_c_c_c_c_c_c_c_c"/>
<Widget widgetName="report0_c_c_c_c"/>
</MobileWidgetList>
<WidgetZoomAttr compState="0"/>
<AppRelayout appRelayout="true"/>
<Size width="930" height="641"/>
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
<CellGUIAttr adjustmode="1"/>
<CellPageAttr/>
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
<CellGUIAttr adjustmode="1">
<ToolTipText>
<![CDATA[=]]></ToolTipText>
</CellGUIAttr>
<CellPageAttr/>
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
<CellGUIAttr adjustmode="1"/>
<CellPageAttr/>
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
<CellGUIAttr adjustmode="1"/>
<CellPageAttr/>
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
<CellGUIAttr adjustmode="1"/>
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
<![CDATA[m9OL0;cgQe0t*M$;s<=fBapl?:MUtMoX%UNP,,K+VI_TtbUF`&Cd"(F.[1-*0"G*M?u%Xn<1
t$]AnL-/!0_Nkkg_,%:`eoob7?h#X-p%GsJ:rUBA7qMLg=%85jP/"5U7T1CMXARCH`csin+V;
"[s%]AE[JA2\h#H%*(kt3Cb+E$e"2dUO0T8$P&,2guZJaf^SJ[Z9ns,PJq!754f:.gKf.G/rm
LTbhhG72.Ma-$hh#?g#mXNm/4gOHg<mAN.)n/!%r^@PH"fLk(*RP8@N8B"QT!@_.j0-aFiek
E4]Ap6+W,H$J81Pce/C:JO@LVqIL@LhK4;N2DISD9":./!p]AMp8['A]A/ZLD-Y73>d[dNVE>3c
U\Rl&9d97ND-b;C!r%;JW[jqkcNiqApaJ90IU\nC%84<lr`@>"1hN$Z,FhZSR:=ohoKL/j2H
j.l-LPjM-G)<.cb\A,M^mi9c38X>QXoC$LkG$A9.YtGf(M[8U'-aWp'S^5j+`L;k,^]AC_g?a
l>"R^4%I`]A6f02oR<`i=.EY=i2,42D>(8=%V/*]AdU?.B@IY\V.mrPl";cts"6-['?rmN?!kX
_'_qp]A+ONdf$14]A!,Lhh00+e,_LpD[`8snQ+30^ZS)[uGNP1PW.2UH9?t;p;$^7krE_[J3"R
'C*Chrs4B\"cK8Z;Zm:t<20@(7Up)Z)dcgRmj'u5m\>h]AmeZ=ben0A;W<XK.9)j2ebc3lP-s
TuP_BkA(0+D<,JrpJtkDLc[7P<ap8qO7.t:5TGS9[:8j8if.kN[ARKPV3sZi;.;o7<c3f*D"
RjRXRu_6e9_(39>)Dt,%EWQ)NNm1`1>42FJ&l-k&hB(DrkTL,\Z2l7Ht9L($Q\,3cp!oe'PM
.$CQVu[S5,(4kI)M%pG%e#</`[[^tA:Lp6H(?e/*GZDtD>\VG6N(tkeo3T?FN?QQmp*B->Ab
*5*JP#k!5>Pk&AAlf]A_]Aer:7aZc9JL=qV=Oc6hQ9>t)hSY!Rp)dGA$-f+?L!'Vc%(Es>QhlE
-LS>H.pHT$B8:-EolNo+!o0WYoSfM\mh:XY*g0f4Pa]AL@'[bIm_Ch0.ScIU%\Njak_-7=&93
8%^(SpTp%l;n@X%_4K?X7_Ua@BI\:VTt/^^^Vp"[qG'&^7?6GSZ+'6HQEjWFHc5oUr%[2sL@
i1S<qkmd%I:C-nhM['q!/7Z%:6AZmK^BW?49J0r\]AtgQ&JNs4f0oo3']ANbQ`oH?(B.%(2W/3
+lknsh-,";9G'TLi<h$`h@]AVZD.<7?*oq.o->-<Z=Sn#sV+)C=JO`%q@X[kR^EbR$"@3*hDF
27BtiK#Aqd/;Xtnf5%\kt;^'4rt!MK#.^G`CB!%VBOfL_Iec%/]Ar;Ih7r7<&3@ic*BTn#4O8
#gSp(hG^m;6:/MGsO-?R70%PnRIeP_H'3ap..1Jd]ADp;Im(d6ahD8F8qCjs*NcEFMi*G3d2Z
htoEYJ%<AB&@>@BIo/o*O7am>hcu,S+j,;+d[s#6ckp_^,>2&R0F_gr0=dKb+Su^1X<pud2<
\f7a-i!YjPDT/pPG.<Fu;\=P08jRhu/mu'o1js"G?+k_BLnqmK!Jr9M?2EaNfQ9f+^Ip8b7P
8g8(bJn3Dor3.JgIqF1_Z=Z%E+BFMspbPDB7'^kqt5>M.iqt1n.=P4L>pS%M7&>Pi(?TNR6?
DO/rPI*V<#bpOd9Z*=2ImAXW@9QZ+,5i_CV9eI?nB\W7f67[]A>BB2DJUE$=WtgUXCu=8s+Bo
Vc)nM1hbN$dor^-]A4kK[rc8pV$TfI,uE/7lME9"Dks."\:3=^nYnLYIHYM=*CQs.We3R&2Gi
cheM$m">m'_X=G(GA_U4cMX+o(X8gl<#D<p]A%'^1]A&h1OY*sAhk&f7O'WM(/fW!=HWnKk[BM
6RDUsB86)(GUfpuA]AmZ1":,o1#@gkPP#aYC?%$lcaEXG&htnJD.#tRdjYFAo<#:_3q$RoI[a
#El2f>T"<!"1m?tW2<IdH1.5`hoTc!A"ug$265hdmh!\\E.X#p5=h6\mo/Z>";oP;+CBgsB\
LWc6+^*jHOHP[qKtVL*YNY@c4mnkjM`54=08h^q;1]A5J*uenhlm>qIo]A%YTi4t'`:,>Ris$>
^TDDmMq!*S"@bK@YQ+UWp2RHFm/2&[AYn^sY/8,;^".&s*UGqK$tHk$hh;_4b1U!4289<$bI
(X<\[S4sf2>K>7M/S\D#SnYDgZDiU%@!f.8Si7(9ar@pDj*AH+'LZBjC0q!&'p4>aM0[eZqk
\KrK:ZeK@[7kSMU7rGZllrIS^TH^+6Xg%D1R(6[s%Z+FUuA8\/TPOh(IB.dK&O2Q'/7<ZQT_
gD[r%qI-OEKERu#D2qsZSSjj>h;lCNt@02\CAegWN"0Z9EU4d6/&^"Y@/\o95@;1e[mK'B&B
:*H(:n^b9ad_jZ$CW)Pm^li:iGKd^rkc9Em0Wn;k<kL%K\jjX1URi0e5f/3?4MsiV&<)UYEi
/mh?4D=nH9E0MVZ=Om*Rsf+JY]A`HjXi=Esr`^Fq:hT2q(U)(MYdOPOsiAH*aWSHRsZZJ(frP
#n,\BiUKI-PLYQ!fJk!HeZtDHn([nlT`9>'q]A3S=Z&+f%A;WgD1IF@uleI0CE_#828l%I$D<
#]AF2HQ*Wb4.#9q]AL)icL0,^fUn7N[Zn_,UfCt8G>\r!%e(2/L]A(o2iQh-)e'uQsCD;)ECWJn
+kfQKj@o'>H:i,)75KVj+0sh!e7DWA]Ad^%$/S1P*i:nWKTO$9bfku;&+&7,Ufn&AoJ@&!t3P
n'ZCf<iLtka&u_^]A)?-q&#IYJ"k8oPfs0pcJ#Wq0R0(8Kc3STcpJD4^%_fPjS)+Q@Q?KMFAA
e*:R)@;;Vj@q9ppHCQA9Bf[qQLWSBqe\h]AP'se*kp23,QFtNIq,SV>VB<?-nrjr1]AC$Wa\5R
?R1(RXt[Vale+T!C`"[7bGGgBcWZY>n5Zpn@2CaKR?f]AX9@$bU!pmRhkPOp.Z?5(BOB0WG#f
di)>B44qrP!N@&:reBe>H-OO!:JRet.EX/Yi_uIF6)o1ia.Gl!<6IrDWG#'o_VVf+\)uh/1I
qTDQ4^<mCr7`bKi/P(&sh^$.?NlP+;Rc3;<H@N!WkIcn0o6nDo`2q@2af`h0BD#o%[iXn]Ak'
-pk7R:`o0U-u@9c:N=ZmZ)Z('b1sb9ajrF$^Hnn773j'@2OOWAYbUu"nJTg0dVDY^f%%<dYR
QQ%/%G:L1uq-S_KsJ\gpNAaY"3ab.*mSBbWhC%P^cek;$X6kl9eU@2RZM(FK4t,lS%tTOLPU
+j^@L0VY^M%iJT3-Na'HOf.gW*/T!I[70B.#[Piuj5DFWIl1391COA_LLXf1F0-\!R[h%_="
jU36m3dlVLLhrAI]A)%Xp/V?>;>("pHBDN)-A@G3\r]A]A\hF60l9&p!:t)+D,PUb0-47mbs&N`
>3n=so/9icU=mrgeFX_`8ofd';NTBuK0]A-4Fgrj\=_joF#3%$O2ZX"sSYF?b&3Gk.SFL,O1o
>,U;gpd^7MY%Fq[fcDW@ON%6Y$gu%4@^P7O8Dm>h.-9OSKgD5@t<i@Vsk&NJ\ef?ZE%G7=6:
A;dUG/TJj_'^/Ai/PL&4\1!;9TR_;q5G&^;:Q5kEe"(oLk0s#q'rZmUuacU)4F>*In)^hVX2
B*lbb@Wo(0he/E.[eu<Z5:oUT\He4h^GVX$MeIAsOKWQ/Tp"9%0=`,uUFIa^UmE$k%Ii%B+'
)s:=Z_;>I0pH0CH:cG"#T<3IP9rW_0T@5ch17&qM&L&YUVpnie-PDE"5!#7@LD9<ETSWp^]Ak
uVmeiEbR9^_X0pC)Ug(-q#.$q)*G`X\ZTtS6_Rsp5f$KCX&!_7lYHa>/E,S\1/[)FA3$k:L&
aoW^K$6:aR2Z$E)E*O&H:PZ'g]A@jF_SHN9>@.OkVpfCU;a.lap;q%0Hs\<<1W3c56*`o<Lr=
K]AE27k"EUZ!PJg&hQc2n^GIZUD5)P*Zc8Cm>Zs'YhXBs;otV;Y#QUgl%*M9-V">GmRYd;p3\
V2!*V.fH?W0=g4G5\L#Xq$JS1#H.:-TdK;]A#`Q.*^gh#_AH2rZdSGhg$c=GQ_?OolHk\FYb;
+R$"Npj#1=LEV&(O&0_4(_,LIP*$Ca_`!,(,ja8qU2<4H>fmSN,j4Zloo[$f?N=.3X)H;6pR
LG[kcH=\>4c,.EB"0Mkk@@$RcF,>A+VkS-PN8XOu$1(Cib3`ErCR;2T_,r9BKWJAQ':B4`D,
]A7gY#_^a5&#.5:S*!8]A>\jQ?&Fo6m6/OLkFG`U[`O'.Kol05s+/QY]A.#eCm^GDT`LZPI'UW$
+!3TK2b+KHpm-!0tMX7Tm?8l-gOJe%W9r4k!$#A1B7D?VVkJiSVhYBGugVgnr2[V%-p=C<,#
Q^125daAe_\E*MX1oBh)5eP!r+5m>@'>R[gV(Q54LjJ11?b[ALj&@R/fdE<A0`X`T_hi:Waj
S>$^"`*(*]AeXW:;ok)+sBmIVG7S3Y6B8N8>inOX9"+Te;NhgZ0"qs;OBs^1=Z$I73P:.5ZI[
m9oUckL8'M#AAkJdLA+JqqHmC52*%GQ6TC&TU,]AX/C6VgQgP5WP&1VZ*o@b^0=XA;@#'$\l.
mI#"SjL>o#SI%A)necMe@_oYf;?E![&K.c#sLAtVAbaVDX']AL.atIlUuMLZBDCaBapT9^o:;
(+'2*XH_\*%`XZkpDgc3G2_*?"e:rsJ7au+#jCjLi!5O)8.ZZ6t\;+tkhO>5`&gd/Z)Me?`f
5<jVMpnb00WJM^GGJru]A]A5l(-Ja&D#s%2m:R_4'h`XCNXN?@T^c#c.jaOBa]An0U*AlT?!hDd
Rn!_OAra%2->M+IORnS+@Aba=3I,_?CW5o]A\V)0-%\M!dFK@fGd)tT\\4mRfMFDY>eF\e$-c
4'-)\I&1H^/fsMBej!XbWo/+@,Xk,mgC$X%bi#q5A.^03Y%RQu;5r]AA)s7\g`I\^RhCP6ji^
Zq7YA*]A,P6!YeK"Ca,'IVn[$:c@o)4X#^e]A>,'hS*!6fk6)Xt.G3KQpQR_RjO"7Cm+`_L&j@
r#;;,6R\iKD0b@-46g5Gs4JB^bT<C`h]A=hHV2!<$f(aCD$jn;m(*&H/cFeM*fBW]A><ZH3#Tm
-&<uEe^F=[`(RXah.J^@%?a<^"SRe,<dX"S_WZLb&'\@5&W]A8C>*a05eCh+Z\H)&+Fd.2V1.
L3urthh%el2gI\p>ArCF)gSnkk,FX]A_/_N]A+Oa)VSB.aa.3<T:H&N!0YtZ^"7$(NSoS"O6`,
#*f0;V</'uV%e!P%hqS5R=6h:9(?F?c#kE7GMhdT_Dh9T,KMclo-X<cn#17rAEQj/9`lS%HB
lpPk`+&F1OS(C['1;"k?Nd3T"ipTJ?a+Tb]A/e38SGVM,_+:<&:jT=bS(Y9@7a#6DWPaNkUPk
L/"0!*^(Mb::#^rXPku\l)!=RkiGCQ@JT'JB2HC/P$-0MgT"^hq_Q>*WfY/P>sC#&N3kt)e"
#19kVg.CR0@U/Gs)D:,b*6u.Wfc;[VSmX#=lda:VC)pqPbDSMf1($:BAN_u&carLd,Ed9Xe+
<78lM;25D+O=HDJsGONUf``W=YIq6/@obPr\_m4-Kkfd?76BZ:s,V*DK)fJmDl+/WWK"J]A?:
`L+:u6K6`)5^p5`7g![;KccuPupQsSp=VfqFa#BDi0gN\f4bVa!.qKX%IGihND59@Hq6Gt6f
gJA68d2/)[9OAWs*)Oc:$XLcg_>>Cf^%Pf<k%q>cX,ZsmM4\_Jq-=l$-B(R:<fe[FI;`,cPF
'CcCpWQ6ZkeO"47/.=Cm2`Osf78?Q8K'<o8'b!YK%O4V`"DL*J,ian7r6:3DCC6#%DFT+sp2
?Z_Ep0IV^:#tkf:p,\I4HkL=?M'ZHX!mDAcGm<=S/>Z?5cDGUNV-,mkJRM.P"]A5/6X!`J]A%8
c?8hh4q3,>Q&!EWV]Ab/[7,fHuCL;VmK2D*S3R"m?7`D)-qS(T^2D69A(KT-#=)uNBKahEq-;
51_N(BZRf\#:eThB:NN>Fmlng575GPp.r>&lot3QS3>u825iYk3(N2AekH\ZUM8g<"3(NhhJ
F`q=BK^lqX'lVQ#*il>&:_FC0Vs]A;GY>_BRmA972Fe<=\>Z!jQq]AHKgA>^,@7%(pAVO^UFrJ
"tTR@YNmbk,;2mY-Sbq-fV*<k8NS+c!q#[D9`>U+sVPI/.%6bSb>C6XSb%%p9\e^S;u/1R7r
7cd;8Q';K!554+<5-!QO5q2i@E"o;-$(gS5QkaD4&L13I:6Mn#)T`1%[9'qfYKFA.NqKD_!e
.l0p?u!m,uA?R6#V>o"BOF3"k(`uef7jC[LfE?m3maG#-A4qcZU2`L0n#WoAp$Lh"G3(D?)n
#Q"&9^Qh(EOg'UXLN!@Q-1d!$q6\`H3kk&$2=P9G5;Ne>sBR'Dc>^KDf]AjlhF:&p!)1KDILA
V+JhMpJIg"C<ZQ+sdO-*Es8N.iDo%#5VsKGcjf[X))H<LaaR]A3XiZI*V$/Q]AgSu*[/i`G&S>
Cga\EUUTE?c0F,BN%))Sqo`opfr&jHmA3kW6g!IR%TW3BSrP#ba6^,@LGXN/,\m!XQUPl/o3
R4"<n>`,qsW]ATM-0]APS1rHdSeq(Eb9EUeha$N~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="501" y="0" width="429" height="294"/>
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
<BoundsAttr x="501" y="0" width="429" height="294"/>
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
<BoundsAttr x="0" y="0" width="930" height="347"/>
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
<BoundsAttr x="0" y="294" width="930" height="347"/>
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
<BoundsAttr x="0" y="0" width="501" height="294"/>
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
<BoundsAttr x="0" y="0" width="501" height="294"/>
</Widget>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="chart0_c_c_c"/>
<Widget widgetName="report1_c_c_c_c_c_c"/>
<Widget widgetName="report0_c_c_c_c_c"/>
</MobileWidgetList>
<WidgetZoomAttr compState="0"/>
<AppRelayout appRelayout="true"/>
<Size width="930" height="641"/>
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
<![CDATA[m9G!;;cg[s+kl^)_ejb.[K]AXMeN-tAe@$j14K@eq%V'3i4/`Fig.K%Z.#*KY-RZ@2f!-,T[a
L%r=9[E`&1Le?84&Z<d%Ve9'pV:rTF&pM3@*Z2-g0oMO8>g.BAEjW>l6t@b1`GW^%]A"NhtR(
u^R^@f^(UF\\AuT4#kGdS0>0%]A5t8s.K`1P1qnOQeN_\Gj+A!Zir5/&DXP):[1bX=0_N`iEd
(CC!aYV!&Nm7O"@+7-tp6'!*<63*K]Am7BMUt3*;ia]AE0WY^qMr;&bkYJoCg0m-XMr'hjplKp
)X)CQ6AMY`5dJ)T&fd\#e9\Z--('2eT7AZkc+fB'Eji@B`IclKuKb1t(L]AU0UI$KY"I.&Y-K
bOoCIQZg=kidp2h5$,rCo2dnACMrtZD07s$Q\YREI)S6(A3!^b&Sd2*-,U\s(QbH@V?#sR"B
Ll=2d)GZZq:/C$^rU>Ueg0qZ`0K!17dV1JfjClS[ZP.&%iUD*)idpDA3;P2o#<.c$[6+(0c1
[h;(-8PD&PO=nPkYQmUiZ8Z6!F6+8[Hf5U"O=<^(*G3*nScT[<6Sen4ds4Y+U*3L.!)OH]A2"
(/<%*(Y8>X"[SHRSJldj^@:Gn>`O0FA;?_Va[97V]AO%%HgJLbhiX&*>M%_Q.=SaDQVLg>0IN
_HpW1@Hrf,&f^X]A;rTktG/jP#eKdq]A797-/=mmS\d;lZH?U'(pJY`W%2m,4XJ_Hh/6H.@XES
&X,AkY9\GUJ_CH)<.$ABEZu*KP]Aa+a1LWDgPIilj<$R=BXSa`)g:H@:rROs>&QU4$'I>j"X:
qI+m!m)QT0MhLd\@#+[(+[(s)$;p*+A-Tc$q+T6Xp9-gPaqEX^LH6Gk+r]AK#_lMm"+9kX[t/
316d$)*p9IIj@i3Ws5C@Rhk;>ZR'Y0^?gIR=5D#>m#%jf'dMf9X^Ho=Y^M;Ln664W7rSSl`e
0qb[E)`RYMoB]A;7CC0tfk)_CXaRW6^-:#r([aXT?b=`D<Z.jRaoW=iRg@b:U7X)6OP]Acf/*h
NS9eje9-;hW@@%A>(LUpO):u,e%<?h;9,ITe'UV_I7<e$4+r<>nCeBR_Tci-pIRM-7CSS66>
\YuXLZ7k)mYC-nQUFN]A6s+bP/:Z[IVg@i%bII`3tGd!Y(W:#ris,#[_e;V+`f2EZS0npUI'T
L/a8K=en)59ik[gR!6.#ft96i?fs3lA`<AN@(pa.q>;TnUG/"/k.iUn-m\%@Y-^bru-6mMqc
9lrWp1TfW'1fX6^mdI/CAB6N@/!4pqF<^\NX5n<g0!;-9c6BV[0J:B0n!IP&Pbh42!/ik\j(
Q.B\?A=#0Ed!K6=3B=Q1e7AePr!In8NLK6RMk(/+'FR70=:ph\pBC>*@h=]A;U2L?!i*T^Ab^
AeYt<+Cr]A:%@1u1j)09N"%okd.dXPcSo/DR:qk]AliVdg@.9^^m(ok&3ll#fhP(W^!1AS.<;f
[Xo*`QUV05(iY'[O"\dflT]AL+jDA]Arg#%D>CP_^MfVje$fN*)nGf(*hJ#jiU<^1m$#%@.ICE
^Fj7H2!I`D&Fd)_"3B[LW%^/0Q2[?S@aKa1U4dcgCSQj3)#Ue'$OLc>ss?HXm,/!='gY@\jX
B'A6:Kj[YYC4o8T0*/fChka7eGQ>*=&oUTBX`:s62E/&lGED>Gk.VdtCC5(E3^BZ.=>'#mB_
,h>%O:eWp#(%pqX)g?6E-j2'8J6R^7/V<aWfU@t&t"CP0YM7)S,Xi5bYnElgcc*7LbDrq+Gu
ferdZ2jG^=5^-M1oKTP$?;Jl%95iWT!o?O*G7^2oJ77C+1_kVC4Vrm)_R(_BVcHW@arV^(c!
8_;87in7F('LGi7SQ,mIq*fS?m:KS^9^So%J-UWp]A1)B.Qs,TI).4]A2bg.T!l%N&jDRsELWR
G[3SRJFHdUrCqGJ"]A<fm^.0lmc=>o[;"=DH-t(VC(S1kDK6AYZF6N;n)dITZ[#o[c^Kels7.
,&4W-Gm^&C,[#9thLFfdh`H%UR1#t:$>H$psldpD?i%3//V3I-!\73Dun36(.Z?JJG7X+:2e
P(4GFUFg53pM&S(H*t`B0B$CgZ:UqM%I<!&k/DHB3k-FCV3>(*_ru(<QXtZA^Eg1&5a07(;9
dg@ed\;*s_B:IU\4PR\uXR\SKtfT_*$8V+1b.i,EpW#XY!>7CIk9#d==HD)D,Co2$n:`E@C+
`;Dq]A+SS.9NddG9rn@'XkeeUDq]Am`j<VPEpd5'<4&fN>db*hWT<!&uipi$a7q3bfo1BpG[dV
dH2f>'C<g=/>^[HV#e@4-GRK5$EP%#='iTHkfOGY1Q7+1P.+2)4k]A,,Ghl">K`>?psL`q]AI"
Hm,M&'B]ALlRomiD3TTLeJA&UD1"#>/mJV9l8kh>aSZ"p^L^KHO9qXRr89IDD0cn+9_E/1D)3
M"24XK9Zu_1:m2+u=>FED/2VY.%Lkrj5&]A3J__]Ae-B`/9,2*lqI4@j(&g19*s8ND_pm-M!BI
4`!eM#KE*ha!Y9p0\o6VCV@'YGC+KXBqmYcH&KNj5KN.ZiP8o`?@ru@.$eT,rf2R`U@q`XXJ
7#8$MFLsXEHF#;Y3-,=rj7r]AO9dW+n_[oWNS84_SW$7M\$rg:pmCb-IRbZmM%rd#]AY5,ll?"
dX>Rc:U4]A)D,Sain*XO721TRD;FE"K(k]A>-2TS"H9\8Ol#<mAqc"S8HFE(`.0%)on0GYL=>s
KJDi\YfC]AXt=8^.DWt_eb%:.NlkP[)lZm*$/A9g*2EQCCYqQFZe:G/shYCfER,*".(hqpg`U
dV0>Mkls*W&DH?M;$@JE=3V3nT\eBIjfrZZ0s;;SPq,-CP2S`o4`]AAlFKi23h;2V2s`1hq[0
KVFu^I:Qc_DRE.>8\'ubZ$=SmPMNc*I,DS4BokME',@>tZhhMr,lQesEpG*P%JXLhd7lRJPc
Yf#^R1KOP?('(_i6F<g9NGLoMF;c[dS1QRCrm>MJYk8Uefu9C4"IHu\.X2g2Xbsre_po$;qq
&Beb?WokP*o4.Wns"SG0RO=3JeRErc@#2d-g/+[oc6E\aPL#ESmO0]AZMn?TX2$0q\@)IgI8(
aUo`<*l`jFtgqfeap9Q!hMLDOS4S=KaI%plWM5'd'rbahX/';+>KmC-HXj)pf3j:@(JJ2?44
RcYLb1f'r!m:CG3c&EoIC6=__bgm-7?U9dS5[oc-&#oK)HeCile481jfD2RDjX$%"d'R_Yjd
7V?eg3X[4/5+cI31L-MUsom54UlAfdLdd`O%28+oB$#11S^Wf&dVWYscYUIrdN.pdr0AspN@
cAdpF[dN:87B;t*71c^T4:WF1&>d7@YosArO7sJ/9VMqsUf/n$XHc"2!?tKWZMb+#`4M^UTX
5HMgFSb-F0JC7q)+6+Bh<]AlBLoSr7PZ!mKZ0/3io10!W7?Sk=sh+n>;rcLT,I566uh_`e"Gf
d3PHJu_0q&9G`l&5r7:gca:^(rRVj%Dp:2Z%"ROrS*>N.GMK7+1&QZS\=LDJB<sIcp=fKIcr
gMKdhNJ:GGDB98csW=F-sEJ%V`Fa7UG?V96?YU:(lS`b9-M=\r<12TfBJ(LkOB#'Kbcn`n(\
L1]Akb]Ar/'oCP*b>llPKp;t3+pnNLGWFNEQ.(T\qeLr1h<\&R/cS8_NVGfk[9e]Arbi'K,`7B;
FK6<ORgtoQ>*k95M*hCjI!YPVBdSZ3UmaD_K-Xr?9><5EgT39q:Yj/!X#b-cW:s#K!@fc@L&
SQkFA8b=;Itq6s+79aE(4NNnt9q2YoZXXeJj:*6KlcnT'#a$?pN=.g%mh%7&)Ip@e5)QRU/,
+1BEe:NPZ?;Q.;SlbRHq.i\>JS_hO$c0Ip;:Y(C5jR:*6OpAT`IMlom2HCgc%Oipr*V/_-ZI
KuRZS_r$.D1)O3`f/EGL7h#D(-0n*,,X#:krXc2=`Pr]AQ+81l!HeN$0NqauT"Ok,W92;[>GB
:aq@EOZr@6J2-$o#J\m4>9iA!Z/*CVaHUTgoBMd3Mra[j*[nEX*/k^&M_^REU3Xka,@i+[%n
Q;bap=S)gPB+UB89JI)T!D2dKiP+C^*)E,"J83b`Zhon"s!!%Zb=%c`/I!jYPEa'i;)]A@f4a
8E@6,N'+Hf3Jq4b'.,C^PUFiCgo@PmQL#f4dtpp6"W,:M^!@>VS^HbZhpa0BKuc?@pM2,+!Y
;f9cj:8'/Ogm;G9uc-lZl)6lS<0nU2I0-"\k)Z4)G1=.MY%."9Bg<Sk+cfVFY:tCoj]A:k=`)
6UDMZ4-_+(]AHPd7\qsrqQK&h!2t+ZpcQ)%JG"@>=?FZ0R-;j.Yhk(AQ*iXu9B![D%3\L#[)Y
;R).nRFAD;mE_7fgH9=0hcS:o)lG>LP1b&$QU?jaW)n.HPQ]AIluIc%H7LqTA_,i4hba5@#&L
=/84LPF&Nm6t6ruPlpQ+D8p7V<!@`3D]Ad#Tf"c=jl;jE*#U+Vii`m<kSrSOc\Sp0t4UXa5q1
kaRK>%Ab-Ms4tM5@%0_N9?\W/%:H*Pq?[dk4=/KiX[H=l3m6WaqN6d,5JOaYm'j9RQ`;,n/E
[>]AZhfMEuR\?Y[5d!_dk>pa_Yj,Q\2M\4J>4XrbS[*S1#hK5J'3ASc,^<[YNCcBp+IXjF,#J
6^Xg'DduQg1&.GW.$^C?8bo7EaK$)Ig^nQeHfQ<(pMS&:tU:]Ad4%BkR,]A;Y4p7p;dd>Pdqdc
-T7M[L.j/BiQAXrti8]A5D>]A]A_FXd'T^>4KhCCO4tM)N0P?0,cm-P^g1`aE3,aTc`S@)"+L&L
7a3!^0lH`D-_Gmg,$VgM<)2('A$>p%lN/radGiOmD[2$@WXI6mPU+]AC)8IDFO"OG"H3-El%O
5%+n\Kken3CQP-qbV/kVeGnab(*+#<&A:#SDFmPM0^@3I%\-kQe3$M.N,q-f!Cm0J8du6gZB
X3o8uT%>P"uek9+Na6ihHYB+>.a!)*;p[67\G%XHUWc:0qb`;@8NPOs_?0D_UfEm$3io*j2S
joT-pN+Q0MI!'fIDYtGBU1/04BnVp3))%&$a_iI`7='2Y%2M0b)U:hrephRc[Cd@F4?b#AV1
I[.2"DT4c'6XE1sInr6!HoiAt%@Yuup:\9DMXZn)#fY[IfCUFWFGZ1LI@im^M`oS'aSXG8!+
`$\_<V5+.Eq*!(g0l@ij/)r>bX!KP1.,@[-PhHi*g#tu`T?a+%Vf+;%%NU,dIkFu?eu\'0aK
t'FP-+u@Y>rs,;e]Ag2/0E$I9M]ArB<oEY[C.Alg>aX`@TlhP;Q#nBW>fI8c0(<#'Uod)7Z&9L
Fh:K'E,dpC1F5:X%/Tcooe"4NScZK7_(`-6-G=EMk>WD)5cuX@<AbPpJSq1Chd&4EqTFG18#
RLH"BTIekRi&3KdsJNm\[6D&i5%IS#;Bnl(9o/bQuaU,*eP'#%O"`p)<=0i8F8+E0%!]AR-k#
Z1c[c*)i/`+=;!V\X6F-ggT;W*ndge6TEEob7i6'[_5=Pi46D\6ieH:mr-F11@obpKa:XO,3
(VUu[//\$C%Y[X/<jo`BUVZK%Z,QUOAAOSR+r1<D.510NWXjm`e,bCBOBH/=0Qo-Ai'`>N#s
uGCI]A:#MKCL(_D@An$*!=!1Vml$=Mcfb(HRt@2-!mA_=qT+rg6Cp-O?:j>]AmeV%QQ(mJ*S-I
3UdE\6fC`MNf^l>7j*o%dnO/b%p&#*3GHI!=>$[:g?"V*:_YGsAT,LL?fm4Z<b=_P$8D6%:K
5Ip9:/\l,jhXWUP(,G'//Sucr^qa%-SNPNE7WOALJ6rqdcF/ioi]As$'p6k]A(UG&5F+t^_)gL
r+=@9DMR#h4A\f38]ArF7"(H!i*6"NtBd5u=3n#tbs@NMl%L[&MEDf4<s(Yg_j2e6F/\,V1b$
'(&QX)JDt@Pm^#rN76i_+'?h([?7Ree[i'EP9IL`?<mj9/CYhdA>QjEp_ZNY!kg'<FX.VSFI
@YseEk3u_@o.;N0M.eNb3rIVfkG9fm-I#c$KB5f(Z/maL,N(rK]A.3>\SZu(^WLs=)<<!g;'A
ZZ.gYN3=;'m"Z'%(1u%'9FXT1^Qf"4g&stH@p15jX*2lUdlZOaGf3Nk8NX+n/*h-da7!UJE2
?`3(^4![S5UeR7e/OcCc$1=0@jtR&9[!_")9GYN&icSnf,s.sAZrmp\,V+l/G(fnX"mMq]A#:
CaQKUEXT@`FNLMgmg_"A2ReZqhb=NUoNm2\(hW_k9'+V:+Ggf/&gH$0;mN)gW2Rka.(OUlLS
#9Ia`/EF8EY&bKQYSft?\?9)DCIH>%9i<lKU1N8rRR2gook$[m=$6qSc_o7k6r[:ie\ErZ0d
mU/E^e?t(Tdd;22kLN2,LOjQ6VatXTl?Xm5OKh2g[?jD`HtX#rgU;33(4!@U!)["ol0:/`(<
3(Sh;/lOtEXQ;AD"SXq,m@KJ<m0$9Kr+L`H1:Q+uCn/i_G$$7E%j2Vo<%tj"mbpFd(Xc`fjX
c+f>&/e`=.3]AQ,*:tWE3g:L?*V;jU_@Z;0&RHIZ?F9i@FcqI+P#;K47<rSN$:1pD"kM$e-^S
?\)9STZDk7;0Vo8cp3_K6M[#EA$"s#!B="9u*YKBC(YSilE-H<(672(hlachr*PSF!Y:&Or+
hZ%jF!rfk1i[ZYrbZXMQrrN~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="502" y="0" width="428" height="294"/>
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
<BoundsAttr x="502" y="0" width="428" height="294"/>
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
<![CDATA[=if(len($$$)>52,left($$$,52)+'...',$$$)]]></Content>
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
<BoundsAttr x="0" y="0" width="930" height="347"/>
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
<BoundsAttr x="0" y="294" width="930" height="347"/>
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
<Size width="930" height="641"/>
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
<![CDATA[2017年三季度热点技术篇]]></Text>
<initial>
<Background name="ColorBackground"/>
</initial>
<FRFont name="微软雅黑 Light" style="0" size="112" foreground="-15225665"/>
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
