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
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3, 4, 5, 6)
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
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3, 4, 5, 6)
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
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3, 4, 5, 6)
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
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3, 4, 5, 6)
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
					radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3, 4, 5, 6)
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
				radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3, 4, 5, 6)
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
					radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3, 4, 5, 6)
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
				radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3, 4, 5, 6)
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
					radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3, 4, 5, 6)
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
				radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3, 4, 5, 6)
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
				1
			) AS `交易金额`
		FROM
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
		WHERE
			(
				(
					`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = 2017
				)
				AND (
					`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3, 4, 5, 6)
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
			radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3, 4, 5, 6)
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
			radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3, 4, 5, 6)
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
			radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3, 4, 5, 6)
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
					radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3, 4, 5, 6)
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
				radar2.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` IN (1, 2, 3, 4, 5, 6)
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
<Attr alpha="0.3"/>
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
<Attr alpha="0.3"/>
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
<![CDATA[m9G!?;cgCl#nN/3YsSn&>HhJLlKqS>9@ZopTs&GsW-H@08!,6oV)@sMM$8fj5YeDif6YD->=
Xd,3UugLR6GGo;)1ZbfEYeM:9)g.2p1024MqJY4O,t]AS9/MFjm7A%.$]A6?rkT[gZhIXMrUt1
.f%N2*g:V.ugq`dg+UFP6g`N-`'*S-R+in:bJ3WusgV-j9&qWO/4SR'`s.3BChst;]A;,s3fi
O^]A$'sl1-C>O3%oXc\VEq)p<2L_3>A]ALj,ec5Njrec>T`e,PS/a9[8IN/3/fa74Oc/B$<+L/
.UjrbU^b,M(h4tE>.KGCBD;fX0+R9(2p.*.&H7GYTCO6+$phhZXkIoY<OFd'5/KpjmU7QDmV
gf`jgapms]A7iMdF=YYh:Xup]A>SE1L_\Z7a6jLHeQhtZA>Rje<.#1k4e9XqO-MH`5.Abhmg!r
LQp#a6*!mKt38>5X<]A)-Z6$Wk*JS&P]AaP@JEYulNa::6+Z']A5QWIJW(kJ]A6Gr/kDf5'lVi\/
D3AMiQH=UI.QM3g,4%T<8_SUFk,P`91[Sft:Pe^j?DBV?[=_2jT]AoO\5/:Dgl<[/06;*b\n]A
`(/)Ytu1,7.P51N@q!R/(e7G"m>B0S3c9$DmU99\lJUC@X9*^O`J59Wf/uV[5/Yl6et9V$"g
VcXNu80H32!_J_m>DeF_Ih>pENM:HBiXgh,C3]AI`XVr]A]AsX:P(_CC!s_5]A=o*G5TosWEB8VL
IEWKgrc-Ru?;3OJ/s'ZuPLiC/.1Z#V<LuUdX)&5BQ4do.\?//f8'b&iF\m09h>6CKjXF/%Ul
Ts:2(JF8g9D):GjX\f<)NYXHgtR/XSfAIDq9F0p[L80Em`,DqNjgM`P4pH<&pD4Ve^n6Nr,f
;1\junLURP-Qt.9.]AL'>7g<a-0ST\j%:M!h@,sPZ1+kiYrQ'KB;D?#IDGDan1R*/.`@Dk<I_
j;DrSN+fF7YS_*(bP>n;1<`r<LuXSc<jGPMaL*d@Z*K2OH=CSD0[0PF4R)s+l&4$KH6d4fo:
Fg(":tcdVmV`i7>,dn/UW52W(g2k%09\]AsO/fFt^']ALNAO'qc0sBXm[jGa)hSTW"B]A:p"b6.
m!AUKFRMNWBmR[k1+o530dlJllJ7eJ-'aZZZ8'KG\JDAaAmu$82`&<J?]A!4S7U9#d(eio$Pe
/\-=*LXYp.IoeI8)9(l,Q^f:Ya,(M63;?IPJ15[Vg_(TS@kGr=_p,1BjrO1Q(Ir;#tB/f><1
I?BC>^Z>r/#j7o_DN%T7!;B`UlikugZ*!cs[AL9@Si.2Q__=EK;iCr40Q>V=7kY4]ABh9bR/6
pYGZ]Asgk[=bus9MVbA-[\b\u;<HT/\!`Aqn_LPOWZp/i4(K)^.+m6pqgf8kkGlGKA`DVkoZJ
YB;*EktB3\:.c)^?g,j9E[/oF)fM3:X5\-MKm#PNoD(<LhjZ<CJc7_Ko]AeN``59nG\R-]A[68
_G#3Z;Y&tr\--!La1`1mY+F-ig@;qbZTFb_*GS/O6X-c0?pRVbI'A>[dr^1i&:XoQ;''l+R;
X0rgMbr+MsNa\>%XfL\_o3W@3@Q0bYsd5]Aa,p,m!c3S;WmPHATAZ&;8dN8BK&"`CfMX`CXY]A
lh\[sB:1.R;IC^RIHL!?^i&e(7$i`>roT.iA-DdL0B8CE5MAfPmj)i:rWG"iY*+!";8@4?B*
oWTRiDsbk"tq%,eN3_TgI<=Id"Rs)c4<@bThQX)c-oa6ho`^i(Bs2aF2qB!A\2/33b2e#-]A]A
)Wr0@)h6P""0%*&b]AXr99&)*`2%ce1r3kuT^/2+*31!VPI<?bt\9pO4UX49"d[,+?f7,5!3I
gY`Lbr%uPi(6NZtg8dFI3\&.Ej>&d$?+=SSC(H8VrTASa*$rpYmP^uA*c=cHq>a#mg%=B5-f
<D=N"Bs(dt&k3=9kDh1Y/'_^]A%Lr2rJoagF*k7>8LpgQkX3k!hX4uSE'O9mFOe1E6_a.d\Q]A
TnER>/P7rlQ60#uoBd<q@K@`kUG9i!3Z\[I%"3rf]A,a2_0A)+c6L0:YMBiPZ1bZ7bWQrCn;-
,]AV#)A;DW<PPg=39tR"B/>J)#nF#n:&16dEk&_ABP6b8F&@.,5eCW\PsSr!#'&+rX:)"qL#9
"CbnD/8Kh`/X\gBiB3='WWak_+-EJZj7`neK$*T"iJ=<)6V)qTT7$!&\kcU6uf[hGu5j!j@8
p8uA2dOOMcNph^04ZGZ&XjuUK+2q*'8+;JT4kRed%#W>/n]AU"afrU+p'h;K?)#H.]AfnU*A`i
<oU!=9uaGIf?I:2`-Ss"R2P,P`:\(&"tOU;1[Wi66l'oZ.7=]A`s%r^[/q'a$.M5K.aO,)J\.
7!\,`-aoTNpBKY/bOh;C<!8fPYOh`?;I0_O$m!1W`_&1oRJ@AjJH*fpAEV,T#j4OJ!9a?2<:
0.jmbHm$[+psOQhEoZgo[I\b2OT-lqNOWsR6EV5E>J`::l+-j6ncl8$$9j#j'pF"(4e^YRYi
`?C`t=i-4)32p!?5t1*gHH:,\kBSj5*a$.ceI#>p#M2kEC;<[`e>PIOcBg@o,KCk_>]A*lq;^
Mm+=0T_bplLgJ!6,LXVR+42`dWht>%*B8tM#PjmV^hJCu3nB"Vn=7AZPkoA/ZBc9kgg>L,_X
/f>>Nt#UrmbLWP%1g/3(.nBr"b#fFuPKZhMFo`1ScsSTlQfpM;tR/,VB8_Qu(W,:\U0sDZI)
s?&3R79Jf`r_VCrrSV;;lYP'd0cTn8@$]AT+LN]A'mf"[;9k<)Cki!RVJl6p-V@<(u_<Z!Usn=
+CC$e<eSb>XftK$6:XPc@Sl6Bl;b032MnI57@sI=$2]AIWlh@0Loq/mDlH9"ZnpM=p,3X\qMU
A[Stgf"?IP&34$b]A%n.?c'p1-]A#Z)"QV1'+0e3^^.B:<DpBn7s@Z$L%!)^uL(f,k!aW?_c,9
PP5(g65@75HdVFi5(urj:h(-I$.9&k4nbXe_CCnr4CJBb;6l7h\!4,_RLNaUX[&*j?!(X[M]A
!^.j+%3+#(c!F3.?fl`g?Sq^E[h#K8.d!G^Z/k+)n&qnj0#PR"?9u"gMIHQ1W"9*0OVJ2hfr
ADiXmpj(nQRYI9nBJLP0;Q-%BASe&lZJ;:_H?!lA9):AeAdBsjYaT!f,EJ#K;M`c)B>3't&Z
*Jo#!:AA[dbt72T:&go#TqE"ne0U)#cs!3eSBtO2tZ3V"$?I#4OJt:]A9LUoY+%CO:U51b/02
>>dEUOU8qI>H#rok8jS!]AO")Kj1Jb.]ARX]ABdj/CQYP`HmcMK$V."ROYsRA@B5M/O7g]A8b'eZ
Yd-2bE-;Z!q\fQfgc$A<8/8p(f[phIF3Yt#*%Y[#%K)/D22NGe#k%(6^q,@gAQ9l*L^"P/4*
3tRA\(F++c!'L#rg_X<FsQEAEHm?i6%@2auF!O9;Cj1L9W.Nq=&d0c*hC9@R%A4+Q-A%eM>e
f?nm/emqjf"BDaHq648W]AH<fgg1rT[6>&F?-RW@ug!=q2.7(?aYITMNW.e*M>%?9>[UL(A$M
l83q%;[P=Nci+s7rJ\seN2:$]A;=4UH3IAk6':`B"L:$rRbHLi'22*tgTUb7[X7\O[oE8WQ&5
p;V?"5S0Jms[%t&_;N_&k'BMZNshsH:/B.g81=^;jWmoc4>]AsR=^a._Vc<1T,nF-pLGi&d.0
"*ik<=IDGZ<3mcQE%J\@L(W"&^ijDIaR3R]A/e\CP4f=!5!VeQ.,^-.1'm'ei6q"?XmXoWUCe
OF,<X10ccUQF[HaT0[4t[/$eMRf/P0Q6#3$.<@aKDJbaUlcW42qmZQR.WAhb;GO:WfHq@2JJ
2huJ[78<Y!0XCuWaa$ihXkj+m5rW8?"R:HEcJ7oH;k4Ljp<E^I@(r+jKmu02?eq(#r01XOBp
n9*0>l.IG.WCZ_*@`!aM8<<MH+5*(!d]Ao5!%&KG6IphjHV`4FZ#HV_9t`6>6JI@EE%j@p/87
\9o2_O4N#>j!SEiVtP`]A#6jus%=p;bINMU*Fi4PssH&'Z`i3uJ&&!u0\pXk$VVP[Fp>1t`!K
n3PPDQ.6?2]A%G5E:L*%!df3o%<l7j=amsiKZW$aQ=A=I%GnVE5*RrfkY1IfbB=l9QV3E(hHg
B[#G*qO:C!fEIKhbsbn5T3?PCn3hfZA)Mfb`L;dUO@PIK/E"<r4:)@H^?:8kPNu".BKU7!a0
A/FteIehA+m!T87C`=M">b_(e2m#irj9/N*#2M%&IXiYT7DI.S_D9f]A/[)`5C,`G%d>J9KB4
SQ+EgQPK,6u-fI\hmu`?r]A+(\`TqRKg@'"NkaoUZ]Aq]A6mWtGZ%<&VtX\2'0ZhiH^CbdHgi".
6IGcHKuP\'O\\]AAZ)ne5+l&&8J&jWj*O0^[NhX;neF0oj:<*rZ)OTRM"7OP@o5XTZ[uL/A)D
=g`Q(X4,n*Gif0=it@dWS2p;5li*CPc1DQ-YK'h\"-=-5W7c$9i,@i+@#NSINSkSt2=_9HTJ
IY(R@HU2dN'R-9ieXB_)ZNDCpbRrS="$e$g_@AEu.C`l,q*[;\GHad\V3K($lsY&GR:)Bg8B
Bc&6dI#$il)R'/LP"Q?#g87Zd#->5VHXW_G1,^CEhS?qqr^ipRL^Q\]AM#J?mo.K6=jfpb=+R
R.bW8iLbTStnc$]ArCBfc``+;KJ?Pk45!bo=_,J8>_R\H@SGL_Xo^K!%`5Ri'^>[^>[kFl3+)
gFDg:s.D[Tf>1esH72#se\R?$VdSe;>EJ0Ykn/GE"(H<9_X?S.XM#Ej0dS'uu98TtrSPEBc#
$NRqX/Ui*+DtKNV'J/'am_2hr0&(c6U4RutFe(0LQ'SjrE$4V6lJQhli8QfrcA*s?pK%4qWM
p;(+(p.RW@R's/08@V*r3&,<"lT:GHi-K<9D,CR)bsY:?OtE/.V10f/t)qO`M1'!LZOBco^]A
%6/.!rg;8=\.\f2MViMiL@@Mq\`oF9A6LXRuf(I)8X#TI[RWl.A5*acd-49k3ZYjcVMN(5#)
(P1'lBq,^b)?_oRO7=+1.Im]A(t:X(Ui<%3oKDE8*+eDNXc]A"sM/,m)f)nMiOb)72rp,%6"^3
@T::srTnJNuh%1?H?h="K7d<tNQ*X1fP"WEIUS"!,_NEb4ao%hk"d)ju'Z'f"X.E$)-e!Z80
9VaIap,$2c\q$-eZ"1k9[7^\Q>JOWOSQiQe%^Fc_J6Wir1Cq"LUY0HLi^73Gs!*]ACeQ6S40N
[Y?>ASu2C6lc>5g"J>HH:mBWom>s!kE%_VYZ>[rPTh%dZ2#<N'%32BY'oOelGP*gENnRM6AX
;Va0:kFVoXed]A1N]Akq(I:,OYgbP70jmYXjns+2pZd:V?C(^r%pr\p,]AeE-10t'lqI@R^,%O!
bOm&&,Ru&Qmr*.iZhYXb.hOA<2VC-8?s7H#A,C49pGEN7cM`J\,[=.b#;;_QpjW!&@oo:HWh
Zgna0N6NlW[='dM#0A;nNH%qQd3'b:mf(7GBY=Ug;LWN9<S-C6e/Yl[FJ'ZdLFR^/<HR/l;H
s2Vp/VCBn8<Os?)N3&/CST%S3iju/feR:3:CmI=h0k#%qqa_T)WW4B5R$LddYhr%3+s,`5V6
kEp1W<b'XO+Qtdq[r(PosNI3J(b_\ZB(m%-E-?`rbN]AG`M:l`N3p6mk`rO%X.^_if>!r3h14
O'Z&?(ma@f:k(J;+p)=,fK(KA5;e2"n8[`rP%1#=M9=LMhaOGBX&Q"$eE<tVtSgZ[ZQ6rps1
^<_4<5:N*4E0FY:#'*>SMGn:o8<DoML-paTLu>(d\W>Gh6%inb!bZZ`nt[U/p9ibJE(tSe`G
V/aZk0?*<?5%jm*NF#Y=-2K-V_oX-ak(.WupRr(1[.g#jJM`4BXA4m'9iSeDMr5"8MFE3slL
Ws^HLl=,K*+FoA&$&qqaFeJRCgg.@)cTZ";&.t_J6PsZu&nePi[[5IR1`8W!p7fiV1LUI]A5I
17M!&f]AAGRP.%g"[F[VdB&hMl<gh#lH"<d.[<Gn"5IbSDY*MDfGZSdj"K4(Tki6UKLP80Uj5
ISS1CdG?^;LRhAKZ)PBNs@GaO/Yl2s^W\AZ(CDmKe46>b*U'Q^8grQ=8^!MpjDU,uu9/<a()
sar0d;Gs0J1;`idIjtF=k-FJEd9/r6t^KHgp.q4F0p$$)TdFLW4RDXEJk8)@I5aqZ"!Gbh?<
uNZj"H3i(tOq>3fH-hX1dnM4\c^#]AOiHNbM?-W2B4ha'3FBlp\Ku;9-lDH@Zc4q(^-H2?E_&
BX[]Acf4:!VHLp$(n)6ac[IM,ti,o.5.or/['#"?<d2b8.La,@l>_65WJqdOC!m$$An6aiDs3
V+IAfY3eXLg\>@2;92Hg]AQ]Ac[>Rgnf.T6~
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
<![CDATA[m9G'='A'[b7"ZS[fZR8lWj/U#=gs3E=LE`PqR*i8+*?aa;6e%T2/8CY;'Z]A.Z$e7i<?#"f!g
\n@oi\Zo2HnUd,Qt59'kC-?'I9q-9L(pp$&!]AMbaZH"X4B;A/!Of#_`qBWF)klb]AmopgIs]AM
XSaS*:+$Of%:^DZ-^\.=[(.6G6,m4[E51kemQ_imD^Oi,dfl+Rol9>n:>O#Pn4S,\=l-#%_7
UOK?S8<F!n]A$WId(O5)6Uo?Wa^4^)&hs79cgS$,*9,RV&9S)G$#`6m;u\Rq_5Q_]A+(iY(@tk
kYj?sfh%>>)rAR$8-#p[84.tS4oo0[mW-rDU(J:&#-Q.o8L?0@TC>gjtF3%9Z`LL#6)`[T'd
_7h5'X5_ad+^Q<OVJErJqGOPZr_dE8.JG4)R&PP_I5_]A'ZshNO3K^lPhWdabGmiMV@a+7lQ.
gq-,a/[.'jhiLeaq<u(*0SNAff@p8c,Rk=U,St750t9otgXOU.)M#d#=-0n(nn4C`=Un\ti;
l9%Ki9J(E+U8m-j`b),SDYZqMCVWQHJ9S?[p[Tfmc)tkmu]AM!/Eb6KCqh%?Sm6b8"!.k7f7B
ngg$_8tbb;VpuI^[<sIZd<I5M_#8Kp/nO\"0lCP0>&:88(1EhF/!BQ6'/3mP1m79$'#%O5#R
9iq6$^[b`PV>[^Y-q,TIG5;dVJslfc@ZFGol:=fqI+oXkVBY]Al<+L[nL5=abKTXD=FsbU)Y5
MCH[T]A,aXe]APUrPY/IJkl"V*t\7Hb'[5@_NR?.1oep;2'mVTZa0'U;R@:j;F.o`L0[iL69^t
%/FdcBXl@f8d:<`_hYCFPL%IqtSPI72KnJbo4K$,'R/.+h["QY.m@3]A'j8?&TIeIUmjU3SKG
QnY;/<JTL:P0=#p5+'6cHHm:6YMGY+lneH3=iJ!([B>ZYt+0#[T(?"4A.c')@k"BiB0.60((
pL19mjmPM@GOgV'_0$>OH[gj.KWnf<;('VBpH7N;.HG-e+<L")$57bD<(WWZs,o2EumIX,sN
!P^*CBB3P$qER8&WVI`sm2_,`[QZfQ8#9(RMO/Pb]Am^uUs):ZK<q7;mS^5)in2<Rt=nZGo5-
COYQn"4o)F65jdNcdE+k=]A2=O\1L-':q*V+-2n0CoY8a8fa`R0qr,@^'7R5<E,4GVJ[uf6)/
-G8$p7BP4&B\&'Nk*0j?7lR[6'<?\ji[b86H\6>8I5A`7'L",[++Sl-1hafB#&[6=XNJH1`+
hKSHjtR3Z<[rY;]A5*86iu)jq7QB.t2`>#aJtG:"K.]AOHFmQn*i3F!&O9i)]ARgdEnWJA]A^aL#
ZV^HiYPObJm0YO6N9G$he^fTNKSH<Je-1<55N>jIiA<5IE\JDf*!NoKX0pA*hYQQUq2L9Uqc
`m053L:=juI'R<fHl@e[&s:*%Rj&&VD%Z1kf/P^>BJ<-C2b_Icm`Y;4cP_caB/fV6f!BIQ1/
N8\#I"H2>F+,NO:kb%&!e6e8CS$\Nk2gEU#?U-_WA@;t/pFoIn0V<:E=:[*-^VCB<TL\4[J&
QoA!paU2Vm5IG'_51Vn>VbBX=lh9mi5u_$ZuB7pu+f3PSfNM&QH5YRbd`B.A_!@/A4J4'e[^
u8K-3>MeT782P-cWMf,43!+2e:KfE/@;itV#T943&Q%,Vlr=M56Ptb+.K(lua;P(QAas)s@>
&l(AIf6b&pj@rS??"(1r%G'3/J"Q%.fQG2_>0pLZ#;0>$7IHeUb5PtT9oTe-+3;F_<%dJGPT
aD>L23Y28Z(`J#lp%TXBc:pJ*-QBn'5;`1L)X-nJLUh3[+=<m5/YK>KPYcB`8?pQNI#PtdLE
*<**(7%&#_\#>#LED=\A(MGbAoEt[QKhbV;7uFVoEClN-3aEO0mq/0[g3ULrn@`o&*<Y`j4f
VP'7uO0WK#%0qC$en!hn;]AHfP@[Q]A4Q8krc8(+j<'/C^J?URjI=tuA_,IS,1Gc2/P5s]Akc"&
a$+,Yj8E/(pWpLY15$'_KB^R+V:6ru+`qPu'"eT2lE=3ulJX\eH'*"=6DPZJW)hqM:p@h"A-
NM@q<\62GR+Cs4b*:fqN')_5<;SK)Qu8Fr1$Uri9>"HII&%82-dTB+rb[NId@u%:btn`EgEM
,_X53-5PNS,`f<7/*]A<ESET(_T*N;.qt*m9;#`B<;C"F+rFX`Y\Ok0VW4)a>l:k6u&X%t%&J
`,Goui^eJbBp#`#')g?jME@/%fk/d?%laY-Y\o#!SV<K886-7("^H2'"u'[t>GP\J4C'sp;=
/.[2(\@4-gGupDC;bC-lOf72OF*cd3<6tgT4m>GDH>-NM@Q\52'AiiNPD;?F>4..A^Y>Ge0)
"(S\(VI5K0Y$L\p$]AdKuDZMB>pO-JK-))m0%aTZ,Jd,1c_cALW8F._p.8a[RS1d)=+d$Z`>`
;4!o.o)HFg`uBW^L!>a$U5V`\EjIf1Di"=.a9?Qi:Ga?l)]Ao,XNQD5dmV,o?1c?B&^iYX'Y;
,4'Fc1\@Y^=\W`bCN*=_8=,g.<j05EhbQP9O,JKNilc(RacA3G^d*iaSupk2s="rR>kA@obG
Zt)3XHQE0e]AV']AN1C"e:7YRC@MQjfWIu7,a";Ju=<8P^\gH@?!cl#j]AhGR17jNXAjf<C*(I0
Z81lrPe$+!>HF+R;%I@/c_qMSa.>E@JM^<,'dn$_Y/t"^6G=s0_XXnl`U%!L>5/=Iq[_!0^!
[NjGRdNXQC#6cm^=dWR9J`W]AskfSL!ZM!koY\7eKrdPZ?^dO&J[70ds''gmRBcRUHS5g5"=V
Bba-"g"pqWV5N]A)Rkq1E)ML5G')<hN3Ck<N/RKH<p=UGPPc,fd>Q5B759Fp)(<jgp8cq]AJ^&
3%B?d[kmb64b3!i,WJLg2_N>9\Y=N+2^Lg8B3Hdl_+n\@@oWl0dQ'M^Ct;huKFa=f/H53SDE
+#f'hRPIoBbKiB\$6OG%@n#c.o\s5,niXu#Da/bb;FcWr";VIm8;>PTo`5Cf;9^Z9(\m4.$J
_c\moq7IjTF`fgj#lH`7*Y.?K;0iK'Hf&_DOD?8dJ^#S#Mg:m%:Z:F1mf!7[0em?4PK[FpUQ
YU[D4rEDt^*8'jkI^&Cg7Rn!4WU\uLao+H8)f&-lZW`ABo<WQKSf*g&%64`>rARK>-.Y5k!;
rV3ED_!D*afaP[#\K@t1@:L!X#r#_]As.IeO`9WZRK"T_XCU(l7mk(V^c0Y]A8OmLUekQZ.Y;b
p-'6e+I-G/N6jVTCkT>?g/aX-t5<)]A*b.O$6jL.MYOZq'\dk<.N-$Z"5@`ZhFWJ7&*P9I6,+
`b1?[^r#\5?DY3uSoHPdUQV/MEDF=93L1f@"JR[Z-r\<J*'1^d=IXO\Jf&o8U+d)ZL6Ye\fu
qH@^ueJ]A8.c0E2!L5io0*;<@hESpIKdX=oC26*;4tsXQQ1ke/F=NIGs7$f6&R6V).ZYZl!T(
Tq,?)<"a4%M?O\'>>G1*OXmU/HW,3^D!212A<?gJY9b@hB+2MDVKY/)V+Vcdt#[fNpe3A"_J
)f^;lM*':>tX)O7#_`(N<Nr%VBlM6G?e,]A5i%E"h.JG8Ld_Fq(%P#);$]A_M$`OfHqq7)Z?dH
!srtAMGKY1`2e/"[$INi'<g*0X#WUr7tqt^\2mg<U<ZU&G5";F]ALba4L*ZbsHgNLONq]AEm;Q
SV4[p]AEgoGXc[[+!c_m<KfjWq3_fDk>R-d<!(AQY>Mgl!<._7I#l``Hrd*5OH>'#9H3d_>''
9;427t,\IQ!qh=podtSF7@L6KQ`G$HD$&TfICb]As@5&)S'1)WC!_Y8!>>Agh[MkeT,WW?3Ef
(rV66foMuguD/t/=2EE.82M3pX!%ViY/iNqLkYo*YCHBgmB(]A"IlI#-gq)iC/\6D'Ua1m*fl
8_fk9NB)I`)NbC>#G9n)mpuU?GK9M,B/%@N#XR7p7%FTSd2A#KBf[mO8o^jO6bVSb&E'&\Td
LPeHbcb.jk#JGO\obVKh:RR]AH)jj9\$L)2K=X@Q,1!3l2m2^^;Sl5N!pCDsXk^au`+fn4s:L
pogHS_c.)K!V`5!b):#mb[:N1qC&l(c#tWe2FMQJjgtkM$:#B=/,r<CeHM"4.H(3e4B\GK=f
?btVmt\XD@u]A7k;aR6)5:(uG6"gZ@6\g-Qd:s!1_fYicZY$8AabJ;e2N4q8.']ADL5Ro#QTgG
jahj0A=Y$gX:B6thesmqioY98Q4Fo-W["pF@k6VIi4kcn,ZGP@>]A3;^lW3-goKNR6)@j<#P)
B5sO@qN6iIeRF&0)Y:lbdlA+[LYLQ.T)SL2)Kn'Q?,bo!VqLG0I`k4-NRl$=FmjYk0![i59;
2r5,MG*Q%n7g2E+1%oiKTT1%gstJih^A<l>N30b=H"br^(1VRo-BR-TIK5V]A>A<no1`!7U%E
+`LU\T3gRG9PBCiQ[dFJnF@Ee&Q=$/dbs6;`YbBHq:Q/)*K!B7^a)qBSJ)JP_=*=,Lg`<Pe1
a@lZ]AA'5`,;"T,a/`W8R"B>AQ6_5&oIL)St_\MA/]A,J37c:'6%E9c1WLD01V#U#p-N>(IjaJ
@bAH[Xo9ZUX&3uqCpro<S9ae??i)r+.qN!<bTCES6?r*Pu3HR>'2"C^[A>9<rjWeIlOEna"&
>d/KB'6e]A_aRSLN6K9?YTnOum`0dmheU&(#7NN:"4@]AE<be!?YAeV*gjqq?52qa-cWHq)[=I
e;ih*2"nhmtii7!=dDD<`.BZHB$R=D>4O*ZjFaY:8`AI(XV^khE`+p_eo.?r^)Ss\;?07.%Z
0<<o625'93Gr(3>8Wus]A'`Sd`a'-3:E0\&Ib*ljWYLb0g/AfnMbJ9]A`s$\']Agc(\#fJXcR,Y
"<_"uf<@8)*Kd[V@$i'BPP2U)[UO9aA=#OadF)4RR+`e1?06]A*dLtT]ADe^BRHh!)pkP@Zet+
#eO9LSBL,IK=8usbo9<D*EuV^\J/ZX5fT3p#P3*u!8%@`>(r(t%]ATi>WrB3:7ODI>B(^^iC'
?H<5E,e'L+sqBX:pt6FZ/#aXQXs*__1b!Q1"\O]A+'a:6E&hGFn1J,`i7^R9*I#bF]A<"/m7s1
M$hPr.r,]AlaBg4QW[X9d;.[_bE1!$06gY0!akgrp/D2!=n_dkW:N>BoYkS5$&nIn`aY\u9;j
(uI"?h>:<SRDPG;Fnn,J5Akkts/VBf6a&^>WgQ0<+;U_0N7#tX32<Xs)/LuZA73Vi8ImU/PS
:q]A^lA4'(biZTXM^L>Y_.]AT#hN0Dil<9XqOZTdaCMU\c1TAeM*%-_Fe-O\#p4`.F'&l[Hk!?
0Po;auE)ssI0YjU8?sZJI+Ob(n9H1f7-*[lDG\As4Wj)gEA=5"@+^-C`/atm$:D6;)ogth6+
Y#m\Jh!9Qe-IR"rmgNVE+PH)PIKQm^^HZ7RsiJ_qS8@-K!R%B+#6\R^pAjNY6_\WAHW#QE(.
HG/bYmDh4;L[&h%f<`Z!2/^r+mN:)-*42N2loUsZb$U5q"T8&1mrrrc=N,&>!h^gP5YT<YS:
=sAVmJ6^Zu<\B"a@2PIcGSBgj;0)i!.m<3,VSHHc9t/d5R]A\N@r]AnU__ZLo&J=aP-.+<O*(.
?c:G<6)K:=fXa3"NMr+%6F:YI3nS<.fAl6iH*us'F&s+!h#VKi^P2-E)Um725A@L'G\a:[uV
0EY[YQG8[#pdWCFJN\f2(Z*r^^(NI.BKWH?_71gZ7>79qpCKpr!dqEdcNC^jSXhLh[.]AF#'\
^L!BLTfi5jj+oO^^o8FYpP-djnX30N0:4"(!_PkE;1\1LsGaHY@qqL->HsG^?Z9`WdNE[*.8
_m!pm!8?cTE$rWtDANI&kq&LO2:L8??B&>4]At;UChppOaO:=+pkImNP8#p_E&2!oI#kn2+P4
3ApuZLfC5DW8*h[K5Jp8$VYGTL2C"X&LKI7N4Vq9[Em=a@]A\]A!l5JbiUQ2'A6,]Au.k5M/hD'
Na3C8&R@9FiD8%Fg<$m*kp)MHHYs_8e__DX-RALV5<q/J^X2]A5jhu^hj?DfYW3q'2qg\Dk_f
=_k$m^@;]Ap/h'4tDT">A0@.GXO&Q:e@)*8N5=7lse,^01\0"O3=3dN1ACXcAi[pRqb<nqoX1
mNVT?"L_a4s,V,oes9M$f@5/V@'08Fb73Z=0&aQs!H+<ML^]AeAb7`U$e5"1+I,fVO4/QS!'m
\>VT?VF+K]ABaUQ2@(nCWV)&Bk8e&_1`jL7'-tG%'SUprj0iJ.K?:274gA%RdlY)nGs9W`283
/ocZNFP<$?<a1Zb8i^hBD>"-E#kT]A;!p:XT[1_DrHN&(@5ePY%#L+^c='pBU^9eoj$CJ2/Fg
pJQX[`pG\:f#n(=T^&j6T,cNg7hH[SXBIC?@%p;pLj5T,@.T%41]Ame/FE;q40!t1C-s-2\>#
\q[';V#toW8RAWr+ggUN_O>LJ#G%I^P?Tep7ahVBSQGF<l8fr+$W/Hb]ABDg&XQ7hYVSTY(D;
.<q@>Xeq"Uea`CYigY#9.5PMXY([Q;R%9i4p'8^!!7.I"X^<!R;0d]A't"SPNhifoF69C;D_e
oQ:N4upVb+aL2dsa&RUl71]A1E(lr0ZGo'2otVm<0YO_D6sk^'JADiL[M+SY:[;$(A"F$ks9Z
/CD]A'D:!e`4N@_'C:Rpr#\697VDM`4df8K_0T:V3[.t"i5AiOld=:#!F3tra^UE]AsrrW~
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
<BoundsAttr x="3" y="38" width="1146" height="770"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.FreeButton">
<WidgetName name="button0_c"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Text>
<![CDATA[2017年二季度热点技术篇]]></Text>
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
