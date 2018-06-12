package com.wine.model3;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class TobewashCriteria {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TobewashCriteria() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andIrHkeyIsNull() {
            addCriterion("t.IR_HKEY is null");
            return (Criteria) this;
        }

        public Criteria andIrHkeyIsNotNull() {
            addCriterion("t.IR_HKEY is not null");
            return (Criteria) this;
        }

        public Criteria andIrHkeyEqualTo(String value) {
            addCriterion("t.IR_HKEY =", value, "irHkey");
            return (Criteria) this;
        }

        public Criteria andIrHkeyNotEqualTo(String value) {
            addCriterion("t.IR_HKEY <>", value, "irHkey");
            return (Criteria) this;
        }

        public Criteria andIrHkeyGreaterThan(String value) {
            addCriterion("t.IR_HKEY >", value, "irHkey");
            return (Criteria) this;
        }

        public Criteria andIrHkeyGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_HKEY >=", value, "irHkey");
            return (Criteria) this;
        }

        public Criteria andIrHkeyLessThan(String value) {
            addCriterion("t.IR_HKEY <", value, "irHkey");
            return (Criteria) this;
        }

        public Criteria andIrHkeyLessThanOrEqualTo(String value) {
            addCriterion("t.IR_HKEY <=", value, "irHkey");
            return (Criteria) this;
        }

        public Criteria andIrHkeyLike(String value) {
            addCriterion("t.IR_HKEY like", value, "irHkey");
            return (Criteria) this;
        }

        public Criteria andIrHkeyNotLike(String value) {
            addCriterion("t.IR_HKEY not like", value, "irHkey");
            return (Criteria) this;
        }

        public Criteria andIrHkeyIn(List<String> values) {
            addCriterion("t.IR_HKEY in", values, "irHkey");
            return (Criteria) this;
        }

        public Criteria andIrHkeyNotIn(List<String> values) {
            addCriterion("t.IR_HKEY not in", values, "irHkey");
            return (Criteria) this;
        }

        public Criteria andIrHkeyBetween(String value1, String value2) {
            addCriterion("t.IR_HKEY between", value1, value2, "irHkey");
            return (Criteria) this;
        }

        public Criteria andIrHkeyNotBetween(String value1, String value2) {
            addCriterion("t.IR_HKEY not between", value1, value2, "irHkey");
            return (Criteria) this;
        }

        public Criteria andIrBbsnumIsNull() {
            addCriterion("t.IR_BBSNUM is null");
            return (Criteria) this;
        }

        public Criteria andIrBbsnumIsNotNull() {
            addCriterion("t.IR_BBSNUM is not null");
            return (Criteria) this;
        }

        public Criteria andIrBbsnumEqualTo(Integer value) {
            addCriterion("t.IR_BBSNUM =", value, "irBbsnum");
            return (Criteria) this;
        }

        public Criteria andIrBbsnumNotEqualTo(Integer value) {
            addCriterion("t.IR_BBSNUM <>", value, "irBbsnum");
            return (Criteria) this;
        }

        public Criteria andIrBbsnumGreaterThan(Integer value) {
            addCriterion("t.IR_BBSNUM >", value, "irBbsnum");
            return (Criteria) this;
        }

        public Criteria andIrBbsnumGreaterThanOrEqualTo(Integer value) {
            addCriterion("t.IR_BBSNUM >=", value, "irBbsnum");
            return (Criteria) this;
        }

        public Criteria andIrBbsnumLessThan(Integer value) {
            addCriterion("t.IR_BBSNUM <", value, "irBbsnum");
            return (Criteria) this;
        }

        public Criteria andIrBbsnumLessThanOrEqualTo(Integer value) {
            addCriterion("t.IR_BBSNUM <=", value, "irBbsnum");
            return (Criteria) this;
        }

        public Criteria andIrBbsnumIn(List<Integer> values) {
            addCriterion("t.IR_BBSNUM in", values, "irBbsnum");
            return (Criteria) this;
        }

        public Criteria andIrBbsnumNotIn(List<Integer> values) {
            addCriterion("t.IR_BBSNUM not in", values, "irBbsnum");
            return (Criteria) this;
        }

        public Criteria andIrBbsnumBetween(Integer value1, Integer value2) {
            addCriterion("t.IR_BBSNUM between", value1, value2, "irBbsnum");
            return (Criteria) this;
        }

        public Criteria andIrBbsnumNotBetween(Integer value1, Integer value2) {
            addCriterion("t.IR_BBSNUM not between", value1, value2, "irBbsnum");
            return (Criteria) this;
        }

        public Criteria andIrSidIsNull() {
            addCriterion("t.IR_SID is null");
            return (Criteria) this;
        }

        public Criteria andIrSidIsNotNull() {
            addCriterion("t.IR_SID is not null");
            return (Criteria) this;
        }

        public Criteria andIrSidEqualTo(Integer value) {
            addCriterion("t.IR_SID =", value, "irSid");
            return (Criteria) this;
        }

        public Criteria andIrSidNotEqualTo(Integer value) {
            addCriterion("t.IR_SID <>", value, "irSid");
            return (Criteria) this;
        }

        public Criteria andIrSidGreaterThan(Integer value) {
            addCriterion("t.IR_SID >", value, "irSid");
            return (Criteria) this;
        }

        public Criteria andIrSidGreaterThanOrEqualTo(Integer value) {
            addCriterion("t.IR_SID >=", value, "irSid");
            return (Criteria) this;
        }

        public Criteria andIrSidLessThan(Integer value) {
            addCriterion("t.IR_SID <", value, "irSid");
            return (Criteria) this;
        }

        public Criteria andIrSidLessThanOrEqualTo(Integer value) {
            addCriterion("t.IR_SID <=", value, "irSid");
            return (Criteria) this;
        }

        public Criteria andIrSidIn(List<Integer> values) {
            addCriterion("t.IR_SID in", values, "irSid");
            return (Criteria) this;
        }

        public Criteria andIrSidNotIn(List<Integer> values) {
            addCriterion("t.IR_SID not in", values, "irSid");
            return (Criteria) this;
        }

        public Criteria andIrSidBetween(Integer value1, Integer value2) {
            addCriterion("t.IR_SID between", value1, value2, "irSid");
            return (Criteria) this;
        }

        public Criteria andIrSidNotBetween(Integer value1, Integer value2) {
            addCriterion("t.IR_SID not between", value1, value2, "irSid");
            return (Criteria) this;
        }

        public Criteria andIrStartidIsNull() {
            addCriterion("t.IR_STARTID is null");
            return (Criteria) this;
        }

        public Criteria andIrStartidIsNotNull() {
            addCriterion("t.IR_STARTID is not null");
            return (Criteria) this;
        }

        public Criteria andIrStartidEqualTo(Integer value) {
            addCriterion("t.IR_STARTID =", value, "irStartid");
            return (Criteria) this;
        }

        public Criteria andIrStartidNotEqualTo(Integer value) {
            addCriterion("t.IR_STARTID <>", value, "irStartid");
            return (Criteria) this;
        }

        public Criteria andIrStartidGreaterThan(Integer value) {
            addCriterion("t.IR_STARTID >", value, "irStartid");
            return (Criteria) this;
        }

        public Criteria andIrStartidGreaterThanOrEqualTo(Integer value) {
            addCriterion("t.IR_STARTID >=", value, "irStartid");
            return (Criteria) this;
        }

        public Criteria andIrStartidLessThan(Integer value) {
            addCriterion("t.IR_STARTID <", value, "irStartid");
            return (Criteria) this;
        }

        public Criteria andIrStartidLessThanOrEqualTo(Integer value) {
            addCriterion("t.IR_STARTID <=", value, "irStartid");
            return (Criteria) this;
        }

        public Criteria andIrStartidIn(List<Integer> values) {
            addCriterion("t.IR_STARTID in", values, "irStartid");
            return (Criteria) this;
        }

        public Criteria andIrStartidNotIn(List<Integer> values) {
            addCriterion("t.IR_STARTID not in", values, "irStartid");
            return (Criteria) this;
        }

        public Criteria andIrStartidBetween(Integer value1, Integer value2) {
            addCriterion("t.IR_STARTID between", value1, value2, "irStartid");
            return (Criteria) this;
        }

        public Criteria andIrStartidNotBetween(Integer value1, Integer value2) {
            addCriterion("t.IR_STARTID not between", value1, value2, "irStartid");
            return (Criteria) this;
        }

        public Criteria andIrServiceidIsNull() {
            addCriterion("t.IR_SERVICEID is null");
            return (Criteria) this;
        }

        public Criteria andIrServiceidIsNotNull() {
            addCriterion("t.IR_SERVICEID is not null");
            return (Criteria) this;
        }

        public Criteria andIrServiceidEqualTo(String value) {
            addCriterion("t.IR_SERVICEID =", value, "irServiceid");
            return (Criteria) this;
        }

        public Criteria andIrServiceidNotEqualTo(String value) {
            addCriterion("t.IR_SERVICEID <>", value, "irServiceid");
            return (Criteria) this;
        }

        public Criteria andIrServiceidGreaterThan(String value) {
            addCriterion("t.IR_SERVICEID >", value, "irServiceid");
            return (Criteria) this;
        }

        public Criteria andIrServiceidGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_SERVICEID >=", value, "irServiceid");
            return (Criteria) this;
        }

        public Criteria andIrServiceidLessThan(String value) {
            addCriterion("t.IR_SERVICEID <", value, "irServiceid");
            return (Criteria) this;
        }

        public Criteria andIrServiceidLessThanOrEqualTo(String value) {
            addCriterion("t.IR_SERVICEID <=", value, "irServiceid");
            return (Criteria) this;
        }

        public Criteria andIrServiceidLike(String value) {
            addCriterion("t.IR_SERVICEID like", value, "irServiceid");
            return (Criteria) this;
        }

        public Criteria andIrServiceidNotLike(String value) {
            addCriterion("t.IR_SERVICEID not like", value, "irServiceid");
            return (Criteria) this;
        }

        public Criteria andIrServiceidIn(List<String> values) {
            addCriterion("t.IR_SERVICEID in", values, "irServiceid");
            return (Criteria) this;
        }

        public Criteria andIrServiceidNotIn(List<String> values) {
            addCriterion("t.IR_SERVICEID not in", values, "irServiceid");
            return (Criteria) this;
        }

        public Criteria andIrServiceidBetween(String value1, String value2) {
            addCriterion("t.IR_SERVICEID between", value1, value2, "irServiceid");
            return (Criteria) this;
        }

        public Criteria andIrServiceidNotBetween(String value1, String value2) {
            addCriterion("t.IR_SERVICEID not between", value1, value2, "irServiceid");
            return (Criteria) this;
        }

        public Criteria andIrPkeyIsNull() {
            addCriterion("t.IR_PKEY is null");
            return (Criteria) this;
        }

        public Criteria andIrPkeyIsNotNull() {
            addCriterion("t.IR_PKEY is not null");
            return (Criteria) this;
        }

        public Criteria andIrPkeyEqualTo(String value) {
            addCriterion("t.IR_PKEY =", value, "irPkey");
            return (Criteria) this;
        }

        public Criteria andIrPkeyNotEqualTo(String value) {
            addCriterion("t.IR_PKEY <>", value, "irPkey");
            return (Criteria) this;
        }

        public Criteria andIrPkeyGreaterThan(String value) {
            addCriterion("t.IR_PKEY >", value, "irPkey");
            return (Criteria) this;
        }

        public Criteria andIrPkeyGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_PKEY >=", value, "irPkey");
            return (Criteria) this;
        }

        public Criteria andIrPkeyLessThan(String value) {
            addCriterion("t.IR_PKEY <", value, "irPkey");
            return (Criteria) this;
        }

        public Criteria andIrPkeyLessThanOrEqualTo(String value) {
            addCriterion("t.IR_PKEY <=", value, "irPkey");
            return (Criteria) this;
        }

        public Criteria andIrPkeyLike(String value) {
            addCriterion("t.IR_PKEY like", value, "irPkey");
            return (Criteria) this;
        }

        public Criteria andIrPkeyNotLike(String value) {
            addCriterion("t.IR_PKEY not like", value, "irPkey");
            return (Criteria) this;
        }

        public Criteria andIrPkeyIn(List<String> values) {
            addCriterion("t.IR_PKEY in", values, "irPkey");
            return (Criteria) this;
        }

        public Criteria andIrPkeyNotIn(List<String> values) {
            addCriterion("t.IR_PKEY not in", values, "irPkey");
            return (Criteria) this;
        }

        public Criteria andIrPkeyBetween(String value1, String value2) {
            addCriterion("t.IR_PKEY between", value1, value2, "irPkey");
            return (Criteria) this;
        }

        public Criteria andIrPkeyNotBetween(String value1, String value2) {
            addCriterion("t.IR_PKEY not between", value1, value2, "irPkey");
            return (Criteria) this;
        }

        public Criteria andIrUrlnameIsNull() {
            addCriterion("t.IR_URLNAME is null");
            return (Criteria) this;
        }

        public Criteria andIrUrlnameIsNotNull() {
            addCriterion("t.IR_URLNAME is not null");
            return (Criteria) this;
        }

        public Criteria andIrUrlnameEqualTo(String value) {
            addCriterion("t.IR_URLNAME =", value, "irUrlname");
            return (Criteria) this;
        }

        public Criteria andIrUrlnameNotEqualTo(String value) {
            addCriterion("t.IR_URLNAME <>", value, "irUrlname");
            return (Criteria) this;
        }

        public Criteria andIrUrlnameGreaterThan(String value) {
            addCriterion("t.IR_URLNAME >", value, "irUrlname");
            return (Criteria) this;
        }

        public Criteria andIrUrlnameGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_URLNAME >=", value, "irUrlname");
            return (Criteria) this;
        }

        public Criteria andIrUrlnameLessThan(String value) {
            addCriterion("t.IR_URLNAME <", value, "irUrlname");
            return (Criteria) this;
        }

        public Criteria andIrUrlnameLessThanOrEqualTo(String value) {
            addCriterion("t.IR_URLNAME <=", value, "irUrlname");
            return (Criteria) this;
        }

        public Criteria andIrUrlnameLike(String value) {
            addCriterion("t.IR_URLNAME like", value, "irUrlname");
            return (Criteria) this;
        }

        public Criteria andIrUrlnameNotLike(String value) {
            addCriterion("t.IR_URLNAME not like", value, "irUrlname");
            return (Criteria) this;
        }

        public Criteria andIrUrlnameIn(List<String> values) {
            addCriterion("t.IR_URLNAME in", values, "irUrlname");
            return (Criteria) this;
        }

        public Criteria andIrUrlnameNotIn(List<String> values) {
            addCriterion("t.IR_URLNAME not in", values, "irUrlname");
            return (Criteria) this;
        }

        public Criteria andIrUrlnameBetween(String value1, String value2) {
            addCriterion("t.IR_URLNAME between", value1, value2, "irUrlname");
            return (Criteria) this;
        }

        public Criteria andIrUrlnameNotBetween(String value1, String value2) {
            addCriterion("t.IR_URLNAME not between", value1, value2, "irUrlname");
            return (Criteria) this;
        }

        public Criteria andIrExtnameIsNull() {
            addCriterion("t.IR_EXTNAME is null");
            return (Criteria) this;
        }

        public Criteria andIrExtnameIsNotNull() {
            addCriterion("t.IR_EXTNAME is not null");
            return (Criteria) this;
        }

        public Criteria andIrExtnameEqualTo(String value) {
            addCriterion("t.IR_EXTNAME =", value, "irExtname");
            return (Criteria) this;
        }

        public Criteria andIrExtnameNotEqualTo(String value) {
            addCriterion("t.IR_EXTNAME <>", value, "irExtname");
            return (Criteria) this;
        }

        public Criteria andIrExtnameGreaterThan(String value) {
            addCriterion("t.IR_EXTNAME >", value, "irExtname");
            return (Criteria) this;
        }

        public Criteria andIrExtnameGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_EXTNAME >=", value, "irExtname");
            return (Criteria) this;
        }

        public Criteria andIrExtnameLessThan(String value) {
            addCriterion("t.IR_EXTNAME <", value, "irExtname");
            return (Criteria) this;
        }

        public Criteria andIrExtnameLessThanOrEqualTo(String value) {
            addCriterion("t.IR_EXTNAME <=", value, "irExtname");
            return (Criteria) this;
        }

        public Criteria andIrExtnameLike(String value) {
            addCriterion("t.IR_EXTNAME like", value, "irExtname");
            return (Criteria) this;
        }

        public Criteria andIrExtnameNotLike(String value) {
            addCriterion("t.IR_EXTNAME not like", value, "irExtname");
            return (Criteria) this;
        }

        public Criteria andIrExtnameIn(List<String> values) {
            addCriterion("t.IR_EXTNAME in", values, "irExtname");
            return (Criteria) this;
        }

        public Criteria andIrExtnameNotIn(List<String> values) {
            addCriterion("t.IR_EXTNAME not in", values, "irExtname");
            return (Criteria) this;
        }

        public Criteria andIrExtnameBetween(String value1, String value2) {
            addCriterion("t.IR_EXTNAME between", value1, value2, "irExtname");
            return (Criteria) this;
        }

        public Criteria andIrExtnameNotBetween(String value1, String value2) {
            addCriterion("t.IR_EXTNAME not between", value1, value2, "irExtname");
            return (Criteria) this;
        }

        public Criteria andIrSitenameIsNull() {
            addCriterion("t.IR_SITENAME is null");
            return (Criteria) this;
        }

        public Criteria andIrSitenameIsNotNull() {
            addCriterion("t.IR_SITENAME is not null");
            return (Criteria) this;
        }

        public Criteria andIrSitenameEqualTo(String value) {
            addCriterion("t.IR_SITENAME =", value, "irSitename");
            return (Criteria) this;
        }

        public Criteria andIrSitenameNotEqualTo(String value) {
            addCriterion("t.IR_SITENAME <>", value, "irSitename");
            return (Criteria) this;
        }

        public Criteria andIrSitenameGreaterThan(String value) {
            addCriterion("t.IR_SITENAME >", value, "irSitename");
            return (Criteria) this;
        }

        public Criteria andIrSitenameGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_SITENAME >=", value, "irSitename");
            return (Criteria) this;
        }

        public Criteria andIrSitenameLessThan(String value) {
            addCriterion("t.IR_SITENAME <", value, "irSitename");
            return (Criteria) this;
        }

        public Criteria andIrSitenameLessThanOrEqualTo(String value) {
            addCriterion("t.IR_SITENAME <=", value, "irSitename");
            return (Criteria) this;
        }

        public Criteria andIrSitenameLike(String value) {
            addCriterion("t.IR_SITENAME like", value, "irSitename");
            return (Criteria) this;
        }

        public Criteria andIrSitenameNotLike(String value) {
            addCriterion("t.IR_SITENAME not like", value, "irSitename");
            return (Criteria) this;
        }

        public Criteria andIrSitenameIn(List<String> values) {
            addCriterion("t.IR_SITENAME in", values, "irSitename");
            return (Criteria) this;
        }

        public Criteria andIrSitenameNotIn(List<String> values) {
            addCriterion("t.IR_SITENAME not in", values, "irSitename");
            return (Criteria) this;
        }

        public Criteria andIrSitenameBetween(String value1, String value2) {
            addCriterion("t.IR_SITENAME between", value1, value2, "irSitename");
            return (Criteria) this;
        }

        public Criteria andIrSitenameNotBetween(String value1, String value2) {
            addCriterion("t.IR_SITENAME not between", value1, value2, "irSitename");
            return (Criteria) this;
        }

        public Criteria andIrChannelIsNull() {
            addCriterion("t.IR_CHANNEL is null");
            return (Criteria) this;
        }

        public Criteria andIrChannelIsNotNull() {
            addCriterion("t.IR_CHANNEL is not null");
            return (Criteria) this;
        }

        public Criteria andIrChannelEqualTo(String value) {
            addCriterion("t.IR_CHANNEL =", value, "irChannel");
            return (Criteria) this;
        }

        public Criteria andIrChannelNotEqualTo(String value) {
            addCriterion("t.IR_CHANNEL <>", value, "irChannel");
            return (Criteria) this;
        }

        public Criteria andIrChannelGreaterThan(String value) {
            addCriterion("t.IR_CHANNEL >", value, "irChannel");
            return (Criteria) this;
        }

        public Criteria andIrChannelGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_CHANNEL >=", value, "irChannel");
            return (Criteria) this;
        }

        public Criteria andIrChannelLessThan(String value) {
            addCriterion("t.IR_CHANNEL <", value, "irChannel");
            return (Criteria) this;
        }

        public Criteria andIrChannelLessThanOrEqualTo(String value) {
            addCriterion("t.IR_CHANNEL <=", value, "irChannel");
            return (Criteria) this;
        }

        public Criteria andIrChannelLike(String value) {
            addCriterion("t.IR_CHANNEL like", value, "irChannel");
            return (Criteria) this;
        }

        public Criteria andIrChannelNotLike(String value) {
            addCriterion("t.IR_CHANNEL not like", value, "irChannel");
            return (Criteria) this;
        }

        public Criteria andIrChannelIn(List<String> values) {
            addCriterion("t.IR_CHANNEL in", values, "irChannel");
            return (Criteria) this;
        }

        public Criteria andIrChannelNotIn(List<String> values) {
            addCriterion("t.IR_CHANNEL not in", values, "irChannel");
            return (Criteria) this;
        }

        public Criteria andIrChannelBetween(String value1, String value2) {
            addCriterion("t.IR_CHANNEL between", value1, value2, "irChannel");
            return (Criteria) this;
        }

        public Criteria andIrChannelNotBetween(String value1, String value2) {
            addCriterion("t.IR_CHANNEL not between", value1, value2, "irChannel");
            return (Criteria) this;
        }

        public Criteria andIrGroupnameIsNull() {
            addCriterion("t.IR_GROUPNAME is null");
            return (Criteria) this;
        }

        public Criteria andIrGroupnameIsNotNull() {
            addCriterion("t.IR_GROUPNAME is not null");
            return (Criteria) this;
        }

        public Criteria andIrGroupnameEqualTo(String value) {
            addCriterion("t.IR_GROUPNAME =", value, "irGroupname");
            return (Criteria) this;
        }

        public Criteria andIrGroupnameNotEqualTo(String value) {
            addCriterion("t.IR_GROUPNAME <>", value, "irGroupname");
            return (Criteria) this;
        }

        public Criteria andIrGroupnameGreaterThan(String value) {
            addCriterion("t.IR_GROUPNAME >", value, "irGroupname");
            return (Criteria) this;
        }

        public Criteria andIrGroupnameGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_GROUPNAME >=", value, "irGroupname");
            return (Criteria) this;
        }

        public Criteria andIrGroupnameLessThan(String value) {
            addCriterion("t.IR_GROUPNAME <", value, "irGroupname");
            return (Criteria) this;
        }

        public Criteria andIrGroupnameLessThanOrEqualTo(String value) {
            addCriterion("t.IR_GROUPNAME <=", value, "irGroupname");
            return (Criteria) this;
        }

        public Criteria andIrGroupnameLike(String value) {
            addCriterion("t.IR_GROUPNAME like", value, "irGroupname");
            return (Criteria) this;
        }

        public Criteria andIrGroupnameNotLike(String value) {
            addCriterion("t.IR_GROUPNAME not like", value, "irGroupname");
            return (Criteria) this;
        }

        public Criteria andIrGroupnameIn(List<String> values) {
            addCriterion("t.IR_GROUPNAME in", values, "irGroupname");
            return (Criteria) this;
        }

        public Criteria andIrGroupnameNotIn(List<String> values) {
            addCriterion("t.IR_GROUPNAME not in", values, "irGroupname");
            return (Criteria) this;
        }

        public Criteria andIrGroupnameBetween(String value1, String value2) {
            addCriterion("t.IR_GROUPNAME between", value1, value2, "irGroupname");
            return (Criteria) this;
        }

        public Criteria andIrGroupnameNotBetween(String value1, String value2) {
            addCriterion("t.IR_GROUPNAME not between", value1, value2, "irGroupname");
            return (Criteria) this;
        }

        public Criteria andIrUrltitleIsNull() {
            addCriterion("t.IR_URLTITLE is null");
            return (Criteria) this;
        }

        public Criteria andIrUrltitleIsNotNull() {
            addCriterion("t.IR_URLTITLE is not null");
            return (Criteria) this;
        }

        public Criteria andIrUrltitleEqualTo(String value) {
            addCriterion("t.IR_URLTITLE =", value, "irUrltitle");
            return (Criteria) this;
        }

        public Criteria andIrUrltitleNotEqualTo(String value) {
            addCriterion("t.IR_URLTITLE <>", value, "irUrltitle");
            return (Criteria) this;
        }

        public Criteria andIrUrltitleGreaterThan(String value) {
            addCriterion("t.IR_URLTITLE >", value, "irUrltitle");
            return (Criteria) this;
        }

        public Criteria andIrUrltitleGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_URLTITLE >=", value, "irUrltitle");
            return (Criteria) this;
        }

        public Criteria andIrUrltitleLessThan(String value) {
            addCriterion("t.IR_URLTITLE <", value, "irUrltitle");
            return (Criteria) this;
        }

        public Criteria andIrUrltitleLessThanOrEqualTo(String value) {
            addCriterion("t.IR_URLTITLE <=", value, "irUrltitle");
            return (Criteria) this;
        }

        public Criteria andIrUrltitleLike(String value) {
            addCriterion("t.IR_URLTITLE like", value, "irUrltitle");
            return (Criteria) this;
        }

        public Criteria andIrUrltitleNotLike(String value) {
            addCriterion("t.IR_URLTITLE not like", value, "irUrltitle");
            return (Criteria) this;
        }

        public Criteria andIrUrltitleIn(List<String> values) {
            addCriterion("t.IR_URLTITLE in", values, "irUrltitle");
            return (Criteria) this;
        }

        public Criteria andIrUrltitleNotIn(List<String> values) {
            addCriterion("t.IR_URLTITLE not in", values, "irUrltitle");
            return (Criteria) this;
        }

        public Criteria andIrUrltitleBetween(String value1, String value2) {
            addCriterion("t.IR_URLTITLE between", value1, value2, "irUrltitle");
            return (Criteria) this;
        }

        public Criteria andIrUrltitleNotBetween(String value1, String value2) {
            addCriterion("t.IR_URLTITLE not between", value1, value2, "irUrltitle");
            return (Criteria) this;
        }

        public Criteria andIrUrltopicIsNull() {
            addCriterion("t.IR_URLTOPIC is null");
            return (Criteria) this;
        }

        public Criteria andIrUrltopicIsNotNull() {
            addCriterion("t.IR_URLTOPIC is not null");
            return (Criteria) this;
        }

        public Criteria andIrUrltopicEqualTo(String value) {
            addCriterion("t.IR_URLTOPIC =", value, "irUrltopic");
            return (Criteria) this;
        }

        public Criteria andIrUrltopicNotEqualTo(String value) {
            addCriterion("t.IR_URLTOPIC <>", value, "irUrltopic");
            return (Criteria) this;
        }

        public Criteria andIrUrltopicGreaterThan(String value) {
            addCriterion("t.IR_URLTOPIC >", value, "irUrltopic");
            return (Criteria) this;
        }

        public Criteria andIrUrltopicGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_URLTOPIC >=", value, "irUrltopic");
            return (Criteria) this;
        }

        public Criteria andIrUrltopicLessThan(String value) {
            addCriterion("t.IR_URLTOPIC <", value, "irUrltopic");
            return (Criteria) this;
        }

        public Criteria andIrUrltopicLessThanOrEqualTo(String value) {
            addCriterion("t.IR_URLTOPIC <=", value, "irUrltopic");
            return (Criteria) this;
        }

        public Criteria andIrUrltopicLike(String value) {
            addCriterion("t.IR_URLTOPIC like", value, "irUrltopic");
            return (Criteria) this;
        }

        public Criteria andIrUrltopicNotLike(String value) {
            addCriterion("t.IR_URLTOPIC not like", value, "irUrltopic");
            return (Criteria) this;
        }

        public Criteria andIrUrltopicIn(List<String> values) {
            addCriterion("t.IR_URLTOPIC in", values, "irUrltopic");
            return (Criteria) this;
        }

        public Criteria andIrUrltopicNotIn(List<String> values) {
            addCriterion("t.IR_URLTOPIC not in", values, "irUrltopic");
            return (Criteria) this;
        }

        public Criteria andIrUrltopicBetween(String value1, String value2) {
            addCriterion("t.IR_URLTOPIC between", value1, value2, "irUrltopic");
            return (Criteria) this;
        }

        public Criteria andIrUrltopicNotBetween(String value1, String value2) {
            addCriterion("t.IR_URLTOPIC not between", value1, value2, "irUrltopic");
            return (Criteria) this;
        }

        public Criteria andIrLasttimeIsNull() {
            addCriterion("t.IR_LASTTIME is null");
            return (Criteria) this;
        }

        public Criteria andIrLasttimeIsNotNull() {
            addCriterion("t.IR_LASTTIME is not null");
            return (Criteria) this;
        }

        public Criteria andIrLasttimeEqualTo(Date value) {
            addCriterion("t.IR_LASTTIME =", value, "irLasttime");
            return (Criteria) this;
        }

        public Criteria andIrLasttimeNotEqualTo(Date value) {
            addCriterion("t.IR_LASTTIME <>", value, "irLasttime");
            return (Criteria) this;
        }

        public Criteria andIrLasttimeGreaterThan(Date value) {
            addCriterion("t.IR_LASTTIME >", value, "irLasttime");
            return (Criteria) this;
        }

        public Criteria andIrLasttimeGreaterThanOrEqualTo(Date value) {
            addCriterion("t.IR_LASTTIME >=", value, "irLasttime");
            return (Criteria) this;
        }

        public Criteria andIrLasttimeLessThan(Date value) {
            addCriterion("t.IR_LASTTIME <", value, "irLasttime");
            return (Criteria) this;
        }

        public Criteria andIrLasttimeLessThanOrEqualTo(Date value) {
            addCriterion("t.IR_LASTTIME <=", value, "irLasttime");
            return (Criteria) this;
        }

        public Criteria andIrLasttimeIn(List<Date> values) {
            addCriterion("t.IR_LASTTIME in", values, "irLasttime");
            return (Criteria) this;
        }

        public Criteria andIrLasttimeNotIn(List<Date> values) {
            addCriterion("t.IR_LASTTIME not in", values, "irLasttime");
            return (Criteria) this;
        }

        public Criteria andIrLasttimeBetween(Date value1, Date value2) {
            addCriterion("t.IR_LASTTIME between", value1, value2, "irLasttime");
            return (Criteria) this;
        }

        public Criteria andIrLasttimeNotBetween(Date value1, Date value2) {
            addCriterion("t.IR_LASTTIME not between", value1, value2, "irLasttime");
            return (Criteria) this;
        }

        public Criteria andIrUrldateIsNull() {
            addCriterion("t.IR_URLDATE is null");
            return (Criteria) this;
        }

        public Criteria andIrUrldateIsNotNull() {
            addCriterion("t.IR_URLDATE is not null");
            return (Criteria) this;
        }

        public Criteria andIrUrldateEqualTo(Date value) {
            addCriterionForJDBCDate("t.IR_URLDATE =", value, "irUrldate");
            return (Criteria) this;
        }

        public Criteria andIrUrldateNotEqualTo(Date value) {
            addCriterionForJDBCDate("t.IR_URLDATE <>", value, "irUrldate");
            return (Criteria) this;
        }

        public Criteria andIrUrldateGreaterThan(Date value) {
            addCriterionForJDBCDate("t.IR_URLDATE >", value, "irUrldate");
            return (Criteria) this;
        }

        public Criteria andIrUrldateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("t.IR_URLDATE >=", value, "irUrldate");
            return (Criteria) this;
        }

        public Criteria andIrUrldateLessThan(Date value) {
            addCriterionForJDBCDate("t.IR_URLDATE <", value, "irUrldate");
            return (Criteria) this;
        }

        public Criteria andIrUrldateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("t.IR_URLDATE <=", value, "irUrldate");
            return (Criteria) this;
        }

        public Criteria andIrUrldateIn(List<Date> values) {
            addCriterionForJDBCDate("t.IR_URLDATE in", values, "irUrldate");
            return (Criteria) this;
        }

        public Criteria andIrUrldateNotIn(List<Date> values) {
            addCriterionForJDBCDate("t.IR_URLDATE not in", values, "irUrldate");
            return (Criteria) this;
        }

        public Criteria andIrUrldateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("t.IR_URLDATE between", value1, value2, "irUrldate");
            return (Criteria) this;
        }

        public Criteria andIrUrldateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("t.IR_URLDATE not between", value1, value2, "irUrldate");
            return (Criteria) this;
        }

        public Criteria andIrUrltimeIsNull() {
            addCriterion("t.IR_URLTIME is null");
            return (Criteria) this;
        }

        public Criteria andIrUrltimeIsNotNull() {
            addCriterion("t.IR_URLTIME is not null");
            return (Criteria) this;
        }

        public Criteria andIrUrltimeEqualTo(Date value) {
            addCriterion("t.IR_URLTIME =", value, "irUrltime");
            return (Criteria) this;
        }

        public Criteria andIrUrltimeNotEqualTo(Date value) {
            addCriterion("t.IR_URLTIME <>", value, "irUrltime");
            return (Criteria) this;
        }

        public Criteria andIrUrltimeGreaterThan(Date value) {
            addCriterion("t.IR_URLTIME >", value, "irUrltime");
            return (Criteria) this;
        }

        public Criteria andIrUrltimeGreaterThanOrEqualTo(Date value) {
            addCriterion("t.IR_URLTIME >=", value, "irUrltime");
            return (Criteria) this;
        }

        public Criteria andIrUrltimeLessThan(Date value) {
            addCriterion("t.IR_URLTIME <", value, "irUrltime");
            return (Criteria) this;
        }

        public Criteria andIrUrltimeLessThanOrEqualTo(Date value) {
            addCriterion("t.IR_URLTIME <=", value, "irUrltime");
            return (Criteria) this;
        }

        public Criteria andIrUrltimeIn(List<Date> values) {
            addCriterion("t.IR_URLTIME in", values, "irUrltime");
            return (Criteria) this;
        }

        public Criteria andIrUrltimeNotIn(List<Date> values) {
            addCriterion("t.IR_URLTIME not in", values, "irUrltime");
            return (Criteria) this;
        }

        public Criteria andIrUrltimeBetween(Date value1, Date value2) {
            addCriterion("t.IR_URLTIME between", value1, value2, "irUrltime");
            return (Criteria) this;
        }

        public Criteria andIrUrltimeNotBetween(Date value1, Date value2) {
            addCriterion("t.IR_URLTIME not between", value1, value2, "irUrltime");
            return (Criteria) this;
        }

        public Criteria andIrLoadtimeIsNull() {
            addCriterion("t.IR_LOADTIME is null");
            return (Criteria) this;
        }

        public Criteria andIrLoadtimeIsNotNull() {
            addCriterion("t.IR_LOADTIME is not null");
            return (Criteria) this;
        }

        public Criteria andIrLoadtimeEqualTo(Date value) {
            addCriterion("t.IR_LOADTIME =", value, "irLoadtime");
            return (Criteria) this;
        }

        public Criteria andIrLoadtimeNotEqualTo(Date value) {
            addCriterion("t.IR_LOADTIME <>", value, "irLoadtime");
            return (Criteria) this;
        }

        public Criteria andIrLoadtimeGreaterThan(Date value) {
            addCriterion("t.IR_LOADTIME >", value, "irLoadtime");
            return (Criteria) this;
        }

        public Criteria andIrLoadtimeGreaterThanOrEqualTo(Date value) {
            addCriterion("t.IR_LOADTIME >=", value, "irLoadtime");
            return (Criteria) this;
        }

        public Criteria andIrLoadtimeLessThan(Date value) {
            addCriterion("t.IR_LOADTIME <", value, "irLoadtime");
            return (Criteria) this;
        }

        public Criteria andIrLoadtimeLessThanOrEqualTo(Date value) {
            addCriterion("t.IR_LOADTIME <=", value, "irLoadtime");
            return (Criteria) this;
        }

        public Criteria andIrLoadtimeIn(List<Date> values) {
            addCriterion("t.IR_LOADTIME in", values, "irLoadtime");
            return (Criteria) this;
        }

        public Criteria andIrLoadtimeNotIn(List<Date> values) {
            addCriterion("t.IR_LOADTIME not in", values, "irLoadtime");
            return (Criteria) this;
        }

        public Criteria andIrLoadtimeBetween(Date value1, Date value2) {
            addCriterion("t.IR_LOADTIME between", value1, value2, "irLoadtime");
            return (Criteria) this;
        }

        public Criteria andIrLoadtimeNotBetween(Date value1, Date value2) {
            addCriterion("t.IR_LOADTIME not between", value1, value2, "irLoadtime");
            return (Criteria) this;
        }

        public Criteria andIrSrcnameIsNull() {
            addCriterion("t.IR_SRCNAME is null");
            return (Criteria) this;
        }

        public Criteria andIrSrcnameIsNotNull() {
            addCriterion("t.IR_SRCNAME is not null");
            return (Criteria) this;
        }

        public Criteria andIrSrcnameEqualTo(String value) {
            addCriterion("t.IR_SRCNAME =", value, "irSrcname");
            return (Criteria) this;
        }

        public Criteria andIrSrcnameNotEqualTo(String value) {
            addCriterion("t.IR_SRCNAME <>", value, "irSrcname");
            return (Criteria) this;
        }

        public Criteria andIrSrcnameGreaterThan(String value) {
            addCriterion("t.IR_SRCNAME >", value, "irSrcname");
            return (Criteria) this;
        }

        public Criteria andIrSrcnameGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_SRCNAME >=", value, "irSrcname");
            return (Criteria) this;
        }

        public Criteria andIrSrcnameLessThan(String value) {
            addCriterion("t.IR_SRCNAME <", value, "irSrcname");
            return (Criteria) this;
        }

        public Criteria andIrSrcnameLessThanOrEqualTo(String value) {
            addCriterion("t.IR_SRCNAME <=", value, "irSrcname");
            return (Criteria) this;
        }

        public Criteria andIrSrcnameLike(String value) {
            addCriterion("t.IR_SRCNAME like", value, "irSrcname");
            return (Criteria) this;
        }

        public Criteria andIrSrcnameNotLike(String value) {
            addCriterion("t.IR_SRCNAME not like", value, "irSrcname");
            return (Criteria) this;
        }

        public Criteria andIrSrcnameIn(List<String> values) {
            addCriterion("t.IR_SRCNAME in", values, "irSrcname");
            return (Criteria) this;
        }

        public Criteria andIrSrcnameNotIn(List<String> values) {
            addCriterion("t.IR_SRCNAME not in", values, "irSrcname");
            return (Criteria) this;
        }

        public Criteria andIrSrcnameBetween(String value1, String value2) {
            addCriterion("t.IR_SRCNAME between", value1, value2, "irSrcname");
            return (Criteria) this;
        }

        public Criteria andIrSrcnameNotBetween(String value1, String value2) {
            addCriterion("t.IR_SRCNAME not between", value1, value2, "irSrcname");
            return (Criteria) this;
        }

        public Criteria andIrAuthorsIsNull() {
            addCriterion("t.IR_AUTHORS is null");
            return (Criteria) this;
        }

        public Criteria andIrAuthorsIsNotNull() {
            addCriterion("t.IR_AUTHORS is not null");
            return (Criteria) this;
        }

        public Criteria andIrAuthorsEqualTo(String value) {
            addCriterion("t.IR_AUTHORS =", value, "irAuthors");
            return (Criteria) this;
        }

        public Criteria andIrAuthorsNotEqualTo(String value) {
            addCriterion("t.IR_AUTHORS <>", value, "irAuthors");
            return (Criteria) this;
        }

        public Criteria andIrAuthorsGreaterThan(String value) {
            addCriterion("t.IR_AUTHORS >", value, "irAuthors");
            return (Criteria) this;
        }

        public Criteria andIrAuthorsGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_AUTHORS >=", value, "irAuthors");
            return (Criteria) this;
        }

        public Criteria andIrAuthorsLessThan(String value) {
            addCriterion("t.IR_AUTHORS <", value, "irAuthors");
            return (Criteria) this;
        }

        public Criteria andIrAuthorsLessThanOrEqualTo(String value) {
            addCriterion("t.IR_AUTHORS <=", value, "irAuthors");
            return (Criteria) this;
        }

        public Criteria andIrAuthorsLike(String value) {
            addCriterion("t.IR_AUTHORS like", value, "irAuthors");
            return (Criteria) this;
        }

        public Criteria andIrAuthorsNotLike(String value) {
            addCriterion("t.IR_AUTHORS not like", value, "irAuthors");
            return (Criteria) this;
        }

        public Criteria andIrAuthorsIn(List<String> values) {
            addCriterion("t.IR_AUTHORS in", values, "irAuthors");
            return (Criteria) this;
        }

        public Criteria andIrAuthorsNotIn(List<String> values) {
            addCriterion("t.IR_AUTHORS not in", values, "irAuthors");
            return (Criteria) this;
        }

        public Criteria andIrAuthorsBetween(String value1, String value2) {
            addCriterion("t.IR_AUTHORS between", value1, value2, "irAuthors");
            return (Criteria) this;
        }

        public Criteria andIrAuthorsNotBetween(String value1, String value2) {
            addCriterion("t.IR_AUTHORS not between", value1, value2, "irAuthors");
            return (Criteria) this;
        }

        public Criteria andIrDistrictIsNull() {
            addCriterion("t.IR_DISTRICT is null");
            return (Criteria) this;
        }

        public Criteria andIrDistrictIsNotNull() {
            addCriterion("t.IR_DISTRICT is not null");
            return (Criteria) this;
        }

        public Criteria andIrDistrictEqualTo(String value) {
            addCriterion("t.IR_DISTRICT =", value, "irDistrict");
            return (Criteria) this;
        }

        public Criteria andIrDistrictNotEqualTo(String value) {
            addCriterion("t.IR_DISTRICT <>", value, "irDistrict");
            return (Criteria) this;
        }

        public Criteria andIrDistrictGreaterThan(String value) {
            addCriterion("t.IR_DISTRICT >", value, "irDistrict");
            return (Criteria) this;
        }

        public Criteria andIrDistrictGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_DISTRICT >=", value, "irDistrict");
            return (Criteria) this;
        }

        public Criteria andIrDistrictLessThan(String value) {
            addCriterion("t.IR_DISTRICT <", value, "irDistrict");
            return (Criteria) this;
        }

        public Criteria andIrDistrictLessThanOrEqualTo(String value) {
            addCriterion("t.IR_DISTRICT <=", value, "irDistrict");
            return (Criteria) this;
        }

        public Criteria andIrDistrictLike(String value) {
            addCriterion("t.IR_DISTRICT like", value, "irDistrict");
            return (Criteria) this;
        }

        public Criteria andIrDistrictNotLike(String value) {
            addCriterion("t.IR_DISTRICT not like", value, "irDistrict");
            return (Criteria) this;
        }

        public Criteria andIrDistrictIn(List<String> values) {
            addCriterion("t.IR_DISTRICT in", values, "irDistrict");
            return (Criteria) this;
        }

        public Criteria andIrDistrictNotIn(List<String> values) {
            addCriterion("t.IR_DISTRICT not in", values, "irDistrict");
            return (Criteria) this;
        }

        public Criteria andIrDistrictBetween(String value1, String value2) {
            addCriterion("t.IR_DISTRICT between", value1, value2, "irDistrict");
            return (Criteria) this;
        }

        public Criteria andIrDistrictNotBetween(String value1, String value2) {
            addCriterion("t.IR_DISTRICT not between", value1, value2, "irDistrict");
            return (Criteria) this;
        }

        public Criteria andIrCatalogIsNull() {
            addCriterion("t.IR_CATALOG is null");
            return (Criteria) this;
        }

        public Criteria andIrCatalogIsNotNull() {
            addCriterion("t.IR_CATALOG is not null");
            return (Criteria) this;
        }

        public Criteria andIrCatalogEqualTo(String value) {
            addCriterion("t.IR_CATALOG =", value, "irCatalog");
            return (Criteria) this;
        }

        public Criteria andIrCatalogNotEqualTo(String value) {
            addCriterion("t.IR_CATALOG <>", value, "irCatalog");
            return (Criteria) this;
        }

        public Criteria andIrCatalogGreaterThan(String value) {
            addCriterion("t.IR_CATALOG >", value, "irCatalog");
            return (Criteria) this;
        }

        public Criteria andIrCatalogGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_CATALOG >=", value, "irCatalog");
            return (Criteria) this;
        }

        public Criteria andIrCatalogLessThan(String value) {
            addCriterion("t.IR_CATALOG <", value, "irCatalog");
            return (Criteria) this;
        }

        public Criteria andIrCatalogLessThanOrEqualTo(String value) {
            addCriterion("t.IR_CATALOG <=", value, "irCatalog");
            return (Criteria) this;
        }

        public Criteria andIrCatalogLike(String value) {
            addCriterion("t.IR_CATALOG like", value, "irCatalog");
            return (Criteria) this;
        }

        public Criteria andIrCatalogNotLike(String value) {
            addCriterion("t.IR_CATALOG not like", value, "irCatalog");
            return (Criteria) this;
        }

        public Criteria andIrCatalogIn(List<String> values) {
            addCriterion("t.IR_CATALOG in", values, "irCatalog");
            return (Criteria) this;
        }

        public Criteria andIrCatalogNotIn(List<String> values) {
            addCriterion("t.IR_CATALOG not in", values, "irCatalog");
            return (Criteria) this;
        }

        public Criteria andIrCatalogBetween(String value1, String value2) {
            addCriterion("t.IR_CATALOG between", value1, value2, "irCatalog");
            return (Criteria) this;
        }

        public Criteria andIrCatalogNotBetween(String value1, String value2) {
            addCriterion("t.IR_CATALOG not between", value1, value2, "irCatalog");
            return (Criteria) this;
        }

        public Criteria andIrCatalog1IsNull() {
            addCriterion("t.IR_CATALOG1 is null");
            return (Criteria) this;
        }

        public Criteria andIrCatalog1IsNotNull() {
            addCriterion("t.IR_CATALOG1 is not null");
            return (Criteria) this;
        }

        public Criteria andIrCatalog1EqualTo(String value) {
            addCriterion("t.IR_CATALOG1 =", value, "irCatalog1");
            return (Criteria) this;
        }

        public Criteria andIrCatalog1NotEqualTo(String value) {
            addCriterion("t.IR_CATALOG1 <>", value, "irCatalog1");
            return (Criteria) this;
        }

        public Criteria andIrCatalog1GreaterThan(String value) {
            addCriterion("t.IR_CATALOG1 >", value, "irCatalog1");
            return (Criteria) this;
        }

        public Criteria andIrCatalog1GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_CATALOG1 >=", value, "irCatalog1");
            return (Criteria) this;
        }

        public Criteria andIrCatalog1LessThan(String value) {
            addCriterion("t.IR_CATALOG1 <", value, "irCatalog1");
            return (Criteria) this;
        }

        public Criteria andIrCatalog1LessThanOrEqualTo(String value) {
            addCriterion("t.IR_CATALOG1 <=", value, "irCatalog1");
            return (Criteria) this;
        }

        public Criteria andIrCatalog1Like(String value) {
            addCriterion("t.IR_CATALOG1 like", value, "irCatalog1");
            return (Criteria) this;
        }

        public Criteria andIrCatalog1NotLike(String value) {
            addCriterion("t.IR_CATALOG1 not like", value, "irCatalog1");
            return (Criteria) this;
        }

        public Criteria andIrCatalog1In(List<String> values) {
            addCriterion("t.IR_CATALOG1 in", values, "irCatalog1");
            return (Criteria) this;
        }

        public Criteria andIrCatalog1NotIn(List<String> values) {
            addCriterion("t.IR_CATALOG1 not in", values, "irCatalog1");
            return (Criteria) this;
        }

        public Criteria andIrCatalog1Between(String value1, String value2) {
            addCriterion("t.IR_CATALOG1 between", value1, value2, "irCatalog1");
            return (Criteria) this;
        }

        public Criteria andIrCatalog1NotBetween(String value1, String value2) {
            addCriterion("t.IR_CATALOG1 not between", value1, value2, "irCatalog1");
            return (Criteria) this;
        }

        public Criteria andIrCatalog2IsNull() {
            addCriterion("t.IR_CATALOG2 is null");
            return (Criteria) this;
        }

        public Criteria andIrCatalog2IsNotNull() {
            addCriterion("t.IR_CATALOG2 is not null");
            return (Criteria) this;
        }

        public Criteria andIrCatalog2EqualTo(String value) {
            addCriterion("t.IR_CATALOG2 =", value, "irCatalog2");
            return (Criteria) this;
        }

        public Criteria andIrCatalog2NotEqualTo(String value) {
            addCriterion("t.IR_CATALOG2 <>", value, "irCatalog2");
            return (Criteria) this;
        }

        public Criteria andIrCatalog2GreaterThan(String value) {
            addCriterion("t.IR_CATALOG2 >", value, "irCatalog2");
            return (Criteria) this;
        }

        public Criteria andIrCatalog2GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_CATALOG2 >=", value, "irCatalog2");
            return (Criteria) this;
        }

        public Criteria andIrCatalog2LessThan(String value) {
            addCriterion("t.IR_CATALOG2 <", value, "irCatalog2");
            return (Criteria) this;
        }

        public Criteria andIrCatalog2LessThanOrEqualTo(String value) {
            addCriterion("t.IR_CATALOG2 <=", value, "irCatalog2");
            return (Criteria) this;
        }

        public Criteria andIrCatalog2Like(String value) {
            addCriterion("t.IR_CATALOG2 like", value, "irCatalog2");
            return (Criteria) this;
        }

        public Criteria andIrCatalog2NotLike(String value) {
            addCriterion("t.IR_CATALOG2 not like", value, "irCatalog2");
            return (Criteria) this;
        }

        public Criteria andIrCatalog2In(List<String> values) {
            addCriterion("t.IR_CATALOG2 in", values, "irCatalog2");
            return (Criteria) this;
        }

        public Criteria andIrCatalog2NotIn(List<String> values) {
            addCriterion("t.IR_CATALOG2 not in", values, "irCatalog2");
            return (Criteria) this;
        }

        public Criteria andIrCatalog2Between(String value1, String value2) {
            addCriterion("t.IR_CATALOG2 between", value1, value2, "irCatalog2");
            return (Criteria) this;
        }

        public Criteria andIrCatalog2NotBetween(String value1, String value2) {
            addCriterion("t.IR_CATALOG2 not between", value1, value2, "irCatalog2");
            return (Criteria) this;
        }

        public Criteria andIrKeywordsIsNull() {
            addCriterion("t.IR_KEYWORDS is null");
            return (Criteria) this;
        }

        public Criteria andIrKeywordsIsNotNull() {
            addCriterion("t.IR_KEYWORDS is not null");
            return (Criteria) this;
        }

        public Criteria andIrKeywordsEqualTo(String value) {
            addCriterion("t.IR_KEYWORDS =", value, "irKeywords");
            return (Criteria) this;
        }

        public Criteria andIrKeywordsNotEqualTo(String value) {
            addCriterion("t.IR_KEYWORDS <>", value, "irKeywords");
            return (Criteria) this;
        }

        public Criteria andIrKeywordsGreaterThan(String value) {
            addCriterion("t.IR_KEYWORDS >", value, "irKeywords");
            return (Criteria) this;
        }

        public Criteria andIrKeywordsGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_KEYWORDS >=", value, "irKeywords");
            return (Criteria) this;
        }

        public Criteria andIrKeywordsLessThan(String value) {
            addCriterion("t.IR_KEYWORDS <", value, "irKeywords");
            return (Criteria) this;
        }

        public Criteria andIrKeywordsLessThanOrEqualTo(String value) {
            addCriterion("t.IR_KEYWORDS <=", value, "irKeywords");
            return (Criteria) this;
        }

        public Criteria andIrKeywordsLike(String value) {
            addCriterion("t.IR_KEYWORDS like", value, "irKeywords");
            return (Criteria) this;
        }

        public Criteria andIrKeywordsNotLike(String value) {
            addCriterion("t.IR_KEYWORDS not like", value, "irKeywords");
            return (Criteria) this;
        }

        public Criteria andIrKeywordsIn(List<String> values) {
            addCriterion("t.IR_KEYWORDS in", values, "irKeywords");
            return (Criteria) this;
        }

        public Criteria andIrKeywordsNotIn(List<String> values) {
            addCriterion("t.IR_KEYWORDS not in", values, "irKeywords");
            return (Criteria) this;
        }

        public Criteria andIrKeywordsBetween(String value1, String value2) {
            addCriterion("t.IR_KEYWORDS between", value1, value2, "irKeywords");
            return (Criteria) this;
        }

        public Criteria andIrKeywordsNotBetween(String value1, String value2) {
            addCriterion("t.IR_KEYWORDS not between", value1, value2, "irKeywords");
            return (Criteria) this;
        }

        public Criteria andIrAbstractIsNull() {
            addCriterion("t.IR_ABSTRACT is null");
            return (Criteria) this;
        }

        public Criteria andIrAbstractIsNotNull() {
            addCriterion("t.IR_ABSTRACT is not null");
            return (Criteria) this;
        }

        public Criteria andIrAbstractEqualTo(String value) {
            addCriterion("t.IR_ABSTRACT =", value, "irAbstract");
            return (Criteria) this;
        }

        public Criteria andIrAbstractNotEqualTo(String value) {
            addCriterion("t.IR_ABSTRACT <>", value, "irAbstract");
            return (Criteria) this;
        }

        public Criteria andIrAbstractGreaterThan(String value) {
            addCriterion("t.IR_ABSTRACT >", value, "irAbstract");
            return (Criteria) this;
        }

        public Criteria andIrAbstractGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_ABSTRACT >=", value, "irAbstract");
            return (Criteria) this;
        }

        public Criteria andIrAbstractLessThan(String value) {
            addCriterion("t.IR_ABSTRACT <", value, "irAbstract");
            return (Criteria) this;
        }

        public Criteria andIrAbstractLessThanOrEqualTo(String value) {
            addCriterion("t.IR_ABSTRACT <=", value, "irAbstract");
            return (Criteria) this;
        }

        public Criteria andIrAbstractLike(String value) {
            addCriterion("t.IR_ABSTRACT like", value, "irAbstract");
            return (Criteria) this;
        }

        public Criteria andIrAbstractNotLike(String value) {
            addCriterion("t.IR_ABSTRACT not like", value, "irAbstract");
            return (Criteria) this;
        }

        public Criteria andIrAbstractIn(List<String> values) {
            addCriterion("t.IR_ABSTRACT in", values, "irAbstract");
            return (Criteria) this;
        }

        public Criteria andIrAbstractNotIn(List<String> values) {
            addCriterion("t.IR_ABSTRACT not in", values, "irAbstract");
            return (Criteria) this;
        }

        public Criteria andIrAbstractBetween(String value1, String value2) {
            addCriterion("t.IR_ABSTRACT between", value1, value2, "irAbstract");
            return (Criteria) this;
        }

        public Criteria andIrAbstractNotBetween(String value1, String value2) {
            addCriterion("t.IR_ABSTRACT not between", value1, value2, "irAbstract");
            return (Criteria) this;
        }

        public Criteria andIrSimflagIsNull() {
            addCriterion("t.IR_SIMFLAG is null");
            return (Criteria) this;
        }

        public Criteria andIrSimflagIsNotNull() {
            addCriterion("t.IR_SIMFLAG is not null");
            return (Criteria) this;
        }

        public Criteria andIrSimflagEqualTo(String value) {
            addCriterion("t.IR_SIMFLAG =", value, "irSimflag");
            return (Criteria) this;
        }

        public Criteria andIrSimflagNotEqualTo(String value) {
            addCriterion("t.IR_SIMFLAG <>", value, "irSimflag");
            return (Criteria) this;
        }

        public Criteria andIrSimflagGreaterThan(String value) {
            addCriterion("t.IR_SIMFLAG >", value, "irSimflag");
            return (Criteria) this;
        }

        public Criteria andIrSimflagGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_SIMFLAG >=", value, "irSimflag");
            return (Criteria) this;
        }

        public Criteria andIrSimflagLessThan(String value) {
            addCriterion("t.IR_SIMFLAG <", value, "irSimflag");
            return (Criteria) this;
        }

        public Criteria andIrSimflagLessThanOrEqualTo(String value) {
            addCriterion("t.IR_SIMFLAG <=", value, "irSimflag");
            return (Criteria) this;
        }

        public Criteria andIrSimflagLike(String value) {
            addCriterion("t.IR_SIMFLAG like", value, "irSimflag");
            return (Criteria) this;
        }

        public Criteria andIrSimflagNotLike(String value) {
            addCriterion("t.IR_SIMFLAG not like", value, "irSimflag");
            return (Criteria) this;
        }

        public Criteria andIrSimflagIn(List<String> values) {
            addCriterion("t.IR_SIMFLAG in", values, "irSimflag");
            return (Criteria) this;
        }

        public Criteria andIrSimflagNotIn(List<String> values) {
            addCriterion("t.IR_SIMFLAG not in", values, "irSimflag");
            return (Criteria) this;
        }

        public Criteria andIrSimflagBetween(String value1, String value2) {
            addCriterion("t.IR_SIMFLAG between", value1, value2, "irSimflag");
            return (Criteria) this;
        }

        public Criteria andIrSimflagNotBetween(String value1, String value2) {
            addCriterion("t.IR_SIMFLAG not between", value1, value2, "irSimflag");
            return (Criteria) this;
        }

        public Criteria andIrSimrankIsNull() {
            addCriterion("t.IR_SIMRANK is null");
            return (Criteria) this;
        }

        public Criteria andIrSimrankIsNotNull() {
            addCriterion("t.IR_SIMRANK is not null");
            return (Criteria) this;
        }

        public Criteria andIrSimrankEqualTo(Integer value) {
            addCriterion("t.IR_SIMRANK =", value, "irSimrank");
            return (Criteria) this;
        }

        public Criteria andIrSimrankNotEqualTo(Integer value) {
            addCriterion("t.IR_SIMRANK <>", value, "irSimrank");
            return (Criteria) this;
        }

        public Criteria andIrSimrankGreaterThan(Integer value) {
            addCriterion("t.IR_SIMRANK >", value, "irSimrank");
            return (Criteria) this;
        }

        public Criteria andIrSimrankGreaterThanOrEqualTo(Integer value) {
            addCriterion("t.IR_SIMRANK >=", value, "irSimrank");
            return (Criteria) this;
        }

        public Criteria andIrSimrankLessThan(Integer value) {
            addCriterion("t.IR_SIMRANK <", value, "irSimrank");
            return (Criteria) this;
        }

        public Criteria andIrSimrankLessThanOrEqualTo(Integer value) {
            addCriterion("t.IR_SIMRANK <=", value, "irSimrank");
            return (Criteria) this;
        }

        public Criteria andIrSimrankIn(List<Integer> values) {
            addCriterion("t.IR_SIMRANK in", values, "irSimrank");
            return (Criteria) this;
        }

        public Criteria andIrSimrankNotIn(List<Integer> values) {
            addCriterion("t.IR_SIMRANK not in", values, "irSimrank");
            return (Criteria) this;
        }

        public Criteria andIrSimrankBetween(Integer value1, Integer value2) {
            addCriterion("t.IR_SIMRANK between", value1, value2, "irSimrank");
            return (Criteria) this;
        }

        public Criteria andIrSimrankNotBetween(Integer value1, Integer value2) {
            addCriterion("t.IR_SIMRANK not between", value1, value2, "irSimrank");
            return (Criteria) this;
        }

        public Criteria andIrImageflagIsNull() {
            addCriterion("t.IR_IMAGEFLAG is null");
            return (Criteria) this;
        }

        public Criteria andIrImageflagIsNotNull() {
            addCriterion("t.IR_IMAGEFLAG is not null");
            return (Criteria) this;
        }

        public Criteria andIrImageflagEqualTo(Integer value) {
            addCriterion("t.IR_IMAGEFLAG =", value, "irImageflag");
            return (Criteria) this;
        }

        public Criteria andIrImageflagNotEqualTo(Integer value) {
            addCriterion("t.IR_IMAGEFLAG <>", value, "irImageflag");
            return (Criteria) this;
        }

        public Criteria andIrImageflagGreaterThan(Integer value) {
            addCriterion("t.IR_IMAGEFLAG >", value, "irImageflag");
            return (Criteria) this;
        }

        public Criteria andIrImageflagGreaterThanOrEqualTo(Integer value) {
            addCriterion("t.IR_IMAGEFLAG >=", value, "irImageflag");
            return (Criteria) this;
        }

        public Criteria andIrImageflagLessThan(Integer value) {
            addCriterion("t.IR_IMAGEFLAG <", value, "irImageflag");
            return (Criteria) this;
        }

        public Criteria andIrImageflagLessThanOrEqualTo(Integer value) {
            addCriterion("t.IR_IMAGEFLAG <=", value, "irImageflag");
            return (Criteria) this;
        }

        public Criteria andIrImageflagIn(List<Integer> values) {
            addCriterion("t.IR_IMAGEFLAG in", values, "irImageflag");
            return (Criteria) this;
        }

        public Criteria andIrImageflagNotIn(List<Integer> values) {
            addCriterion("t.IR_IMAGEFLAG not in", values, "irImageflag");
            return (Criteria) this;
        }

        public Criteria andIrImageflagBetween(Integer value1, Integer value2) {
            addCriterion("t.IR_IMAGEFLAG between", value1, value2, "irImageflag");
            return (Criteria) this;
        }

        public Criteria andIrImageflagNotBetween(Integer value1, Integer value2) {
            addCriterion("t.IR_IMAGEFLAG not between", value1, value2, "irImageflag");
            return (Criteria) this;
        }

        public Criteria andIrTableflagIsNull() {
            addCriterion("t.IR_TABLEFLAG is null");
            return (Criteria) this;
        }

        public Criteria andIrTableflagIsNotNull() {
            addCriterion("t.IR_TABLEFLAG is not null");
            return (Criteria) this;
        }

        public Criteria andIrTableflagEqualTo(Integer value) {
            addCriterion("t.IR_TABLEFLAG =", value, "irTableflag");
            return (Criteria) this;
        }

        public Criteria andIrTableflagNotEqualTo(Integer value) {
            addCriterion("t.IR_TABLEFLAG <>", value, "irTableflag");
            return (Criteria) this;
        }

        public Criteria andIrTableflagGreaterThan(Integer value) {
            addCriterion("t.IR_TABLEFLAG >", value, "irTableflag");
            return (Criteria) this;
        }

        public Criteria andIrTableflagGreaterThanOrEqualTo(Integer value) {
            addCriterion("t.IR_TABLEFLAG >=", value, "irTableflag");
            return (Criteria) this;
        }

        public Criteria andIrTableflagLessThan(Integer value) {
            addCriterion("t.IR_TABLEFLAG <", value, "irTableflag");
            return (Criteria) this;
        }

        public Criteria andIrTableflagLessThanOrEqualTo(Integer value) {
            addCriterion("t.IR_TABLEFLAG <=", value, "irTableflag");
            return (Criteria) this;
        }

        public Criteria andIrTableflagIn(List<Integer> values) {
            addCriterion("t.IR_TABLEFLAG in", values, "irTableflag");
            return (Criteria) this;
        }

        public Criteria andIrTableflagNotIn(List<Integer> values) {
            addCriterion("t.IR_TABLEFLAG not in", values, "irTableflag");
            return (Criteria) this;
        }

        public Criteria andIrTableflagBetween(Integer value1, Integer value2) {
            addCriterion("t.IR_TABLEFLAG between", value1, value2, "irTableflag");
            return (Criteria) this;
        }

        public Criteria andIrTableflagNotBetween(Integer value1, Integer value2) {
            addCriterion("t.IR_TABLEFLAG not between", value1, value2, "irTableflag");
            return (Criteria) this;
        }

        public Criteria andIrDoclengthIsNull() {
            addCriterion("t.IR_DOCLENGTH is null");
            return (Criteria) this;
        }

        public Criteria andIrDoclengthIsNotNull() {
            addCriterion("t.IR_DOCLENGTH is not null");
            return (Criteria) this;
        }

        public Criteria andIrDoclengthEqualTo(Integer value) {
            addCriterion("t.IR_DOCLENGTH =", value, "irDoclength");
            return (Criteria) this;
        }

        public Criteria andIrDoclengthNotEqualTo(Integer value) {
            addCriterion("t.IR_DOCLENGTH <>", value, "irDoclength");
            return (Criteria) this;
        }

        public Criteria andIrDoclengthGreaterThan(Integer value) {
            addCriterion("t.IR_DOCLENGTH >", value, "irDoclength");
            return (Criteria) this;
        }

        public Criteria andIrDoclengthGreaterThanOrEqualTo(Integer value) {
            addCriterion("t.IR_DOCLENGTH >=", value, "irDoclength");
            return (Criteria) this;
        }

        public Criteria andIrDoclengthLessThan(Integer value) {
            addCriterion("t.IR_DOCLENGTH <", value, "irDoclength");
            return (Criteria) this;
        }

        public Criteria andIrDoclengthLessThanOrEqualTo(Integer value) {
            addCriterion("t.IR_DOCLENGTH <=", value, "irDoclength");
            return (Criteria) this;
        }

        public Criteria andIrDoclengthIn(List<Integer> values) {
            addCriterion("t.IR_DOCLENGTH in", values, "irDoclength");
            return (Criteria) this;
        }

        public Criteria andIrDoclengthNotIn(List<Integer> values) {
            addCriterion("t.IR_DOCLENGTH not in", values, "irDoclength");
            return (Criteria) this;
        }

        public Criteria andIrDoclengthBetween(Integer value1, Integer value2) {
            addCriterion("t.IR_DOCLENGTH between", value1, value2, "irDoclength");
            return (Criteria) this;
        }

        public Criteria andIrDoclengthNotBetween(Integer value1, Integer value2) {
            addCriterion("t.IR_DOCLENGTH not between", value1, value2, "irDoclength");
            return (Criteria) this;
        }

        public Criteria andIrBbstopicIsNull() {
            addCriterion("t.IR_BBSTOPIC is null");
            return (Criteria) this;
        }

        public Criteria andIrBbstopicIsNotNull() {
            addCriterion("t.IR_BBSTOPIC is not null");
            return (Criteria) this;
        }

        public Criteria andIrBbstopicEqualTo(Integer value) {
            addCriterion("t.IR_BBSTOPIC =", value, "irBbstopic");
            return (Criteria) this;
        }

        public Criteria andIrBbstopicNotEqualTo(Integer value) {
            addCriterion("t.IR_BBSTOPIC <>", value, "irBbstopic");
            return (Criteria) this;
        }

        public Criteria andIrBbstopicGreaterThan(Integer value) {
            addCriterion("t.IR_BBSTOPIC >", value, "irBbstopic");
            return (Criteria) this;
        }

        public Criteria andIrBbstopicGreaterThanOrEqualTo(Integer value) {
            addCriterion("t.IR_BBSTOPIC >=", value, "irBbstopic");
            return (Criteria) this;
        }

        public Criteria andIrBbstopicLessThan(Integer value) {
            addCriterion("t.IR_BBSTOPIC <", value, "irBbstopic");
            return (Criteria) this;
        }

        public Criteria andIrBbstopicLessThanOrEqualTo(Integer value) {
            addCriterion("t.IR_BBSTOPIC <=", value, "irBbstopic");
            return (Criteria) this;
        }

        public Criteria andIrBbstopicIn(List<Integer> values) {
            addCriterion("t.IR_BBSTOPIC in", values, "irBbstopic");
            return (Criteria) this;
        }

        public Criteria andIrBbstopicNotIn(List<Integer> values) {
            addCriterion("t.IR_BBSTOPIC not in", values, "irBbstopic");
            return (Criteria) this;
        }

        public Criteria andIrBbstopicBetween(Integer value1, Integer value2) {
            addCriterion("t.IR_BBSTOPIC between", value1, value2, "irBbstopic");
            return (Criteria) this;
        }

        public Criteria andIrBbstopicNotBetween(Integer value1, Integer value2) {
            addCriterion("t.IR_BBSTOPIC not between", value1, value2, "irBbstopic");
            return (Criteria) this;
        }

        public Criteria andIrBbskeyIsNull() {
            addCriterion("t.IR_BBSKEY is null");
            return (Criteria) this;
        }

        public Criteria andIrBbskeyIsNotNull() {
            addCriterion("t.IR_BBSKEY is not null");
            return (Criteria) this;
        }

        public Criteria andIrBbskeyEqualTo(String value) {
            addCriterion("t.IR_BBSKEY =", value, "irBbskey");
            return (Criteria) this;
        }

        public Criteria andIrBbskeyNotEqualTo(String value) {
            addCriterion("t.IR_BBSKEY <>", value, "irBbskey");
            return (Criteria) this;
        }

        public Criteria andIrBbskeyGreaterThan(String value) {
            addCriterion("t.IR_BBSKEY >", value, "irBbskey");
            return (Criteria) this;
        }

        public Criteria andIrBbskeyGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_BBSKEY >=", value, "irBbskey");
            return (Criteria) this;
        }

        public Criteria andIrBbskeyLessThan(String value) {
            addCriterion("t.IR_BBSKEY <", value, "irBbskey");
            return (Criteria) this;
        }

        public Criteria andIrBbskeyLessThanOrEqualTo(String value) {
            addCriterion("t.IR_BBSKEY <=", value, "irBbskey");
            return (Criteria) this;
        }

        public Criteria andIrBbskeyLike(String value) {
            addCriterion("t.IR_BBSKEY like", value, "irBbskey");
            return (Criteria) this;
        }

        public Criteria andIrBbskeyNotLike(String value) {
            addCriterion("t.IR_BBSKEY not like", value, "irBbskey");
            return (Criteria) this;
        }

        public Criteria andIrBbskeyIn(List<String> values) {
            addCriterion("t.IR_BBSKEY in", values, "irBbskey");
            return (Criteria) this;
        }

        public Criteria andIrBbskeyNotIn(List<String> values) {
            addCriterion("t.IR_BBSKEY not in", values, "irBbskey");
            return (Criteria) this;
        }

        public Criteria andIrBbskeyBetween(String value1, String value2) {
            addCriterion("t.IR_BBSKEY between", value1, value2, "irBbskey");
            return (Criteria) this;
        }

        public Criteria andIrBbskeyNotBetween(String value1, String value2) {
            addCriterion("t.IR_BBSKEY not between", value1, value2, "irBbskey");
            return (Criteria) this;
        }

        public Criteria andIrPagelevelIsNull() {
            addCriterion("t.IR_PAGELEVEL is null");
            return (Criteria) this;
        }

        public Criteria andIrPagelevelIsNotNull() {
            addCriterion("t.IR_PAGELEVEL is not null");
            return (Criteria) this;
        }

        public Criteria andIrPagelevelEqualTo(Integer value) {
            addCriterion("t.IR_PAGELEVEL =", value, "irPagelevel");
            return (Criteria) this;
        }

        public Criteria andIrPagelevelNotEqualTo(Integer value) {
            addCriterion("t.IR_PAGELEVEL <>", value, "irPagelevel");
            return (Criteria) this;
        }

        public Criteria andIrPagelevelGreaterThan(Integer value) {
            addCriterion("t.IR_PAGELEVEL >", value, "irPagelevel");
            return (Criteria) this;
        }

        public Criteria andIrPagelevelGreaterThanOrEqualTo(Integer value) {
            addCriterion("t.IR_PAGELEVEL >=", value, "irPagelevel");
            return (Criteria) this;
        }

        public Criteria andIrPagelevelLessThan(Integer value) {
            addCriterion("t.IR_PAGELEVEL <", value, "irPagelevel");
            return (Criteria) this;
        }

        public Criteria andIrPagelevelLessThanOrEqualTo(Integer value) {
            addCriterion("t.IR_PAGELEVEL <=", value, "irPagelevel");
            return (Criteria) this;
        }

        public Criteria andIrPagelevelIn(List<Integer> values) {
            addCriterion("t.IR_PAGELEVEL in", values, "irPagelevel");
            return (Criteria) this;
        }

        public Criteria andIrPagelevelNotIn(List<Integer> values) {
            addCriterion("t.IR_PAGELEVEL not in", values, "irPagelevel");
            return (Criteria) this;
        }

        public Criteria andIrPagelevelBetween(Integer value1, Integer value2) {
            addCriterion("t.IR_PAGELEVEL between", value1, value2, "irPagelevel");
            return (Criteria) this;
        }

        public Criteria andIrPagelevelNotBetween(Integer value1, Integer value2) {
            addCriterion("t.IR_PAGELEVEL not between", value1, value2, "irPagelevel");
            return (Criteria) this;
        }

        public Criteria andIrPagerankIsNull() {
            addCriterion("t.IR_PAGERANK is null");
            return (Criteria) this;
        }

        public Criteria andIrPagerankIsNotNull() {
            addCriterion("t.IR_PAGERANK is not null");
            return (Criteria) this;
        }

        public Criteria andIrPagerankEqualTo(Integer value) {
            addCriterion("t.IR_PAGERANK =", value, "irPagerank");
            return (Criteria) this;
        }

        public Criteria andIrPagerankNotEqualTo(Integer value) {
            addCriterion("t.IR_PAGERANK <>", value, "irPagerank");
            return (Criteria) this;
        }

        public Criteria andIrPagerankGreaterThan(Integer value) {
            addCriterion("t.IR_PAGERANK >", value, "irPagerank");
            return (Criteria) this;
        }

        public Criteria andIrPagerankGreaterThanOrEqualTo(Integer value) {
            addCriterion("t.IR_PAGERANK >=", value, "irPagerank");
            return (Criteria) this;
        }

        public Criteria andIrPagerankLessThan(Integer value) {
            addCriterion("t.IR_PAGERANK <", value, "irPagerank");
            return (Criteria) this;
        }

        public Criteria andIrPagerankLessThanOrEqualTo(Integer value) {
            addCriterion("t.IR_PAGERANK <=", value, "irPagerank");
            return (Criteria) this;
        }

        public Criteria andIrPagerankIn(List<Integer> values) {
            addCriterion("t.IR_PAGERANK in", values, "irPagerank");
            return (Criteria) this;
        }

        public Criteria andIrPagerankNotIn(List<Integer> values) {
            addCriterion("t.IR_PAGERANK not in", values, "irPagerank");
            return (Criteria) this;
        }

        public Criteria andIrPagerankBetween(Integer value1, Integer value2) {
            addCriterion("t.IR_PAGERANK between", value1, value2, "irPagerank");
            return (Criteria) this;
        }

        public Criteria andIrPagerankNotBetween(Integer value1, Integer value2) {
            addCriterion("t.IR_PAGERANK not between", value1, value2, "irPagerank");
            return (Criteria) this;
        }

        public Criteria andIrUrllevelIsNull() {
            addCriterion("t.IR_URLLEVEL is null");
            return (Criteria) this;
        }

        public Criteria andIrUrllevelIsNotNull() {
            addCriterion("t.IR_URLLEVEL is not null");
            return (Criteria) this;
        }

        public Criteria andIrUrllevelEqualTo(Integer value) {
            addCriterion("t.IR_URLLEVEL =", value, "irUrllevel");
            return (Criteria) this;
        }

        public Criteria andIrUrllevelNotEqualTo(Integer value) {
            addCriterion("t.IR_URLLEVEL <>", value, "irUrllevel");
            return (Criteria) this;
        }

        public Criteria andIrUrllevelGreaterThan(Integer value) {
            addCriterion("t.IR_URLLEVEL >", value, "irUrllevel");
            return (Criteria) this;
        }

        public Criteria andIrUrllevelGreaterThanOrEqualTo(Integer value) {
            addCriterion("t.IR_URLLEVEL >=", value, "irUrllevel");
            return (Criteria) this;
        }

        public Criteria andIrUrllevelLessThan(Integer value) {
            addCriterion("t.IR_URLLEVEL <", value, "irUrllevel");
            return (Criteria) this;
        }

        public Criteria andIrUrllevelLessThanOrEqualTo(Integer value) {
            addCriterion("t.IR_URLLEVEL <=", value, "irUrllevel");
            return (Criteria) this;
        }

        public Criteria andIrUrllevelIn(List<Integer> values) {
            addCriterion("t.IR_URLLEVEL in", values, "irUrllevel");
            return (Criteria) this;
        }

        public Criteria andIrUrllevelNotIn(List<Integer> values) {
            addCriterion("t.IR_URLLEVEL not in", values, "irUrllevel");
            return (Criteria) this;
        }

        public Criteria andIrUrllevelBetween(Integer value1, Integer value2) {
            addCriterion("t.IR_URLLEVEL between", value1, value2, "irUrllevel");
            return (Criteria) this;
        }

        public Criteria andIrUrllevelNotBetween(Integer value1, Integer value2) {
            addCriterion("t.IR_URLLEVEL not between", value1, value2, "irUrllevel");
            return (Criteria) this;
        }

        public Criteria andIrMimetypeIsNull() {
            addCriterion("t.IR_MIMETYPE is null");
            return (Criteria) this;
        }

        public Criteria andIrMimetypeIsNotNull() {
            addCriterion("t.IR_MIMETYPE is not null");
            return (Criteria) this;
        }

        public Criteria andIrMimetypeEqualTo(String value) {
            addCriterion("t.IR_MIMETYPE =", value, "irMimetype");
            return (Criteria) this;
        }

        public Criteria andIrMimetypeNotEqualTo(String value) {
            addCriterion("t.IR_MIMETYPE <>", value, "irMimetype");
            return (Criteria) this;
        }

        public Criteria andIrMimetypeGreaterThan(String value) {
            addCriterion("t.IR_MIMETYPE >", value, "irMimetype");
            return (Criteria) this;
        }

        public Criteria andIrMimetypeGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_MIMETYPE >=", value, "irMimetype");
            return (Criteria) this;
        }

        public Criteria andIrMimetypeLessThan(String value) {
            addCriterion("t.IR_MIMETYPE <", value, "irMimetype");
            return (Criteria) this;
        }

        public Criteria andIrMimetypeLessThanOrEqualTo(String value) {
            addCriterion("t.IR_MIMETYPE <=", value, "irMimetype");
            return (Criteria) this;
        }

        public Criteria andIrMimetypeLike(String value) {
            addCriterion("t.IR_MIMETYPE like", value, "irMimetype");
            return (Criteria) this;
        }

        public Criteria andIrMimetypeNotLike(String value) {
            addCriterion("t.IR_MIMETYPE not like", value, "irMimetype");
            return (Criteria) this;
        }

        public Criteria andIrMimetypeIn(List<String> values) {
            addCriterion("t.IR_MIMETYPE in", values, "irMimetype");
            return (Criteria) this;
        }

        public Criteria andIrMimetypeNotIn(List<String> values) {
            addCriterion("t.IR_MIMETYPE not in", values, "irMimetype");
            return (Criteria) this;
        }

        public Criteria andIrMimetypeBetween(String value1, String value2) {
            addCriterion("t.IR_MIMETYPE between", value1, value2, "irMimetype");
            return (Criteria) this;
        }

        public Criteria andIrMimetypeNotBetween(String value1, String value2) {
            addCriterion("t.IR_MIMETYPE not between", value1, value2, "irMimetype");
            return (Criteria) this;
        }

        public Criteria andIrFormatIsNull() {
            addCriterion("t.IR_FORMAT is null");
            return (Criteria) this;
        }

        public Criteria andIrFormatIsNotNull() {
            addCriterion("t.IR_FORMAT is not null");
            return (Criteria) this;
        }

        public Criteria andIrFormatEqualTo(String value) {
            addCriterion("t.IR_FORMAT =", value, "irFormat");
            return (Criteria) this;
        }

        public Criteria andIrFormatNotEqualTo(String value) {
            addCriterion("t.IR_FORMAT <>", value, "irFormat");
            return (Criteria) this;
        }

        public Criteria andIrFormatGreaterThan(String value) {
            addCriterion("t.IR_FORMAT >", value, "irFormat");
            return (Criteria) this;
        }

        public Criteria andIrFormatGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_FORMAT >=", value, "irFormat");
            return (Criteria) this;
        }

        public Criteria andIrFormatLessThan(String value) {
            addCriterion("t.IR_FORMAT <", value, "irFormat");
            return (Criteria) this;
        }

        public Criteria andIrFormatLessThanOrEqualTo(String value) {
            addCriterion("t.IR_FORMAT <=", value, "irFormat");
            return (Criteria) this;
        }

        public Criteria andIrFormatLike(String value) {
            addCriterion("t.IR_FORMAT like", value, "irFormat");
            return (Criteria) this;
        }

        public Criteria andIrFormatNotLike(String value) {
            addCriterion("t.IR_FORMAT not like", value, "irFormat");
            return (Criteria) this;
        }

        public Criteria andIrFormatIn(List<String> values) {
            addCriterion("t.IR_FORMAT in", values, "irFormat");
            return (Criteria) this;
        }

        public Criteria andIrFormatNotIn(List<String> values) {
            addCriterion("t.IR_FORMAT not in", values, "irFormat");
            return (Criteria) this;
        }

        public Criteria andIrFormatBetween(String value1, String value2) {
            addCriterion("t.IR_FORMAT between", value1, value2, "irFormat");
            return (Criteria) this;
        }

        public Criteria andIrFormatNotBetween(String value1, String value2) {
            addCriterion("t.IR_FORMAT not between", value1, value2, "irFormat");
            return (Criteria) this;
        }

        public Criteria andIrCharsetIsNull() {
            addCriterion("t.IR_CHARSET is null");
            return (Criteria) this;
        }

        public Criteria andIrCharsetIsNotNull() {
            addCriterion("t.IR_CHARSET is not null");
            return (Criteria) this;
        }

        public Criteria andIrCharsetEqualTo(String value) {
            addCriterion("t.IR_CHARSET =", value, "irCharset");
            return (Criteria) this;
        }

        public Criteria andIrCharsetNotEqualTo(String value) {
            addCriterion("t.IR_CHARSET <>", value, "irCharset");
            return (Criteria) this;
        }

        public Criteria andIrCharsetGreaterThan(String value) {
            addCriterion("t.IR_CHARSET >", value, "irCharset");
            return (Criteria) this;
        }

        public Criteria andIrCharsetGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_CHARSET >=", value, "irCharset");
            return (Criteria) this;
        }

        public Criteria andIrCharsetLessThan(String value) {
            addCriterion("t.IR_CHARSET <", value, "irCharset");
            return (Criteria) this;
        }

        public Criteria andIrCharsetLessThanOrEqualTo(String value) {
            addCriterion("t.IR_CHARSET <=", value, "irCharset");
            return (Criteria) this;
        }

        public Criteria andIrCharsetLike(String value) {
            addCriterion("t.IR_CHARSET like", value, "irCharset");
            return (Criteria) this;
        }

        public Criteria andIrCharsetNotLike(String value) {
            addCriterion("t.IR_CHARSET not like", value, "irCharset");
            return (Criteria) this;
        }

        public Criteria andIrCharsetIn(List<String> values) {
            addCriterion("t.IR_CHARSET in", values, "irCharset");
            return (Criteria) this;
        }

        public Criteria andIrCharsetNotIn(List<String> values) {
            addCriterion("t.IR_CHARSET not in", values, "irCharset");
            return (Criteria) this;
        }

        public Criteria andIrCharsetBetween(String value1, String value2) {
            addCriterion("t.IR_CHARSET between", value1, value2, "irCharset");
            return (Criteria) this;
        }

        public Criteria andIrCharsetNotBetween(String value1, String value2) {
            addCriterion("t.IR_CHARSET not between", value1, value2, "irCharset");
            return (Criteria) this;
        }

        public Criteria andIrUrlsizeIsNull() {
            addCriterion("t.IR_URLSIZE is null");
            return (Criteria) this;
        }

        public Criteria andIrUrlsizeIsNotNull() {
            addCriterion("t.IR_URLSIZE is not null");
            return (Criteria) this;
        }

        public Criteria andIrUrlsizeEqualTo(Integer value) {
            addCriterion("t.IR_URLSIZE =", value, "irUrlsize");
            return (Criteria) this;
        }

        public Criteria andIrUrlsizeNotEqualTo(Integer value) {
            addCriterion("t.IR_URLSIZE <>", value, "irUrlsize");
            return (Criteria) this;
        }

        public Criteria andIrUrlsizeGreaterThan(Integer value) {
            addCriterion("t.IR_URLSIZE >", value, "irUrlsize");
            return (Criteria) this;
        }

        public Criteria andIrUrlsizeGreaterThanOrEqualTo(Integer value) {
            addCriterion("t.IR_URLSIZE >=", value, "irUrlsize");
            return (Criteria) this;
        }

        public Criteria andIrUrlsizeLessThan(Integer value) {
            addCriterion("t.IR_URLSIZE <", value, "irUrlsize");
            return (Criteria) this;
        }

        public Criteria andIrUrlsizeLessThanOrEqualTo(Integer value) {
            addCriterion("t.IR_URLSIZE <=", value, "irUrlsize");
            return (Criteria) this;
        }

        public Criteria andIrUrlsizeIn(List<Integer> values) {
            addCriterion("t.IR_URLSIZE in", values, "irUrlsize");
            return (Criteria) this;
        }

        public Criteria andIrUrlsizeNotIn(List<Integer> values) {
            addCriterion("t.IR_URLSIZE not in", values, "irUrlsize");
            return (Criteria) this;
        }

        public Criteria andIrUrlsizeBetween(Integer value1, Integer value2) {
            addCriterion("t.IR_URLSIZE between", value1, value2, "irUrlsize");
            return (Criteria) this;
        }

        public Criteria andIrUrlsizeNotBetween(Integer value1, Integer value2) {
            addCriterion("t.IR_URLSIZE not between", value1, value2, "irUrlsize");
            return (Criteria) this;
        }

        public Criteria andIrWcmidIsNull() {
            addCriterion("t.IR_WCMID is null");
            return (Criteria) this;
        }

        public Criteria andIrWcmidIsNotNull() {
            addCriterion("t.IR_WCMID is not null");
            return (Criteria) this;
        }

        public Criteria andIrWcmidEqualTo(Integer value) {
            addCriterion("t.IR_WCMID =", value, "irWcmid");
            return (Criteria) this;
        }

        public Criteria andIrWcmidNotEqualTo(Integer value) {
            addCriterion("t.IR_WCMID <>", value, "irWcmid");
            return (Criteria) this;
        }

        public Criteria andIrWcmidGreaterThan(Integer value) {
            addCriterion("t.IR_WCMID >", value, "irWcmid");
            return (Criteria) this;
        }

        public Criteria andIrWcmidGreaterThanOrEqualTo(Integer value) {
            addCriterion("t.IR_WCMID >=", value, "irWcmid");
            return (Criteria) this;
        }

        public Criteria andIrWcmidLessThan(Integer value) {
            addCriterion("t.IR_WCMID <", value, "irWcmid");
            return (Criteria) this;
        }

        public Criteria andIrWcmidLessThanOrEqualTo(Integer value) {
            addCriterion("t.IR_WCMID <=", value, "irWcmid");
            return (Criteria) this;
        }

        public Criteria andIrWcmidIn(List<Integer> values) {
            addCriterion("t.IR_WCMID in", values, "irWcmid");
            return (Criteria) this;
        }

        public Criteria andIrWcmidNotIn(List<Integer> values) {
            addCriterion("t.IR_WCMID not in", values, "irWcmid");
            return (Criteria) this;
        }

        public Criteria andIrWcmidBetween(Integer value1, Integer value2) {
            addCriterion("t.IR_WCMID between", value1, value2, "irWcmid");
            return (Criteria) this;
        }

        public Criteria andIrWcmidNotBetween(Integer value1, Integer value2) {
            addCriterion("t.IR_WCMID not between", value1, value2, "irWcmid");
            return (Criteria) this;
        }

        public Criteria andIrStatusIsNull() {
            addCriterion("t.IR_STATUS is null");
            return (Criteria) this;
        }

        public Criteria andIrStatusIsNotNull() {
            addCriterion("t.IR_STATUS is not null");
            return (Criteria) this;
        }

        public Criteria andIrStatusEqualTo(Byte value) {
            addCriterion("t.IR_STATUS =", value, "irStatus");
            return (Criteria) this;
        }

        public Criteria andIrStatusNotEqualTo(Byte value) {
            addCriterion("t.IR_STATUS <>", value, "irStatus");
            return (Criteria) this;
        }

        public Criteria andIrStatusGreaterThan(Byte value) {
            addCriterion("t.IR_STATUS >", value, "irStatus");
            return (Criteria) this;
        }

        public Criteria andIrStatusGreaterThanOrEqualTo(Byte value) {
            addCriterion("t.IR_STATUS >=", value, "irStatus");
            return (Criteria) this;
        }

        public Criteria andIrStatusLessThan(Byte value) {
            addCriterion("t.IR_STATUS <", value, "irStatus");
            return (Criteria) this;
        }

        public Criteria andIrStatusLessThanOrEqualTo(Byte value) {
            addCriterion("t.IR_STATUS <=", value, "irStatus");
            return (Criteria) this;
        }

        public Criteria andIrStatusIn(List<Byte> values) {
            addCriterion("t.IR_STATUS in", values, "irStatus");
            return (Criteria) this;
        }

        public Criteria andIrStatusNotIn(List<Byte> values) {
            addCriterion("t.IR_STATUS not in", values, "irStatus");
            return (Criteria) this;
        }

        public Criteria andIrStatusBetween(Byte value1, Byte value2) {
            addCriterion("t.IR_STATUS between", value1, value2, "irStatus");
            return (Criteria) this;
        }

        public Criteria andIrStatusNotBetween(Byte value1, Byte value2) {
            addCriterion("t.IR_STATUS not between", value1, value2, "irStatus");
            return (Criteria) this;
        }

        public Criteria andIrNreserved1IsNull() {
            addCriterion("t.IR_NRESERVED1 is null");
            return (Criteria) this;
        }

        public Criteria andIrNreserved1IsNotNull() {
            addCriterion("t.IR_NRESERVED1 is not null");
            return (Criteria) this;
        }

        public Criteria andIrNreserved1EqualTo(Integer value) {
            addCriterion("t.IR_NRESERVED1 =", value, "irNreserved1");
            return (Criteria) this;
        }

        public Criteria andIrNreserved1NotEqualTo(Integer value) {
            addCriterion("t.IR_NRESERVED1 <>", value, "irNreserved1");
            return (Criteria) this;
        }

        public Criteria andIrNreserved1GreaterThan(Integer value) {
            addCriterion("t.IR_NRESERVED1 >", value, "irNreserved1");
            return (Criteria) this;
        }

        public Criteria andIrNreserved1GreaterThanOrEqualTo(Integer value) {
            addCriterion("t.IR_NRESERVED1 >=", value, "irNreserved1");
            return (Criteria) this;
        }

        public Criteria andIrNreserved1LessThan(Integer value) {
            addCriterion("t.IR_NRESERVED1 <", value, "irNreserved1");
            return (Criteria) this;
        }

        public Criteria andIrNreserved1LessThanOrEqualTo(Integer value) {
            addCriterion("t.IR_NRESERVED1 <=", value, "irNreserved1");
            return (Criteria) this;
        }

        public Criteria andIrNreserved1In(List<Integer> values) {
            addCriterion("t.IR_NRESERVED1 in", values, "irNreserved1");
            return (Criteria) this;
        }

        public Criteria andIrNreserved1NotIn(List<Integer> values) {
            addCriterion("t.IR_NRESERVED1 not in", values, "irNreserved1");
            return (Criteria) this;
        }

        public Criteria andIrNreserved1Between(Integer value1, Integer value2) {
            addCriterion("t.IR_NRESERVED1 between", value1, value2, "irNreserved1");
            return (Criteria) this;
        }

        public Criteria andIrNreserved1NotBetween(Integer value1, Integer value2) {
            addCriterion("t.IR_NRESERVED1 not between", value1, value2, "irNreserved1");
            return (Criteria) this;
        }

        public Criteria andIrNreserved2IsNull() {
            addCriterion("t.IR_NRESERVED2 is null");
            return (Criteria) this;
        }

        public Criteria andIrNreserved2IsNotNull() {
            addCriterion("t.IR_NRESERVED2 is not null");
            return (Criteria) this;
        }

        public Criteria andIrNreserved2EqualTo(Integer value) {
            addCriterion("t.IR_NRESERVED2 =", value, "irNreserved2");
            return (Criteria) this;
        }

        public Criteria andIrNreserved2NotEqualTo(Integer value) {
            addCriterion("t.IR_NRESERVED2 <>", value, "irNreserved2");
            return (Criteria) this;
        }

        public Criteria andIrNreserved2GreaterThan(Integer value) {
            addCriterion("t.IR_NRESERVED2 >", value, "irNreserved2");
            return (Criteria) this;
        }

        public Criteria andIrNreserved2GreaterThanOrEqualTo(Integer value) {
            addCriterion("t.IR_NRESERVED2 >=", value, "irNreserved2");
            return (Criteria) this;
        }

        public Criteria andIrNreserved2LessThan(Integer value) {
            addCriterion("t.IR_NRESERVED2 <", value, "irNreserved2");
            return (Criteria) this;
        }

        public Criteria andIrNreserved2LessThanOrEqualTo(Integer value) {
            addCriterion("t.IR_NRESERVED2 <=", value, "irNreserved2");
            return (Criteria) this;
        }

        public Criteria andIrNreserved2In(List<Integer> values) {
            addCriterion("t.IR_NRESERVED2 in", values, "irNreserved2");
            return (Criteria) this;
        }

        public Criteria andIrNreserved2NotIn(List<Integer> values) {
            addCriterion("t.IR_NRESERVED2 not in", values, "irNreserved2");
            return (Criteria) this;
        }

        public Criteria andIrNreserved2Between(Integer value1, Integer value2) {
            addCriterion("t.IR_NRESERVED2 between", value1, value2, "irNreserved2");
            return (Criteria) this;
        }

        public Criteria andIrNreserved2NotBetween(Integer value1, Integer value2) {
            addCriterion("t.IR_NRESERVED2 not between", value1, value2, "irNreserved2");
            return (Criteria) this;
        }

        public Criteria andIrNreserved3IsNull() {
            addCriterion("t.IR_NRESERVED3 is null");
            return (Criteria) this;
        }

        public Criteria andIrNreserved3IsNotNull() {
            addCriterion("t.IR_NRESERVED3 is not null");
            return (Criteria) this;
        }

        public Criteria andIrNreserved3EqualTo(Integer value) {
            addCriterion("t.IR_NRESERVED3 =", value, "irNreserved3");
            return (Criteria) this;
        }

        public Criteria andIrNreserved3NotEqualTo(Integer value) {
            addCriterion("t.IR_NRESERVED3 <>", value, "irNreserved3");
            return (Criteria) this;
        }

        public Criteria andIrNreserved3GreaterThan(Integer value) {
            addCriterion("t.IR_NRESERVED3 >", value, "irNreserved3");
            return (Criteria) this;
        }

        public Criteria andIrNreserved3GreaterThanOrEqualTo(Integer value) {
            addCriterion("t.IR_NRESERVED3 >=", value, "irNreserved3");
            return (Criteria) this;
        }

        public Criteria andIrNreserved3LessThan(Integer value) {
            addCriterion("t.IR_NRESERVED3 <", value, "irNreserved3");
            return (Criteria) this;
        }

        public Criteria andIrNreserved3LessThanOrEqualTo(Integer value) {
            addCriterion("t.IR_NRESERVED3 <=", value, "irNreserved3");
            return (Criteria) this;
        }

        public Criteria andIrNreserved3In(List<Integer> values) {
            addCriterion("t.IR_NRESERVED3 in", values, "irNreserved3");
            return (Criteria) this;
        }

        public Criteria andIrNreserved3NotIn(List<Integer> values) {
            addCriterion("t.IR_NRESERVED3 not in", values, "irNreserved3");
            return (Criteria) this;
        }

        public Criteria andIrNreserved3Between(Integer value1, Integer value2) {
            addCriterion("t.IR_NRESERVED3 between", value1, value2, "irNreserved3");
            return (Criteria) this;
        }

        public Criteria andIrNreserved3NotBetween(Integer value1, Integer value2) {
            addCriterion("t.IR_NRESERVED3 not between", value1, value2, "irNreserved3");
            return (Criteria) this;
        }

        public Criteria andIrVreserved1IsNull() {
            addCriterion("t.IR_VRESERVED1 is null");
            return (Criteria) this;
        }

        public Criteria andIrVreserved1IsNotNull() {
            addCriterion("t.IR_VRESERVED1 is not null");
            return (Criteria) this;
        }

        public Criteria andIrVreserved1EqualTo(String value) {
            addCriterion("t.IR_VRESERVED1 =", value, "irVreserved1");
            return (Criteria) this;
        }

        public Criteria andIrVreserved1NotEqualTo(String value) {
            addCriterion("t.IR_VRESERVED1 <>", value, "irVreserved1");
            return (Criteria) this;
        }

        public Criteria andIrVreserved1GreaterThan(String value) {
            addCriterion("t.IR_VRESERVED1 >", value, "irVreserved1");
            return (Criteria) this;
        }

        public Criteria andIrVreserved1GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_VRESERVED1 >=", value, "irVreserved1");
            return (Criteria) this;
        }

        public Criteria andIrVreserved1LessThan(String value) {
            addCriterion("t.IR_VRESERVED1 <", value, "irVreserved1");
            return (Criteria) this;
        }

        public Criteria andIrVreserved1LessThanOrEqualTo(String value) {
            addCriterion("t.IR_VRESERVED1 <=", value, "irVreserved1");
            return (Criteria) this;
        }

        public Criteria andIrVreserved1Like(String value) {
            addCriterion("t.IR_VRESERVED1 like", value, "irVreserved1");
            return (Criteria) this;
        }

        public Criteria andIrVreserved1NotLike(String value) {
            addCriterion("t.IR_VRESERVED1 not like", value, "irVreserved1");
            return (Criteria) this;
        }

        public Criteria andIrVreserved1In(List<String> values) {
            addCriterion("t.IR_VRESERVED1 in", values, "irVreserved1");
            return (Criteria) this;
        }

        public Criteria andIrVreserved1NotIn(List<String> values) {
            addCriterion("t.IR_VRESERVED1 not in", values, "irVreserved1");
            return (Criteria) this;
        }

        public Criteria andIrVreserved1Between(String value1, String value2) {
            addCriterion("t.IR_VRESERVED1 between", value1, value2, "irVreserved1");
            return (Criteria) this;
        }

        public Criteria andIrVreserved1NotBetween(String value1, String value2) {
            addCriterion("t.IR_VRESERVED1 not between", value1, value2, "irVreserved1");
            return (Criteria) this;
        }

        public Criteria andIrVreserved2IsNull() {
            addCriterion("t.IR_VRESERVED2 is null");
            return (Criteria) this;
        }

        public Criteria andIrVreserved2IsNotNull() {
            addCriterion("t.IR_VRESERVED2 is not null");
            return (Criteria) this;
        }

        public Criteria andIrVreserved2EqualTo(String value) {
            addCriterion("t.IR_VRESERVED2 =", value, "irVreserved2");
            return (Criteria) this;
        }

        public Criteria andIrVreserved2NotEqualTo(String value) {
            addCriterion("t.IR_VRESERVED2 <>", value, "irVreserved2");
            return (Criteria) this;
        }

        public Criteria andIrVreserved2GreaterThan(String value) {
            addCriterion("t.IR_VRESERVED2 >", value, "irVreserved2");
            return (Criteria) this;
        }

        public Criteria andIrVreserved2GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_VRESERVED2 >=", value, "irVreserved2");
            return (Criteria) this;
        }

        public Criteria andIrVreserved2LessThan(String value) {
            addCriterion("t.IR_VRESERVED2 <", value, "irVreserved2");
            return (Criteria) this;
        }

        public Criteria andIrVreserved2LessThanOrEqualTo(String value) {
            addCriterion("t.IR_VRESERVED2 <=", value, "irVreserved2");
            return (Criteria) this;
        }

        public Criteria andIrVreserved2Like(String value) {
            addCriterion("t.IR_VRESERVED2 like", value, "irVreserved2");
            return (Criteria) this;
        }

        public Criteria andIrVreserved2NotLike(String value) {
            addCriterion("t.IR_VRESERVED2 not like", value, "irVreserved2");
            return (Criteria) this;
        }

        public Criteria andIrVreserved2In(List<String> values) {
            addCriterion("t.IR_VRESERVED2 in", values, "irVreserved2");
            return (Criteria) this;
        }

        public Criteria andIrVreserved2NotIn(List<String> values) {
            addCriterion("t.IR_VRESERVED2 not in", values, "irVreserved2");
            return (Criteria) this;
        }

        public Criteria andIrVreserved2Between(String value1, String value2) {
            addCriterion("t.IR_VRESERVED2 between", value1, value2, "irVreserved2");
            return (Criteria) this;
        }

        public Criteria andIrVreserved2NotBetween(String value1, String value2) {
            addCriterion("t.IR_VRESERVED2 not between", value1, value2, "irVreserved2");
            return (Criteria) this;
        }

        public Criteria andIrVreserved3IsNull() {
            addCriterion("t.IR_VRESERVED3 is null");
            return (Criteria) this;
        }

        public Criteria andIrVreserved3IsNotNull() {
            addCriterion("t.IR_VRESERVED3 is not null");
            return (Criteria) this;
        }

        public Criteria andIrVreserved3EqualTo(String value) {
            addCriterion("t.IR_VRESERVED3 =", value, "irVreserved3");
            return (Criteria) this;
        }

        public Criteria andIrVreserved3NotEqualTo(String value) {
            addCriterion("t.IR_VRESERVED3 <>", value, "irVreserved3");
            return (Criteria) this;
        }

        public Criteria andIrVreserved3GreaterThan(String value) {
            addCriterion("t.IR_VRESERVED3 >", value, "irVreserved3");
            return (Criteria) this;
        }

        public Criteria andIrVreserved3GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_VRESERVED3 >=", value, "irVreserved3");
            return (Criteria) this;
        }

        public Criteria andIrVreserved3LessThan(String value) {
            addCriterion("t.IR_VRESERVED3 <", value, "irVreserved3");
            return (Criteria) this;
        }

        public Criteria andIrVreserved3LessThanOrEqualTo(String value) {
            addCriterion("t.IR_VRESERVED3 <=", value, "irVreserved3");
            return (Criteria) this;
        }

        public Criteria andIrVreserved3Like(String value) {
            addCriterion("t.IR_VRESERVED3 like", value, "irVreserved3");
            return (Criteria) this;
        }

        public Criteria andIrVreserved3NotLike(String value) {
            addCriterion("t.IR_VRESERVED3 not like", value, "irVreserved3");
            return (Criteria) this;
        }

        public Criteria andIrVreserved3In(List<String> values) {
            addCriterion("t.IR_VRESERVED3 in", values, "irVreserved3");
            return (Criteria) this;
        }

        public Criteria andIrVreserved3NotIn(List<String> values) {
            addCriterion("t.IR_VRESERVED3 not in", values, "irVreserved3");
            return (Criteria) this;
        }

        public Criteria andIrVreserved3Between(String value1, String value2) {
            addCriterion("t.IR_VRESERVED3 between", value1, value2, "irVreserved3");
            return (Criteria) this;
        }

        public Criteria andIrVreserved3NotBetween(String value1, String value2) {
            addCriterion("t.IR_VRESERVED3 not between", value1, value2, "irVreserved3");
            return (Criteria) this;
        }

        public Criteria andIrVreserved4IsNull() {
            addCriterion("t.IR_VRESERVED4 is null");
            return (Criteria) this;
        }

        public Criteria andIrVreserved4IsNotNull() {
            addCriterion("t.IR_VRESERVED4 is not null");
            return (Criteria) this;
        }

        public Criteria andIrVreserved4EqualTo(String value) {
            addCriterion("t.IR_VRESERVED4 =", value, "irVreserved4");
            return (Criteria) this;
        }

        public Criteria andIrVreserved4NotEqualTo(String value) {
            addCriterion("t.IR_VRESERVED4 <>", value, "irVreserved4");
            return (Criteria) this;
        }

        public Criteria andIrVreserved4GreaterThan(String value) {
            addCriterion("t.IR_VRESERVED4 >", value, "irVreserved4");
            return (Criteria) this;
        }

        public Criteria andIrVreserved4GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_VRESERVED4 >=", value, "irVreserved4");
            return (Criteria) this;
        }

        public Criteria andIrVreserved4LessThan(String value) {
            addCriterion("t.IR_VRESERVED4 <", value, "irVreserved4");
            return (Criteria) this;
        }

        public Criteria andIrVreserved4LessThanOrEqualTo(String value) {
            addCriterion("t.IR_VRESERVED4 <=", value, "irVreserved4");
            return (Criteria) this;
        }

        public Criteria andIrVreserved4Like(String value) {
            addCriterion("t.IR_VRESERVED4 like", value, "irVreserved4");
            return (Criteria) this;
        }

        public Criteria andIrVreserved4NotLike(String value) {
            addCriterion("t.IR_VRESERVED4 not like", value, "irVreserved4");
            return (Criteria) this;
        }

        public Criteria andIrVreserved4In(List<String> values) {
            addCriterion("t.IR_VRESERVED4 in", values, "irVreserved4");
            return (Criteria) this;
        }

        public Criteria andIrVreserved4NotIn(List<String> values) {
            addCriterion("t.IR_VRESERVED4 not in", values, "irVreserved4");
            return (Criteria) this;
        }

        public Criteria andIrVreserved4Between(String value1, String value2) {
            addCriterion("t.IR_VRESERVED4 between", value1, value2, "irVreserved4");
            return (Criteria) this;
        }

        public Criteria andIrVreserved4NotBetween(String value1, String value2) {
            addCriterion("t.IR_VRESERVED4 not between", value1, value2, "irVreserved4");
            return (Criteria) this;
        }

        public Criteria andIrSreserved1IsNull() {
            addCriterion("t.IR_SRESERVED1 is null");
            return (Criteria) this;
        }

        public Criteria andIrSreserved1IsNotNull() {
            addCriterion("t.IR_SRESERVED1 is not null");
            return (Criteria) this;
        }

        public Criteria andIrSreserved1EqualTo(String value) {
            addCriterion("t.IR_SRESERVED1 =", value, "irSreserved1");
            return (Criteria) this;
        }

        public Criteria andIrSreserved1NotEqualTo(String value) {
            addCriterion("t.IR_SRESERVED1 <>", value, "irSreserved1");
            return (Criteria) this;
        }

        public Criteria andIrSreserved1GreaterThan(String value) {
            addCriterion("t.IR_SRESERVED1 >", value, "irSreserved1");
            return (Criteria) this;
        }

        public Criteria andIrSreserved1GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_SRESERVED1 >=", value, "irSreserved1");
            return (Criteria) this;
        }

        public Criteria andIrSreserved1LessThan(String value) {
            addCriterion("t.IR_SRESERVED1 <", value, "irSreserved1");
            return (Criteria) this;
        }

        public Criteria andIrSreserved1LessThanOrEqualTo(String value) {
            addCriterion("t.IR_SRESERVED1 <=", value, "irSreserved1");
            return (Criteria) this;
        }

        public Criteria andIrSreserved1Like(String value) {
            addCriterion("t.IR_SRESERVED1 like", value, "irSreserved1");
            return (Criteria) this;
        }

        public Criteria andIrSreserved1NotLike(String value) {
            addCriterion("t.IR_SRESERVED1 not like", value, "irSreserved1");
            return (Criteria) this;
        }

        public Criteria andIrSreserved1In(List<String> values) {
            addCriterion("t.IR_SRESERVED1 in", values, "irSreserved1");
            return (Criteria) this;
        }

        public Criteria andIrSreserved1NotIn(List<String> values) {
            addCriterion("t.IR_SRESERVED1 not in", values, "irSreserved1");
            return (Criteria) this;
        }

        public Criteria andIrSreserved1Between(String value1, String value2) {
            addCriterion("t.IR_SRESERVED1 between", value1, value2, "irSreserved1");
            return (Criteria) this;
        }

        public Criteria andIrSreserved1NotBetween(String value1, String value2) {
            addCriterion("t.IR_SRESERVED1 not between", value1, value2, "irSreserved1");
            return (Criteria) this;
        }

        public Criteria andIrSreserved2IsNull() {
            addCriterion("t.IR_SRESERVED2 is null");
            return (Criteria) this;
        }

        public Criteria andIrSreserved2IsNotNull() {
            addCriterion("t.IR_SRESERVED2 is not null");
            return (Criteria) this;
        }

        public Criteria andIrSreserved2EqualTo(String value) {
            addCriterion("t.IR_SRESERVED2 =", value, "irSreserved2");
            return (Criteria) this;
        }

        public Criteria andIrSreserved2NotEqualTo(String value) {
            addCriterion("t.IR_SRESERVED2 <>", value, "irSreserved2");
            return (Criteria) this;
        }

        public Criteria andIrSreserved2GreaterThan(String value) {
            addCriterion("t.IR_SRESERVED2 >", value, "irSreserved2");
            return (Criteria) this;
        }

        public Criteria andIrSreserved2GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_SRESERVED2 >=", value, "irSreserved2");
            return (Criteria) this;
        }

        public Criteria andIrSreserved2LessThan(String value) {
            addCriterion("t.IR_SRESERVED2 <", value, "irSreserved2");
            return (Criteria) this;
        }

        public Criteria andIrSreserved2LessThanOrEqualTo(String value) {
            addCriterion("t.IR_SRESERVED2 <=", value, "irSreserved2");
            return (Criteria) this;
        }

        public Criteria andIrSreserved2Like(String value) {
            addCriterion("t.IR_SRESERVED2 like", value, "irSreserved2");
            return (Criteria) this;
        }

        public Criteria andIrSreserved2NotLike(String value) {
            addCriterion("t.IR_SRESERVED2 not like", value, "irSreserved2");
            return (Criteria) this;
        }

        public Criteria andIrSreserved2In(List<String> values) {
            addCriterion("t.IR_SRESERVED2 in", values, "irSreserved2");
            return (Criteria) this;
        }

        public Criteria andIrSreserved2NotIn(List<String> values) {
            addCriterion("t.IR_SRESERVED2 not in", values, "irSreserved2");
            return (Criteria) this;
        }

        public Criteria andIrSreserved2Between(String value1, String value2) {
            addCriterion("t.IR_SRESERVED2 between", value1, value2, "irSreserved2");
            return (Criteria) this;
        }

        public Criteria andIrSreserved2NotBetween(String value1, String value2) {
            addCriterion("t.IR_SRESERVED2 not between", value1, value2, "irSreserved2");
            return (Criteria) this;
        }

        public Criteria andIrSreserved3IsNull() {
            addCriterion("t.IR_SRESERVED3 is null");
            return (Criteria) this;
        }

        public Criteria andIrSreserved3IsNotNull() {
            addCriterion("t.IR_SRESERVED3 is not null");
            return (Criteria) this;
        }

        public Criteria andIrSreserved3EqualTo(String value) {
            addCriterion("t.IR_SRESERVED3 =", value, "irSreserved3");
            return (Criteria) this;
        }

        public Criteria andIrSreserved3NotEqualTo(String value) {
            addCriterion("t.IR_SRESERVED3 <>", value, "irSreserved3");
            return (Criteria) this;
        }

        public Criteria andIrSreserved3GreaterThan(String value) {
            addCriterion("t.IR_SRESERVED3 >", value, "irSreserved3");
            return (Criteria) this;
        }

        public Criteria andIrSreserved3GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_SRESERVED3 >=", value, "irSreserved3");
            return (Criteria) this;
        }

        public Criteria andIrSreserved3LessThan(String value) {
            addCriterion("t.IR_SRESERVED3 <", value, "irSreserved3");
            return (Criteria) this;
        }

        public Criteria andIrSreserved3LessThanOrEqualTo(String value) {
            addCriterion("t.IR_SRESERVED3 <=", value, "irSreserved3");
            return (Criteria) this;
        }

        public Criteria andIrSreserved3Like(String value) {
            addCriterion("t.IR_SRESERVED3 like", value, "irSreserved3");
            return (Criteria) this;
        }

        public Criteria andIrSreserved3NotLike(String value) {
            addCriterion("t.IR_SRESERVED3 not like", value, "irSreserved3");
            return (Criteria) this;
        }

        public Criteria andIrSreserved3In(List<String> values) {
            addCriterion("t.IR_SRESERVED3 in", values, "irSreserved3");
            return (Criteria) this;
        }

        public Criteria andIrSreserved3NotIn(List<String> values) {
            addCriterion("t.IR_SRESERVED3 not in", values, "irSreserved3");
            return (Criteria) this;
        }

        public Criteria andIrSreserved3Between(String value1, String value2) {
            addCriterion("t.IR_SRESERVED3 between", value1, value2, "irSreserved3");
            return (Criteria) this;
        }

        public Criteria andIrSreserved3NotBetween(String value1, String value2) {
            addCriterion("t.IR_SRESERVED3 not between", value1, value2, "irSreserved3");
            return (Criteria) this;
        }

        public Criteria andIrHkeyLikeInsensitive(String value) {
            addCriterion("upper(t.IR_HKEY) like", value.toUpperCase(), "irHkey");
            return (Criteria) this;
        }

        public Criteria andIrServiceidLikeInsensitive(String value) {
            addCriterion("upper(t.IR_SERVICEID) like", value.toUpperCase(), "irServiceid");
            return (Criteria) this;
        }

        public Criteria andIrPkeyLikeInsensitive(String value) {
            addCriterion("upper(t.IR_PKEY) like", value.toUpperCase(), "irPkey");
            return (Criteria) this;
        }

        public Criteria andIrUrlnameLikeInsensitive(String value) {
            addCriterion("upper(t.IR_URLNAME) like", value.toUpperCase(), "irUrlname");
            return (Criteria) this;
        }

        public Criteria andIrExtnameLikeInsensitive(String value) {
            addCriterion("upper(t.IR_EXTNAME) like", value.toUpperCase(), "irExtname");
            return (Criteria) this;
        }

        public Criteria andIrSitenameLikeInsensitive(String value) {
            addCriterion("upper(t.IR_SITENAME) like", value.toUpperCase(), "irSitename");
            return (Criteria) this;
        }

        public Criteria andIrChannelLikeInsensitive(String value) {
            addCriterion("upper(t.IR_CHANNEL) like", value.toUpperCase(), "irChannel");
            return (Criteria) this;
        }

        public Criteria andIrGroupnameLikeInsensitive(String value) {
            addCriterion("upper(t.IR_GROUPNAME) like", value.toUpperCase(), "irGroupname");
            return (Criteria) this;
        }

        public Criteria andIrUrltitleLikeInsensitive(String value) {
            addCriterion("upper(t.IR_URLTITLE) like", value.toUpperCase(), "irUrltitle");
            return (Criteria) this;
        }

        public Criteria andIrUrltopicLikeInsensitive(String value) {
            addCriterion("upper(t.IR_URLTOPIC) like", value.toUpperCase(), "irUrltopic");
            return (Criteria) this;
        }

        public Criteria andIrSrcnameLikeInsensitive(String value) {
            addCriterion("upper(t.IR_SRCNAME) like", value.toUpperCase(), "irSrcname");
            return (Criteria) this;
        }

        public Criteria andIrAuthorsLikeInsensitive(String value) {
            addCriterion("upper(t.IR_AUTHORS) like", value.toUpperCase(), "irAuthors");
            return (Criteria) this;
        }

        public Criteria andIrDistrictLikeInsensitive(String value) {
            addCriterion("upper(t.IR_DISTRICT) like", value.toUpperCase(), "irDistrict");
            return (Criteria) this;
        }

        public Criteria andIrCatalogLikeInsensitive(String value) {
            addCriterion("upper(t.IR_CATALOG) like", value.toUpperCase(), "irCatalog");
            return (Criteria) this;
        }

        public Criteria andIrCatalog1LikeInsensitive(String value) {
            addCriterion("upper(t.IR_CATALOG1) like", value.toUpperCase(), "irCatalog1");
            return (Criteria) this;
        }

        public Criteria andIrCatalog2LikeInsensitive(String value) {
            addCriterion("upper(t.IR_CATALOG2) like", value.toUpperCase(), "irCatalog2");
            return (Criteria) this;
        }

        public Criteria andIrKeywordsLikeInsensitive(String value) {
            addCriterion("upper(t.IR_KEYWORDS) like", value.toUpperCase(), "irKeywords");
            return (Criteria) this;
        }

        public Criteria andIrAbstractLikeInsensitive(String value) {
            addCriterion("upper(t.IR_ABSTRACT) like", value.toUpperCase(), "irAbstract");
            return (Criteria) this;
        }

        public Criteria andIrSimflagLikeInsensitive(String value) {
            addCriterion("upper(t.IR_SIMFLAG) like", value.toUpperCase(), "irSimflag");
            return (Criteria) this;
        }

        public Criteria andIrBbskeyLikeInsensitive(String value) {
            addCriterion("upper(t.IR_BBSKEY) like", value.toUpperCase(), "irBbskey");
            return (Criteria) this;
        }

        public Criteria andIrMimetypeLikeInsensitive(String value) {
            addCriterion("upper(t.IR_MIMETYPE) like", value.toUpperCase(), "irMimetype");
            return (Criteria) this;
        }

        public Criteria andIrFormatLikeInsensitive(String value) {
            addCriterion("upper(t.IR_FORMAT) like", value.toUpperCase(), "irFormat");
            return (Criteria) this;
        }

        public Criteria andIrCharsetLikeInsensitive(String value) {
            addCriterion("upper(t.IR_CHARSET) like", value.toUpperCase(), "irCharset");
            return (Criteria) this;
        }

        public Criteria andIrVreserved1LikeInsensitive(String value) {
            addCriterion("upper(t.IR_VRESERVED1) like", value.toUpperCase(), "irVreserved1");
            return (Criteria) this;
        }

        public Criteria andIrVreserved2LikeInsensitive(String value) {
            addCriterion("upper(t.IR_VRESERVED2) like", value.toUpperCase(), "irVreserved2");
            return (Criteria) this;
        }

        public Criteria andIrVreserved3LikeInsensitive(String value) {
            addCriterion("upper(t.IR_VRESERVED3) like", value.toUpperCase(), "irVreserved3");
            return (Criteria) this;
        }

        public Criteria andIrVreserved4LikeInsensitive(String value) {
            addCriterion("upper(t.IR_VRESERVED4) like", value.toUpperCase(), "irVreserved4");
            return (Criteria) this;
        }

        public Criteria andIrSreserved1LikeInsensitive(String value) {
            addCriterion("upper(t.IR_SRESERVED1) like", value.toUpperCase(), "irSreserved1");
            return (Criteria) this;
        }

        public Criteria andIrSreserved2LikeInsensitive(String value) {
            addCriterion("upper(t.IR_SRESERVED2) like", value.toUpperCase(), "irSreserved2");
            return (Criteria) this;
        }

        public Criteria andIrSreserved3LikeInsensitive(String value) {
            addCriterion("upper(t.IR_SRESERVED3) like", value.toUpperCase(), "irSreserved3");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}