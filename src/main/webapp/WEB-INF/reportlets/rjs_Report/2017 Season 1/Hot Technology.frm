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
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = 2017
		)
		AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`CL_BIG_DATA` <> ''
		)
		AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3)
		)
	)
GROUP BY
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_PROVINCE`
ORDER BY
	`投资金额` DESC]]></Query>
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
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = 2017
		)
		AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`CL_NET_THINGS` <> ''
		)
		AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3)
		)
	)
GROUP BY
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_PROVINCE`
ORDER BY
	`投资金额` DESC]]></Query>
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
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = 2017
		)
		AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`CL_CLOUD_COMPUTING` <> ''
		)
		AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3)
		)
	)
GROUP BY
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_PROVINCE`
ORDER BY
	`投资金额` DESC]]></Query>
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
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = 2017
		)
		AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`CL_INFO_SAFETY` <> ''
		)
		AND (
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3)
		)
	)
GROUP BY
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_PROVINCE`
ORDER BY
	`投资金额` DESC]]></Query>
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
					radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3)
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
				radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3)
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
					radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3)
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
				radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3)
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
					radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3)
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
				radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3)
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
					`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3)
				)
				AND radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`CL_BIG_DATA` <> ''
			)
		GROUP BY
			`项目名称`
		ORDER BY
			`交易金额` DESC
		LIMIT 10
	) a,
	(SELECT @:= 0) r]]></Query>
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
		2
	) AS `交易金额`
FROM
	radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
WHERE
	(
		(
			radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = 2017
		)
		AND (
			radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3)
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
		2
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
		2
	) AS `交易金额`
FROM
	radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
WHERE
	(
		(
			radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = 2017
		)
		AND (
			radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3)
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
		2
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
		2
	) AS `交易金额`
FROM
	radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
WHERE
	(
		(
			radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = 2017
		)
		AND (
			radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3)
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
		2
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
					radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3)
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
				radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3)
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
<border style="0" color="-723724" borderRadius="0" type="1" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[title]]></O>
<FRFont name="微软雅黑 Light" style="0" size="96"/>
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
<![CDATA[$$$==0 ]]></Formula>
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
<BoundsAttr x="504" y="0" width="415" height="262"/>
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
<BoundsAttr x="504" y="0" width="415" height="262"/>
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
<![CDATA[1104900,1333500,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
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
<CellGUIAttr adjustmode="0"/>
<CellPageAttr/>
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
<![CDATA[m9>!<;eMQ6$,UG>g+BWr_4$qV'W,M/Zlmj6'3dO'D:S!54/Z1#6A7.;&>GqY6qD4FFuld>VF
-E1@_$Z_17g',e<(FaEeDn=7dqUA$kVMi;kV9'#WEpapWgH<VbFY)VqGS'S/'q2`68&NI/KS
no/s2]AraU@W`$;OJ5S+X7B(\e]AK:ibr"ECd2L=-$!pTBY]A6%\AZ0>6j^V8l&CZlFO8FlN^Z`
-V4e&\c<[`'pae,7^4;=O!H_=%2gNIZZO[Spg.d;I?O\5FT<[9ZF.5n<8IQ]A.C/Rg,3(-j`"
ue-IS'PDO`O\AOXQP;6b4.?Wu8l&8T6;<Cs7e<IrOR_,hZe+e9<=q&13F\GTIBW?B#R$9,j!
Q^nh^$B2u:AS?9]Aro+9-gY,RaEZ5`opbK-50Xd8:_X!QR2oS<;X4CJP4_2L=GJ@9A.PJQ2Bh
;YuC6dY&`ZOsFe$<Tfj3nTCP"m+*o6&<h/^GDWMS0n\)a":f_rT'C**PCBrpEo:,k\)%D3La
B.4sM?)!)N0XdNLj+k1'RFX=EiEX)A)OU5D+]A]Ab;VZVI?MYn\/+AM<SG,kY/bq0kj5_5$Fjf
\?0S+qhN[L2n=7B-/S+[ecgIl`UXTkp;!i7RT'j/aGKP%(=$WgM&DT<ipmro1@hS4Kj#s7AW
_M>1kcX1$d,08(J^?eo*`U@*:P_,h8I>[PWV`0(,a&=c,=>T6JB4!)^pZD1cIOroTbDfpd@q
?(7&74?CXOPatp8Q_336ONHHk-kU0Z:b@BkFQsP6>h"<6a%6]A,"jb5RTe=Rf44HLg(;D6_CZ
<M6jjn[goVU?=[DnQC#N?cPf/XN1:-ESWbGDs49,*b)RjUCRR<#u/*UfeTSpERtBD&G,L"<q
@QM[pG\[,=5nO5ptQKNKOirj!?RWSZX%'L41R0A65El.c!1)t4V2frU/b43e!9g+0dgTFs/d
O_7rFoVD>hEH]AJ><sjZO,J:]AkppX@PZM3]AL-Mt:D=<uF-f4B,ZHkk%la/MaiHc.GCBs4<(WI
$(V:E+=8mYQb1]AFHT$$6I/D#(4(g>GKh\MC;aGDBitnNJTjZ(?.XbORZ]AlSk0'Tq6M=19Y.9
G'MF<bPriekJuGc-=uAuDK:steIZGKjN.bsfbEmBbj$^gcJ;O+2#=A'o?V&[o;]ANgWKR&snc
M5:a/G#cI+jQ@gaQ2eb5@Mc,5$pn&QXQin8nFrIJNA,E=.03QN"@m7H%a@"/b!X#@Kbk.1<+
#HCJK0gZ3E.2o6`aSRh>sCrMeS>d=9O,r:F[q4)R*Hf:9bB.Dfcd+[49brEFgc!?R-c^Mq2Y
MWp'e]A_od?/bWP1E!ADrldQ/R%d6aUgd)abF;I?"!fduS.E1D%J2@I[3eYbN)oAO+t@E\bA8
U!m<MY'Stt\?OK>Os#:L#A[D-9GYA-_rj+VDioZ))<bm%&&g((A1>hQYJ3OC=]AfYt3o`qB9l
,KI1k2]A;iDG`d'o.thJpps)UiP)qBWdDt;ql*-bYCFY#D>42E@W292pA%[UFcIFi>)&f6![G
>$8$N!iQTFkN@HN[Q@q8A;EM`ILtako+EgroB4FHddh%5-:,Fn_V@$FM^EdR^<=ZgaLbg6Ij
HZj^pH</!*#X/;1Z2TkbI3%;gFF:ia1`&!CO%kjLiKmY428+'\;/kNI17%/1q9LW2@>-a&%T
*]A@[J'tbPX_[q0(G+>p<_Qk/JQJq7p^*mDX#K_(otPl9W+'EH8,KlaH5iULa4$A]A.>;9:ne\
2,eg7oS^4_/AX3a`jr4;G<<JGq!1L57IidW2:QoA"e:ipFEHWr@Z6Xp%M;aP\eR4F,Q4QNTO
[3pD:8fOFb:$/1ps'm;&C><`&"[YYfB&21J5")$#FT1ZrK=@7^lWZi.L05"Ee4,jO8,Fd.lK
6Af)uK&ig$'/#r)$Z5LiiL8Buh\ekBfq.2i;IHI9$7BUS@6(S`a-d+hs"&3=68L`q$5Y<rjt
MO+Xdpde.dTHVTN&r!t#r`k;#F%iirC%Aa/h;b7U7n^p'bdG/g-a#b/oVB*4aD'3(Bi[-9Tn
N8c$:YYXDi)d]A&iF<XmX)NKq@W*+,El?LMYGJ;d;]A<U-^V>ATp2]A>W$/(:+:CtdI+;M_5H6c
&[/nj4L?AiDc*7fg?43]AhfQ^Rq4>9[^uE">I.>:mbBItu$[ANOUlC&$,$+XbK6p"b[Ze>dj@
#?@Jama'OD^C.DZAhuh<MgYqd7'MM7\<m.,o%T@IK<R[>Uj5=,hXM]AEq([e90LZ*TC?D>Vn*
6=J]AB7<?S2"HKeRC=F?=FEq88Y_:oLhq]AC_4VR5)F>lk5jn*4EJ(G>/uKd'2@3]Ahe_o:78MP
LL+k#De%qo0J*Z]AX[c$0,"*/?p\]A<;dA3G*8EDOL>a<G.a+qos4Jji;s]Ah![UB/XtT;--Ii$
g@K@[Mnr^mg>KiYi8&M*Z>r4/n*9>G?DNkTUX^$Pop-*%_2:#s,XV*@57+q%12mdCM)Cj6#E
)hH3=6&W-r!#-iacN3W+kW;36@tE+=s&ht\$q]A*EF.O[o)]AF0>h(64ZW6R=#l4maus`Q'HOq
o$RQ4;E,oV:qDE,cWgTsbQE*!:%&jBdiRJ14MZ0fFuVF4h;+6:.fYSD?k=+-Z\&lE!g(:\`Z
A"6XDYchh-r9[\]A8eS=gp/>A^faOWX^BsB9Ln3]A2'X+,&jKp?]A7eK9EZsTT(qfnA7Ceh/+r_
fRdq&SVA15ncW[]A8?YQ'#!J'jk"I:qN*VRD6"uW!M4&sDIADuu#Ee$T'<_<7iLHZF@AjWa)m
B9Gc?\1+^;4H(28j4Vbq3M-C2,cV(reOj*Bf&<_*s.+=9NL]A]A/8XdP@9ZLhjD$'"qXW=9+hX
Bob5!p_*TCpHO/+jc!DXsGe4;]A%,-N&@[(-MHbh7eFJiQ1;!JXT?bo\G<J@+rDm7J5'bGhgW
npc-"pnd*/B:[E\I@6o"(CH`HToL*maf7X+.5I[QGiZH"oOIuEiTj+c-)/BFp4K3;kiC]A:XQ
@s_`8Cd04BLKk/;_%W]AKm+o3IB2q,j3]A/B@NS+O)CK<2Q^gRFi7UBK6;T!e62NFL;2=HU-SZ
D7C!DT#r[Qf9nCGJ\F[a=fRQ9j_3C'r&D5X5_T+8/R$E1sdCB6Q7id3h).6*hbkc-6PQsOcb
oiaP4TL:m43D)&/MbFBs#]A/WHON=1oeaan!5Z$m1Efe<2!`lKno]AEg?qF0$-.B-X\,cnu.fm
[)$bG-"TH8&n,6R50UC]AZ-:;7I#lQsYI3'>UtlH(1bT`T4@Fd@SdIlpOLo<HlehV_)g*+uI9
klZnY>)&rh/OTMc#eM@mKq,nGLU-_ZO)c$S3pYpeRh)7lrIqb#1Pj9:+re#?khVT0ANEs]A+9
;M%$m<C-V&]A:H\*O-\[tO`&IBBA<>7Ft'ChM%tid7fY!HVS6h0mD$02LOHRUkg^pB3#A1Xg-
S&aH[4g_-Tu="OSAiK!lBU,JE>"W%.aBhQt'la(R[?qH@Opg\>/#S11^S\\kZ9^lr,HVslT_
O8gMiui,g%nOFCgB<M,4*.s;pJNhm:\fr+g9Jtl/iA3@O.V[KMZD28($=o^K==VZ9[kWp`[5
(,neJ=2?*_5-4[t7p@Kl1>=>th8i8J0_.R8JGPt^VQ2?6?6V\-)HpMjR;\//+t)f4m'4RC3,
DPH09X,(FJM?(aY<ZO,(pkm#MaT7KG0[;jj[N=6-W4t%ee,5Mo4\/f!a$+Z]A[rB4JM]A8N.?K
eaY8#1l+kek+hrAsF&UO33_'f-l2l4\c^`rc[>PHUZ59BU0*X)boB2Q13a4nH`8PEkc,FCIG
Lrqij:L,Ws>W?Lqs>K1K`CDOed-t#2e1\7WHSSe$=S+5*RJJ,WOnD%e/+##X<H8#UJ4W+5/?
O1e^8k4i5;A6L&B6j-CBCE<sLTok:@P&H*1k7\cc5qTMh]A*X#P2="to^#X#3_iV_f]Aq>4op+
HI.-(&e.MPk*@m%M""<Rco&Iu@H$[?-^VmQi]A4m[$Na?Z>7bTn/n[iV20I93hB"?H27BX<oP
JkEGh<J2SMC3)(sf`8Vb=Hf6Lm*O%froXt0^-nYYnBNlWp+oD$>\FOoW3n/lD:)#kK%U-Bhm
/$O4apf03F\W$iOk6B/\h#QMO9/H(PCY-)rNDOh(QB+26tW6CAp>a!W!;3eP3`Xl>sYPb"C$
Slj/CE$OU\O6FFZn9Q_t?'p%4s>;qK7PB_#q:0:K?+EYk))gTgX$1.+Bmu7j`M8$g5c#XsZI
Nr<r::Li/!#n&=k^o*`:0q6,(:o*.I(4sY13FOeFLH&h+J58\&)>N_3`-bCQ^8E<$Pod_b)o
&:5b6J[.6=OMr6DFAGDjOh_'mtEBTIPtU7GCb:FH.C&"3SI?nI>[K-ZSYCnqT=9'DZ,X8G2D
^0)\JC'6$/<=!t,d4sW?HdZ&N>!\^hMC>h&#TaFKYf$n$@/tbSNF4no2A6DXrC3n+TLT))Aa
Dl#!&KIiFgocG00t_npu%A/JB-'p0D[:fporNEr8:Momj<K<6uB/FaTl>p(FK.e%9<sd9qc9
9d5K]ASWR-R>;.YLV1$/1C=Pj*4KgJ",GTYX@-9B&%mfB!2WH))[4LE*3Qg$=B<4/arr&?cYf
'b!b^'^B4AMENG5.a0&,ZC`5V!@H6-376dT^5\-]AcBEYc#V>,)LHu%#&g,D<1jU5JPJn>+&P
h$NS;e6Q0bT7_0i`:pi'7'h%]A&C+.)@S=R^A47/pE]Ae+GABnm^Ii^B+~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="919" height="304"/>
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
<BoundsAttr x="0" y="262" width="919" height="304"/>
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
<BoundsAttr x="0" y="0" width="504" height="262"/>
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
<BoundsAttr x="0" y="0" width="504" height="262"/>
</Widget>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="chart0_c"/>
<Widget widgetName="report1_c_c_c_c_c"/>
<Widget widgetName="report0_c"/>
</MobileWidgetList>
<WidgetZoomAttr compState="0"/>
<AppRelayout appRelayout="true"/>
<Size width="919" height="566"/>
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
<C c="1" r="2" s="3">
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
<C c="2" r="2" s="4">
<PrivilegeControl/>
<Expand leftParentDefault="false"/>
</C>
<C c="3" r="2" s="3">
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
<C c="4" r="2" s="3">
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
<![CDATA[m9>'>;eMQ5+f2Qo6>'O(XVc7p7s5\'e"c[O'&-ThAL2EOSV]Ar^*gqm#.jC`*c+Q%sa0E'f>+
MC?KkgpU[0k;*,(eUSM@fjkYm'2i,#L[[,gZ\blR$go!38*Mh&ZZnm_W<NaLV'BhY2;fkC&u
kbMM-r7(kWiaoi!%?=!9mP4p,U.>&bH'ed6kr?^nc&dAL/Q7cD4k'q7F>2Qph5j$,MZa>i<r
\l1tr9Knb(N_%AR3d\s5dr,UFRPYAkeo-eB@fhIPTj2NM6-)M(WG7G4*^<lI*;2=QKU8o7[C
l$YDK/"qZUN9l$?u.GdLu"p8W<$(S4"-`BFOPi%2oDn8@B#2JRT`jF<Bl.[QA]AQZKg`q+\&$
hN8_$k,",:bdT>SU,u!Y%XhB%e,42VIgY6i>$(!6F_rTY3dKgdpjC*s_0"r3U&S&PDV>IoPq
cE?N6%W/[E+W<!DutUK&4:YTgSj(^O#2aQ;<QXcd`ZYlFE4ek4FPB`2"6eqoAGc/PXNHkS]AB
A`(,X*S#DlJ*jN6OnEUKl>Js#'EjU1MQhfBAS2=JdJ3RjE\;fmj)pC2VJ(qB2=^fZnA8d;d>
H83dj82J"hp9U,\89%5p"?r;MPH^h<h=B@WMII0g98$&?aW/c_jT!9r:?nH=oHX/ra(3+k>%
:B/W//VY%j&A-^:*fCNi_C5-NI:^407HDN@nfFA=:*"eV<d1^;SsFHXK_PP\gM"ld\n^=O,O
(YBJ`\#DSG7+taEgt#B"p/Ki+$tKah(EpIN=2'A'cG3pO9il_d7:BD:+.Z@N.U3l!'1VBbqR
_N,F3lCkW1>U(F#W0LD=9>]AOHSGp%[N_*c&BiHhFec!Y&Jj\#@Fu)K@osYi_Y?/bl3A;`M&f
)prkq\GP19B'MUQZqL.J9=uh5fm=,ftZ-WRH)?QC6R>suQg"!e8UYh8L8q-eC)*]AP+U;W5TF
Q[DHH_h;QaiQ#U1n8\LI$IHZEf1:(Vj`;l`;u6jF/T&ccNPaJFf)A5fhO-q6]A1b4gN"!licm
t:$`7E7W;!%[POqj`AmmcS1d<<`7$pbGV190H:_tXikOMIX7l9c.^p_h+_n=Iu[2P[k'8krE
MZad8b#R,%EEpf^Vb$/-^(_tMig>_8gi;05`bpf%J+7m7%4^[Z*mK!DSnCXdKoqW>W#Z0TkJ
Td+!G!GjmZO*N]AE!9]AWElRB^+&+gOU#&o[5RG8"krnU3LbspI*MC,0"!OaX#O\kWaY%Tc?gR
eG&s\I+<+]AQ%KBh/?D"C4):P^=VHI]AD=^J<"i2!i12rD?CAhUkXIb@Nd\"B/RQp1ki(CQ*H3
CP_7E+2c#fjF66\Na)`rX+FN0.--!C#ih^r+_<BGn+QKP)0MBhRIm-;Fp#I'3^oE<X0pMWtl
9N\UmPmbb$@9VV>&a/0jVH"Bt2._HfW/Y##&AdJH#t;f?OIq)%a&=8AhVb4f$0<]A1CeIL9%2
Oh:D+A]A%,@'u@GD>b`:me:-P69Iln:61$<d.q)UCHN+jS9(*iGLT*'-(&ul,ChnQ3k"5Jt@g
gQkm99[0$phfJ%R.7E%9+YgIB(H2)<-]A+5+<>\19Z'_S;1i9D\Me"oa/46ca+AZo>St$=juu
'%h!CJ1fetNg5h$[Fd:>e6U3*8*_'-RPP$g261UX!1q$RH3DGbBdd>7h?s7^(/WbKU(J3l_(
2]A2AA2.hJBe*_f$Rj1^TdPsp`j:lDs,57Tp?EY2%,HlXe$n)XXP`bA8%$SJ+nc7S&4IaX;af
Kn%\[2,0MUr$6:HqJa`COAUQiq[(ue;Si)^ej<k:^;(Q'ru-.[ZR_6V-ZGVb+G'KZCXPC=#+
e7fg<6pH+9buhf>7"T!l[/>$/bNsu+2UZ+U94Q'X<5**\hs?f:U<H9+s8Q2r&VJp;%B9@?*p
`RthmiOU!h:Rsi@Ce8-%+haQ$ngae=eM27e/bnRNgZa"IjLr<f&C8,E5q`iPd^5EA#omQS$@
s/+>uMg)Mr/E0uM.,?/B)UtDTIh`0NL0NKs<WF9i-@lBZW`TY$0OB`j-*JLtbrhNTGlj?M;6
\rpq&"OZsWDR6pI2pt0rRACW-h%Uus8$D-=/a?WTt6(HQr/4igDIMKKS90#oA&0]A^;n8s6%&
fW:0nCU=PF3,;ofD@=EpHWc""%K=K%9Mq]A*?C]AGA4*(\'Z/ZsKO[r]A``0YhB:bLk^p"N)_NQ
d0>8;R,/`99&"^$S%fN$Qghfr*k.NOWc3=:.2i$O#SGZUF0>eE[`oVh[#]A*NR]A;=Rg-W.Ns2
:s($*KR"kPnYR,d4g_i,js5-YQ1@kKg"DHu2@s)6#mGB&?b>LZ`'3Pp'=P/lYpAdD0@S/,Xd
@RL)pA,7uZfqJIFWb/DWb3KNUfYFO6r]AY%b3E)q#=Of<iec,?W5jM$P+p"007fR_!/nQ3mk#
p_`Ihpu/Pk6E5L^9r^'I+U8#lHFbp;?G=?*:ZU"mB*d7(h@ks5m8WGQldHXKKHbkW5^e8$QI
1-^VK"OUM^P\LQ!&$U>5.OQRGK(eQPn!aO66(,B$ZufQm*T0EW<\L)VWbW*ZF^Ml#*aoRX)n
abfE1*p/#]Ari!:`)]ATCrIO@U4^t<3kdqiH4aZC+':j@$@.k&4f9u)#5kCI\D&ak./S1R@]A!C
;b;l-]A-,F+r&!fl>18.HcMt?!#VIT+k>7muqt,4pA\'ZVNQuAVu'?ke:\t]A*O&q(-'<NE2@u
k%/oe=TAYh-9U3nUNI$ZoM?[^S]A_D;/bQi1nnO1V6L>GKtrk's9$q`N/h+"H?^(/T+#::A0D
9&!XZ3$f'.%,3NK)B"J"&m='>i,YrdV@RlY,EB:'8+`DE9&<t_l\>kjkYSEb-K%722:<5ljC
kl(q0oPikH9?!FmW*L`/9U/;hh5':]A5E1k#&X8?Y>'<d6E>-"@]A<dn+T&EQNS=ej!c0,=tq0
"EDNT:GkN!\$(%3aSVq:)]A2uWpahPCUc'-&U)KW>q1@cqY<fE(80D[cKG$_Rp=A=IJ'qt[KB
RUbLo.LMr=d4U.8O-Heq$jOM:53EB_f-E;9#O:C,"ecn%.l7'8=/<#,2:m-RYquV!Sf>aDe=
n0sIXoGg:h7)PSsW<-^KR6)2hUZ,aBAj6GfaqF-3C'%@YcKlf8<h?AXs(Oq/[>b(0I9;T`;0
kn$k:Z4+-+\)@1>'BB]A=4.o\hi%ug,'G2XiOB#:+G'.>^;=1RDBTBFciE>^0?Oj>a,n5^*<^
FbRFbB:%^:tXPkgbB#o79JQ!i=Q^lp@aj&5)t'\4t?]AiH_6=!pLQ@_nbNj6]AZll)5D;e%cFk
jai.M)IsqCeJ`;D!ZJJQ6\qJgE<iSm\bOA@4#2BYX6iE96.;uFBlIIX9%'S']A-GGT]Ah?8\rH
DIjj5%Ag</-P"\L^6q13g#b'\FEHAV`dG/`7'.?uPA7\0r2_2gruM]A\lj]A?FG!.#Bkt1Em.V
dZs"nfMiNs@R3KEZ9&Xfd%Qn!T'lD>8c6A$:UW'sm?$DpiWa";W.Q=!--F$MUEMlCMYeF'Vl
tf\up?Q7nr`UB*BVe!2lJ9M]AAPI7WEqLaRWMSO*!>X;++LZgU<sBhZ%aMcq3*HY.dWQg\"iE
'gVZBU#HM6`GP^/9E$#8qWIR'ZtI<O^I7t%r.k:da4-JF=mj5=W<E>\H8<^>kt+AnhE/_D3I
';6l4kS8mL=i9Hf1+\W9H[LkGFH/KM<_?>p7DPHq#eRA#5RZ,[jO%-'HZ1V^958YgBUYt&-[
lDaY.BN,K?RPN/$,%G`O_04+Jg)2V8;8r=+G+QTMjL`4gEBQ">I&U*[5I*9YCF"WZnp2!Z:(
0lcDGgR6b@t/<s]Al;Jgi%`rln:>MCG\SoVpk>Wkhkc^PeQZksL#N$Ic=U0p0M-h$]AO`#.t9s
"Rdr8JFTQ)l5li+hr-,@,Y]A4eZdFX=k6E;T/m:oQ-hcY3tOGKTC&/MDEqHKa5L5FoF=SKp2d
gZ6+HUS31pTZ^T]A;l!\#4HS-P.fj8S1m/&O\UUVT2Fh-OF]A7ru?Hn*iS*KFJd9jh(f3kES/(
Q5j-:QK4g@(V90>WPHWKc']Asq3)Y-M)ELBSJ+n@GV;`+>+CD;7K?*GYA3S+nN*O;$.K"#LOD
8*=M0p(eE8IsQ,B'8NgSP"lq@p^!`3`Wc7/q02NFgBCQEd!/8Mn6MqQ)@D(c`=!]A+nm]A3u<d
NJ.nQ#pri>eLk19\h2p[N9ls,>dqUBjVp]AgDVD>SlSD9\lE^TKN.'VYb!-X8b,?TJ(1q1t.7
p!TPj9"i;U2<>+[-"X?)K:s0LbYLM8lI%1m]A'`4e'kj*":"/ildPm*0gotHW>8:"m4fPO#:q
^E,Ehbj;X,;20(iqS1^%ceC!FPT`A@[fIC>(Q1([f638dXShN%Fc]A0^(\CbWgK-(.\CK"h?3
Q:Q3EfYScJ4m'6OjB[1t^jQ!Cm";"8c=Qrko)2]AJNQ0ZAHRa[5Tu!conIAb8%A3:[Jru?SEs
'e<s#K]AeZkYn`!<QB7\gt--Hue05h/ZUZ3-7;"q+=F,R0?'p&8L-ALV9fg5jP"CDZ@q5>>Ja
QQ."CTPUj6OG]Aib-[j*2>r_mOW^o=4=\p#)*c?;+7YT5P`).2*jh4p=r8=(5QGbh4qZ+.96`
g!Cj-?-WLP=0bl3h#,1a>J,i^pe\3kr6W4F>VLS&DKK\K^dZS>.NLG3h&sWH,6+!1YTQ#)X.
H\$s4<L7^&a_r[qhKB3-IrLSc?"?EuhT0*MWkCUOX!01^YEU8!2Z7L\<I<+B2U5=.oZ1peTd
lQW]A=MnfeG]Afs'6cB1QMU'VTm<=<MFI^_2_bsuIqK3cdgZknSS&j)Ru.A:Gr.HIb(2O^[>G8
MEb>GD&F8H>9ur9h@?HXmiW&VU@c8aRu$'r#6mH&h"p#gUNo?V:G\C]Adb(N8+p>Tco`V!P,'
-#h>W!n9thndA$c9d,r]A<I2Y6<Zul5WRO9E?5/*0f9Ne_=;CQ$;I%\a@gYbY7]A>mj?<NI;NR
+<OES2(B3:5@kQ(Do`Pj_*9QQ5XfBOp5f99pr1&E6:@Pr"?AKUa*X:4V"rN#i*M:J48!AIF1
s<L8^_Un&-d!Ir"_[rri~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="504" y="0" width="415" height="262"/>
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
<BoundsAttr x="504" y="0" width="415" height="262"/>
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
<![CDATA[m9=p:;chOGK#(&oC!.,,Ce;6<Qjt<//_CC:I=4fT,;\`2#8e_Fq"uNo)AOre)g,o9<A\3n:^
8;l[$@&U&<pWrJL$&'#T<h]A:`c=LG_H+uo!iu%4"#Q\1Z%/,f$a(m1O/n=EOb2'IJ3[=p2BD
Hf_;FH#rDO3r?rB&b]AeO3epA*gO.&D/,sC2pIStJo8u5ADoA=iZp#"gO*U9fNRb(ATbTI<mV
>1WT2g:]Ap-,/$3BqP;$4K8=]An*H/!3WnZVQ!BgYlNLMEqr[gVja]AdqhCD<HD;]As0bnm\r]AtH
laFBd!k9nXH1C,:&FQMdZjNO_J0l[k*792!N%fo#;SBP%ttW'hk=j"[;2e'_=I:]A=,(/8\tu
To!cjVig[=IajmBc?5iJ\]A?70>/n0=4qF7-^[Z>?ki*fr:;.r(l$^U`M,AkqVT_VMffL+#Uh
ND]AXIWYkkI.VgnZf/r9(*$XO3Uf`XZ/%m+2qkt5Kl/D5&U"N(8r1(.XkI*El4XM(i&2tT.i2
uN)`?r!6q>`>T2/S=sS9N,dQoLcEf+67G;LWOQAltr%#<HWD#_/*J:$Q]AYd-7m('?r88\e2l
T9m]AhN/W"H/6`=dVF%:3kf3=49,"=JSFSnBT,BMMjMUVUYSQf$%*0IlnmhfA-ofqRJd/a[('
i1`0LR^=c(RBqW`_7IV&3&2h_\3,pMn1cD&M:6G<h8o6YM9`6TSt2`n6F@r_gE9Q8;SNGS)%
8*oM.BZOO;T@.Rh'*cIfk?=l*gq[6]A.9ru"l8#<cLc4ss!^C./kVW%e"G?J`$<!DPZIXehc6
V1"D-C'np]AE$DGlbPSoGNO-?MfrM1T]A!Ck^GsMj!^dIVc3+fjgcW7VR'G\@eb?*:<t.A@HZG
5p>LXaPio<-es#IuqQM1`?B^E9PJ*DjZ]A]A`%V&Er$7aSg>*1#C8"Lcr&/\O(3N$BWOOtHH<T
e>arfu\=N9k\);61i:]A';d-f[`MghR"S&q2Nqu]ASD]A<%:#&oT_Z,&+Z2S!-(@q4^*9f>&i,<
_,5#Gjts.UJQcas-Vor1.h1j5<.2Wp0B<;sJh3Mo7%dIH$m8*lk!NSSZN_1j28A)Ae.(bkn#
OT@tG#Fp?h'(C0h60Z;5B-01?U<fD)'rO0)s4nfcCURS,L6UR7?O=/TL4a\;(9A[%?2FES+S
18<FN%%5>C.\3^M)dA)C21'-p9eUO6_)d"n4`<p\*6>JmBUBqu8Q;5H5mX3qBg)D"ApB^nO@
Ibs`0^U1-9g,K=s8G9t%qFokT?qU/sCJC^&TMnh=$mS&f1O4mG1T0'M)6=&5k_8@8`8J`XD.
b`S*@r7DLT]Ap'ICq!JlS7q-0>]AaY#%7&74R1iqJ([c_1pJ=.#mH?9P`gt"X2"C%%.mX$V"4)
E]ANG_i"Z)90NU0E!UMuG)K'qP_T+N9.*S%+BCis7aGrX[ZGoDgDA+c%is!h!NP]A0GAE8=h;+
FA$:YDqY`!9hY<Mo)ki;3T-6lEJ93Q93BFD9fImgY5leSoX0(iAYL.rV_,CAXohcmW]A4NWLA
/k0#R5:WP3k_]A[iJX"/u,`+0u^B2o9SV;OD5umIV448nP?m:$g9Jr]A7l$@N2(8NjuV"tQP1c
]A]AUcTV/]AJ8Jjt:c]AS=2-]AquBui4K9%Oj)V:6&q2':WY"i%e[jAH+j"1ZBmUc^HU[\"'?V@Q;
L9ruT8rC47dAi5RB#M[JUbdQMM:>,7rdVS??U"*5eqiMA@*Z\a([_,'3:sf6&_/\]AY'ub2V#
&+DbU*;kJ[/JYu=[DfNYl@GR4MKDfG.Co1\YDDbk%[Y`[CY,k9.j)r#&H.*fV&&gl;#?da!Y
JFn\s=h+SNgTXf:qLbo=2ZLA=CW$hMGQu9-9k?@-YS15#\L"D\$e,l$/3<'2/eY7bH/hC5DI
u[[:6\So[kcS7FVJ1\SG2!U6@^i3$e$#.:R:HIm+^.MCsTdXlWtIgo0Mh@?XD;g.+]A3?[['b
o[nB><@^j(d6m6`?aCJb(,J.(E[[44$eom%1jmLU?AF:GmXg)*;0dr6i=o(uBIT,@nCog-c$
DIlI)dVT<3Ci0dpCYA\_JtE&-n8u6><mjW5lSJL-WiFc?CBG`O$n_J\pWu[]A=t)$3/S8pI&P
Vms%$R/'%U$JZQkstK1$q6'K\#0XLh9K_G(kf_IZ/8Ls)eYaV0RA/<HX$&0ch9ZX/LckM>\3
m\;ilDuEKYTINkU+t\8&QWr"2kMPQGDiQ^NrJ8%fb0.qlSV[MaOSKdspNQfH,<a-a$Nee![$
`/BOb=fI,2R1o^Q-l2p3rM)"Y/d4oN3;@_\]A93I7W4d:A#o=/4i0f*[/?e@%(UQ)>a!Mg2%8
j<NX378>83\\PXi+[/TV32gW&PCU-m1,hYUY4I_7D(TN"2ABY/1)EOC&Fafq`Lufa^5\1XdP
igL-p)$Pin?18-gsT7:mfW+AS)lt_:p6D5$"JgT`+3o[*]Aj+AP,-.IT4pW:%k!)og$3"!BT>
U8ks)0tU^(c%,sQW[1[W:1hLp*\P.pNTaEg"8=_Xo#&=6?H'fTf%N[0du,S=WRp)1.8bN_j.
opeR4l.?]A9^B@ZAE^dlJNK6LiKqiFHG=Op\[@u-2hs+%ZitYp\CCi(sY*hGujO'bI,CA$FMN
@(%&d(X:5n:MdZcah[:fC5sa<LJ@):s-]ATY*GHKfl26i4)nN]AB$-(=T[PL6K1?6H<2\P\$/]A
Z![C?:R@M-Z;"71(cRt#QLGp/:Kg6Fm?C<m`gM>,3HlaS0)'.EI9$8=D4!q"s'VF:ihr[GNi
foKo?GVp4F<"H9bcEc/U#_`fMTEZ+:ZlqH8(l>W?0"KZl@-8_jh_W`pUGFPXRdSo2n=!^Y0P
3BHg10enL!Nerle*#^24EbD17P1GlQTg)A^rLN0+.[lWf71"#V>jBJ9^@2:Z0NYNX>\rLcOh
f?kZ-:]A9)`<MogN1Ps#(7\qFU0^UifH2H_4Ah5#VAW*$#n7^r]A4_aQJA(\NWrSp$.:3X^M-o
dW,ccRki'4TKZ!YRPk2^h:o7l0/n')(]A"W).l[65l^30*Ca0kN:hCqB@*57Te5Um<l#+D6-^
:C4LR)0r:Qn6V4p?AV\Q>bCGF>?/_+6;\H]Au0qocUPAPGd?r\!c52<G6PhB#OBnXIA7XMW`;
Gt\Y6k".,b'FIc[^?fTKe!nD0\XdCAk7V@nRk6\0.am0[@CN3V3sbo`"BbO#K]A$)7'C(G:IW
(:L]ADN+O.'h@%VqI=W7Hc*o$4;Fr(o(/NBN9KRm=E=1)\>bZd"#OXO9L+q`SX89t>W+h,`2V
ih9opGFb@?rMEY!H0YT/E!6jb7bk0eBIaR,-nn+EBsNCA7S2FfM^"`.r@np`o!C7*en6/<ZG
"a[D@k0?B!0:k,8'Lh/7_5q`@6XMjf,DN\4o0u-J1?g)3!P&&$brWc?Hc:-B&c$JTnWN3PTT
2569e>OG(N\49_N?L&kr>nPX-e7b+UefAX#-B#!Z2.K)0(hl=Vt;E0a=Z"GnMnC-1SjcBmVT
V;`MM'?(+XN[-sP_G6#9Cr]A_4F*jkB*\T=B>De-pAl99S8ikirp6;5hQN$;F8%?8S>etNej=
LfZP9r\8_8Wd-9hr7=/n"NpCV.4:Zr"g9WgdkapRSIdPOY,($i+t%u4f<jdUhqiAQ0f6U>_N
WMKRj:EVBuH^j\fCq\l9OoI-=^>JfKDgila89qEta]AP8?6iriWS'cjsc<fdZn0&K-)U[gjQV
PZ2rs*]A#<P\1p<h!57d5`a+Zn"VleS?DB<sI\Ec^^]Aa#joKE7,1(bGAVc3Q''G]A)![`O#.I>
g5MnX1qi2nL4FO^>&(&?8]A1eu'#j\1NB3Hh#N"NTE]AG*QIN]A=GD0Emu7'I"a(T?Eo(![HFfU
EAQRl_PZ!?aI'"^'D8MdqtpZ0'OW/7Dc["U"TP-XC9/-8HJka!fiI"rl)ft;r1dj!IT(Al,_
O`.,qi;SgtYTg,#\e+XpAA=.`1go'K4`PYf:=jF1></+[ZUfBq)/j#4d*7JoX[j9TSuCPqDU
<]Ah'%bO=*[/uk6[$bY",p+]A3QHbu%LN_eg3+O^e'0BkT&kniKEEdDF7g*_Y(3DGX6bF\+*EP
9SX>o(6>X1*s'9@QF/gs=bq#2YXJ^0b`4G?-FC<G<=N5c>#l'c@3'Wat;DiFPsADTfs7[5]AM
=+4`L?9&jo8[PpOHXU!W5_`iX7Cn+ZM;$Act"Q-qFN$c`L1eMr,iqkiSqC&K#`CTR(Hi=`P5
;MN=/r)JH-DmQBGpidK97'LLc]A4q/0@l8+rgXK=ms8/a3AA`#8rnYUQ/eI>71R+*&_^)nRir
bl"ZOL#oVi^,PWqJ0H/OpLTiW@%aQ!Xr<?5PCO3940pK$b=gsE3[LP?Pb-X>L:nH8'qbKSes
9p'/MP-F=;-P@T9$<@qQ?JIj^)_`Xq5P!"(f>V*aVMP7)nT3Y/kop%[$4UDo-(q8V6)5D4IZ
(o9J.!7G=ZfgHNmHT-)@E\>j9@Uq"q9aIjLG;%IkeZk#J#R"8sr#,Un)8WrhK\DaMVpKIfKp
gp=H#W!UP]A_k<K',$.d!>]A%DL#TQ3<\!>hhi(ZlhE/B.+uZA/b#jUokR1NaH&c!90Lfi6B!G
`$qMmMAQ-9uWJ0D*\u\1d+,#3Be[+h06CmIA3pe-dU7YqAO,RX=QW[R(H^n\ls6*r5s'p-?R
)1ruM1;Pt^7K0<`!6n8=\Ul&i:d+#(HtUrA_;(cG[HdR_.'A`6FW.RHC#/lCssGTWNI(e&#l
_?Ll&#?(/eH?^Y:b<5/J7J[[ncdt#Edc%35>L6l7f%0'SptbS2bN,#`GiFo%5hdZ2o4JE7ZX
E3uP@AH0r]A9is/p4]AL>)hj]A"#rp"XqaC/?^E7l;8BqjhHokUfc+Y;rrE~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="919" height="304"/>
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
<BoundsAttr x="0" y="262" width="919" height="304"/>
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
<BoundsAttr x="0" y="0" width="504" height="262"/>
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
<BoundsAttr x="0" y="0" width="504" height="262"/>
</Widget>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="chart0_c_c"/>
<Widget widgetName="report1_c_c_c_c_c_c_c_c_c"/>
<Widget widgetName="report0_c_c_c_c"/>
</MobileWidgetList>
<WidgetZoomAttr compState="0"/>
<AppRelayout appRelayout="true"/>
<Size width="919" height="566"/>
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
<C c="1" r="2" s="3">
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
<C c="2" r="2" s="4">
<PrivilegeControl/>
<Expand leftParentDefault="false"/>
</C>
<C c="3" r="2" s="3">
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
<C c="4" r="2" s="3">
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
<![CDATA[m9>'>;eMQ5+f2Qo6>'O(XVc7p7s5\'e"c[O'&-ThAL2EOSV]Ar^*gqm#.jC`*c+Q%sa0E'f>+
MC?KkgpU[0k;*,(eUSM@fjkYm'2i,#L[[,gZ\blR$go!38*Mh&ZZnm_W<NaLV'BhY2;fkC&u
kbMM-r7(kWiaoi!%?=!9mP4p,U.>&bH'ed6kr?^nc&dAL/Q7cD4k'q7F>2Qph5j$,MZa>i<r
\l1tr9Knb(N_%AR3d\s5dr,UFRPYAkeo-eB@fhIPTj2NM6-)M(WG7G4*^<lI*;2=QKU8o7[C
l$YDK/"qZUN9l$?u.GdLu"p8W<$(S4"-`BFOPi%2oDn8@B#2JRT`jF<Bl.[QA]AQZKg`q+\&$
hN8_$k,",:bdT>SU,u!Y%XhB%e,42VIgY6i>$(!6F_rTY3dKgdpjC*s_0"r3U&S&PDV>IoPq
cE?N6%W/[E+W<!DutUK&4:YTgSj(^O#2aQ;<QXcd`ZYlFE4ek4FPB`2"6eqoAGc/PXNHkS]AB
A`(,X*S#DlJ*jN6OnEUKl>Js#'EjU1MQhfBAS2=JdJ3RjE\;fmj)pC2VJ(qB2=^fZnA8d;d>
H83dj82J"hp9U,\89%5p"?r;MPH^h<h=B@WMII0g98$&?aW/c_jT!9r:?nH=oHX/ra(3+k>%
:B/W//VY%j&A-^:*fCNi_C5-NI:^407HDN@nfFA=:*"eV<d1^;SsFHXK_PP\gM"ld\n^=O,O
(YBJ`\#DSG7+taEgt#B"p/Ki+$tKah(EpIN=2'A'cG3pO9il_d7:BD:+.Z@N.U3l!'1VBbqR
_N,F3lCkW1>U(F#W0LD=9>]AOHSGp%[N_*c&BiHhFec!Y&Jj\#@Fu)K@osYi_Y?/bl3A;`M&f
)prkq\GP19B'MUQZqL.J9=uh5fm=,ftZ-WRH)?QC6R>suQg"!e8UYh8L8q-eC)*]AP+U;W5TF
Q[DHH_h;QaiQ#U1n8\LI$IHZEf1:(Vj`;l`;u6jF/T&ccNPaJFf)A5fhO-q6]A1b4gN"!licm
t:$`7E7W;!%[POqj`AmmcS1d<<`7$pbGV190H:_tXikOMIX7l9c.^p_h+_n=Iu[2P[k'8krE
MZad8b#R,%EEpf^Vb$/-^(_tMig>_8gi;05`bpf%J+7m7%4^[Z*mK!DSnCXdKoqW>W#Z0TkJ
Td+!G!GjmZO*N]AE!9]AWElRB^+&+gOU#&o[5RG8"krnU3LbspI*MC,0"!OaX#O\kWaY%Tc?gR
eG&s\I+<+]AQ%KBh/?D"C4):P^=VHI]AD=^J<"i2!i12rD?CAhUkXIb@Nd\"B/RQp1ki(CQ*H3
CP_7E+2c#fjF66\Na)`rX+FN0.--!C#ih^r+_<BGn+QKP)0MBhRIm-;Fp#I'3^oE<X0pMWtl
9N\UmPmbb$@9VV>&a/0jVH"Bt2._HfW/Y##&AdJH#t;f?OIq)%a&=8AhVb4f$0<]A1CeIL9%2
Oh:D+A]A%,@'u@GD>b`:me:-P69Iln:61$<d.q)UCHN+jS9(*iGLT*'-(&ul,ChnQ3k"5Jt@g
gQkm99[0$phfJ%R.7E%9+YgIB(H2)<-]A+5+<>\19Z'_S;1i9D\Me"oa/46ca+AZo>St$=juu
'%h!CJ1fetNg5h$[Fd:>e6U3*8*_'-RPP$g261UX!1q$RH3DGbBdd>7h?s7^(/WbKU(J3l_(
2]A2AA2.hJBe*_f$Rj1^TdPsp`j:lDs,57Tp?EY2%,HlXe$n)XXP`bA8%$SJ+nc7S&4IaX;af
Kn%\[2,0MUr$6:HqJa`COAUQiq[(ue;Si)^ej<k:^;(Q'ru-.[ZR_6V-ZGVb+G'KZCXPC=#+
e7fg<6pH+9buhf>7"T!l[/>$/bNsu+2UZ+U94Q'X<5**\hs?f:U<H9+s8Q2r&VJp;%B9@?*p
`RthmiOU!h:Rsi@Ce8-%+haQ$ngae=eM27e/bnRNgZa"IjLr<f&C8,E5q`iPd^5EA#omQS$@
s/+>uMg)Mr/E0uM.,?/B)UtDTIh`0NL0NKs<WF9i-@lBZW`TY$0OB`j-*JLtbrhNTGlj?M;6
\rpq&"OZsWDR6pI2pt0rRACW-h%Uus8$D-=/a?WTt6(HQr/4igDIMKKS90#oA&0]A^;n8s6%&
fW:0nCU=PF3,;ofD@=EpHWc""%K=K%9Mq]A*?C]AGA4*(\'Z/ZsKO[r]A``0YhB:bLk^p"N)_NQ
d0>8;R,/`99&"^$S%fN$Qghfr*k.NOWc3=:.2i$O#SGZUF0>eE[`oVh[#]A*NR]A;=Rg-W.Ns2
:s($*KR"kPnYR,d4g_i,js5-YQ1@kKg"DHu2@s)6#mGB&?b>LZ`'3Pp'=P/lYpAdD0@S/,Xd
@RL)pA,7uZfqJIFWb/DWb3KNUfYFO6r]AY%b3E)q#=Of<iec,?W5jM$P+p"007fR_!/nQ3mk#
p_`Ihpu/Pk6E5L^9r^'I+U8#lHFbp;?G=?*:ZU"mB*d7(h@ks5m8WGQldHXKKHbkW5^e8$QI
1-^VK"OUM^P\LQ!&$U>5.OQRGK(eQPn!aO66(,B$ZufQm*T0EW<\L)VWbW*ZF^Ml#*aoRX)n
abfE1*p/#]Ari!:`)]ATCrIO@U4^t<3kdqiH4aZC+':j@$@.k&4f9u)#5kCI\D&ak./S1R@]A!C
;b;l-]A-,F+r&!fl>18.HcMt?!#VIT+k>7muqt,4pA\'ZVNQuAVu'?ke:\t]A*O&q(-'<NE2@u
k%/oe=TAYh-9U3nUNI$ZoM?[^S]A_D;/bQi1nnO1V6L>GKtrk's9$q`N/h+"H?^(/T+#::A0D
9&!XZ3$f'.%,3NK)B"J"&m='>i,YrdV@RlY,EB:'8+`DE9&<t_l\>kjkYSEb-K%722:<5ljC
kl(q0oPikH9?!FmW*L`/9U/;hh5':]A5E1k#&X8?Y>'<d6E>-"@]A<dn+T&EQNS=ej!c0,=tq0
"EDNT:GkN!\$(%3aSVq:)]A2uWpahPCUc'-&U)KW>q1@cqY<fE(80D[cKG$_Rp=A=IJ'qt[KB
RUbLo.LMr=d4U.8O-Heq$jOM:53EB_f-E;9#O:C,"ecn%.l7'8=/<#,2:m-RYquV!Sf>aDe=
n0sIXoGg:h7)PSsW<-^KR6)2hUZ,aBAj6GfaqF-3C'%@YcKlf8<h?AXs(Oq/[>b(0I9;T`;0
kn$k:Z4+-+\)@1>'BB]A=4.o\hi%ug,'G2XiOB#:+G'.>^;=1RDBTBFciE>^0?Oj>a,n5^*<^
FbRFbB:%^:tXPkgbB#o79JQ!i=Q^lp@aj&5)t'\4t?]AiH_6=!pLQ@_nbNj6]AZll)5D;e%cFk
jai.M)IsqCeJ`;D!ZJJQ6\qJgE<iSm\bOA@4#2BYX6iE96.;uFBlIIX9%'S']A-GGT]Ah?8\rH
DIjj5%Ag</-P"\L^6q13g#b'\FEHAV`dG/`7'.?uPA7\0r2_2gruM]A\lj]A?FG!.#Bkt1Em.V
dZs"nfMiNs@R3KEZ9&Xfd%Qn!T'lD>8c6A$:UW'sm?$DpiWa";W.Q=!--F$MUEMlCMYeF'Vl
tf\up?Q7nr`UB*BVe!2lJ9M]AAPI7WEqLaRWMSO*!>X;++LZgU<sBhZ%aMcq3*HY.dWQg\"iE
'gVZBU#HM6`GP^/9E$#8qWIR'ZtI<O^I7t%r.k:da4-JF=mj5=W<E>\H8<^>kt+AnhE/_D3I
';6l4kS8mL=i9Hf1+\W9H[LkGFH/KM<_?>p7DPHq#eRA#5RZ,[jO%-'HZ1V^958YgBUYt&-[
lDaY.BN,K?RPN/$,%G`O_04+Jg)2V8;8r=+G+QTMjL`4gEBQ">I&U*[5I*9YCF"WZnp2!Z:(
0lcDGgR6b@t/<s]Al;Jgi%`rln:>MCG\SoVpk>Wkhkc^PeQZksL#N$Ic=U0p0M-h$]AO`#.t9s
"Rdr8JFTQ)l5li+hr-,@,Y]A4eZdFX=k6E;T/m:oQ-hcY3tOGKTC&/MDEqHKa5L5FoF=SKp2d
gZ6+HUS31pTZ^T]A;l!\#4HS-P.fj8S1m/&O\UUVT2Fh-OF]A7ru?Hn*iS*KFJd9jh(f3kES/(
Q5j-:QK4g@(V90>WPHWKc']Asq3)Y-M)ELBSJ+n@GV;`+>+CD;7K?*GYA3S+nN*O;$.K"#LOD
8*=M0p(eE8IsQ,B'8NgSP"lq@p^!`3`Wc7/q02NFgBCQEd!/8Mn6MqQ)@D(c`=!]A+nm]A3u<d
NJ.nQ#pri>eLk19\h2p[N9ls,>dqUBjVp]AgDVD>SlSD9\lE^TKN.'VYb!-X8b,?TJ(1q1t.7
p!TPj9"i;U2<>+[-"X?)K:s0LbYLM8lI%1m]A'`4e'kj*":"/ildPm*0gotHW>8:"m4fPO#:q
^E,Ehbj;X,;20(iqS1^%ceC!FPT`A@[fIC>(Q1([f638dXShN%Fc]A0^(\CbWgK-(.\CK"h?3
Q:Q3EfYScJ4m'6OjB[1t^jQ!Cm";"8c=Qrko)2]AJNQ0ZAHRa[5Tu!conIAb8%A3:[Jru?SEs
'e<s#K]AeZkYn`!<QB7\gt--Hue05h/ZUZ3-7;"q+=F,R0?'p&8L-ALV9fg5jP"CDZ@q5>>Ja
QQ."CTPUj6OG]Aib-[j*2>r_mOW^o=4=\p#)*c?;+7YT5P`).2*jh4p=r8=(5QGbh4qZ+.96`
g!Cj-?-WLP=0bl3h#,1a>J,i^pe\3kr6W4F>VLS&DKK\K^dZS>.NLG3h&sWH,6+!1YTQ#)X.
H\$s4<L7^&a_r[qhKB3-IrLSc?"?EuhT0*MWkCUOX!01^YEU8!2Z7L\<I<+B2U5=.oZ1peTd
lQW]A=MnfeG]Afs'6cB1QMU'VTm<=<MFI^_2_bsuIqK3cdgZknSS&j)Ru.A:Gr.HIb(2O^[>G8
MEb>GD&F8H>9ur9h@?HXmiW&VU@c8aRu$'r#6mH&h"p#gUNo?V:G\C]Adb(N8+p>Tco`V!P,'
-#h>W!n9thndA$c9d,r]A<I2Y6<Zul5WRO9E?5/*0f9Ne_=;CQ$;I%\a@gYbY7]A>mj?<NI;NR
+<OES2(B3:5@kQ(Do`Pj_*9QQ5XfBOp5f99pr1&E6:@Pr"?AKUa*X:4V"rN#i*M:J48!AIF1
s<L8^_Un&-d!Ir"_[rri~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="504" y="0" width="415" height="262"/>
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
<BoundsAttr x="504" y="0" width="415" height="262"/>
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
<![CDATA[m9=p:;g4g/!hn&(D(?Vl:pM*BfU`7F$A,^Rd)QPu`U&oH;f!F?Kd3s\WN/u0OrGK!4&40s91
MUZ>e7@_4KA[$+[.)/g.I)$##1-ZU.O&e;0dh^pZ(,B2kZqsqt!M,.I/u%hLF#s^W6*Aq0p'
8hiGJN\i,?>AF,Ko$AH$*jm-h_-m;1iKpFqVN;0$?T1Gpq$MVE;f3e@Jb(J_UcgG/IZL`.DD
6<RJVLST*39H+Y-"5b.2gleD>3&N@\*:@Xo$@=smB%_q5@ihTMcah'*%O4cc1KSqD%kHL*E0
AG"^Tc6a+3FDlLN30XYt<t]A<\]AF37ahlD5_411e`<b:6)\F"EWN=mdFti`"g77l\Z?5Pu&j8
Hg+VEQDq(ZN0HLC;m`?$hQs)uMJ^5Jb2.[#9RWD1=cBf=me&<O\qW'hF9lA_roDqa;2%HH-X
Y4JVDWJmNh^SaSeo("omJtU8lg,UCjeg9]ACEjgXqG)RI\+#nqU>92-2US1cJ:L]A;qTZ1n!X/
9>u_V=9T=D/\15\"e^3.'8pB8t5C_bj0bG5m6Li)h'Y,tJUgB1??gubJ%E#@qeEh>mI9>t6B
6t0P<ENq<\gktd]AQm'EK*na/=l([+AlRDZOc=YWjALC6CfWi`a/.8</6uN3O,Nod%>AGb1-C
!]AeC%"Po/X9tpZL>;rUdq"Vl]Af.*[Vuml:KTPjr)q`,#c%]Ab3p;BZr?JUL9>]A<WF=,T3meuY
lY)?;fK;4;kRr<S`)-%OLQ/,a-4sIX;2ChrULrH)4S',>H7Vgi;4@t_C+7u@pA>Lg-\'G[b.
1rmpfWS&_-Zf0gtcO5W:5`k33(i/3ceL@>f^o/hjl'\RUlp]ABi41'I(#fOY;F2IF%Ju^DrpH
!4=`i(7sl`fXk_WK1E/6d`;23KHX*Mjj[p\0"ZOTF2(+2sSlamU"M:SF5Nb2M1L<Kh"hD6N]A
/.l;K"j5=i)J8[LHf-t0/PMPYRV<jDLeQJ]AE+'6Z<(0n3`T\eaK*DNT]A#7UQ8Fuk9@U$\Z#<
td@iMIb/7@GrlHOeF5GAOI;.P=D&(8Y`6_8Rt0$bX6&W1%gY5*)il``Fjmg=l#V?3H<';2qR
g/RbEBc!lH7bG_;^$AD@!V:JNJpP0V&dBd!(#S[5ee`(Z^\A.Q;f-:A*WP8lbKOTVr*?I_'i
D6^D-U&"pW!s[@FXaSj4BF/?h"4urX#*/J[)-PKD9)'c.J('Cr;UjN5&(=B2%:p#`%7TJPZG
$/]A3d/D3dq8;ae=G$&-%a'j6LW99,&P,\q>L"ho"M&N-?\;hh:L`O^7.KXE`617RmV_F7((V
Sec[4s?-TnSY8=8Fonp"eslI4o&V0>KQ;u"\r(5RPnV:V*p)85JNGY+[2H'Q#n*[W+ZFZnZZ
kKOJ1%IkM:(NAEAnOR,*'):]Aca1pNp[F6Vk:b`H]A-2N>m,6%&/3Z*Gg=AU/Rb565N=92(]ANi
r;RDVA,?3EMZOL'gh$3L+OQDP;tk3E'*ct8*E/3(<"Ig"VN_<12<a53<daZ'5SUIq$G+r8N/
eN8g1P+t6)Y2NCCSH10=NblhmR+W4C;J34qLh*+3cH:icZ0f\03(\3/h6]A4I(mVKQsS\kB1*
#h&043AbS05`.'"7BmDrlquGQTK0I91&G@IpY-9$3S(ns^mQj;0ROad%Hi09:1E6hfP*Be\'
s'O&915fuKqEVigN!&g,p\>*\tjFriJH-Xk=?G>#EP67$H4N`>\l^bZA[!@M;[QdN7)ITFlH
1o1"E]A&%KC:ad[N@Gmbnfk*E&.oekQPAf?*dTmIk6D7j@D=SOEPG$%#VAfr2dMSL!6HUJ5?r
?EAfheMXPegXX4O)3\]Agq"o0j]Al$0oc*E&\1[tAlUZT.R(@_je`'^V3'rUtJ96Neh',+k-4A
u@N7burq^D[FuUd[uJaN!R'^POo[2F8UaMAt9=UnhsH&+@SK]AV)'aXB.e!4/!o[IBo"K?.o!
eWIhacK_*029I@bM'1PIZF1#3KP3t%46F#j9,U^1hXRcYuY"H3;X[clB?]AB.#iX%.Hi<m3sI
VmE8#ZWsbiiIC'5Fh8\!82Be_]A,<B4*Uu;!TW1/nn^KuQl]A.4-q*:(`X7mXRj&4d$mKfAol,
*n4>6rMe$'e]A5+*q4T?ASu$]Ak66dY5p<@YPmKe-qd+=M\V#l=qi35S'Rj638L%P"HZ^lbk6g
`K&37i@DB\:rq[hn/"Ks"0a'+)Js#Qf)agLrVQZ+&8_"'A/Ki*$R&]AupU#bK):Y?O@qH)kZQ
_6>qi74%]A/qi/=,EACYH[s:i(;qS9%HRWL&p6(J!-)M+[MV8YnNBp5%)(S0ZBBUUu9iq-WW1
'!6-tueMl`Nd054:Gnl24AU(%3#p@kR"bJU<s7K74_0X4/$hqL-n7+1!80T7]AW_?IEeoTod%
_'T9/CB3``IjiRN$/X+KTo<N@`a#q+t\o('c4r-;]AnB$9$(qf-:S8,\0PQ^*e6BnJna7[$Me
";<:r#UB@_jE4V5n@WqpK2CtEa,SKL%*/!G92N8P>@qI2qe.=YD<q0'N;<3,Pc/!GQQTcb)@
`=ZOf*SW6KcG#L(;b)'T7sn"cn.$gQrXL%`o5nKjeWug&S&iW9gKF?sJ8h9q4!6@$i"1>]AZ@
h.FB`JY^b4%.JCcaG]A?!\Z46#kf/@nOj$<C(&2*?mZI(e3k;bpgG-rMU]Asd(OdVMh3>%St)n
^SV/;CnH8G>;54MlNQB=0m=?c?baS]AB]A``m4gqhh9IpX/UETu>?YI"j^^=#94APhLoJ"?83G
_/K*$;@UA3*6.j)CZc0?gR(QNU*MOkm$>ZIS=;RD^Vu)82N@W!u6>6V-BOYorr:96GU#JlL!
,FoiD7&Yr?R%D"U1RKI-[Sl$i%7-gLm,8@Z)`!siUf)3\cBc6i8_=5f$C!3N`I<3[,;dQI0T
)jYf`"`a6%^\Sf:6R=9>7[s'fP1,@]APLX9TIChj["&Yne_L06Cqt'q0!/e"r)sY/79d06QcZ
T)WE+bQMOc36C$$e!i)f$7<16!i#hJ1;)3pg7*VEn`%(g#kXF*#nB=PIQb=?IW0[e87lY)[9
L!acUs!r9ag#h92PW=rc>/mB]As@ctj`,2-_HLM7?aCqs"a*<7K]AXk<^28OU-0>M-ptCoPJ<D
4aJ_'2qU\mjK[mO:@C3b@E%L/1Cqo,78?!LtoW(fn]At<dn*._iWY0dDZ`SEhMQ+Re,u?Z8uq
a/D;MBe$Ri':jh-8mJbi?5HO3MmaMm2i!;cX7ds6&?b9o@r&*9!Fh,]A%#A/aeLX$NsSh&f!T
qdV'I0dE6r58N`)^4`N-m<_B08WP"\7i)]AQ7(Ek'<[RZ,\pu3l_OLmQ^L+.B)>C67OZD62)W
MYtL6-f-_dk@I=9?bV+N:S<8p)o+raiUHq(PK0013LcPQk6nC@d4=B"2(.[X3>.L?37:^1l0
Tr@)poB4cF6OH-"o:#X*5nJ&FIQXKn]AHCHJIU]Akm3!Ld8RKa'0#dt2;5&J;4/5la#T"g0t?C
)R]A+>C3"C$3Q@r/F;KXi;,mYHCOT)X^6`u/YL)>/^^4323.pIJ^'kT<,n3@itletbOn<bg>H
6c'_).Oi#;h7l<C/(>7&DJg=m7m;a(3&&[b`Z,Tjj'J-rZ-W>n\;@'CTDHWL3uc#Vl&$i%?l
F^bBM1qXIoEoCgnrn]Am]AGF(14]AO`3Fgq$]AhIPY%*I0^t]A5b-qjpsG/G!<"hX?kE.pgS@EpI$
M+_U"9pOkS#m=I"=YLjeJSJKbRs+)MpFOgT^#QLb#okk?ZpXS/ah(5!8ehpHhl)koGt3qeoZ
U+%u&++ApRMWD7ci\@)^^[i>-Q;T=@t68-+<Ns1<9G[+k5!:%VrNu2QS5Ei@Ye,1s"LW;X`h
S`?*]Amg(7L-0j7;'WjWh*C`<"^`TDLI&&>WemH#eCi.(H0Zb-WCgRadgCst%M3<q$,'YoOJI
ei/hkEYX:OB+!?!:jAUa,+n1lg3pD(.X=qG'H,2Y.*"OW>X9(#mPM3n+*\Y<a8[E;9D\)3gC
FCCiHed#+O%ZM5@fN+GJDfC82[8#L7-,BojQ'm3Y!M!d<CQli5SI#07/f'S6#tZd5K\\W('E
iGK#]AZee+80C3TN4/bAco6E--l?nr0HU1L]AlOk#9+ag^KKJF,7]AM4j8$16'Vlt*&*f9_/^u&
:,np\h8K`@A2",IQ^pdl=aJH*t-/o)7!_+-rX(4?.qc+^6oTAW']AV!4@@BJ2>!CYNOVq8;l7
q?^j,nsle<:sR-mN]A6Oiq1nVa/V]Appju"s5*p3(6DbUWDhDVKHq:FMoPKcRqDJ>1L_s!WXBL
=Q%+s.tB0'&ESN]AG(.KJ;3_Buk+i=YP6noSAQYhPX&5^kl%4`aHC$$R#95O!g_.2NQgdio(j
[#gD6$Sk"9'm)N^dPp=l%lf,m"c\.@9INZ-l0>WsCb?ED'6fR0s0mElVijG.0,&\`j+J*<J7
f*BJ]Ap@F!g.]A1RK@!U9Mi?h^'rOE=pN+OlLOY1i-lIe=P&@a3KV;YZ?^H]AS\d&"edC\$cZ&a
k<1KPQE9!e98-A?="e6HT;kpf`j?Z]A*!:M.'?T+>;/Q7Wq"4[>Vg1MiZa7k,/&P!"WoRc6f\
m%UfZ(S7b3fb4`G&Ar#VrBn`"tluH_L07f)S<5P+<0ot:mg"HfVO2BV^T1>Tm2SUC87q6U'9
W?;ts[7e"]A_"#F[oc%qVQ+g^sLi(4EWUS2CL)T8O0)Fn$Osd<C.KaS%8ef:YcfG^l$pq\C&i
*X([<iu@!>jac).PHY,\1+1^D-T@8Urq]A["4-[D;6M\mQ?\7W:i_Nf>^Z_L9R#M>"`1L&E=o
8'#<ss6N0)~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="919" height="304"/>
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
<BoundsAttr x="0" y="262" width="919" height="304"/>
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
<BoundsAttr x="0" y="0" width="504" height="262"/>
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
<BoundsAttr x="0" y="0" width="504" height="262"/>
</Widget>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="chart0_c_c_c"/>
<Widget widgetName="report1_c_c_c_c_c_c"/>
<Widget widgetName="report0_c_c_c_c_c"/>
</MobileWidgetList>
<WidgetZoomAttr compState="0"/>
<AppRelayout appRelayout="true"/>
<Size width="919" height="566"/>
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
<C c="1" r="2" s="3">
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
<C c="4" r="2" s="3">
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
<![CDATA[m9>'>;eMQ5+f2Qo6>'O(XVc7p7s5\'e"c[O'&-ThAL2EOSV]Ar^*gqm#.jC`*c+Q%sa0E'f>+
MC?KkgpU[0k;*,(eUSM@fjkYm'2i,#L[[,gZ\blR$go!38*Mh&ZZnm_W<NaLV'BhY2;fkC&u
kbMM-r7(kWiaoi!%?=!9mP4p,U.>&bH'ed6kr?^nc&dAL/Q7cD4k'q7F>2Qph5j$,MZa>i<r
\l1tr9Knb(N_%AR3d\s5dr,UFRPYAkeo-eB@fhIPTj2NM6-)M(WG7G4*^<lI*;2=QKU8o7[C
l$YDK/"qZUN9l$?u.GdLu"p8W<$(S4"-`BFOPi%2oDn8@B#2JRT`jF<Bl.[QA]AQZKg`q+\&$
hN8_$k,",:bdT>SU,u!Y%XhB%e,42VIgY6i>$(!6F_rTY3dKgdpjC*s_0"r3U&S&PDV>IoPq
cE?N6%W/[E+W<!DutUK&4:YTgSj(^O#2aQ;<QXcd`ZYlFE4ek4FPB`2"6eqoAGc/PXNHkS]AB
A`(,X*S#DlJ*jN6OnEUKl>Js#'EjU1MQhfBAS2=JdJ3RjE\;fmj)pC2VJ(qB2=^fZnA8d;d>
H83dj82J"hp9U,\89%5p"?r;MPH^h<h=B@WMII0g98$&?aW/c_jT!9r:?nH=oHX/ra(3+k>%
:B/W//VY%j&A-^:*fCNi_C5-NI:^407HDN@nfFA=:*"eV<d1^;SsFHXK_PP\gM"ld\n^=O,O
(YBJ`\#DSG7+taEgt#B"p/Ki+$tKah(EpIN=2'A'cG3pO9il_d7:BD:+.Z@N.U3l!'1VBbqR
_N,F3lCkW1>U(F#W0LD=9>]AOHSGp%[N_*c&BiHhFec!Y&Jj\#@Fu)K@osYi_Y?/bl3A;`M&f
)prkq\GP19B'MUQZqL.J9=uh5fm=,ftZ-WRH)?QC6R>suQg"!e8UYh8L8q-eC)*]AP+U;W5TF
Q[DHH_h;QaiQ#U1n8\LI$IHZEf1:(Vj`;l`;u6jF/T&ccNPaJFf)A5fhO-q6]A1b4gN"!licm
t:$`7E7W;!%[POqj`AmmcS1d<<`7$pbGV190H:_tXikOMIX7l9c.^p_h+_n=Iu[2P[k'8krE
MZad8b#R,%EEpf^Vb$/-^(_tMig>_8gi;05`bpf%J+7m7%4^[Z*mK!DSnCXdKoqW>W#Z0TkJ
Td+!G!GjmZO*N]AE!9]AWElRB^+&+gOU#&o[5RG8"krnU3LbspI*MC,0"!OaX#O\kWaY%Tc?gR
eG&s\I+<+]AQ%KBh/?D"C4):P^=VHI]AD=^J<"i2!i12rD?CAhUkXIb@Nd\"B/RQp1ki(CQ*H3
CP_7E+2c#fjF66\Na)`rX+FN0.--!C#ih^r+_<BGn+QKP)0MBhRIm-;Fp#I'3^oE<X0pMWtl
9N\UmPmbb$@9VV>&a/0jVH"Bt2._HfW/Y##&AdJH#t;f?OIq)%a&=8AhVb4f$0<]A1CeIL9%2
Oh:D+A]A%,@'u@GD>b`:me:-P69Iln:61$<d.q)UCHN+jS9(*iGLT*'-(&ul,ChnQ3k"5Jt@g
gQkm99[0$phfJ%R.7E%9+YgIB(H2)<-]A+5+<>\19Z'_S;1i9D\Me"oa/46ca+AZo>St$=juu
'%h!CJ1fetNg5h$[Fd:>e6U3*8*_'-RPP$g261UX!1q$RH3DGbBdd>7h?s7^(/WbKU(J3l_(
2]A2AA2.hJBe*_f$Rj1^TdPsp`j:lDs,57Tp?EY2%,HlXe$n)XXP`bA8%$SJ+nc7S&4IaX;af
Kn%\[2,0MUr$6:HqJa`COAUQiq[(ue;Si)^ej<k:^;(Q'ru-.[ZR_6V-ZGVb+G'KZCXPC=#+
e7fg<6pH+9buhf>7"T!l[/>$/bNsu+2UZ+U94Q'X<5**\hs?f:U<H9+s8Q2r&VJp;%B9@?*p
`RthmiOU!h:Rsi@Ce8-%+haQ$ngae=eM27e/bnRNgZa"IjLr<f&C8,E5q`iPd^5EA#omQS$@
s/+>uMg)Mr/E0uM.,?/B)UtDTIh`0NL0NKs<WF9i-@lBZW`TY$0OB`j-*JLtbrhNTGlj?M;6
\rpq&"OZsWDR6pI2pt0rRACW-h%Uus8$D-=/a?WTt6(HQr/4igDIMKKS90#oA&0]A^;n8s6%&
fW:0nCU=PF3,;ofD@=EpHWc""%K=K%9Mq]A*?C]AGA4*(\'Z/ZsKO[r]A``0YhB:bLk^p"N)_NQ
d0>8;R,/`99&"^$S%fN$Qghfr*k.NOWc3=:.2i$O#SGZUF0>eE[`oVh[#]A*NR]A;=Rg-W.Ns2
:s($*KR"kPnYR,d4g_i,js5-YQ1@kKg"DHu2@s)6#mGB&?b>LZ`'3Pp'=P/lYpAdD0@S/,Xd
@RL)pA,7uZfqJIFWb/DWb3KNUfYFO6r]AY%b3E)q#=Of<iec,?W5jM$P+p"007fR_!/nQ3mk#
p_`Ihpu/Pk6E5L^9r^'I+U8#lHFbp;?G=?*:ZU"mB*d7(h@ks5m8WGQldHXKKHbkW5^e8$QI
1-^VK"OUM^P\LQ!&$U>5.OQRGK(eQPn!aO66(,B$ZufQm*T0EW<\L)VWbW*ZF^Ml#*aoRX)n
abfE1*p/#]Ari!:`)]ATCrIO@U4^t<3kdqiH4aZC+':j@$@.k&4f9u)#5kCI\D&ak./S1R@]A!C
;b;l-]A-,F+r&!fl>18.HcMt?!#VIT+k>7muqt,4pA\'ZVNQuAVu'?ke:\t]A*O&q(-'<NE2@u
k%/oe=TAYh-9U3nUNI$ZoM?[^S]A_D;/bQi1nnO1V6L>GKtrk's9$q`N/h+"H?^(/T+#::A0D
9&!XZ3$f'.%,3NK)B"J"&m='>i,YrdV@RlY,EB:'8+`DE9&<t_l\>kjkYSEb-K%722:<5ljC
kl(q0oPikH9?!FmW*L`/9U/;hh5':]A5E1k#&X8?Y>'<d6E>-"@]A<dn+T&EQNS=ej!c0,=tq0
"EDNT:GkN!\$(%3aSVq:)]A2uWpahPCUc'-&U)KW>q1@cqY<fE(80D[cKG$_Rp=A=IJ'qt[KB
RUbLo.LMr=d4U.8O-Heq$jOM:53EB_f-E;9#O:C,"ecn%.l7'8=/<#,2:m-RYquV!Sf>aDe=
n0sIXoGg:h7)PSsW<-^KR6)2hUZ,aBAj6GfaqF-3C'%@YcKlf8<h?AXs(Oq/[>b(0I9;T`;0
kn$k:Z4+-+\)@1>'BB]A=4.o\hi%ug,'G2XiOB#:+G'.>^;=1RDBTBFciE>^0?Oj>a,n5^*<^
FbRFbB:%^:tXPkgbB#o79JQ!i=Q^lp@aj&5)t'\4t?]AiH_6=!pLQ@_nbNj6]AZll)5D;e%cFk
jai.M)IsqCeJ`;D!ZJJQ6\qJgE<iSm\bOA@4#2BYX6iE96.;uFBlIIX9%'S']A-GGT]Ah?8\rH
DIjj5%Ag</-P"\L^6q13g#b'\FEHAV`dG/`7'.?uPA7\0r2_2gruM]A\lj]A?FG!.#Bkt1Em.V
dZs"nfMiNs@R3KEZ9&Xfd%Qn!T'lD>8c6A$:UW'sm?$DpiWa";W.Q=!--F$MUEMlCMYeF'Vl
tf\up?Q7nr`UB*BVe!2lJ9M]AAPI7WEqLaRWMSO*!>X;++LZgU<sBhZ%aMcq3*HY.dWQg\"iE
'gVZBU#HM6`GP^/9E$#8qWIR'ZtI<O^I7t%r.k:da4-JF=mj5=W<E>\H8<^>kt+AnhE/_D3I
';6l4kS8mL=i9Hf1+\W9H[LkGFH/KM<_?>p7DPHq#eRA#5RZ,[jO%-'HZ1V^958YgBUYt&-[
lDaY.BN,K?RPN/$,%G`O_04+Jg)2V8;8r=+G+QTMjL`4gEBQ">I&U*[5I*9YCF"WZnp2!Z:(
0lcDGgR6b@t/<s]Al;Jgi%`rln:>MCG\SoVpk>Wkhkc^PeQZksL#N$Ic=U0p0M-h$]AO`#.t9s
"Rdr8JFTQ)l5li+hr-,@,Y]A4eZdFX=k6E;T/m:oQ-hcY3tOGKTC&/MDEqHKa5L5FoF=SKp2d
gZ6+HUS31pTZ^T]A;l!\#4HS-P.fj8S1m/&O\UUVT2Fh-OF]A7ru?Hn*iS*KFJd9jh(f3kES/(
Q5j-:QK4g@(V90>WPHWKc']Asq3)Y-M)ELBSJ+n@GV;`+>+CD;7K?*GYA3S+nN*O;$.K"#LOD
8*=M0p(eE8IsQ,B'8NgSP"lq@p^!`3`Wc7/q02NFgBCQEd!/8Mn6MqQ)@D(c`=!]A+nm]A3u<d
NJ.nQ#pri>eLk19\h2p[N9ls,>dqUBjVp]AgDVD>SlSD9\lE^TKN.'VYb!-X8b,?TJ(1q1t.7
p!TPj9"i;U2<>+[-"X?)K:s0LbYLM8lI%1m]A'`4e'kj*":"/ildPm*0gotHW>8:"m4fPO#:q
^E,Ehbj;X,;20(iqS1^%ceC!FPT`A@[fIC>(Q1([f638dXShN%Fc]A0^(\CbWgK-(.\CK"h?3
Q:Q3EfYScJ4m'6OjB[1t^jQ!Cm";"8c=Qrko)2]AJNQ0ZAHRa[5Tu!conIAb8%A3:[Jru?SEs
'e<s#K]AeZkYn`!<QB7\gt--Hue05h/ZUZ3-7;"q+=F,R0?'p&8L-ALV9fg5jP"CDZ@q5>>Ja
QQ."CTPUj6OG]Aib-[j*2>r_mOW^o=4=\p#)*c?;+7YT5P`).2*jh4p=r8=(5QGbh4qZ+.96`
g!Cj-?-WLP=0bl3h#,1a>J,i^pe\3kr6W4F>VLS&DKK\K^dZS>.NLG3h&sWH,6+!1YTQ#)X.
H\$s4<L7^&a_r[qhKB3-IrLSc?"?EuhT0*MWkCUOX!01^YEU8!2Z7L\<I<+B2U5=.oZ1peTd
lQW]A=MnfeG]Afs'6cB1QMU'VTm<=<MFI^_2_bsuIqK3cdgZknSS&j)Ru.A:Gr.HIb(2O^[>G8
MEb>GD&F8H>9ur9h@?HXmiW&VU@c8aRu$'r#6mH&h"p#gUNo?V:G\C]Adb(N8+p>Tco`V!P,'
-#h>W!n9thndA$c9d,r]A<I2Y6<Zul5WRO9E?5/*0f9Ne_=;CQ$;I%\a@gYbY7]A>mj?<NI;NR
+<OES2(B3:5@kQ(Do`Pj_*9QQ5XfBOp5f99pr1&E6:@Pr"?AKUa*X:4V"rN#i*M:J48!AIF1
s<L8^_Un&-d!Ir"_[rri~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="504" y="0" width="421" height="262"/>
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
<BoundsAttr x="504" y="0" width="421" height="262"/>
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
<![CDATA[762000,11353800,5486400,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
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
<![CDATA[m9=p>;s,#_&0XXXelib=,jft_gG+JD;*Z8gC0Rd/ZDX7Q/OJZ'QaWh);o)"f'<E3YVbN_Y#[
ZNQ3hK+iFI#B!E^DFT#W3`g+Lg8Q$#Ks!S<2JscIiM1W]AOQKR+C\N."D!sLNC3(HS</.pNs[
$hu@.kk5;I&@1WRdIsUc$cTi%9%7.fLk(]A&6WI@>Q"@6bbT75dt^YEhM1=3\qn136'>S:Sts
"n0=!nD]A*[.]A7b5/18NIK#oegTU<e$=@\`s4)l`feU"Jl@-o_YGL(PYJ9dK2Q`Oo>edjh$We
W'nQ\Ho>Y!^X7P/M8aY,]A1B%tskO1eVnF)A;Y+9da?jaYP?3rVS"LQ;3>K'R".#/^7'+`q(?
9hIgFi5_of)%PtA^AfkQYBW70(<<FZ%[7p*8!b+sSbY[u`1u<AQN%nP]ApbTgH_+$H'/,b+cs
0gbP"Vn?6<G+'^9V[BHo9Zb^V5.Nh:a#>3sk8(=[mI,$Jj;)R=nRZU&M.Xce<A/cDBS2$#(:
2ocma"*MtZ5Y4Ea;jbn3Z-M%Q@fF@^k4l.9U#"HmKnh/rp",%U3ds&a0q:]Al?U)]Af%iB4k5(
K7QA=OF?BcJs:d)^tHVA%\TnT-tdkgB`B*4oK.$$9l3)06k#S.:S,3f'C:+Nb@BfP=k-OOCf
#Phh`#\LOL[*H@s0cYT8Y2$]AU7j\gBqtn;NmXg^+RL8?g^T^Q-ldkhH>PI`KH[=>_'k*uEJ[
lTYbL(OXA<Mo__:Q_-fhG=Hl+d:Fe?cJR?53FANJ6*XL>@,0s=/iCB$[m*;r'"k,jOoo2O[e
kNp]AsPo1BW5M-GF#GmN1fPXWO:]AQ$>[mN9c'l*V%Pk<a2Tcqj,>Vs-M;G[$MMnQ1';XZg?-`
PCMR/[[62b?Ut$9@CT9r2<mk6Qq!ILS2<#k2=P1-3J[8V0ojUW.LKJo1^,nbUUe'Wkqe[GNP
-84GH$qYt`3O!WjL%cdS6+U[d=^,+&E<Z#p$rDHa0W4Ur`m%tn=5dY.9Fe?1-?dL:/*di^!R
lWW/C>(RcQ`qq\-_+0j.iuDg.8U\X,/6V2G'8B:b7+j!CL6fe9#A3iq`s4Iu':]Adr/_XP3Gb
d>rI2lB;FUUq6L>EqaeD1PVPm>>E2dCK"a(Ipc['H^.NtpChObPXk?PV^:b\8Qrb<,21jF(e
`03Z_Ab7r5\T;a`32g-$#a(>D\EXN8"6Qh$Y48FXO=pPDuD09?S7r4B0K>]AT@6Q.cDa.0>"U
G=5!9@CR0+L,4b:GjNh$kW]Ag"0=/B+,dGfjE96h+-Idei_BDsQ3==9k4DeRDpBHEIaI/T%)V
-Ys&cak0CCA!jG\rL^;(nf7=D!u9?#]AG4S_ULnPXN^oBqXW?):<ungT4kC%L/_k9G8K@p4cr
)YK.\S-qZH*n3HoAu%/c4t)5B29Ds0oGq$IDdOe.F+2P#(Sp2*-D:,ppo'f1RO)nu0)14b?o
ptCE6"aa9hWar32G"!U]AWQh'-_G+5?<)9/onBR`GgK&]AhM\!FK7;.MK=bM?_HF4U8AOiaba^
hP3l7.'uMs3Us72Z^u,eLc\3S+Oj*q2io-f,knQp.,A+Wagkk.7\_j0<>^//Yi.,+4^0AAVV
Z-8X1F#$4Ed*rL<DG,S3>g[(EerQ]AOMU0/b-T_rbop@hU*&:Os&W`a/Xo"fYi0>WTGPK=c8]A
kPZYTTA8Ek^dKE\a'+c!3n*GX)I"V91e;DCgs@%hc:DQ+^SS0A,5n)%#pQ'%ph1<Ol^L2<\g
DN7!cBCIF6u=l`4bj+GnIjg,:<Q>'co>9h%7Y`FQM.]A%^_]APL5Xig_b]A8+sp)-4C;&%&PZkt
`mm'<Pm>JVL,*=FqXUaaJf^('H;(*,7A'QC^mG<g]ATs?#C'UhRTXfeKA$fmH>]AeF)dIG:i>?
'J+.D`CY-SmK;]A)GbS\EWmdlaf[>ODX_V8u0'16?CgiDoG^N!&M!5LYM/f4moOU-mcS1=R<:
p@G#'e^i!LClo+IA@)AXGH_"IG0e)dJLCh>#4HA?dj?=mKg#7)M%.G*"kg9aUkHHHKmf]A^\E
5u*>_'Fn2/;=q&8ne%V$KGN(>oL%@lSQ`E#B:^!@etHX$eJPCFPNAs@hpTRMFEe(<`YDOMj[
GU;n31b_I?Q&>Nd`0qVH[XishWIIJGFVSgTl0rmG[FUb!uOU.%#W`(HnOFeq!]ADi+8e5?pk`
5[t\V<J]AfPgbuO%:BZLm"sib5o)%t,Vk$DHD+&bsD@o:s:m&c_=njb#q=mAcY\7+cC\ag#Os
m=Bn^@_0p7/_pHh2"?&#)CY[QtYf\Jp@T[u->P9:Ls6`>0HhGk&0Oc-/ufJ%Mg`?5>QNB6g+
OkXPWq.qhEc-M";b]A5-['3XJUS\V)Pl;l^XJMG[167V.u5QFNZ4:gE%4,cT+A]Aq/421:u35]A
cV9I6<S":2[Nd[C=tLQT&$DNY6^Ui1q#LBC'<?;'2dXB/_Uk(#1-4J$/RED`(`%\(P@pp3b2
Fs'PUZ$RhdV+U1QuVFYd1Qo"u0r>[]AmU':stHUL!!21r/$=oPK)e\a9kA@(+1k0'sf\D9LJ^
[:dVrrtjbHQd</EL":W@=gNf5QnmujbZ^Z0@WMGkP?`'=#2kcR*p$lg,`MR<;lpC0%!"OgI(
_h=pk#admDpc"n475;K<j0"6B`1Q$>K^Q9M06aP?/qWZ@fLM%P!q`qRE@-,CX\l."(&=W]A//
lC,/>X:_<>4^8:#;T\DlsS<>T<m5H4+85.RhTCEM4&%CiJHEl47+c3p@_f]AsFlqV:LTGObOD
0.D7pEcF,%@>HfMf#%OGf\#/$,Dg(/uGig!auiA$92d(+K``:NM`Pr[UKmT^eBo%ZlO5U>LG
>+1cAX6\N9PiK;g:KSVF5aj?#U4(@&1t_2YYGS:-V.[d\':m)"n/=VT"5L0E9N,i1E#`:=N`
VIel?.cT`a\E?.3598oX_.<-Vl.8&pZU_Q?4%YeJP#kOfkst;V;q%3CSf)FhB#:[c@_3V6M(
Yid7T>Qb3cIu\"TD0@X^Z\PN`9]A387VAq9=[q?j-7h5juGoRFl*=/M"`mp2;mtX@(lG0X9pR
^=@C"L,fY/JW1VA_#A:R4XMB/52FJ%_:13HsU4efnXT_aegq]AeDA7-<L#*p\WA?m;"b8pnX.
MJ^@j1ZDRe5r?j+-@DhbEB"3QaKa+ngtAiMuAfF#.L9EPr8`c?Bur1khbSXJUN"Vd+:6TVL(
BAElY&A"T\R7J4O4om>5WhQ@r(;QfjJ@79gKI^3mSVRQ\Bs*,j0/,&Qm"s/?R!J5jCo9?c+i
?b+F_P?\<5%:<'U*U(V"L`n9I5]AW33MCn':LiDVVM?P+7im\:T_-kOm'%s28+eEF,I?]AtX]AO
=F03g&5ET?SFn+`KcJJM"+L>k)V1[\H[;ST[I2<WiCu<Nm8j<Wq8j*DZ+feY%Gs7+1r4#\U/
Kp_dI&JYu\#XRukK!>a*Srdq#DbWZ)]AC@n)Y-FdtOk)na3H[D1_#a0:Je5.Yc$jS1f0n_-+G
pj7.eY.JM1J5Up=8($$@'mb6k%!si?h`BO=tgRKQ5nI7ca*Dc?-786<:^C*E@Q(4V.M-?[05
,=QQhI-e*g(>987':i2IR1pR^7OB!s_ge%[+l1E\obWGrqkBUY\7Z:K*F!o1b"$X]AM!l-RNA
a,hLW`t-]AiC84Jd=Z)*IV&JRX(5E)3G3A0c$t.!-^M'tsF0#\1Zj+BI5OjRPVgS=XD22tL#C
'oGU4n\#1E3D>X=FBniihU\SQVd%bM4>I!G8dod5Nk9JCo@P-.B%1q&K)r;sMK**A\W$SB7J
h2kn/nVp7A+qdi;+=9/bu<CQV!NW*;6pIQQ312KEC\7A/f.&$Oa*;9HcF_((]Ak6`t;@]A3^Tq
(n]AUpah>s:,(4<)o/J!O(</&4CF?-Z5RZjS!D%UWS/0_?B+.L)<23%:k4h&jl\lEVpM/b#b9
cW3MUFJVZr9N+-u7&+?"kb]Aj0VsYWHVYk_&&F?NihN$L@\T^Cqtm\HTFAFq?52:r`bubr_YM
""5WiP,e$EJf=s@nPVSg(85^DeF?)(gJne-[XJYIMnR;Gi0.ZHpUg0fZ]ACDecVbX'DXC>]A2%
bePcEb(k>C]A;>HpSmME_\%!&(@B1Fb-VN]Aq8\1]AfpdT$;:?iaFX;[KeEXkGDm\IDeCsAr^-[
+"K@p:-Epa#$4_4//^]A-I6iB`)f!p#]AVaXA^@lrVDP6PY#:;P&U<m/peV:q?'X*n"8\lkh!D
>rJqU<Q.Qi(9mZh'Ej1WuU'F:4UM6GkcNl`dc2#,QNE`ZFTRaJBG.SpV6ueG]A`^enBi_WW4)
O(SG4efPNB@SX$);iq8;r%/spb]AN:q",n_QMJX>@>6m(g.-ZlRp>>^D:L3Ah\9ZSj?Q,m,YP
#9*OW_fNEp?n%KX]A;\6^j[o-:dm1oA@ZM.?<!9^!e0B<76D&\MafHE`?OYlUegAK7R"VB+n0
ER3f-O><XOd[o4`r)[]Ac<10Y+L6a^B8[?l4e=;_^3++PQph$o:REG3(<DE-\Fl.&e13kOn#P
=HPHVe@!?!dqp&>WT@P1]AdBFf[_]A3L:jehEM$L<0W5`\73@P:@S9Fj@M)H>VqSe`^Glo-mSJ
UQIBk]A%&OH3s@7iB&?44-ZgrWdA.ZY[3YU2)9@m:p(9^GAXhOP=^uEUrF%R!W7me`od\jU-L
*,Za&9AI^rt@LY35'9ql5kItj2W[M;ORJOfG6XjM0oe+2GmU?AK(1&?-acs6X3*j=d+`n&ga
5Pjr9s-V05i>McJE#o>&Acj.1L(/P1'eeVh.ZBZYM"`nNE6:/(Rk:cJ2Lm^,%\3j9r2("ujj
#"KLdb`>X(_GdgZp!QkNOAG4]A1fqhQD>1~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="925" height="304"/>
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
<BoundsAttr x="0" y="262" width="925" height="304"/>
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
<BoundsAttr x="0" y="0" width="504" height="262"/>
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
<BoundsAttr x="0" y="0" width="504" height="262"/>
</Widget>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="chart0"/>
<Widget widgetName="report1_c_c_c_c_c_c_c"/>
<Widget widgetName="report0_c_c_c"/>
</MobileWidgetList>
<WidgetZoomAttr compState="0"/>
<AppRelayout appRelayout="true"/>
<Size width="925" height="566"/>
<ResolutionScalingAttr percent="1.2"/>
<tabFitAttr index="3" tabNameIndex="3"/>
</Widget>
<carouselAttr isCarousel="false" carouselInterval="1.0"/>
</Center>
</InnerWidget>
<BoundsAttr x="2" y="32" width="1146" height="679"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.FreeButton">
<WidgetName name="button0_c"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Text>
<![CDATA[2017年一季度热点技术篇]]></Text>
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
