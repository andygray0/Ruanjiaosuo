package com.wine.service.impl;

import com.wine.dao.KeywordDataMapper;
import com.wine.model.ExtendsTableField;
import com.wine.model.KeywordData;
import com.wine.service.KeywordDataService;

import com.wine.service.base.BaseServiceImpl;
import com.wine.service.base.Dao;
import com.wine.web.bean.ParamPage;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.io.InputStream;
import java.util.*;

@Service
public class KeywordDataServiceImpl extends BaseServiceImpl<KeywordData,Dao> implements KeywordDataService {

	@Autowired
	private KeywordDataMapper mapper;

	@Override
	public int countTotalWithCondtions(KeywordData data) {
		return mapper.countTotalWithCondtions(data);
	}

	@Override
	public List<KeywordData> findByPageWithCondtions(ParamPage<KeywordData> pageInfo, KeywordData data, String extendFields) {
		return mapper.findByPageWithCondtions(pageInfo, data, extendFields);
	}

	@Override
	public List<ExtendsTableField> findExtendsTableFieldsList(Integer keywordCategoryId) {
		return mapper.findExtendsTableFieldsList(keywordCategoryId);
	}

	@Override
	public void removeExtendFieldsByRelationId(Integer relationId) {
		mapper.removeExtendFieldsByRelationId(relationId);
	}

	@Override
	public void saveExtendFieldsRelation(List<ExtendsTableField> arr) {
		mapper.saveExtendFieldsRelation(arr);
	}

	@Override
	public List<ExtendsTableField> findAllExtendsTableFieldsList(Integer keywordCategoryId) {
		return mapper.findAllExtendsTableFieldsList(keywordCategoryId);
	}

	@Override
	public void deleteByKeywordCategoryId(Integer id) {
		mapper.deleteByKeywordCategoryId(id);
	}

	@Override
	public void deleteExtendFieldsByKeywordCategoryId(Integer id) {
		mapper.deleteExtendFieldsByKeywordCategoryId(id);
	}

	@Override
	public List<KeywordData> findByCategoryIdWithCondtions(Map<String, Object> paramsMap, KeywordData keywordData) {
		return mapper.findByCategoryIdWithCondtions(paramsMap, keywordData);
	}

	@Override
	public Map<String, Object> validateExcelFile(InputStream inputStream, String[] titles, String originalFilename) {
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("color", "green");
		map.put("message", "导入成功！");

		if(originalFilename.endsWith(".xlsx")){
			map = this.validateExcelFileXlsx(inputStream,titles);
		} else if(originalFilename.endsWith(".xls")) {
			map = this.validateExcelFileXls(inputStream,titles);
		} else {
			map.put("color", "red");
			map.put("message", "导入失败！");
		}
		return map;
	}

	private Map<String,Object> validateExcelFileXlsx(InputStream is, String[] titles) {
		Map<String, Object> map = new HashMap<String,Object>();

		try {
			map.put("color", "green");
			map.put("message", "导入成功！");

			String errorMsg = "";

			XSSFWorkbook workbook = new XSSFWorkbook(is);
			XSSFSheet sheet = workbook.getSheetAt(0);
			XSSFRow row = sheet.getRow(0);
			int rowLength = 0;
			int headFlag = 0;
			if(null != row){
				rowLength = row.getLastCellNum();
				if(rowLength == titles.length){
					for(int i = 0; i < rowLength; i++){
						String cellValue = row.getCell(i).getStringCellValue();
						if(!titles[i].equals(cellValue)){
							headFlag = 1;
							break;
						}
					}
				}
			}


			/**
			 * 校验表头
			 */
			if(null == row || rowLength != titles.length || headFlag != 0){
				map.put("color", "red");
				map.put("message", "导入失败！原因：表头错误，正确的表头依次为：" + Arrays.toString(titles));
				return map;
			}

			/**
			 * 检验数据
			 */
			int dataErrorCount = 0;
			List<Integer> errorLineNumberList = new ArrayList<Integer>();

			int lastRowNum = sheet.getLastRowNum();

			for(int i = 1; i < lastRowNum + 1; i++){
				XSSFRow datarow = sheet.getRow(i);
				if(datarow == null){
					errorLineNumberList.add(i + 1);
					dataErrorCount++;
					continue;
				}
				for(int j = 0; j < titles.length; j++){
					XSSFCell datacell = datarow.getCell(j);
					if(j == 0){
						if(null == datacell || datacell.getStringCellValue() == null || datacell.getStringCellValue().trim().equals("")){
							errorLineNumberList.add(i + 1);
							dataErrorCount++;
						} else if(datacell.getStringCellValue().length() > 20){
							errorLineNumberList.add(i + 1);
							dataErrorCount++;
						}
					} else {
						if(null != datacell && datacell.getStringCellValue() != null && datacell.getStringCellValue().length() > 20){
							errorLineNumberList.add(i + 1);
							dataErrorCount++;
						}
					}
				}
			}

			if(dataErrorCount > 0){
				map.put("color", "red");
				map.put("message", "导入失败！原因：数据有错误：数据校验规则：关键字不能为空或空字符串，关键字和其他字段的长度不能超过20个字符，出错的行号有：" + errorLineNumberList.toString());
				return map;
			}


		} catch (Exception e){
			e.printStackTrace();
			map.put("color", "red");
			map.put("message", "导入失败！ " + e.getLocalizedMessage());
		} finally {
			if(null != is){
				try {
					is.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}

		return map;
	}

	private Map<String,Object> validateExcelFileXls(InputStream is, String[] titles) {
		Map<String, Object> map = new HashMap<String,Object>();

		try {
			map.put("color", "green");
			map.put("message", "导入成功！");

			String errorMsg = "";

			HSSFWorkbook workbook = new HSSFWorkbook(is);
			HSSFSheet sheet = workbook.getSheetAt(0);
			HSSFRow row = sheet.getRow(0);
			int rowLength = 0;
			int headFlag = 0;
			if(null != row){
				rowLength = row.getLastCellNum();
				if(rowLength == titles.length){
					for(int i = 0; i < rowLength; i++){
						String cellValue = row.getCell(i).getStringCellValue();
						if(!titles[i].equals(cellValue)){
							headFlag = 1;
							break;
						}
					}
				}
			}


			/**
			 * 校验表头
			 */
			if(null == row || rowLength != titles.length || headFlag != 0){
				map.put("color", "red");
				map.put("message", "导入失败！原因：表头错误，正确的表头依次为：" + Arrays.toString(titles));
				return map;
			}

			/**
			 * 检验数据
			 */
			int dataErrorCount = 0;
			List<Integer> errorLineNumberList = new ArrayList<Integer>();

			int lastRowNum = sheet.getLastRowNum();

			for(int i = 1; i < lastRowNum + 1; i++){
				HSSFRow datarow = sheet.getRow(i);
				if(datarow == null){
					errorLineNumberList.add(i + 1);
					dataErrorCount++;
					continue;
				}
				for(int j = 0; j < titles.length; j++){
					HSSFCell datacell = datarow.getCell(j);
					if(j == 0){
						if(null == datacell || datacell.getStringCellValue() == null || datacell.getStringCellValue().trim().equals("")){
							errorLineNumberList.add(i + 1);
							dataErrorCount++;
						} else if(datacell.getStringCellValue().length() > 20){
							errorLineNumberList.add(i + 1);
							dataErrorCount++;
						}
					} else {
						if(null != datacell && datacell.getStringCellValue() != null && datacell.getStringCellValue().length() > 20){
							errorLineNumberList.add(i + 1);
							dataErrorCount++;
						}
					}
				}
			}

			if(dataErrorCount > 0){
				map.put("color", "red");
				map.put("message", "导入失败！原因：数据有错误：数据校验规则：关键字不能为空或空字符串，关键字和其他字段的长度不能超过20个字符，出错的行号有：" + errorLineNumberList.toString());
				return map;
			}


		} catch (Exception e){
			e.printStackTrace();
			map.put("color", "red");
			map.put("message", "导入失败！ " + e.getLocalizedMessage());
		} finally {
			if(null != is){
				try {
					is.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}

		return map;
	}


}