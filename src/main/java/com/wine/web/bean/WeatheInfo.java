package com.wine.web.bean;

import java.io.Serializable;

public class WeatheInfo implements Serializable {
	private static final long serialVersionUID = 1L;

	private String id;
	
	private String ndate;
	
	private String tolGlobalRadiation;
	
	private String tolDirectRadiation;
	
	private String temperature1;
	
	private String temperature2;
	
	private String temperature3;
	
	private String temperature4;
	
	private String temperature5;
	
	private String envirTemp;
	
	private String envirHumid;
	
	private String dewPointTemp;//loudian
	
	private String airPressure;//qiya
	
	private String altitude;//haiba
	
	private String windSpeed;
	
	private String windSpeedOf2Avg;
	
	private String windSpeedOf10Avg;
	
	private String windDirection;//fengxiang
	
	private String insGlobalRadiation;
	
	private String insDirectRadiation;
	
	private String rainfall;
	
	private String evaporation;//zhengfa
	
	private String sunLightHour;
	
	private String recorderID;
	
	private String isCable;
	
	private String fileDate;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNdate() {
		return ndate;
	}

	public void setNdate(String ndate) {
		this.ndate = ndate;
	}

	public String getTolGlobalRadiation() {
		return tolGlobalRadiation;
	}

	public void setTolGlobalRadiation(String tolGlobalRadiation) {
		this.tolGlobalRadiation = tolGlobalRadiation;
	}

	public String getTolDirectRadiation() {
		return tolDirectRadiation;
	}

	public void setTolDirectRadiation(String tolDirectRadiation) {
		this.tolDirectRadiation = tolDirectRadiation;
	}

	public String getTemperature1() {
		return temperature1;
	}

	public void setTemperature1(String temperature1) {
		this.temperature1 = temperature1;
	}

	public String getTemperature2() {
		return temperature2;
	}

	public void setTemperature2(String temperature2) {
		this.temperature2 = temperature2;
	}

	public String getTemperature3() {
		return temperature3;
	}

	public void setTemperature3(String temperature3) {
		this.temperature3 = temperature3;
	}

	public String getTemperature4() {
		return temperature4;
	}

	public void setTemperature4(String temperature4) {
		this.temperature4 = temperature4;
	}

	public String getTemperature5() {
		return temperature5;
	}

	public void setTemperature5(String temperature5) {
		this.temperature5 = temperature5;
	}

	public String getEnvirTemp() {
		return envirTemp;
	}

	public void setEnvirTemp(String envirTemp) {
		this.envirTemp = envirTemp;
	}

	public String getEnvirHumid() {
		return envirHumid;
	}

	public void setEnvirHumid(String envirHumid) {
		this.envirHumid = envirHumid;
	}

	public String getDewPointTemp() {
		return dewPointTemp;
	}

	public void setDewPointTemp(String dewPointTemp) {
		this.dewPointTemp = dewPointTemp;
	}

	public String getAirPressure() {
		return airPressure;
	}

	public void setAirPressure(String airPressure) {
		this.airPressure = airPressure;
	}

	public String getAltitude() {
		return altitude;
	}

	public void setAltitude(String altitude) {
		this.altitude = altitude;
	}

	public String getWindSpeed() {
		return windSpeed;
	}

	public void setWindSpeed(String windSpeed) {
		this.windSpeed = windSpeed;
	}

	public String getWindSpeedOf2Avg() {
		return windSpeedOf2Avg;
	}

	public void setWindSpeedOf2Avg(String windSpeedOf2Avg) {
		this.windSpeedOf2Avg = windSpeedOf2Avg;
	}

	public String getWindSpeedOf10Avg() {
		return windSpeedOf10Avg;
	}

	public void setWindSpeedOf10Avg(String windSpeedOf10Avg) {
		this.windSpeedOf10Avg = windSpeedOf10Avg;
	}

	public String getWindDirection() {
		return windDirection;
	}

	public void setWindDirection(String windDirection) {
		this.windDirection = windDirection;
	}

	public String getInsGlobalRadiation() {
		return insGlobalRadiation;
	}

	public void setInsGlobalRadiation(String insGlobalRadiation) {
		this.insGlobalRadiation = insGlobalRadiation;
	}

	public String getInsDirectRadiation() {
		return insDirectRadiation;
	}

	public void setInsDirectRadiation(String insDirectRadiation) {
		this.insDirectRadiation = insDirectRadiation;
	}

	public String getRainfall() {
		return rainfall;
	}

	public void setRainfall(String rainfall) {
		this.rainfall = rainfall;
	}

	public String getEvaporation() {
		return evaporation;
	}

	public void setEvaporation(String evaporation) {
		this.evaporation = evaporation;
	}

	public String getSunLightHour() {
		return sunLightHour;
	}

	public void setSunLightHour(String sunLightHour) {
		this.sunLightHour = sunLightHour;
	}

	public String getRecorderID() {
		return recorderID;
	}

	public void setRecorderID(String recorderID) {
		this.recorderID = recorderID;
	}

	public String getIsCable() {
		return isCable;
	}

	public void setIsCable(String isCable) {
		this.isCable = isCable;
	}

	public String getFileDate() {
		return fileDate;
	}

	public void setFileDate(String fileDate) {
		this.fileDate = fileDate;
	}

}
