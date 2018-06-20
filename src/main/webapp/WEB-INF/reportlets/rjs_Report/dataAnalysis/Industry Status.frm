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
<Attributes name="year"/>
<O>
<![CDATA[2017]]></O>
</Parameter>
<Parameter>
<Attributes name="lastmonth"/>
<O>
<![CDATA[3]]></O>
</Parameter>
</Parameters>
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
        `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` <= ${year}
    )
    AND (
        `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` >= convert(${year},signed)-1
    )
    AND (
        `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` >= ${startmonth}  
    )
    AND (
        `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` <= ${lastmonth}   
    )
GROUP BY
    `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear`,
    `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`CL_ITEM_TYPE_FIRST`]]></Query>
</TableData>
<TableData name="ds2" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="startmonth"/>
<O>
<![CDATA[1]]></O>
</Parameter>
<Parameter>
<Attributes name="year"/>
<O>
<![CDATA[2017]]></O>
</Parameter>
<Parameter>
<Attributes name="lastmonth"/>
<O>
<![CDATA[6]]></O>
</Parameter>
</Parameters>
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
                                `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = convert(${year},signed)-1
                            )
                            AND (
                                `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` >= ${startmonth}  
                            )
                             AND (
                                `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` <= ${lastmonth}   
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
<Parameters>
<Parameter>
<Attributes name="startmonth"/>
<O>
<![CDATA[1]]></O>
</Parameter>
<Parameter>
<Attributes name="year"/>
<O>
<![CDATA[2017]]></O>
</Parameter>
<Parameter>
<Attributes name="lastmonth"/>
<O>
<![CDATA[6]]></O>
</Parameter>
</Parameters>
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
            `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = ${year}
        )
        AND (
            `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` >= ${startmonth}  
        )
        AND (
            `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` <= ${lastmonth}   
        )
    )
ORDER BY
    `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_BID_MONEY` DESC
LIMIT 20]]></Query>
</TableData>
<TableData name="ds4" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="startmonth"/>
<O>
<![CDATA[1]]></O>
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
<![CDATA[(SELECT
    `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` AS `year`,
    `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` AS `month`,
    count(
        `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLNAME`
    ) AS `数量`
FROM
    `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
WHERE
    (
 (
    `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = convert(${year},signed)-1
)
AND (
    `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` >= ${startmonth}  
)
AND (
    `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` <= ${lastmonth}   
)
    )
GROUP BY
    `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth`
)
UNION ALL
(SELECT
    `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` AS `year`,
    `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` AS `month`,
    count(
        `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLNAME`
    ) AS `数量`
FROM
    `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
WHERE
    (
       (
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
    `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth`
)
]]></Query>
</TableData>
<TableData name="ds5" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="startmonth"/>
<O>
<![CDATA[1]]></O>
</Parameter>
<Parameter>
<Attributes name="year"/>
<O>
<![CDATA[2017]]></O>
</Parameter>
<Parameter>
<Attributes name="lastmonth"/>
<O>
<![CDATA[12]]></O>
</Parameter>
</Parameters>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[(
	SELECT
		`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` AS `year`,
		`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` AS `month`,
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
    `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = convert(${year},signed)-1
)
AND (
    `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` >= ${startmonth}  
)
AND (
    `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` <= ${lastmonth}   
)
		)
	GROUP BY
		`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth`
)
UNION ALL
	(
		SELECT
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` AS `year`,
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` AS `month`,
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
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth`
	)]]></Query>
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
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` AS `年`,
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` AS `月`
FROM
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
	order by `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth`
	asc]]></Query>
</TableData>
<TableData name="ds7" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="startmonth"/>
<O>
<![CDATA[1]]></O>
</Parameter>
<Parameter>
<Attributes name="year"/>
<O>
<![CDATA[2017]]></O>
</Parameter>
<Parameter>
<Attributes name="lastmonth"/>
<O>
<![CDATA[12]]></O>
</Parameter>
</Parameters>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[
SELECT a.month,
	((b.数量/a.数量)-1) AS growth
FROM
(SELECT
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` AS `year`,
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` AS `month`,
	count(
		`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLNAME`
	) AS `数量`
FROM
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
WHERE
	(
		(
		    `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = convert(${year},signed)-1
		)
		AND (
		    `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` >= ${startmonth}  
		)
		AND (
		    `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` <= ${lastmonth}   
		)
	)
GROUP BY
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth`
) a

LEFT JOIN

(SELECT
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` AS `year`,
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` AS `month`,
	count(
		`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLNAME`
	) AS `数量`
FROM
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`
WHERE
	(
		(
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
	`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth`
) b
ON a.month = b.month]]></Query>
</TableData>
<TableData name="ds8" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="startmonth"/>
<O>
<![CDATA[1]]></O>
</Parameter>
<Parameter>
<Attributes name="year"/>
<O>
<![CDATA[2017]]></O>
</Parameter>
<Parameter>
<Attributes name="lastmonth"/>
<O>
<![CDATA[12]]></O>
</Parameter>
</Parameters>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[JDBC]]></DatabaseName>
</Connection>
<Query>
<![CDATA[
SELECT a.month,
	((b.money/a.money)-1) AS growth
FROM
(SELECT
		`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` AS `year`,
		`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` AS `month`,
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
    `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` = convert(${year},signed)-1
)
AND (
    `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` >= ${startmonth}  
)
AND (
    `radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` <= ${lastmonth}   
)
		)
	GROUP BY
		`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth`
) a
LEFT JOIN
(
SELECT
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLyear` AS `year`,
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth` AS `month`,
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
			`radar2`.`URLCONTENT_INFO_SOFT_EFFECTIVE_20171`.`IR_URLmonth`
) b
ON a.month = b.month]]></Query>
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
<LabelName name="lastmonth:"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Text>
<![CDATA[查询]]></Text>
<Hotkeys>
<![CDATA[enter]]></Hotkeys>
</InnerWidget>
<BoundsAttr x="503" y="7" width="80" height="21"/>
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
<![CDATA[ds6]]></Name>
</TableData>
</TableDataDictAttr>
</Dictionary>
<widgetValue>
<O>
<![CDATA[1]]></O>
</widgetValue>
</InnerWidget>
<BoundsAttr x="249" y="7" width="80" height="21"/>
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
<BoundsAttr x="169" y="7" width="80" height="21"/>
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
<![CDATA[ds6]]></Name>
</TableData>
</TableDataDictAttr>
</Dictionary>
<widgetValue>
<O>
<![CDATA[2017]]></O>
</widgetValue>
</InnerWidget>
<BoundsAttr x="83" y="7" width="80" height="21"/>
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
<BoundsAttr x="3" y="7" width="80" height="21"/>
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
<![CDATA[ds6]]></Name>
</TableData>
</TableDataDictAttr>
</Dictionary>
<widgetValue>
<O>
<![CDATA[11]]></O>
</widgetValue>
</InnerWidget>
<BoundsAttr x="415" y="7" width="80" height="21"/>
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
<BoundsAttr x="335" y="7" width="80" height="21"/>
</Widget>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="year"/>
<Widget widgetName="startmonth"/>
<Widget widgetName="lastmonth"/>
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
<NameTag name="year" tag="年份:"/>
<NameTag name="Search" tag="lastmonth:"/>
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
<FRFont name="微软雅黑 Light" style="0" size="80" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m9G'A<)jhA.47cUm1U%c.I1-m/8:m_#+15QZ#*Q![tj@%*,DW[.j)nBMnj^:'NbFCCjnW)>f
_kOg`RlK8XX;E@SFd'US\<K;iT!A*+X^1N:Xm@4bK6#h/dpR/]AY^m3VVD%T(Ds,msT]ASHcA"
1/kHA^H.L5hIXZiD/:RLG5JJ/UIX]A`UhD?8NAU4(C2uNT>56&R]AM18Z044*k@p8T"@eVAM.g
10rb0)J)Wf[duTYN;sp,S+g<DH<iGfH"1=B_n8$f-3'0L8E"]AVf-'_?^s&qk]AC1hkZMVna/'
Yd$["pY;d=;C2d2_gkqT+T6qMVP(8qWLisM6r-f$BaBkpjei0\?f@<_Bu?LipHSP73l]As'Uu
)7X+"k%.oX7P>JUh8!_Xa%DO'VGg/"B*f/&6MA/-+)p1Ch[`ck.TtbOcF2<eQIW\>h,N8@\!
LPih"L$N>p%AB5Pi&>(P[W8GRfp1T%ENrO!m,g'"*nd/KK8%UhusK);F]A,5*'eJ*YE8/dZA;
0AdleIj;l:&eK9T@%k.7>GjFXYXh/lCL`FC!WmPIhngkS,4'O@cY<>aPJNpAIpl(Ihann6Ln
(t_k'=jqUD8NlSZC#`]AB@Ou7jZ#;%\gO8M`UQO0k89V['?#0?Y')nSor0JQbj=:Wo>m--=q@
[b!Xgbh?-dHn?$^)JkkLU-JR+\lpFq&#:uPp<Eh2nFD5+HsCK]AKHAVZ[E^SLg<<4SRP,[^Aq
M6K5kY&$+VJA:4ehp[sdgd)ple;2^L.RQQ@/:rMMD`!J9B4=@NREoWX:ZD!,BNSR8bEdD-?@
?/HEa,SH]AaKfeXKHIsQ-IqfkF[teQp&,Sf8OjpM0!C,SKmU*?+Wcg5'lHKYiB4jatTW@+:@.
hM==1f^\.ch=D0b,K34-lQtERYSV1LdWLg?GH1?G+l/FoQT%LH<oTOU&gQ?b00>$pU_\!+=X
[AY=\aeFj>HJDUN7+BZB-'l-MsG>OaKuijrXn-e?kl?\$[>M+Wr'Tg`C9CZ^bQ$q/HM^Ta9]A
(K:t2b,o3s>\CT`-.V',<r\u^5YHo,If"J-@1@\38dV/3AIG;32dSL*m2)j0t=injQK91*Jd
-0I_e6=Anda268G_VbtZP[?Hqa\cP.a"/A*EmN,E@6(5K7&\;.mMO>"ado7-OV!,o5D4N$W+
ipBrRa)f]A9tdbBs6*8'4Z<4iP)phY?VQ\AAUB7)oWbK\6D#.8CWA*?U:;5@raYbQ!a^=?#'m
&B<Fng#5m\Tf6R<n=gCH*s-=n'eDtWZ7V0lbN.dq/0!Jdr[j!MHn`A[/hVU%X>ZhQ&-auC.2
aLq;2nEQnk8sMeNq3Yo3QCeMEm-Nu..Gd\QRB!FYhZ4kh>;bsf9Vf&E8(Qo*lWj#Mf4V:^+$
npEZN#9&9S\+a'7hcdIi01).;Q@NIA*fK:`:f[@F!FLX't<Sf$C98O?,D7o,Y%<BU4Mi=U2b
4cLk!JL<f%b4a9AGGBU$QmJ%HnP?7LHp*TNnHdnaB2V_rK<W#H`Gk@KYSI2R*i8#7T5PF\Xq
Ue>Ln`PK7dOKH5)o6t(S2@L$bIjs0J]Apoa7^:27OE!8R%%lmYIaV5mJg[0=k<MG_:peApAG^
Gq'#KgSCDsB?Yo/FI![(4QH]A"\KS)9g<`A*6`QS8[B[Vr_'S):1)d*BfAMHMX?p%,N9)1.*n
de]A+Q"dtMHX4fX\#lX+I\af[lb"$l8l5dn'q5Db9.BG9Z;\;^o`=RfK3k9C%,G8:!h:&Oe4(
fB"I/?^QpmDYqJE"!Nd!uAA95bD*Nr<.!M5ON.VpbDr7P6qou-@(F,Upi\bJ8M!J7^\bjeis
9P,3-B??OE+'3]AJ$:=QkljQs[@#hMeks)gI9J?VU0*q(*B2Oc\B+Z23D7I(m3C.?uRqIj3;m
N'^N@f&uL*;KRk.hDVf9"BLe51,>GB!k[7_N`4\h+YDjI_s#OE=#Z14T8]A%QY&*k"S\L;Mk/
,gr<l_/%^9i,6jng[t/iBIBa/AN^YOIHs1)3AG@l2@e!C4?B3f?&p/#/>^Z^.g6_tL:Lk.mM
%T>$8m<TZD-FeL8b[WR6iG]A$TSF"`i?I7D&Y-eM=)AklMA=-0F7<=>?KB+L[sI6qT=&kUdh'
\?b)X3pjoTdd_TSCC:hHdm4:_oP^::%JCe(V!k(u4<d,oU\56I=*aZYo9A,(,0-]AC!iGod&W
F@[m'dAc.FkFi=cnJtQ4]A^B1<Ifbq7H!/d9Ik<Ok1(tR"nEb'=&[)dUa!MB!*BU@6<c.5!3&
b3ph-iBLqXc-^_=UZ>]A?4g9`XAJ^5U:L'1oJhIQ!?9kiFt`@C)SW^j]AWpQCD!'qM`U:=i[o,
oKOS.sebN!Q"]AIJDkF[LreL=_tk"rR?fUlW9KQ#m>?Zf(p0_eO5_,s_Vr9L:oVG\SqrsaDa)
Gh?k/[7F*7`/d:hlmX_b(Y_LC=.Y%Z)Pj%Dn,dk&3c)l?8#3e*Jt9M(rm-<dHZ<5a5BT7Rp?
"qZngeQ(<GW)YH7eg*B]AX['$gM:I,/SfI,ddV#K%A:_qMDk_g9aR3of)DMrD8$(gZ=2p.hVU
:h3C6W6'D^dW(^,/\63nkI*bRAQr$>LSflPc*rGpr'Qo<&IfKh7mm2C3cf8;n)Ek(2-X%bWr
->Z7V5p"f_&=8Th.NS'Cf<4_,e\'$4#P[=$k+XH4QK@fei3hNI0`00"bduFt._.J=Qr>2G[d
13*e,i%54<F/"96L`ZsTA=98ra!$Y9/%&t1,TU9YNYG0(EOHDQBOhT#$*d:5?^f=)R09#c<8
FeuCfj2k02+,$rQ9tmIDe\Cc/$7.5p"3+GMuDe^q#/^H1Sh%@KBl6/io1[;U:O('8p5HZp?e
>^Dm*5Xj8<.t&XsQ%)9de^<`ZZYek4Bk6k*o@rXk6tU"J9_s)pu\)?hugp6T0s&S0",C(N+&
@Q!j%S0Z-6c@Z9-TTVd*iYE+)51*9K#kHQKJrcSsmDFDOXi,LM]AAG6V2q)?)*$ZtTOL7R69d
=@b-kU]ASo^qOmk\Z"YnL^\J.$XV^K9-9ZPH1%liUuLs[,U6NrF$EB:Coql?"]A%ET`XFg$?d(
a89:9#^.4mB(7'7e$>]ADn`WSrSHm;d*m?B\.+`JLF=g:T=m?W".gU:P[*fd]AMI%%K0_rb+QF
kh91-:m*nUiK7c5GW-e%]A;7>Mi6&f<+("C9Kjt&;@;N!(&OE3c__ns%nCZRr3UOS?IT"2hU^
!;Pb<^r:a/P)[DWTb0dfh``qM9R.@%/P=1+]AL+aP[$b<Lb88_^U;ZZ<'gkaSiN[fl"9"psF:
\$h&=\sei-Hab#11WjEBFT3=8r9@$]Ahp%8#"9aj%FBj<<Rl^J0j\>$MDpQa?6'N/Q$Efdh.Y
$d',E3NCHFbGa]AK]A">F*_LT$D;e3*$.*:$"P'sI\M.!AE?7uRPSWg!!Ds/\%iNq<);ZnkiiZ
O,#sAq3eb")c<mg`YYL8.R5u4(0r:]A`^9++TkhJi[=gnQ6!g11tEbrm1)dRC"a1p"(QF=YoM
ldD!1XU!93HB")fkg4RhpjbE%P0#i(88.:n%0F[6O6cjmFS&_JPQs(o\Pg33!P9TnD:D(oX*
<JD_kgcF,)%uWj\T(bL_h_dbJq[>2[)K#-4\?EqHR*?9*VmF0m;p.3s#s.]A0imCGh7sdNg,q
\5d!VUFFjda/TY=::82ngQ\.q&sf;]A2V:?%3+tD3501QSg-<9pA=;+cUuB75Lo&-\B:gp8,#
P3FkRJ7IYpX]Ae,l+B03cs<c3"ZX552=9@\gkbYHBHb#Vh)u]A,(9lAd@`&t"c,7qT&'Tef;r(
3aN=QXd.9@Wn[]AVKjHBU0M1rck2-#`VnBZ!'K@QjEf@)E<mg_kA<.Fk88gO!rh4;HMP'-EX)
6mB4C4eEfi9&055l,F)A"Yt,JAgf-*?`;p#badG9$^[fG/6O*a@Kg3#VC,k']A,\jC"g6SJtG
-[4;Hh'42Tb%A"uJ7&_-H/g"Kglg$M'[K#udm@t0C/'[l8_!*37]A;g9O("j<s=`gLTB2,aI[
NUIA=ntj$VN).0<Xd;#)pN`f7O;]AZ&>BOcI9!OH*E))(2rg"$PEKjK)S!)%I(9`++Nm_G?hW
r)O/L8&4knndm*2KHnQFsd7,SX%Y]AFVXT-!7e5>RsI2AET`+4F&S&:Uj^Fi-T<_D:PVWOq7;
O[U/_TL3mI<fgqH/.QXVIPq`WTMWWb.Gm'q?ZpG%oVP93%\tAi[7kW0Ll;TT'ri;gjO"9AR6
Z988H*MIIm+tsPnUUYq`UBbH^cUR8P\a'A2idRVB^cg,9CI=Tbu!ot\_Z`SU;9lWd\XoY99O
dd*6=o*^TQXjck'Dq+u9Qg#6;M0+eADdRZs&j<a60b7aI?3"d*Xn=u=,]AT6aJ@@T<O]A9?egc
=^RLo6`oh!.RA[-i/^__^lb'2]AM$1n^-5FjLa&X)#N<jQ1,@N]A!=jbJ\oZ`B2S!?)QM/42C;
).`=&ht3A11/,*rREj!=,6uYc9tdH#/U5#B_dr:3@gWXCc+e4M\O3C,)lJ\&<>`8GK*6$q$u
<N"iqh*Y&D7F!*N]AfK`P<AF>HSW3ZV5K#M#RU<e/cG7g(ncL.UT_15Af>HbNQc-Vhj-oP,q_
jaHAMO\&(bpP:)Fe\;bS6aGWqLO,l,VOGUl*6MWrYG~
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
<BoundsAttr x="874" y="169" width="134" height="98"/>
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
<Background name="ColorBackground" color="-12564119"/>
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
<Background name="ColorBackground" color="-12564119"/>
<Attr shadow="false"/>
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
<FRFont name="微软雅黑 Light" style="0" size="96" foreground="-1"/>
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
<newLineColor mainGridColor="-12564119" lineColor="-5197648"/>
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
<BoundsAttr x="464" y="0" width="486" height="292"/>
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
<BoundsAttr x="639" y="345" width="651" height="361"/>
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
<Background name="ColorBackground" color="-12564119"/>
<Alpha alpha="1.0"/>
</Border>
<Background name="ColorBackground" color="-12564119"/>
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
<![CDATA[项目类型交易金额占比]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="微软雅黑 Light" style="0" size="96" foreground="-1"/>
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
<OColor colvalue="-16682560"/>
<OColor colvalue="-1814682"/>
<OColor colvalue="-216249"/>
<OColor colvalue="-15685206"/>
<OColor colvalue="-11483146"/>
<OColor colvalue="-15685206"/>
<OColor colvalue="-3163496"/>
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
<BoundsAttr x="464" y="0" width="486" height="276"/>
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
<BoundsAttr x="639" y="3" width="651" height="337"/>
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
<Background name="ColorBackground" color="-12564119"/>
<Alpha alpha="1.0"/>
</Border>
<Background name="ColorBackground" color="-12564119"/>
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
<![CDATA[11315700,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[25488900,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
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
<FRFont name="微软雅黑 Light" style="0" size="96" foreground="-1"/>
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
<Attr enable="true" duration="4" followMouse="true" showMutiSeries="true" isCustom="false"/>
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
</AttrList>
<Condition class="com.fr.data.condition.ListCondition"/>
</ConditionAttr>
</List>
</ConditionAttrList>
</ConditionCollection>
</stackAndAxisCondition>
<VanChartColumnPlotAttr seriesOverlapPercent="10.0" categoryIntervalPercent="20.0" fixedWidth="false" columnWidth="0" filledWithImage="false" isBar="false"/>
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
<Attr enable="true" duration="4" followMouse="true" showMutiSeries="true" isCustom="false"/>
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
<Attr lineWidth="2" lineStyle="2" nullValueBreak="false"/>
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
<OneValueCDDefinition seriesName="year" valueName="数量" function="com.fr.data.util.function.NoneFunction">
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[ds4]]></Name>
</TableData>
<CategoryName value="month"/>
</OneValueCDDefinition>
</DefinitionMap>
<DefinitionMap key="line">
<MoreNameCDDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[ds7]]></Name>
</TableData>
<CategoryName value="month"/>
<ChartSummaryColumn name="growth" function="com.fr.data.util.function.NoneFunction" customName="同比"/>
</MoreNameCDDefinition>
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
<FRFont name="微软雅黑 Light" style="0" size="96" foreground="-1"/>
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
<Attr4VanChart floating="false" x="80.0" y="5.0" limitSize="false" maxHeight="15.0" isHighlight="true"/>
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
<Attr enable="true" duration="4" followMouse="true" showMutiSeries="true" isCustom="false"/>
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
</AttrList>
<Condition class="com.fr.data.condition.ListCondition"/>
</ConditionAttr>
</List>
</ConditionAttrList>
</ConditionCollection>
</stackAndAxisCondition>
<VanChartColumnPlotAttr seriesOverlapPercent="10.0" categoryIntervalPercent="20.0" fixedWidth="false" columnWidth="0" filledWithImage="false" isBar="false"/>
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
<Attr enable="true" duration="4" followMouse="true" showMutiSeries="true" isCustom="false"/>
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
<Attr lineWidth="2" lineStyle="2" nullValueBreak="false"/>
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
<OneValueCDDefinition seriesName="year" valueName="money" function="com.fr.data.util.function.NoneFunction">
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[ds5]]></Name>
</TableData>
<CategoryName value="month"/>
</OneValueCDDefinition>
</DefinitionMap>
<DefinitionMap key="line">
<MoreNameCDDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[ds8]]></Name>
</TableData>
<CategoryName value="month"/>
<ChartSummaryColumn name="growth" function="com.fr.data.util.function.NoneFunction" customName="同比"/>
</MoreNameCDDefinition>
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
<IM>
<![CDATA[m(@OA;u%1e$p)7a-od4o(-kC.65-1$+c2)6MLZ.%WX)-/&-;u*6<")hK\hX>;!B)[&>Y%%MU
XJ^TdKCC!m,Y<j4l_+)<ZGJpt!(.S]A)N!8l#*ZmCf.jluGkli4Q5DqR,)/o'u7P5BH\>76\F
C)u02/NVk=-]AMecE/Wl+_iQa5,Na;@;)__$+e$N?ZQ)T6)!NW\-;D24'M*H=_p'\.61L_;??
Z"H*mD,gE08Gb"g\u$b>7@.Lc<mCB>FY'fn(5k9W6ZCn$(0;"TUc,_')$X*=;uHtUiP_(Muf
?IH1ZoiWt#O@Q0Hh=agsC+M$9;4bqC91\hQ:>/n_N>;>H.I+$SGgnol54"Su'+Dj1%H*9#l+
e`uM#qnJskIkHrVqp?4PY1WLBiZeJP6+7@'Gk[skim$:'X%n'Ao]AsO.s*oA'UU[n`-G`@Obs
h'2gSZ]A@3pC:5d?qYo;EV_YjFqR%/>^tjR&_Q:^HQB>N62Sl8W-L?W-eubC%ONCk-AFY7Gsn
+US$rVs+Ipa[6@T?(jkf@m@.R!1?pcLV$*AOFq$CsD?/P.gtg@_g3cmunDo9tqLp;FheL<6j
'Rf!?>o'\A)mo2p/JfL=re-ng]A;6lh"o_^2<eT^?SHH[m*r1T+2fE^h(#&5*qsLHm89):WY=
AhWbt$CZWXR!XmDgJ$eH_2G;tXjjGMbX8aCC1f9'&</YG.Jh#m=CY>n(`XMu6m`&k-\F*"1I
-k5$qXKO`m5<@$-gbEmYeELeKI$Wec[1U11Q7(fQY9?/<M-XE<6VYf?4`t\H4.b'2]An3hFdR
N=b$h)O+WrX0rmJ1j0qC/FkNTl<NoDr"ria>Rt^plI#h%bHgceS\G`l-Y4^qp^"YPs'j_n&q
$mESoCIL=%o6+;-s'gl%$%Qo5aXI]ACkp9!/cCrf1rZ<`_3W;ld4[KF,Of'1duP=53AGlPH@0
c]A-Fa(GBc/FP^te&pu65;2I$r$!6sqX]AG;f,qTiF8E*8>']Ar;j/8'BIlZ/b/$JEsrBKiP'E:
;es"B5d\\![B*kVXHW7cWp.81*t&RDPa>%!i0!oFBZje.ko2g1ZlnK`UqcP*XmpUJr0Xla0B
e>f94bp"CAs&0Afh>S;%+R%E&Wn3B-KSFE'YRph;pBBGLe$%G)oCLVN+MM4?975!o6fmV!Ul
PG=)=S@KDa2M]A?N&%OrpcefR[I?!'Y"SA5F)7Iq*1/E0<%o=#RCd7M=@_FNprQLppK]A*$.qC
-]A$rECam+n:ebmI]A00\ufnF3q1s6mbb7o(!,h"g2`G;!7>Xg]A+LTFoW7W-;+BM51[hnkKj$^
WQ:43ilP[o6Md&^#n80<%V_M4SYHlKB4NqiG+?ddnl=J:h[>a/lic;<0\W6Ja:S9e%aY@q<9
hd;>HkDn"cCFMQqT&Br!cZegZJ;mGn/<8Y$i0.<J$3<mOGS7@hAd?Z+aKBEW>iOgt:Z1M^3$
4)]Agr84F(Ila'^9aTLi>1T>>_?C=kE[<hDj@#\g<KeH.:Kjkc0SJf6H'si]AoP5CYmnkP0klu
.Z[1<Ut%nRec0!QTf'R8rkJL=`cE&`!9*Z"-<P-69CaMu<?Nac$gb]A5qei_Z07P"DPfL<bHJ
W`EBJ(a?cprOM&+i%MOrRQm5M(O9UjmlmS+Ml7';GYbC`JU38bSc8io@&1D&q\\@<;@6Y1X:
"J(5MXUHF+NB:Sm[FcO9YO@%XAY(C[f,AW=1f(d?[.+5R+S7i27_^hS,\N6?"]A4bJh5]Amd3(
6<Dq7I]AGTX?Y7/FjtoIihnL$N9GF"d=`Sk]AA?[p6Ng/YgRD\4buQkd\)Tb=TqO&9-I&(!*:K
>SHp[ESRdrA,U-_@/:>ElRm@LGHgV@=AWPuZkeJe76mE@a9H;>CjgSuj7IsO2N9qoq0hk7at
aWMLTqBo7d9Bgm+I!Mf5FlZ()q;5Zi.XXn]A!<`44:2*ps,2)Y?SL%kkM)e:q3H&4i8/=5eRT
@<LGq6[3%+G-n6+7TTgC,Sm7Y\H0&fO3nS6P,i=%n0N\&H=S!0,Sm[=fo.(,U)(FC754=392
J0'X##rlrYOUN[3'-iWI&DDh7*qB*c-LtA+8Ka*Gs';IFe-r]A5/-W(4"Qt0\_X*.E*o\dcX7
\_Taq&f'$&Y5!#EH$QquY9L`)Fr:0F!XXYi.VW(6XJdD+/HM$NG`7md=NH?i4ii5X?=79ZCZ
M2n:l=4*qi^hItWb)F/0bdt4sh6V/SA$0aAkFY9acY*P'/G+>q^KXt]ALq@0I3Io3O`S\:/eQ
E/r!(ilB-gmjtG\VL3<9*6kH]A>V]A;ZLHIq7a3%I_$&&$WqE*`(nW<kgn=W.NqKK#nk&]A._.D
IN61sHbVib'UW%(<"^$`Ri:@Yr3c-H5IqnuPCSVbjZPkB?YOrEoFgUdXP<LH82Qcq$HU*<GA
nZ:oG$lm<m&;X6dSX#unKrWD2oYl/`W$rPU\5Rs[4U$F0]Ang^=GWC2$3O)mf#H2YLmWreCfE
P5?2Oe5TBG\9I4K6oi0p,jCc&Z%Epf\!Cluilki(YbN_q#$inN>k0k?nm\m;#=]AE.P2\t6Qt
)dH9)BSh+DK^,IIqu^7Bf@1L?/)S]A;o/p=5fJRlF_'K;4)s@MjGk61!rXe]A.YM@1>'4*T]A<s
J"Q1eT:/12I3W:61iD?ZJs-Fogmf5f?>d#X@3`r^G$pL%&Ko5-.Uj$EN[`JJ!'lSMduHqWL)
qVdH3SaZ#11:t_#^^978LH9ONPgUsU.duZ94GZf1AN<LT2iV1^:QqWHoJP&NEg$Y-cj*Pd\M
<ln1K62'SZ!ZLBRB._0ft#k8DuX)7<Ic]AL&</OSZ/j+e`UD[W0!bGnBk'<MXGF);f6jPooSS
+bQq]Ar0F0)C5c]A.Y-!tI5/7s=-q3_?"kq=sf0@Quc;&2TB<U,WWU(ms^Zrs)7A3GGmYB[<]A6
m$N"XcLa8V#\Qlhip3A+]Ad@>]AC;h9P3/j&7d!*PtAC?r'*bH]A'<r_fRO0:+1dB]Aq3C&kl;9_
Kj(I=p5IgWkd?n&g+p=YIZ)[*/!\X>g%,L'5VBNbea"?JX>hZ:iQcfXc:&D7[@U'[&/]A+V_:
\9@]AMId36[OLlffW\*b-57u?j-h:)!KlQ%oUX)4bAk_q,&5sJC#$#8"U)&lN5s4qG_f+OfeT
rb_spXJu-7DDmM_4]Af</Uk1n_WCU\mBq@&2LF9DFRXo#^%`-g\bIZB9tJf12J.+(iBcZ&n_e
_5nbk5[I!i\3\6;^tg$9:dMQ.'Z>h\Y-Sa3OU%\K5Kjngq4cI\5p@b_\3e0ns::3n`d[_)W%
9_@WT(QVK9/Vmk!C@`B:QoS^(-F1B+_&V(b0?_E!InmEbLA>*u,ab8tg;O\c=B7SqlR:-C)1
NCeV]Am*M8WUjn,^.!Bit9dIqQFQ9#F"`_'6TdI$UsJrDL4-lCV0]A5hq^mJ`j-<SpthWLnu\k
]A)`p+beWgMh7r^`;6c.haO[,(<6Ja&GLF$lm<Z42uj,^_%%B`q+O(M"o^bE@TN-N^m>cdIc+
WoTmkZ19'&+0Z#*BTe.K&O7MiUKu13o*i-W"Jf.VYP!RFN_"X(Y:1,35IrCb*9@r*KDNTh)d
$p76puq79%DW4Y%AVOe6QU(c2m1(Yo.@>C;/N@'ZVF(]AWr2%rgBObph*AANsi.eOmrb<$$q)
DnkDG:c-TYBJ(hJQHo"<dp1/,cWFYsLI0I/e]Ajt<<O=cLcc>KhXuc+GA)?"LL1tuL&3=;ad!
rr%Be'/p8]A,AF"V$=n,4EDZO>L]A0d.Ib8SbF6u2Ra4M]A=6"LO\pi?9ZhD]AEt>$`_7Mqfru/-
PX8YFE]ArVMqO7;D@Gcg"%]AOf>sbtQ.cD-<e5Qk?0p\#h+)U@STHm7gfo2AO5e_`+J$d7`_eY
ZV^C'eF2$&dp:O)\PILE;p!eSk)-3YYOlgO&$^bS0FK\@[X__OUT-5a\L>JL_AV4m%)N$VOI
4HPFXqS"oBp]A#RgR9iKk!b?h&[$[ak0ilJdh>!i0a?fOGg#SFu$;9Rq)!9!XJ#'6@o1eEV=h
'*[t`ha%V_ZrP#FjP=cNYCo1_H)D`k0]A0(??a`j1lrVed8Q\fcT05JY&Q/Kj2dN$*^4*\DCe
[):?H,:fllAK[n$_VGSrPt=7QiCt<4O1X#mkdK>+oHpfD[Pe@_Jd^\hq_Lr2!c&L`9mdlsGi
Lm0Cb/f,CAR/l(_5mLk<9H)-kTLGO3bT)pi)j-P$!K<0=1m.qo#L:,BoU(SIH7-^]AIf*&jA<
O^C+]A&1.I<Yh_N@;smOZrb-""/AupU.Dt/@.U4*BoEs2CRU=QRZn6niEoHEZoGPO-A6o<W;1
SuHk=U-j'S)[WFb=0Ns<g6))6K+_p\^N=61['T<mZ#=]A<oErnH`bNO&$;>iF^)e`-;8+6UVN
\IsB%P!:sBpDo*$JSV.IDhXdiajrL#*"TaP(e`&J&"N/6c]A1-7<ChBKS07oI+Q)AB;^5T93d
bn=Esh-PF\7CW#FMo`372:\Z$%@QX2VhqlAM0(3;337;T>i7F#P9Jce9F4p[G-11<>R@(tVA
JkVhPa)bY)-]A=h4PBQ:gm`(Ys(m3A+*675/+,!4d/\f9+5na`Ig:iQY2f%SGUbjZ'<IO2_H>
3dgcO/VQ"39fTR8Do#gR+T4[4Zt0c9W-%BcaEZ^^[aU+/YKK>V&"O(/A?<$H,C5\IN1XA=L\
jGD-OpC@k5g;d$O8124ha$e_Uknp+jY+nO7:/T.#=)/g=p<+l2_"eX\jr]A:JEafoJT,M&Q6S
,LKI?KR)F>fk\)QZC2?J^2d%a>Sf7E,tY02Ppkg#W8[uDB`O]A1&ZHQgA%VNEa!_i\rF4'(T?
jMi]AZJBU[Y49X8=L3o*=U/lcj]A^CKOK"/#aM%BWfqPK'u#n2[.a-E_f0p]ALdDC]A;JT%P4@Yr
s'I4"Sh%,Pm03@f>jqFCrpE#,in5]AMk4i6etdW]A&4NO]AH*/m^A6;o1_SD7k*9\+UU$&DE'.j
)mXps4N?GB7"JoMF!\e&Dp5oFgf*.8<G_hBl??j0Xh`4fXTD\;%W7DdnCX/<04A7]A]AHt$:W"
tLeWd>a61LA:4l3$'DpRF35=dC'hTT0BkL)SZQ#%"]ADJ2MI;15>jI6MJu]Au+;,s6lL"?Z%F_
LU;po26l;=j6t9I#1K*d':1adku9LR7MJ@r^V[JO$42#kM*;'C2;t'E%,Fe1I<E-Mkj&h,-F
*Zq(*'siP-<PfK<As<!g60E.dVAs$\d:W)rZGCAk?340d"gSF2_LYfFeFOb=IG^^8kRp>L3\
(iFh+_1gN7c2]ANgF^Os:tU/!f_U^JgcU+tg%Uh1Bm52?!t2R]As@LjeDa*<1=TBT]AL;caDeq(
2q\3V=giM'A?BGmiLs0Ufc"VHW7K&Ld\A7RFB)VPqt>J"igDhqc$;`fnchAKn7H+7!jue3YV
RR8b#G#(7.pFZp)a8leh\#Ug!ujs1.AWQQYKg]AZ6[^X\SJhM;r#VSFg\O4gWYk5",$JXg?R%
AQ6b]A`u4&4rp/"=+;(a$d),c=[to9FG\mAf:phULY\@o01NPaI0A$<TV<RmN^W%.n=oN&Tjh
Xs#elt1C'b/mq"Dg6L4^nsu(q[D.k2%`L]A5rG=i6ku'H6j&D6Cm8F2[h[K\E;#<baD<`8L%:
o\eJ='ds%u0P8g19E^Ib:#,Ym[d/XSKNuIa-RWl2qTKA>WI"i]AMldd^S+KAQ1i.ui>ea!Udi
H&K^9Cb.\1\hO>eMfYHIl_pi@)@c.35Q.SA/hJe"kONVFS/U$+nK]Ab0ZS^nVglI&=*5bSnV>
f7B@SnCpV\?RfV_FRF2Bd:#-.;uc--J2m;1O@m2Z4CK(aC6SNh<LA.LBg%D5iFW%D=.ZekQ\
Ia'`.nL?jVPgRlm#>@[XQ!XKU)md-tLEO7k%k)/=akee4,unpJ[LDauTV:-cJU:7)`0k:63^
Xrk^#@<cq4!p7XKJ/'g:1]A8+\X021/9f(=Id8Hs"VDU*W8V<f3COfG1oJN%+3h1%Ps_D>pn#
iJh\._HSqFS!V@=n8&FlJXWKX>n(#_;LC0!gOG;&>W#dB>@aRVF6AIu%!-ZYY2]A]A's.tW5]A0
<=[A3W.UVA4om"M[S[\P7hpMF`.8'/9u71JsW$g:1"@U[`Yj_eTotH;;IC=l=T(5+1*3(aO`
'DIRINRO"qmmbmLeH#7ABo<MS4X(aCZ$\b\9"B;q':)cNEi`4`4"2*S)\]A]A6_Ee"r]ARNN@C3
02me;YgP/c.IfrVq=d7V<"SMX[MijCmX&'h+L\PNOuZ`;m+e)_<H,d(>;s@ansr4O?==f0Dd
7;,RF$$c^DA[r/&\L/0r?gJ)JWgXrKuI/TK@EZCML;$+oB<l$b9$Tb[7>0elQ6>`Q6F;Pr#F
7EVm5gRq>$`DP+0F?X'p0b-(JA\_^&?fS11)Gh><,g5,I.c1dL)99>!kT,+&/_'O%K\qq>ji
^D[X)nWN-+id2^,IERV)11Qm,f`Am'J@IFqhLK:gteME/CmI*KJiEodlANMmt]Ao%=slb1H3i
rgg5Mi`?#q?-3-0NNFm^$?A>quBf]AmV1Emc#r&?=+EY"W9=lYAkP\i^2GMdIPS[Auq@l=fYn
r4_rA0(?dl2(oWo<\JMg?d^o>JeOIiY`MVigQjt#T:9'.n7=\FCI:/bIer9;''V+3:7t%#Eg
XBR2C%Gh:)kEfcQACKris)A4n&B:6=Z:g<JkX04?.Q[L=DF-`$89B:G4m9'KB)\KA]A"s;M[l
,Af>c%6k[=D+GnE_>Y25Z&I":YOe*q/LD3A.;i2gZ2=n@CIm4fu/_TM?djKHaErau:o"+"ee
034p'rQuI8*@cGMDO-2@#96\a/NXbHs$Vl;0CCr(Y+54eNB+l6d6-'-CPV^5oe9n)]A_<tVoa
k^]AT("g^HX!L-2(FV0YMd<e^8)ZO1[J]A1a4P!2T*%^\BgNa0Ck4j^5QDo03E^XA'^qYEc?F#
DL_61Ajcj9k)g2WCuY.\B@+Z^qloYK@md3DI[^s21ft+I/nr1Z\Nn@h54U1<dno(u&$re,Ug
q!3,&<DdTB5_\>Zi.90Q%]A%kXeed:5KtXK2;@<"2?XL9TiD33jcrQKO`!pfZJGZ)/pG0Y[EX
UhNkg`'M920(k&Q@?P[#!>lDcGGH"l>da=,SqIi6=p+6/7hKS!tf5t+FYi`LRX$Pq9gU5Z0U
k1+bP6J)Eqk:RPrRNF4f?5l%UKUW]A.O&t/CaI-r3t<_$9@$<*[j)*H)g0mK^JCnI@;&Of]A"i
n$'bh-^Ep"H,$93E*J4RA^&>KE^h[l?l=MACK@b'^=RF+(b@D^.0g@<T7&MC]AI@2)?4/k*J-
lEo0Mo5t(7,UH8rDUHNkA.!]A?0JBo$.;Q4bZZ/mkRA_n%7,a("7'CbcTS*+YN^mOsb4II=mA
B8PIih2/lhggSQmB)Z7Z+bJ`%G;F*o['7Uc5ET(Z1k[2C$X//IfdVc&Y*JB+#V:F8ZXdB@jt
<2aK[0-L`&7Pt/:`h<"5")fa6?qSP3GWkor8E$YAfG-?g=-gacV7H%Rd/+4<@@"LC6Q?i\m0
b'k&YW0#?JeCKeW^j7+>j9sdi)TJ,//fYI_BA3l\8!3gnd9erjAOKgg9?`p\VYKA6lA'b_1'
YD60nBm7lpI;3G'WS_a'Fk#<,64Y&3O5:h'g4P=A&oc-8k/(77eFqXq##Z+h?le#,VZa"^qf
+iQ$c#*,aDW=b=c;imVQXR!\QAP@biVu*q%4ZJ<b<B#ZCa2,Ff.759+iT<.j8+qh'U(;l?%(
!j37am0IEZjIVi^#5=#X_amIMRNV]A>u6eq9)$3[FPh%@YS$1\>XdLnYP:Xpq%_jT0o8rkQi5
.T/nf>-#@sEnXWRJg?oYV1gs*o("Ob-d.7<-"6$L^%$uQuYS%#^adH^2cMW-Zj/"Q@GkX6IJ
efkUAOd3kQ>Go,5Hk(\`"pG^H=qE^#5Qu2XV)5>N2Hg8aIN-D""e\<[-LFp_cF#_@7"p&?(R
!@aO/+U2R?`<OXL[`pWb?c:>07qBDOHf]A%AgP"O)aHQIera?A94>]Ar#('cPdD:<uYf=Y(Ou_
eaUQY'eMrj0uEbccB3<]A<RO:->a8B:<2%uJg^h!jISi1I!,/$Y\IbiC>fLCH0nH<1qTbSL52
bk-OUO2o,1/O9'^e!,9Hk]AehG+l,5sN$7C!k2KfJFYk./04fXW:QrQ?$Q_SJgUAFDEr9(_\V
ejZXHsQrnL"ac\L,P:`lN2(U;pm$]A!H$E'oYkY;r&_<Ff"ZJnYq4(d8X?pGg>&BICOS,MpP"
;_.qgq+l4rV0(3ep@FM"/)g2]A*X/\mbJ6@,h.p/F#q6$9]AsQuAER_i]Aqi6T+`n#bDY*KCP<>
[FA/7Bc%hb-:_PA+<.`H_qnFi>1<)r7>,.=E^.1$o8$3"G'e;?*oX.W]AjLJDPT3(Cg\?Q?*2
Gg6n\\A[^)L:T?=YoO;aTos"VD@:FC)P%Sg<4/@K(Dj3\[3$u[Q2+1q&tfR?TD<@jb(X:#+q
4&Em9-i_Pt9-VCQZa,fe*8c.(\5(Na@N<K8!\l#LK$-YL+p`@.8;_m`m!9LN`0sTcZ"J1Ka<
M4=RrnBjN!dX/L!.(,%<cX/ScD9`:uAj$']AM\"`Hii[]AnmldjT3!95)"6o%)I+C/6U]AsHS$:
sCJT7H7BZ:-lN>q3<d5Up\3*GPnVcID,1!<Jqs9P+B6`Nj)'&/c95nV?E8XBehXa+1!5D`V,
BYP>.c$ptK\q0FoFK?AF#M6p'!j=<.m2eG.Zq%W@/_/;?r8Zfh)$#/,)!1R-tUb=p!^>e;GM
2Prn6"K5@kWlZgFpm&dI2>9d!c#8D!hAqK<YFj$t6O)=d_8L=Q*GMq3gZ\,JYf[e/+.e*2/i
Gqp+Ho;p6sLSLQJ3aBK)lRi_3(ImH<LM%edF(s.A?6*kubDN:33arP!8SoKPnad56udS*WT(
E#;p&d;Kj:,.6+ld9TP$%`cAc+I0aL7O:"s!gLGZnjfjSul1*uTe"Ts*4cC]A*`9`:kdk5r2O
L^'<$o6C[U_)\b18eu/no0k<;rIZHR0aaJEW'V08iT_%bWL7L/(EGGW4H#98U2WAI2:%3LM9
B_=S;O%V%4(q!sR$>Z3TF3YAf@ISYG/LKp+jCL)uk,(\q4TFE6m]Acm^m<OQ,`X""V^+2?"PS
Z:`J:Rj@'UT[YW[ei1J7Mr_Wu8Gr71!JR77co;Ke_!,[Y>ACB$cS`0WJn%B0_r[6UK51p)("
s/k")LiFZP*1m5"c&@MS'FGd4AU-Jo1"Hp)+K(m@'o&apl2k!0d*'YEY3TPPljs@l/OZKi6c
V-ss6iWati<A"FaE\n.UKl%ER#d\?d<lu>psPud?+ddod1H*a`mE4Q`e(jm*RpAq.WT`g?gd
aa'0bqc3:F\PToj<020D31>fp[>Y;b[0m9"#p'.OYJ`?X.s7_5W97A%l@Kh?oP(os0g+#>oT
o[HIGDngYRii<f5.$)sH3TpUtlq9K=>olc9-uUH8bOTL_s7%5L=i?&nOlI"GL_!(sN^]A/2OO
T=QC,-7EpC9rsaZ7;ta2gnGUiI9R!TW%Q`_SFD7bhA6.XP5p6i$T5ON)g:(_a3/neGI$<F`F
e_'=7'$Y=W\sDh91Ze0>*,"1:;@!>P#\s%E6ph57I1ZI!od)+((j,)(mS!#Sc_#RX<dsk7g3
iOC_%:@meB/29mr!g(L?Q/e@^ec7k2R.s[>+5T(ZR#NNbX\4(W/(eah"S9%_UK;n%ugJMKfJ
fG)?mHm()4*`M)Z34[8]A_-Zh3cOmm?;]A+RrRGGn@0j"5#ZIJ?5VG#^A(;2F'5oTnnt!Wj.4)
tR40HmKF`4,E>F"9LK&MHdd>;]A-e]A,V_kN2@28*4Q(Vf?]AmK[XkcGrKt-@kl-6VtNs;SLLVu
&.);2I7q7,[6q379>),sDq`qLD`9PU*Y%#]A!V8;F%t&[rn2&kb%VR\X=YhUgF9KH['77#9.g
oTk0h4dqLNKH:<;]A:E]Au/ct7;l56I`_X;cS6+Cp,r,.']Ar]Ah)4P=&`JrW$5hTf@Y0Lg32h/&
/H?EM(=]Aq.-ZPO'k47-Ok]AK#Cr+805C49F2!EO2%]A]A&sOPrTmaIKFWF&)gl91kZ>()/?aPh1
r>Z"lKc<b@4;ERpl9G:>U8j+7C\5]AY(o'9h@pn1QYCJ\dT(:+_/..IL_[Pla*9"2+rL>Nk#p
OTdW#h4]A6WUSn^cee:!j'`XfqaHI%'Ng+b8AB?CWDm3G$]A7kdG705$I?.iZ[R0_-n?<3L&/[
G"f32Y_^[=i4CPe!Ll;.3gQi`WM$!`7e"6,L/p.-!j'AR<@k'E<uI29^M_R8;Fb:=03FLlY&
d97PN\*QeSW9LeG:*97dlUFapokq:DQd,4rpD-.Za5R>#R.&>kqb@s)kqD^B:@c$8kRiXosX
N_!3X3`:(5:0NiK^T`FNUh+@hsjkBLM^*eF^BiLi-6Ua%g2iSfN6u;mLf_tE1GDQ1+Dq#(q7
l3K$1=YJrT?m5a7:2YRcT:jHDogB=&To=_s(*,e\hC>/jV[)%XL'\O;o;D&>."hG\"6(k]AX1
PJ.3Y3)[rruMl,G9J"HGX7'3iT@K<N;!5e3'abT@PoHBh9h;o2W.<%,_ggF"UWGEk==M=/LS
%ii25L1V?'0M>=8@ce5T\Ksk^Q,iT2r(@P_Fo0r[S))qd8fN7Mo+ISt_s)/6aVU!1;('F?q$
:p'e@(+hdY9;Q)um<f@-iP:XTNV7b"T(e`lNDO?A>#Q(oQSK^]AWF7,I`XMN?Ke1MnT:lc_11
HP`Cb@!j0kdXh]A3\Jb)LU6d\(FJegiCg'2.7NqFisJK,glg*F]A;AIpEo\u;h74I\D8#YdO82
PYd4S6dtU"K&9C6(7BdbFto_P+d>i`[iKFf]A\"[B$q^Fp$9A!V_jBM!s<QGlr:Eb=6Cmq3Ir
nB@mgCr=C7V\kQ&crV[*$qei]A<J=Zu^/7mtL?k`Ln\s-7Dp4\tcU5W3tIgboX;mmBU9c(hn9
cn97X<X!7+a8<3[lXKj3]AR=kFMmDJ2MLnD26ZTLILT(@oBX.*+Zb/+*FL^=Gd`1fP7[E*V9a
<-to1.FZ/.d?GE+kY`PHZq5lnOPhH2"K'(U(7`68KhWb/GHEr8Ecd\B):pMndo@r1,A<K/d'
Vim9)\"J^1R2j*pEa+tH<FrDH(P/Q';EH_uAS6<;Y=n^qek\o#1/A=Uf),L^F=+CWDdV^U(e
3I0JImB0r>0kbD#;=RHeqW9e+P5k'U`(Jr@Mg:(4dskhs/g+M#,\Kg(b9RQ)^]A8ZosK6P]A#)
'JN-N";VrA^p&GkS;:X:T*Ip+'@$]A0*JbhIsu)p#i!5TO=I&(u":Im.*as3ZeJ9U8-UcS_V?
(]AXo)3SX1^"DmjnI"W1mfcWFO7,D%W%3qhWnQ6XVnL?0V+k;Jo1Of0E,VNmg5MIYX/JI)#s3
eW&ET4)=>ct<AG'*f92^K:+]AIloi^qT&U^C/iAnW79#%Z#0p&5j.N*]A6P0&jI>VC5<*hLHKo
Efj[k3G]AsB,CEHk"WOVG_-N8+c`Ff`!iHuq9itiEl`Bb\%`RjK1*J+\G(:!Y_r2YI'f$S1)B
3SWp#OP/d?1RDG(I)HC]AJe0LO:*ftG0N23j0_PuLpDk!if`Mh81?[F,12d"A`b.eYB>qMLJg
R5AB?9sJ^;la-S,0)lp1[g*sTu=VRCV/1hY<QR[05N%31Kh1jZPFg8a+d4RAMP1nCFH^b^<>
;IQnaLfT:$X^HLhC[OrM_cf^'jiQ)?[>Gi([h6\:c?13IhWO7\@n!k5pU0Fae]AL]AsS#*Bl&O
8I_?iEDTRSbnFHr9Or7g9t`[8kilOd=C)Q?A4+qc"!\lrS+O'-cFY'CJiEXL7CBVjfY(['-S
@pu#[:),Pq0<&&n4NnGe5er,`-?+<&slYE-Edq@n($1Z3^Xmmk99j<t'I(ImNJ!iP_rW!Jkq
7YeX8`YBkM0B#kToNB,N2eI3?rhAM\(DL0%3A:R08qW,/!cg@.`DJJbI7O(CW*)ck"-8=oMr
:Zl2(5Sb[M5+`-l(i(EWM+1je0p?<bB%EX/IkX2+VFbdl5fQS63e!=bq^;c/FPWP1gbl^7UV
N6!CFRFHM')Vj`7#u[(;bE"?(YQpjK15RW/=/OqPer/]A9bkkGkQDQM7!#Vu3^l"(qp6H494`
-c-StI@.R@_90jV3e-C[!ICq.Bu;6DM4*X:KEhA/r"[Q5LB=[H\.(r3@dE^Zr#r54Qt@iM]A5
e..dXZ'i@N2&$p@7h.*K*4>eCX)6Z*4KB+]AGE2"HP?if8pU]A`oJKYW(":^G\<Xgi`5TPZ:7q
+NI5HMn5YWWZ4K*o]AD73/t\us$c&LBe;%32/e?9\+gn>k/G\4MZNup0Oa5FhALu5jQguil?F
Je;pGPpPgJCLY?DgLg((b@Bq%KGF<k'kd&/F^@TeL#W-"#q(/"c*dr>SU,k?TH]A@Ebd:;d*<
4kG\\B-jUPO#HX57X0.qVC5Fl,"/%89s!0^#3]A^U0]A6Jp_='@s\3"9BGW/E#VASk5l1Jg)?U
4mVOQ6<(/XFWXY#F>/h*:]Ae5h(gD/cJZ21V_d9jAfoYd_#Z=<35aFJhe`qbm,.mL@:G3%mf5
MVu"l4<))<P4[\CW'e[U]AC?gO)8^Yg>/*'EnouV0!=JBel;8V(H8:6;*hH1OOeEtcdeR=,O@
CVhrp2%lJ*LEl#<JPtLM1%i[)OS;S?<7Au3th,:(J=3G]A9JI^4WqD&SUQ/n1Np$(nBsiM:ht
)KcA[VLP0T#4;WuuRS0q+0lc2'P&_j`'4Qu#9i&'f..10g5oZtYWf[>.7g>^kYq+GQG7)73H
8:/"RQY,QGDT(P`:LAXpfY`%H[*V-o7^8;b6#86sR83X,)rB!E*10B/.B)<"'bsq3nJ;g<5L
/Aj-PYh_Ql,*1*\A]A`a6@It5Vi-JW[N*<'YKY]A-SCuR;7AQS9Ti+l\/D/&d,>EcG'd0S''IU
nj5;U^-9u*6$_64C*9gt.\d;fqA"A7`c5FqFlF]AufV]AVc*"3+^hSu/5opP]A#gFT#-HO:TO&D
b29M"o?Iq[)^Sd8>?dl'W/6]AC=+UWHd!K=K,56=)0/$ZgG91A)-sK6n=)^BoQuD9_CkPdEPA
pVMim;t?Ltt20[3alY*CdaW0"PfPM[4h=!;F]AGX5`;W.BD74s<dS=0%XidUOo&Amb/L<giaX
6^6sCe*p*_UJ=L4aejPMs5K<CVWU]AXX\$s97L#!oFrdkB"`69^rTHBbOB9Sh1/'Jk@u%&?:`
s"$'q`mI_3dFh<--4f>=sg")t)YdimCN%L%DbX&>PgMTH9nu'F_%d)p5K*e`eK&lj[s>KMF9
@[(,<q(k`&GCL5XX(B\ck#Z:D='T7ZU@X^HVKJ^=S#?=<<U.0+E>#jj:WFsN)4<6-EWY$HiJ
!fSgY:nACHB,m";Sf\X)!5_AG5IfcR.Y8ma\XRV,bjRVoG_pkYaT7'gJu/o7T$qq;C8S=8Ah
?LG]AH<$*?GJs,\H:$\]Am:rXsrt>Q_/f_4N"=FW>8\h!)3nc,i6#5@Vr;k0b=T1`);eSL0-@:
1Wt3B@VU8mQ^Vh3>Smd8bDt9<AUl75RK^]AE60%l(W8s)3lYW)*E8+@t4S/pR1nNWnDF:!\$N
6V<>hI*'XpsT='2/'SV$1cjUsicm3_aR3431"H.HcPlgb[DT`X^KR2NGe)#UmA<6*66.dTF?
C>Z\NSK@YYl(q_\XOXEEMEuHmnYaj?BZ;VE8U>J,bpBX?<O?Q+I^<Ei.jpf,iMUrg^;"f=]A%
D'C^9Nu=_)Yeq%_rjNb\]A;^8%t:L%F!D@[7$n?%J5LA7:HtL5-P+""h$dJ5`0g\QhQ=3H-%[
kFq^Me&WfFCXnju)k\(@5A45[l"@STGLGJXk>(U?<&:#2b)*n2CVWp8OC$lCjQm`44C6Kt$%
3R2[AS"&2uU(<YBXBo@oOO9,^S5DA=<XNMQam.F*SoYuEppWSB*3,Va4^BjNF8/RKl$G6nN(
RCI0Z@$pO,dg<E<555HDU1Y.A2/0RtC964rGIh^30pa(GFIscdI!(5>-ES/N\&0-!=l-&f#*
(FIHl'_'O[bCE4,C[Z.P"=\Qddhd#iVZq/*$S5V[M2re(O*=d*QM/0cn`L=19X(.-96=DEW7
0(sLhYR_4FF#s_nCc-u8tVic(WQ5*pc"h/!34'rft46*[Ffk;4M:8*0es4n0suEcNR\n[U)f
&?Bkog+R"rW.BS/Zga'.[2o#+Y/F*c!f('!sbhc5#EJH"JHeMfFn?!Ccgh!`%&`^aR=]AHVV0
St4/5I),_PpMa!&;3-[i'T!nZ>;ilB8::'j2>Ee+<BnGWmu0?_`:g=bI50!oE8Vr+9:.?;!j
LRlps-7a9Z;g;U&NRb>:?<_3Sm2b+"ja=4:-]APVcS$p8-CY2nn(:U'A1;oR3J*XUtsPfB59k
NlV?a3.K)(-2U:gG]AeAj<J#[`DNUf+SF+4H6h.K\k3fG*q;pjaG5J/gEmc(Y#'q'=5KEei>]A
U*rk'(+DkobcPO?uV`XeH0Du^V"F]A7hVm34J'WQ`qEFH7g8Q;n:85QdC)?L%sXuep+\sk&Ni
,gBkYPEkQ)s:F<PDTMlC^JBJ6]A6S;lDj:4`@"A3W;VRIJ4[p]A2+fX#k=AT)DLtJSk\FDebJD
m_\L59ue))_Y`q_-C=/IXtqV?=%;V]AgaaH</dn^l2^P/9SbEGN9LW&W=;pH!j.,4BitOh0fd
N3[H#Dm`B66)X^qJERgMJ332pH'CN@(!8nHO_D)j@IM\S_npcB,o,a]A&EK"gbF&3OqN?]A+UL
%W]A(HWCK+pK1RV^@F@Cs3>cY'gR3h+WJf)dF@`8h\a%SE1Mb6I]AWt?2GSgP:XOWK2c)@ELoS
8-nWo>MaC$X"1:AM]A0cIuZD+'rF'<QHf$h7pn80B'8JXll@!5K+qm^dRqf]Ae,gnVmd+5eFfU
a*6i/khTm7s4dp!\7%5S-.-bZB+5Q)t_V7F>Qn6<rIZV.s$$LRA6W!t1L&E2,O'88,D#Q]A(K
qp<P*X*$\#'\_maV1OVVNmnN6,jLndIE4[!+lU]ARBEqNdHQ`Oer;)l[#&mOH^WjD_q96kD58
P.*R^IWXN6PkXo-V&"X:,UDcFH@i\PS8S_KVe+RiecX"<;[mE+D`J4%7sj^62rOKH=K6+4S?
drOLPDOGI:h1)"BWS+s"7-'J$CGcO;rM,Qb%,DOUtQNROSGi(mD0gg0K**@9=^?,uFhpUAgA
9lE[qCiu4^U4,.H2Y@BFUfUY->ftlh!bC@PmhIA]AOqC"p#tC+'`nKhYm[>U*Vpr8!BsLg$&n
Jh<iF<dDa]A[4g^n8N'ADmeS%M.GOIP)7eGY]AG]AE([B%^kU^cc=VP88Sfd1H1uA;e%?$Vc)3U
n@:jZ`:]A:5e@CI%.+W6HLa:?gA:M:98_p6M]AmTGG0[,DXAEPn%;b5;D^Q5+#I@R_:@XWJWoE
]A@@YR^-!LEXO]A8:T"c_)cPUdL!t@bE=1Bh;I:HCT2dlf+iG_(m]Agm1so5r/L/#94=h&aYJCn
T0V_h]AG>.sM(]AiWOCjTNlphF@]AAN<I1R2:aI1B7l@OV3dD7.LD4J&QsoY[V>u9dJ&[ma9d+T
eijEKDgL'_u0=7cZ$nUrfMWScD.PX;MmUQE<C1n)&*t[T$H4j>Ff)k%pT.QQ"a$KjGkpkdLM
hF&bJdg!:@7\A%tS5kJc"F[SLe$*[GZQG-V[u/Dm#CoG5A6%^2\q*Xi_<KAN@Ma]As3[">>*g
mdPURK'"BO9lGD3KD-6i>7qrD<LZO9EJ[)_@IutX51AW]A'$8/>bG/%b'L]A+.^+5fEE$g&AH.
S3Q_:LTj`;JYYCBKj\P*0YLK4le%SO(\i.U&TNaS5_q9^=t+rkb8*\G?W3,L7A;_D!g>CsT^
gcP1<na5Tt<A9ZoL#qU7<.N:&r2f.B<kZAh6M#B3u:Pe@F&>X#=lOV<W42;N9qZm#33$tUNk
F<1kgV-;$s'>HsfNk;8M+DBBS&[i8[k1*cd+2;5=7IJU5'+:R96<H;\4R%k;D3A>:<ObJJ:;
"bk7re\oAC^+aOG76/-rCQ3U`sD$k^ib\tf%N*U0irB<Jbmi<dQG47A*FDmN2fPafo[R$QjP
YZ$rUDYX<Gj(YD"&sprT]A'C$?BJXRjVEF!2O=/E@=[-?kQ`Jpf!:8E?A^l]Aql7gFp.Ug"5N^
&&SQb?/ZEFdJu]AalT>[M</Y%m:0jd?O>gr9SK%2,rm3H)H"F2Hcgp2U->_?E/-ATUsLGSc1'
@1m-#]AEj>g`b'L7@mQsuN>AH`uH.F?5<:_(12*\qaYE6s]A?g0%4nu#0q_9m`m0W+n$banX0m
rcY+neiJhLH;Gus3BQA$NGl3;Be%'U5[RY#!eaWEm]A&]AmKi"T6CdR1HZsC,=bj/H_/f"$;#I
Ba?u?94A2_)nio-MIi:NdNOUuD::%nrZRpmE@U^>TC>8?uJPSN;E9KT<U5Nr?KF8/nPBs`Cq
0Ct&/C@51,.3n"s#>gI02AifVobKrYR9hYJbM'1",%:dcNr2mdrM'UYn/ES3pq=>pcbMrG^u
>r_V0d`l8tcFWR!EB-`0_kfpZKXIrMZd1;>I+5kM@N5Aj-=X8Dk?%9ElXHjN9Em7'S<uOm:e
ULb06s9G)$oi)uNXUoi6BVJ^)Kr>j#W]An">!\]AtOmG+Z]Ag3&Hk'ro*Rh#o`,=eot57*@e%Mk
oHuBE0^CV1<uGrMe@h0.Heq>#W4oKHElk:L5;da:M!gk69_g7=9ss.\:Z-0Fl9^r(n3Gl:aC
F<\R-T2=Cji>(pfj$mTJt0m<t+_9I4Bs$3%!Sihr8J9GKoq6UL9Lob_KPFMF(>8n4%S3QP]Au
6`bh,p8*2XgT""ghf0`Q(c>+MX2KclN^rW6DPLc1]Ao@-903Nc.LMfsg6R?5@<u>#IF:+1\.h
:mFgn08fr50SJ!*'*Mn@J^8h@_'JDi$bNe<tI@mu(_F#F@Run?C`>1JS"YQsD"1jhqupIO<2
$D2_,lgul0+f(X5^T7J:Sf0G[/R>1dHrPl]AhQ^j5F#I>HRJSVXBJW%Mo/?5,IcA&cD:TZJ7N
GYs=;n/W-O2hGV0_35ERDGL-V(qE"oA[BFP@TsN..df?-C$Anr=-rPSgCG:X(<8Bn]ABR6>Mn
qQ[F,m7$AU()U4EI<SKkZu1:$m%#=^@TLA<Hkq($U>[h^G/8VM(hR[SfCgmV*MK#[8RN;5ZU
D/2Aq[AqQL:)5Vh8JthO4j-_&j:5QgreFXR6`>"j?Dj5^.F[dbjbC7<Y5-@jeCATnIl8ebG_
CEihW@)Dkfuqu:RLZi$FEJ$hMq)M7^b`HiEY![QPPT$2ti[PaW3I1@m%3Vra0^!1$(#qKpTd
&KD275ISd8BXiHr&NC#*Sgig:,mAXdN=`p7cq1q6YmXelMn[%Qg:U-[^4+Bk&hD7"(f_B<d\
U[69mV#OL^)QQhL/5(8[@4#q/P)DBqI^=D%AG+`6]AS\8011p?(8%F@s6eo,b+^UcYd!1cOhF
6'?M")0a;cAgmK<K/lOc6G5@%iATM><s;U"9gZBIbiM8V3>;.$jQ[:9%=,?kJdYn6(XeBX@d
e%#J#U:*G!J?/]A]AHm!LWca*FlQHnU+D2]AR#BkZgcFYtj7ltHC"N47c',qgoBgr:`lMu@4N>1
!mEjR`35:(BOe0_L+`jk&B)T2N9@aJ0BC"<*uV8%'Lm$Q/p+_\W=*p=M@VC-0X4e$u`&6X.0
&D_j;$7.dRJn9M:\)a6sl9,:,$*_A"<"0JDO*+=SF*U:strbh_)>FTrR)so4edp6BTL"rOK=
=a$bI@fdW/$_BhZ&,pmY!,N&,=M)]A"^:+0TXOCSBj(Tj5AqtT"Ou_+!R3@+/W-!M4c'Ri&=9
p0cS^j\o%JRYqD"S@m$Ch#FkYi$1!Z.,)8U(l,tf$U)8!W]A\DI/R2R<!0?,_d]A7YeLiGP*+]A
li^nVpB/tKBC'4(PnPRn.<[:ZVpF4*lMI`.@t\rk5+9[u:&)jB&(H?UP#]ATKpAjjWbBbWb;&
Q'#rqkq<"?@W?g9Po#bYhjc`Z0M!co9p'c66o?j,+(4(-@/=HRIY:rDK.8o,]AOYLY_9PE-Qh
M?oc'qU<4#$?%%))BUcYbI_&Pha%MEC%R2(4=Qr%DpE.9s#edFa#ptc`qlTb#5e;4e5Xj@)N
u/6;g#%2D1XsoT!nY-+3Q?KF=t.*i1?&lc0u^K6q@EIAU!30G]ASp:qVH86=X@K#`L*@i(#@+
@h:@ouNVAQCef>suinNX9[%)NdP#bmLTWG^8t7Z$lti-LlaO=(i9?A20-OTZ/1"'V'(S2%2M
'<b,4GiD,^@h*(kU@LP/hWMM\GPQZi+a=1aC<N5W+8)LP6/iSD?_7H>iWrscV?(e-XISgA`d
Kc*AHcqJYe'h%W-BE8rD-QdE*2YOHr6MNqqC@Q@HWb;GfHgffC`Va#;f!4!.CsXRo+nnD\PK
p4>5a>NK0Fu#M2fn>]AX7I0!!hnj_6gIUG77tYFj[VV9(K"(.*t)P:sclS>O,B!Yq=oY)/g78
Shoj_Drgj_aM!Mr]A/O+7DG>WG_OH;kmDFE#]A@]AX3KuLAWl?hN\#f`:+L6NMa95+U0d&BV0ZN
>.*sL*0UamFsNkF.;.917Qo#>,("UQtlMhr]Ale0T.',,)b^rV@[.+%!CXFg;f\KJ&'=;uC(_
*s(=Zj`dq/p,cQDbF6a^6Aab'So%4\djIc8H4V7uOKP2R\Tm;+%[i1-7*srQJ>9aROBEZ7\0
#jeQT_SWh?i*2_[,\YQXOS;c#;SYDf=Pc%Ar=),bE0m(B[J<+dNF@ch,Hl^/SWc4YL&fA1AL
T;1KcM8D6THYMr;S>bmGem7JA%3Xl-8m5SDQf8lm+k-KjXo/8$S4pc<50%dYW+D4aWlK5nB/
*_Fg-+h]A^(ac^S/+Mak3<fNd-_6X223sTa4BeeQ?.J<4B8kWihg[VJX;Z_WYeoHMV_GrD"Zr
Bs%?;PHf)+V75hq-5fXNh9eJZX+0r;)2?LS^EGaX0?alF'U%L!V"85si&?_0]A'0hD7OZVmr\
TWaZ5Y2kYSl3HiKlZrX(#S1@BdHKDWTp?[7M;2tSB?E@t']AWGW9V,3ohLE/n6-*'`P-0<k%V
4uf8ZdMV]AUL5APePTh,X*]AoI%PNro&!EBQb0&K#P\IEX=1/_H@AbjP9YJ/=:adk'%4t,9k4t
,;oY_N;r9fF[naFCZ!HHJjN*AC>^AUtX$*fe"Hq\KX<=jZ\7`n'ps7)NdJ>Jb+:"WD+f2s(M
>,Vi4Q/?#!+f)0P1ji(0GQ^>->A8u-Qo@Qi61Oi82W8RnO@2ol*URuqNE\=*uCNRi>+nBaq_
XH'Z!g;0Nml"@1s0DAZY?=dWG8Jbh2[)bn?&2:P8qrDIo6+rC%u+1o<Va,(MDeCMn#DYX6*e
4l,o1kng;kILk!OnlBm#MW=b@>)J1E4nMr>_%(mRp]A&H(TJultC%TK'D1<DdBW&5CBkN$eGQ
9UtP(sOk*V,"i-lu227enk.FEGn_UlL,abt"ks1`=LW')40p[QLQf(cU@%c:bSI'IKH=gJ)W
al(ZpU:Ikc)On4SV99pH4;rFS.fGaaqDX_%iq#]A-Hm;7'S\*3EJ0o=mQ:#GpBRjO%[<CrqV=
HN?E'D]A:RT$4/3:-a'T<P\26>Dc/',1mWqN?R)-4'NLH;Ah1?gujmF]AGl:qC(!7XJN)61-<H
6re:L\F9.#uo#rFnq5c)BXYL1X9^tp39j`*<;ml2>Z1+i,aO0KC!$*9T'U-"%EJTR0s2nDrW
UuH,?0_%AqqZgcED[DN?BmAlu0V!=6o\E,!VG!"5TNB@4p769b*mM(ii,UVq8`1$D`<Vrq8_
!FDhs,?\n>'sc:>WRgPdPUupN'r%%dn+L;;Ff,`-f.HF3`Nra6$k1=ac=@=:nl6F*$9BGdnE
*K$_;%)Xr^9^gVkaQWKNU/VK^:l_c@NQEQ`,>hub!83hNL4181P4'OZ9X!Dntkts%h!L%b>'
$:6P,"j.R0Mntrhe(rhS"bB&;I,"b/GX?/K<+;b99shRp<SkfIIA<<]A^!K*"ino3[r__P[*p
3PX.En8Il]AYF]A&qF!/L5`G-F/EhR[Vh&T"=t^3:[;*1u=lE^*K=?[rIF-K%oHhniBDIJcK^1
T-UW1P<\83f%\DTn?6'ffZA>uk`J-kLJPL,H`+LZc2]A=ZJbL[70S[pOBifRhL7.Tp1_?nAq?
Limig]A8V#^i6+#E?[ndNK:#5[@5M6RKj7X'B`MWFI@NXL3BOB0o7:@"TkK5;Wj<EUC9p;Wlj
]A&]ANTEZ>'X_ecJi?7GoD"TqD8G%E7e3a,%T.ACFJq[89uN!98`K,&[kH]A4a[m<JSBs/@N=H0
tWKqPiPR3.aI7+]Ael+Zc2/BsO\s6p9Yh7E2oJM@O1Qi<kn2K'VqRJgPQ?@OZ"N!kZ801m36*
h)?84#>BQn^5O`(u5)b#gJ18C_mHS-GiZgA0HpXd\flUq7.aNR+##,bFS,\ip&N/l@oZa4>V
252fp<h6eRPp,APSE#Rt'/'[W6-E2S\8"H))Yfgil9D(\1hB[n?[sI]A^$*S7[rnjdQGjMME/
Fn^_*p/j7nrGe-#\AM(ieaC*"6QK(qN\7rS)EN37;QgO&uG_fS^Ter?eAinPA5sG'0dG*$.p
_0c+<dBj8I7*a,L:nk*COo?M3]ADLCXTX-#lM1EP7I^ke1jD!1aZ#nj^,m&oK:F(nK:g*cG/n
%7PG5C1?<3H8^te0enEbd0Pn>PM,SnF&kLo;Y(u]A.;0X&aYeL<%$ph%4[[3WmZC6*173Q4iL
$#UGWV9R2DVOiGaOWh@mbJIp)T/2lo8nKNU[%B,`',T\#t551SJHacbnR<jG,mLb39LjSgu%
0YL4)'s'N.qG;60!mT\o`.qTeir''jW?b6-&<GWlBES[m8eRWqDkja@r]AnGXoa*qT*CeA%(7
^ft]Ant\<f$t&+9[8N"pGTuh3)Z)AeNCX$Q_s87nNhM=k`Q.HOa:OChCf%7rW&^oAQ>.dVL*.
!1$i,qI<&oFU0/Wm*u5J3Bk13:S!U"U,YN>-;@uuY&8c0`2k(ba0/$OS4j0lP6$_;^&+hI;,
ZRhHX:Q,D?cBWmnns2@PND1:kNj&F#FWBB=b!f%N8<B/[q:U)2?sB+S7FQYCuF+il1qOAkQe
6']A"#m#7hQGk1`5D$&k/qTs*=7?KVMG3fj#`Pd_)/*qm:kARZ2`Y\)g(cgV1+E\kZVTqh364
c!uU,[oHa>gV)q+R_EeAT/RUhQ$W2rVE<+!K:Y$slXV*<fs:SHc'neCI>:fcDV3;T^k=^I.A
MuWK!as;#V<6R1P5pF+J`\Se9J!S*1LZcR.k;_5Z`ein8DJP^Kk-q/]A$O^EJR/%,cZCN,f>?
5oJ]ADm_&8YO[X4c%(2h;\N)Pm3QlZZ*QA5u4GF\NBKZI2+/H;ekT(crs@8aF52?20/aA!#NN
,DraNUB:JTiQ9\dm?G&R?HOqd8L)HaH@u7;3Hu*@rc4<):i&L$/dBgL=XC,4jA[P0MS!cdp_
54#1F>DAB@\)YQSTY?6lOlned<7**ZlI)h3VKR)e1Mi]ARQ[-:bq(Q>^*U!V]Atpb\&>kpT&@"
8Q['QZXZAB5fF9Hg:Z2c_^.)0ciqB#+u*2EJIeLh"I]A<A@:TD5.)_9HHk1"e1E2=AG@GY01N
uV9FTbB@3QkI>8f:[,(Gh`2*'K*i3Y8!>Ao3-ZA<7+`3L16F_.]A]A"]A)\TC',7J.`6u:cGGu?
%TBSULs6BDZA]A5sL8McE/pOsj(O>FTr\2fJY<'MOO+Ci94Lb>8oABtkeSSL7G!<nFFBdS%96
?6GQe;BK.G$EJ243LN^aK<mi3\!4?6;fjSN[G"ITd2Pp9CGUYjAVE!8nh,/@VO5qmsm1)R8d
(8-aVQ:roJFF(s=#o\;P2o,X0$JPKP5(hSBg"E("D_$01mqY%s]A@:_(MGb2dTiO:mkTjDnr[
Q_ap9/S#_$Xk9CH>,!7.O0o:'9;hDdJe.Cs#/G+cGoIFk%m]AJe)FQ4k<>1MdX@@TsEc!%DJM
(EWkouc7d7c$V;P,\"JLiD^.4e1D3.KL6pht;>E$tN-TeuBmOZW01FFH4^\M0SZgrSu9ZNY-
-H/P$U*"1ofeVV+0B`XFA7XQkMf?m"6@i.!s*4H`t=J<n%a\P<#![?YBB_;>087ufk'ubcEo
$NYtk+(!g"nWFYgJ9D1Q&%\&XA2Mr#36*_W&55Z&1fS:Wu?L#[Y+p:Vk4%j5-bp`As+M"S5(
\o28e*?J/#4ikddN5;9g/6Z@moI0+ZW4fi&`#+8T0^;2?;IO'.4)a8ZJjF.cF`%#^ER3p"'i
aeY6.*`4rho-,$b5lgml8B5Th0p-`9bA^ltR7otEl*A]A!UBLp3%+FAeM:\@^iA@X`J(o%*U^
EHaYhV8m&u[apP!0n:NB\D&JDO\XJEl3@*j&/00Rt<?0Fomo+&EA9gEQ$1bkst_r@k#G:Z]A&
bc4#Na7unL+L]AAJ_=WO55.^h1\]AUMj^Eeq<Z8&L&_TY2&)5Cm9980.i+0$ViYRJ!LO4@FCu?
]AHd0rA@`jV?JKtPJ5Br%_q<Q=sAT8NYff)Hc@qIrZd;*iAq[B%HeLrdpo]AbMlJ04edO\*0=Y
j)L$nT$m\VEuhkS3V\ENsr4_p*mlAX_h<EEH@Wgf`qnJR<"S\">>Zmog\7\%&h'<MZXSONa(
V#i5"-r")+Mc!pR:l20.%WtImJQAU6KU,4ke+m`-=HHBsCFa7qpNH:;lF>rV^c"HAnIL>#^R
fN7GL#[I?%/*fKa+NmC:N-JC=]A=>8n0eaU/Y/\LlEaX/+YVocl$Y8eat<_QX3X&Ou>-XCMr6
eB^pja$42:?M]A5R='u%a/o9sID$9@K*&jF?<oRoF))deV.-&LQm4G*TqXLfeCcjGIIJqY,D[
,"X$c;n/WD$FEY)SOOl07-ZtM(;kW<DQtON/2mRPhGOVq\Z\SA5RIHl]A:\afT+KSq(&c$-.9
"Q91oE^2a$3TrMp#.piOI0<5]A;o#g<.[6Xnsu&Rc4>?WeC(#fG1TOjN9EETD'E8r]AC;4[ibe
@1]Ae3P]AW36DCuJW?LRJ;Tg&*Q9?K%Q\gV>&"Do/8']ApDDP:J.t%bUYY/__A<C4*D9+$"oq_0
u&mK5E@H6-GjSr_=;(oL`_igO_&SQio]A6-RffEfOtBj?0%DSGGb!@Q3R3!#=5[7rbInBA-OW
8'iU9E#cgQl#j8pi`2%a]Ab3"[R'6tVc0m07S<#6,=4p509,-8s;:6RQ8Ee2;#oPh5</9D[1B
+jp'I8?=J)!-fZqus^u)8pa?,'ibuTE^j-'.%$jpXKASE@'18Z^dfRs3THC-=''EX,F[\T[4
s[@>A$=*<4RGlH"iFhfBX.Xj*&LiC57W$88p44maf0?rUp5Ds;O5BCZ;[JCX,\U3ceZcotkj
QW2I]A%WaWaMlrIH'8,mpGi3d,K)@h*HI'K(<-9hi=%0-e]AP#GufM3+K),;r*CTu(>7jj3)04
rkAY`p+[9V7,);7nDtF@N9YccrV@.?2OJ!8D\V(F-'=4=5YjE87Yt21`FWcj@]AO`h'tSo,St
/VaV)%'.^<d^,F1pqs,1#PP/Ds`(6;Wcf^Q:B6MsjXaD$T?`@jW`#F.lp*W<-JfA?@p<(b7,
g)rU93f`XfCQN$r\ZkK]A@Bp10jj4d(a^Sl7G4c0JS$=DMgk\%E!1^.M47)bWl94GRN<''TO4
@mWAoT=hbGStl1FE?F3D?)DZ[4iD,0iZaKY]Ag)^Gh-*(%MfLoY1n"^RU'rDo/Uaf)ITSiE1C
Kf?K!eXL_nCYpR`]A(QO7ZQa&$7LU1#*#dt656^Zu9^?1nOYbf"41"k=6a;MT1_Zh:Xo7frS3
BXO6Cl7U:hE08P;(u2'1\e6QDgY\KasL$JRRnQ2CuupoJ@a8R650ZgP7Il]AVShISObT$`!l<
Z-IItQ8*4gPWcK;s]ArCMR*>g[T7CJDf[oRYk"E0sn3%u@BDB_21D!,I):ilYNF&?,*[2A'QJ
CN^ko]A?2,6A[cVSjk6(U?m-57j^Kh>YnETYC@BFQT6Ul&)>Q.bdU2J+M>9?W;08VH_(dSct%
>4mu#65FQ3[</a%.-G4,S]AJZ[*FmZ+8NKI/0pfjedP2EPGQ8f![8L(n%-odb'/IhF=u^#J$.
\#k9pPef&!"ej_]AP5&2f!JQdqM;J+]ASpJ1+m_70VJSb9In,Ta^IT+NVHt;e^J:9d<Ro9FJm:
(U*ZaanI!1Vr+'3-W3m9q$<#"02V;mfGhcG&+_U/80Q[V=fa/aCRrR8=@+DCNijC20pAJPKt
'+iT!]Aj]A\@^(>*"Xb:a\OQcR>KJ!SdTCNHl!*f=$YX@kgn&PB`agCS=N$"NNlJQl_J<XP=#6
$tPNdj7d=Dd@4oi[`4Ug(&FsIWOH[;&jh5o;ou24B:sgA)r;qD:Ue3lC\+h5tqg[X&t#:EV^
=1E>!niYHVoEV73EG<rjFSD1T(1@hg=:1Bnt8EsNMiWO!Na%OP,na/t[1!!?u7-T+S?k)4Vg
).t1pJ]Anqg,X2H7:aYa1dsD#P$cjEZ\XshVaidBb;3<aF\_g`KmrckQ8q^qp1p]A*Z$%.NoMC
5H&D"%Jp"lQ]Aul?)G-:_/!A#96dj-W2<F0hJ;-iPSM.re-*!]A#*4Do"'1XYL;eahQ[OAmJ`r
++9"KKa[qjmIUkO[Jt7ItQ;VX0R'01aPp$[S_^\l'fA?'3%\6BQX8,'VomELWEoUFj=ErMq`
"Ng;S'!8bosM*pp8ICt.?&j=_WReM7U4q^M8rp9Q_GBrj1_LtbgQd2@_2^NX'ihVXc,[0/_q
B($k.[JTeP:8"tWMuY%;^h:3nH7`31GE>*u-OT0]A/lLM)FNm3u"O1a"+`r]A1NGBQj5Hs!Sd>
A+K(>^4Ok]AZJVI:8+`YIjn2AGr$XWIe\[P^iP=;M.ao%!ZFk*TpPl1-\9;3G+SJ6a9GQSDg'
b$,6C@MkKKX!X#Z6`C+0,Y:+De9mGg0$Xl;+W`kZVZqP#^J[Mme*7(B~
]]></IM>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="950" height="276"/>
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
<BoundsAttr x="6" y="3" width="628" height="337"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="report7_c"/>
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
<WidgetName name="report7_c"/>
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
<Background name="ColorBackground" color="-13222047"/>
<Alpha alpha="1.0"/>
</Border>
<Background name="ColorBackground" color="-13222047"/>
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
<![CDATA[3086100,3048000,3581400,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[4000500,35356800,10134600,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
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
<Background name="ColorBackground" color="-12827289"/>
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
<Background name="ColorBackground" color="-12827289"/>
</HighlightAction>
</Highlight>
</HighlightList>
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
<Background name="ColorBackground" color="-12827289"/>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="0" r="6" s="5">
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
<Style horizontal_alignment="2" imageLayout="4">
<FRFont name="微软雅黑 Light" style="0" size="96" foreground="-1"/>
<Background name="ColorBackground" color="-13222047"/>
<Border/>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="Microsoft YaHei" style="0" size="72" foreground="-1"/>
<Background name="ColorBackground" color="-11971727"/>
<Border/>
</Style>
<Style horizontal_alignment="2" imageLayout="1">
<FRFont name="Microsoft YaHei" style="0" size="72" foreground="-1"/>
<Background name="ColorBackground" color="-11971727"/>
<Border/>
</Style>
<Style horizontal_alignment="0" textStyle="1" imageLayout="1" paddingLeft="0" paddingRight="0" spacingBefore="5" spacingAfter="5" lineSpacing="10">
<FRFont name="微软雅黑" style="0" size="72" foreground="-1"/>
<Background name="ColorBackground" color="-13222047"/>
<Border/>
</Style>
<Style horizontal_alignment="2" textStyle="1" imageLayout="1" paddingLeft="0" paddingRight="0" spacingBefore="5" spacingAfter="5" lineSpacing="10">
<FRFont name="微软雅黑" style="0" size="72" foreground="-1"/>
<Background name="ColorBackground" color="-13222047"/>
<Border/>
</Style>
<Style imageLayout="1" lineSpacing="5">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m<X%[db4W76tp-L1l[LS!]A)^CDi82;Y:u`8Q+*hDF)juZ[+qEU>QA^&5bi$oVPVD!RCOT2Q'
r&?RTPGXV5U?&,if$*Lo>,S^o?i&B'qJLR6/ad^%39DiH*<-]AU/4RYP34ur4]Akig6rRI2)R8
Y>s"Uk;,^['<`<3XZ<U[!dsOZLTr)F*[*.^WK@/B4^#Yu3U3N8GT!2f"qt6c5b>e/p.llR;I
\1kmQs3SHLKT"oODZpuX21N4GF/03,/j<sX6Ohir<DS3kT9VQ2038lHbH)JcrDjDNM=Ct-bn
,LW3WgZAL_F6DBACcGO+Y^%;Y(`TMi\J!<Wb?fM\l(gA-AQ]A6jrj3YJNJ2q,VoVWN!:+!!d$
Ps7-'YWHuYT?Ei<%dHf3\mU'dEG?HZj$rBUq:!;^5amP@PPb_+VlnE4&AMB:M8Y&i2A[*g%M
B$;9OLNCM#/JRqp*7p3`,5C'u4@<(1'adSI#gK>,q9=@Kle#\I<P-X2N"jM-S>ZLE7:_D=L5
SAkh-K@!lgVF-VT.C/$;45_PPq?hUm%MBtE.E@a@(k9Z8h;Qb+YcuHV1gQBY`YA#iKPbIPoQ
nsHX7+dL&`"V1%b`qAu9<PddNRY1X4`u8SNI-!\*42#*AWRWR;7ff[)W-!Go!NR%$`Y=Hqaa
LSMZ$f%9PrZAV<QKY=>2'G%BrIprBK&udcI+)Ps!TGCf3l&qrIc6nR0a4.">jcH]AmN!(MlA[
\dAUhET5>#eEfO:Eg!?(=ERRRm+aeS*L-eKVkA*a=gUm51e-&2m8uEc6C:2Q8V_'Nd;H7m$n
>bpUnuBFK+dWbL6.ff&M<0.TJ@rrZs'Ke!>eUX@FG7_=^IVt?sCPt+L7OR3`THpMj)>_*P35
?.)qNCgd9TXGML:MDs?se0:tM,P@ts0`e38CY8V"XM/rcQ5&l?rc8#cPd9T[k!ae>E6t(?;,
W8Zc=PSn^$?e3oYJq]A+eqD,"G1,AZ#WTT(J)1Zm4T;cP'VFD,FgpN<H!!-<ShZ.++d^od':T
7I9`FCWmGEl'k/2gYB6aho+o5T:qOJ3bo8jO^$?B!L4ms_7Rfk#?qM&S%80q4%nPr#1>gLHO
d#q!uc/[Bd*fTS7/\$kj_,kRF?QX?mXL5eLCbpgNI$tflSXBp_#&2[6I?Kg"Z6c:UqlO)7]A*
W:CH_gn`1P-'&fB:RC@mO@6>k#3\&o?_Nl>"G]A6(kD^]AAIBWholI&7Jf\53>EU."@qZ+UT6j
$,PN-r,$ahn]A]A\@nl]AXGhEYn*F/fG1q76:f$>X=L,#!*"R6P5dl-kLq]A4orM.U1[uc)lD>/!
r<]A$B,4N\/gQ4C,8?PS+0"G9'Z/Pi#Os_UlmFMu<36%?9OAW>aJPAoN4'DPo<2cW$rc&><`m
Gi<L^?aNrB[U\LKpMIsZ.7N!m$r4$G<&hVq&E>+INcF9i`:=>rS(TDB'DnYNbtG_e^5#k8r1
'f5S"!A85(FV<!1Bp*o^ZBg(+PDP%K:5C6hdY-CI)L7M^RS)L7=s`S!$+Q.gl;QTlf+D8a[L
Su%)U/%Z3i?uZVG,20Ne[2EI/Qio+E-SS/t8c;m-XMN'MuH#H3:0p'GPJeFG=;i!=6:=G#@.
q03%6F;;35.^V\gJ5NZX#ZGrT_:iKD%Yt:NgH.[\0Rar[VW/W2]A8dp?I]A.PB&16R;-[e,SRR
M]A)R%51n^K/)B=\D(4A0k15=iJc6K-_A8NW%<CMaQp)a`D($^f5[U9-(ot"0K=hti,]ALJaO@
Ji"/,7@D.&L9WHs0baCt$W#H)-R[?dFZ!(=&A)cBKRj1"@'mRE*]ACH2psE)?i''ZoXi0jgAH
f6hK-JB:/,.-rt?gaZ,ILs;bn\Nup.VV;B;bc%3De>&KkTR/_6rm.Y9Dhd!n5=/"#i+&nABT
mAA=5jku$:J<nqCsfg=O)F[,_5\'m7']A9EC8l'Qt):5s'ULcRuS[X+RZh]A/G$n)`jJNl6Vfd
F#;GFeoCjP6K7;$,]A?FW6:3>YtRekk^cqS4;hM%Lho*:#["a%a2hICcMNZl.;X*G6KL<D>,$
\W0JN;P-U&>BFYf^"(0XJs`O5g9(DZ+Y;rXjg/XlG*^I%&kB[]A#i5V*sE-dYoXE=_/7Eu;<`
giDC;IK]Alb@Gjo*q!egPu]Aj]A=ja;,WQH6Q2p6;#36-ZX6q1D/JE6=$IdrcWQ!1>Bb^a*g.<a
-,HlZ\@S&JREIL=XMCNT-f;kf4tm+PfS-!<24p0)OJ2^k3;TVW[Dd"kf<_9W^9";2$*.BYF"
8KmUhWJ8@+TtPW1d-6@4DC"$\p6`',Rso4/$+R[h'-1?dYpd?1<s$U1FX4O(2@im0R8_FlM0
W^Z2UYDdKm4Egc81,5W(R=/5;5/2a5]AOm`R]A(X,I\24qkirPq<lYUtt&jfU7XFN[sG7jlRmC
BRHR%k<0+&2F8?q*h/4lnNLjJ\IPNgbPWZA#Ai`N8.E$a*OS"a7FPr\bjSRaK@kH]A\UN?N0h
NdK%PqT[l'/Yo`msE[!C$o*)cbr5cO!IAKn,^CW.B)C#KrNfb`l+PYI%!kRT_3&>/I,?U-'5
L)+\/i?]A)FX_pudVMZYc@DH0u7XbPg]An:)?1QR<=VA&/a]AGW6hQgm%gGqT7aS9+Zl?Y^sZdD
eiMbZs'%CmTIcHsH.8NbOO!@h/GlFOn9d(Y['6$-6$L23NZ>K6*EXj"j7is+Q!r"Q`g:*`-\
K'idIA73Ck&19do`&hG)UK=po%<&=J!rKfK)M=/9\;"7tLi0a(*%^MI#G!5@Ifmj@edK)pd%
WmY3"hdu877@-.rDpr-To#haggU`Qp*Dje@@AVJ*]A9QW@oH_<0kA8A53PVMaKpj2Q$N+t`Fe
'u9#t7R+4CIUiK16oHcArE3;4IJDVis>p"A*Ok/IY2(c.3G*e^h5P:K1@]AW5gUT2/oV`g]A#)
a_/AM)RojJ;PZ<k=/X!1\^+)f7ud"@<DJL^WHpp\.cX4[MMO%O)@!SH#\&0Lgrm!YUkXaQ)_
uGOE32'dgVY5_1BNt3M9&[)*ZZm`3pkq<"_s9$US3W?JpFmU22bRjKgf5J]Aj-mo8ZU;TRcX1
#'-D&_qSM$6M)V?n7t!r)W,QG]ABktInOP5m8F@[25GuZA!'[@LJAV6XLW1@8*Ok/0^HA?P9M
.<dJS0*&l2FaJNK7$IDTALOp$XH=tc@UDuK7]ALp?@*g7;jn0/3d:BF-Dq7#C!c&$0G2linSL
7H\br_E,#$T8:!!"]A`eZV-Qla3p/^^mAh#n$,@JZh4ShVG/mnB@E.K@+lm/Wstke>eoUVfJJ
>\Zg(%#$;MS"\,N9aJAYZd2hG"'s6AGjOrmW/sGb@,CEK4iFm6+>_05`RClH72)+8Y$:2P?;
"BG.:]AI2R&@3T6Z"88@r'RdhC.;Y\8&alm8`,5jpMM:q5]A2GD8`nQB=MX9??IWON(oB_(a-8
:jpmTt.tgV3Z[Nh`M'LTeci(;jG:M0ngPXgT3V/Gj%$rq(fR.N+9BEStrk!#>WGde@eg2j>J
3i9jIReVQ(X(^\Eq5Ui"MY?i6M&CAg!WXdXGCLl2G\JgXVL,'_5)]A-.Rm*ukmJgTQnF>b*/k
Z_cVb`47D2F$jYMR?l(diJDRliH-C.ZW[DVC-I;gp0s$A8A0akBcAD%#iY\To6QBVC\OnuOb
p*?7t3rCRF#!:#3P.hKJ[W^^+;-@>4AGTeal#R94b]A*Q:U&O=W&*>"Agjr]AYRQO[%jf8A$N7
\=+GB7iuO^MhFRB9Kh\0#U;'/8\9Wc?q[@fgX[Dujt!Gk)_WMBS@hIH;HG>hC&g#WdZ>RN\m
;gM*UWOc9%r@',0,f=+2]A0Q-F!!=*8R;-)M-gL-^`kse[dd6\dp*0nJnpMl$lHIgPE:-,(Y!
]A)TeFmrkBC4O_eVJHbIEG!n^+Uhhd<bP3i[%g*#0QLOU]AH*7hYA!\eFM6s<iGZ`C;pJI@DG@
[?30%:6d3,?-'3T[a%NaIWIc@,j`=t1>]A#A0A2VGrql#cq;D"L+\,%.]AC?6i'Ynq7dJdB.O*
*T@Q_niKXT@4TXU`S&Eb!$T8-T9<KUK+g]AEko%nhE]A9Yu1*hU$YOUJH<OV>M4,A/1.V&KO7l
LTFLpa^2G;gIma>8@g!:i!,TVV.q>S&Xo&2@YLEoGgMNN&[V8KuLI1&;TV67\%VB.t4:lB:D
tjZLak^d\KBcp`@JH$=hZmgdh6l"f[c8ZsBKcO"ppWe1oD?@L;22M&1Oktnac8e49)jWob?.
!kPdMD&3a/AER>$-'au7.[+QJI6NTJnM<YK'S;s63AJ@(1'\t[c;&6Zrrkpmi2TmX%6]AQ(5^
[.Q&(_9?"V[@Z$F]A]AGZS4!-ee?%&L`R(004@+rA+WBY8O,*5AZM7h#0WDjBP,B;j1G.iC=dq
m",%cV/Opd%<)N]A,#1[G4`iP$-5D<YR,gO$KML%?e&'Eh,)ldA4=2]AFJa$@CCYdN^:*IPcnt
]A<Sg%.N8mnJdID.NAl>"1Q.F1$,Jg4S'68HQ&.]A&``JeqOqDVWj)m$NJC+n+]AYiGa,iXDt"E
r5$L%<mN$4W%C6&:hr&R:?IQSfWnD?OmLf2'F&0M-:uSHF&F3N*Q)0^Ko\mPof7++M"3M"[B
@rccKo1\`G)Xau8n4!1"k_K.VKhoH%5(,oK.Ge`gt@@_.$1`aF9-Y<nCERK"\cWm\gG<+N"H
Rd_e<CL0O#i!PUX,B#oc#?G(#)'j&TuhSO1$R\N5]AS(JMNo`;PBXr:2("n5]AkgoK[h[T)9a$
6'o.%!p2;B5<RI**6e"Sgc28&^XL&48H4Fmqs0pT0<lcR,Xa53Z/5VpJ9P-k?F]Ar-GGqu'(i
`7HB-Bk3niVTTqKZ'29?K]A`2>nFN)PXN&TI_RN-$ee!%]A9,,*9bA[7EnH'-`7(7F4o$DTdZ&
([$OeM5/d&Qn*[HF`K(S]A.\c2[.VVI'9'42fLu(CtDe!<TA>4pEI+BG1jFEli,dp$KD>37]A<
\/OA0'M8]A\A^@t`5T+71WM0q;ZpD\N\j9gd^Qk>mK1#f5/sL_gm\'pB:GX5SQ9VS\_Jkk8,Y
pG`Tan=Sh'CA^gdN1fOW!Uj0.&1Rhc@FYF[sYf1L5u?fSi&n*[+(84C)P(o>$al@dV"]AGVe\
/[ek*LA[I7(4Lm:Z87+F5S!5R&O/%Z$>*?eU1.E<%>]A&H2/:Ap&^g>i%DWZ_7=?*k%u?T6bO
]A_6(a%5D5@*q9ee;2!WjqKCc2gW<%hAA/QpGqr7il/Q\IC2N8i@QJfr8?W,btqt\7D7dmhLG
SkKHV-Hc9tCk`,c5DlKO:-/i5..E[J!)DYHeAoK&>p:>hn3(5=(T+\)$)K$0m8adph(>6tP^
,ATPGE8qiF@).#gb3V'DKJ:9T!@CiMWHtSELXkpp:BBM0?GWLL[E&7=2UFkdh89hAE$uPJ^a
Fg^_dk(gDoU1bMF6%20l4\G(>l`J<`9:cm/;?6,1Z&'jj0f_`/O1V-eL/F=LV\F*.\&2&B&h
^30J:eFU8D(tbj/R&0[R3ein#"_Z6MKSRQ/BEcI1N_2F:e%H/H0Ah"egELKOe(@q"D-Z8YK*
ViHfZKJ^ch_ZTls["/d\ksB/M4%JREVlA7?Vj?N-,1G%KRUIITi<14;O8U]Af2<N*9I[74%Z6
.8lQ3VO.SG(XDj6u!6"[*p_E^1MWMCWCrUI3r+`+5M,o'n*6FSt\6o;l77pe1QQUlIh*_)3O
^_W2o5]AN.4R>+WC3GO[PDUa+p(,7J%Xh<Fr'As4dh='"kOSr+VDHspSd0[jNE^^SZ/]AZTi).
Vo9'<c`\3;pXE^VsQci,Bcm730%CD'LH9Xk+jcmQCXnZY%*s5H:MXK-%'R7;nb]AeY;,S/%RT
=5'.6m5l4EEO@mjfVl9'A@1+<-/@;l<.C[dkui!%H!]AhogCrY-F$(XVgRIT;-sn8GY3V(6eG
Fs4h-E)B3"8r%`c_(q>>K1,":d2m,T,G0'#_:\DD1GG))D'YHi,JIE32(Kc&:P+>)%Mm+(.U
&g]AU+gl;_U(^Nn]A*W>lM4A0-^_n]AZ*pOD6nW<Ooe;Q`js,QPkTIVSqaBklkD[d/Y>R--&Na9
W/P,#+b@",h-DshUt"Diqr2$$(`d25`ZQ:SKJJ-")[s.*R+qb/jETX6aS.&ohC76n43VOd6h
2@EK$fAUsn*2anQ:tLjXOHpiCN/%#.4+e+d@fL>Ec0=EMirGn5jb[>NA(G2G'PV^Ro*d]Ag'1
EAb:EUkPE5YKZOO\Mg`p:0_lTe:V9WlhhU<Q-iI*0^LMGr"#PUK<,gIRe=HW=3G!`0!3lNl,
m&bXh)tsegUi&`t8QkD>f61n-qqsYM"<uU2o`c"0g\/HGq2l?uA&Bj5tkFQ%KO[8K&%lKj&_
^oQL_#?N^8oN?I.L(@TkR4!bAThPhJ'#Kb^2/Y'E$4mG,coO:(b4_,-jR7>(0i2s&]AG=9[\1
-]AGGF9Cok=E^b*c$Pb?3d;IS$a8G`1h6"2cX*JRI66k@DRM6`a0fG"9\lDT\_13Xmor>*pV0
EYo,pG@@3Gf$2t&oMlh7P19D2:d^W>WqPJf*??1[fK4jG[l,t,D[raA*OAf5!+d!Gf2RYsp/
#N#bci>pEcg`etUB7IkN(4IYb0Y3o2-T9^0iBMNa^T(Funs?nfWWk/<70J6^/j#SDdlplj$3
=f7S..m!hY1@/)Jsl#?cTTDa,kQ@?^PSlarZ@G]ADBbhiGJRkMX*dS4&5aP2R^]AfDWOa4/7bH
\U&\/FX`senkOdLcPFLTogY#b1TIR1DC?\79#d<XdE7!J<M]A=k'?s=%*gA"V5Io!gLZ_))6%
3iP#UVqku<^EDLT(^FF)mM>[anUMT5Jh)lZn#(.c^`8+!cP-4Una4p=E2R,$rZT<5'VBBR>N
9l&I.j>!``>3Y;u,'HU`QcrLsZtn[YY%r$OGScKUUuZ:EZ6=5$BpFT.q0\Oa%?+M=25rS^Cd
484,i]A9gn!(B+^aB_K^4?Ug1uTJ?:SW\eM4)ZG+2dT"3boYPthIIO!BLK"uQkHd^@]AJHQoVe
SqO<(?9/Z.Ag`fkM\*8jp()cW(`l(GB_'K0n`Fc1\6W]A=#g7c3kd#<3pGg)1VbKUO7/:<>EG
D7"cHE<64M7gDpMSEBEH(183#o)8BA&TD#0Tp=?H8m1Zu[BQBCgS9DEo`iLtHBY';a=&e@4B
?$_`kF4k:l<a$Ha&O+2Lrrh2Pboqm^G-TDJ;XbGT*]Ac)GIFPumb9$gAfpK,4BZ4O280Cf7,P
]A!=^)3pMf:8`=p<On08]Ah+o#>Y]AbalioK*PDIr4:f"ekBJL[,tu7=k"YL#L+@$+8`GooK3#Y
kXeJ`1]A)\c7/=#HlcLN':kW*WV)RtN8cgKX&@\Jh6LLbZ2q,W6l+O)Gl-ZGA_\\\:<QqiQDg
>qY14-4YYBh.9&CBQan=`I$OAfe)#)N@@)1Q<DVO'[mqm-H12sJ:ZGgJ[+q-23iH"l6t[-kn
8e\S;eR\LEj3bL*aTi@I+Co?n;@)'m?,<:GpLGZ&`3N'%TK*'O>:#ni-fK8'[(E^FeqJN%l:
K>1[@`GA-8^M)"b^H/fis6WLIACqHWu%$D]AG>)V'N-,iUFMgC]AX%"kGs>_R"O<*0rbD4oS!`
(^K'chXMN=YVo_C:ri`!1DUWfj'_mYIS]A*4[jG$bl/@-t(GMT/]A`_YQf'#PM!&=tW>\\=Qi#
p7^doHg@*!NPD(X?Hko#PD9DsaJp-f<=e:sS,OcE^`i^d?_mO"^fr@T2H:!CPSPq;1)?-Ys*
q'G(G1OhqQ>C"<C/YE;!m!(^PVa#jMp+7U:=$WHVLAM/uh'U=7j8[BdFT(>m/Y:A]AK`,`U6B
-fbl^2[rl>@GjlpHXhC`K(WtQJ)5A\APJdU3jZcegZut_u*7rh%rV`GQ\Ris/?Q+u,'YC3hI
T6:T)6\a4GcS=X6pQ<qDc?YVq1=4SRCkuY1qa@lEUL"_$`NV''8E'.?>t5b\S]AJXXP<9EipF
B2pjARjc`U@TFXR2F$CLj\$:rY=<kNg,oX?D.2$B7eAA0j2BmR=jc7PuJW`1dcn6HnFUN]A"J
@6KS^"bV?gXt75p2M[RM2$TQG^K=m5hj6#Y5/6eSrELHhNr>a_s5ek1D"MqM`k[>$NH(4_(M
EGe8M\TbrVFF'!*9iT[f<`nih&^44Q]Aa`@QPt+crq"'*a'+m"sMZ-5&BT!C4s5JQp]A#?l:qh
7$ZGG5#D5ap?k7E6aSJ!reok9HpVY6di+,n8+O0:dcGS:;95"*XpS%^YentoCI<Q>([dkN+"
_Wd6Ut"qi2#Ou3R7>)D"jK%mHgrQ]AdYWnBb.m7i^"97EX!@Z>If~
]]></IM>
<ReportFitAttr fitStateInPC="2" fitFont="false"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="0" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="950" height="292"/>
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
<BoundsAttr x="6" y="345" width="628" height="361"/>
</Widget>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="report0_c"/>
<Widget widgetName="chart0"/>
<Widget widgetName="report0_c_c"/>
<Widget widgetName="report7_c"/>
<Widget widgetName="chart2"/>
</MobileWidgetList>
<WidgetScalingAttr compState="0"/>
<DesignResolution absoluteResolutionScaleW="1920" absoluteResolutionScaleH="1080"/>
<AppRelayout appRelayout="true"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="1080" height="595"/>
</Widget>
<Sorted sorted="true"/>
<MobileWidgetList>
<Widget widgetName="chart0"/>
<Widget widgetName="chart2"/>
<Widget widgetName="report0_c"/>
<Widget widgetName="report7_c"/>
<Widget widgetName="body"/>
</MobileWidgetList>
<WidgetZoomAttr compState="0"/>
<AppRelayout appRelayout="true"/>
<Size width="1080" height="595"/>
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
