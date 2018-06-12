package com.wine.model3;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class UrlconCriteria {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public UrlconCriteria() {
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

        public Criteria andIrInserttimeIsNull() {
            addCriterion("t.IR_INSERTTIME is null");
            return (Criteria) this;
        }

        public Criteria andIrInserttimeIsNotNull() {
            addCriterion("t.IR_INSERTTIME is not null");
            return (Criteria) this;
        }

        public Criteria andIrInserttimeEqualTo(Date value) {
            addCriterion("t.IR_INSERTTIME =", value, "irInserttime");
            return (Criteria) this;
        }

        public Criteria andIrInserttimeNotEqualTo(Date value) {
            addCriterion("t.IR_INSERTTIME <>", value, "irInserttime");
            return (Criteria) this;
        }

        public Criteria andIrInserttimeGreaterThan(Date value) {
            addCriterion("t.IR_INSERTTIME >", value, "irInserttime");
            return (Criteria) this;
        }

        public Criteria andIrInserttimeGreaterThanOrEqualTo(Date value) {
            addCriterion("t.IR_INSERTTIME >=", value, "irInserttime");
            return (Criteria) this;
        }

        public Criteria andIrInserttimeLessThan(Date value) {
            addCriterion("t.IR_INSERTTIME <", value, "irInserttime");
            return (Criteria) this;
        }

        public Criteria andIrInserttimeLessThanOrEqualTo(Date value) {
            addCriterion("t.IR_INSERTTIME <=", value, "irInserttime");
            return (Criteria) this;
        }

        public Criteria andIrInserttimeIn(List<Date> values) {
            addCriterion("t.IR_INSERTTIME in", values, "irInserttime");
            return (Criteria) this;
        }

        public Criteria andIrInserttimeNotIn(List<Date> values) {
            addCriterion("t.IR_INSERTTIME not in", values, "irInserttime");
            return (Criteria) this;
        }

        public Criteria andIrInserttimeBetween(Date value1, Date value2) {
            addCriterion("t.IR_INSERTTIME between", value1, value2, "irInserttime");
            return (Criteria) this;
        }

        public Criteria andIrInserttimeNotBetween(Date value1, Date value2) {
            addCriterion("t.IR_INSERTTIME not between", value1, value2, "irInserttime");
            return (Criteria) this;
        }

        public Criteria andIrReserved1IsNull() {
            addCriterion("t.IR_RESERVED1 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved1IsNotNull() {
            addCriterion("t.IR_RESERVED1 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved1EqualTo(String value) {
            addCriterion("t.IR_RESERVED1 =", value, "irReserved1");
            return (Criteria) this;
        }

        public Criteria andIrReserved1NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED1 <>", value, "irReserved1");
            return (Criteria) this;
        }

        public Criteria andIrReserved1GreaterThan(String value) {
            addCriterion("t.IR_RESERVED1 >", value, "irReserved1");
            return (Criteria) this;
        }

        public Criteria andIrReserved1GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED1 >=", value, "irReserved1");
            return (Criteria) this;
        }

        public Criteria andIrReserved1LessThan(String value) {
            addCriterion("t.IR_RESERVED1 <", value, "irReserved1");
            return (Criteria) this;
        }

        public Criteria andIrReserved1LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED1 <=", value, "irReserved1");
            return (Criteria) this;
        }

        public Criteria andIrReserved1Like(String value) {
            addCriterion("t.IR_RESERVED1 like", value, "irReserved1");
            return (Criteria) this;
        }

        public Criteria andIrReserved1NotLike(String value) {
            addCriterion("t.IR_RESERVED1 not like", value, "irReserved1");
            return (Criteria) this;
        }

        public Criteria andIrReserved1In(List<String> values) {
            addCriterion("t.IR_RESERVED1 in", values, "irReserved1");
            return (Criteria) this;
        }

        public Criteria andIrReserved1NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED1 not in", values, "irReserved1");
            return (Criteria) this;
        }

        public Criteria andIrReserved1Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED1 between", value1, value2, "irReserved1");
            return (Criteria) this;
        }

        public Criteria andIrReserved1NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED1 not between", value1, value2, "irReserved1");
            return (Criteria) this;
        }

        public Criteria andIrReserved2IsNull() {
            addCriterion("t.IR_RESERVED2 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved2IsNotNull() {
            addCriterion("t.IR_RESERVED2 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved2EqualTo(String value) {
            addCriterion("t.IR_RESERVED2 =", value, "irReserved2");
            return (Criteria) this;
        }

        public Criteria andIrReserved2NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED2 <>", value, "irReserved2");
            return (Criteria) this;
        }

        public Criteria andIrReserved2GreaterThan(String value) {
            addCriterion("t.IR_RESERVED2 >", value, "irReserved2");
            return (Criteria) this;
        }

        public Criteria andIrReserved2GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED2 >=", value, "irReserved2");
            return (Criteria) this;
        }

        public Criteria andIrReserved2LessThan(String value) {
            addCriterion("t.IR_RESERVED2 <", value, "irReserved2");
            return (Criteria) this;
        }

        public Criteria andIrReserved2LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED2 <=", value, "irReserved2");
            return (Criteria) this;
        }

        public Criteria andIrReserved2Like(String value) {
            addCriterion("t.IR_RESERVED2 like", value, "irReserved2");
            return (Criteria) this;
        }

        public Criteria andIrReserved2NotLike(String value) {
            addCriterion("t.IR_RESERVED2 not like", value, "irReserved2");
            return (Criteria) this;
        }

        public Criteria andIrReserved2In(List<String> values) {
            addCriterion("t.IR_RESERVED2 in", values, "irReserved2");
            return (Criteria) this;
        }

        public Criteria andIrReserved2NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED2 not in", values, "irReserved2");
            return (Criteria) this;
        }

        public Criteria andIrReserved2Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED2 between", value1, value2, "irReserved2");
            return (Criteria) this;
        }

        public Criteria andIrReserved2NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED2 not between", value1, value2, "irReserved2");
            return (Criteria) this;
        }

        public Criteria andIrReserved3IsNull() {
            addCriterion("t.IR_RESERVED3 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved3IsNotNull() {
            addCriterion("t.IR_RESERVED3 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved3EqualTo(String value) {
            addCriterion("t.IR_RESERVED3 =", value, "irReserved3");
            return (Criteria) this;
        }

        public Criteria andIrReserved3NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED3 <>", value, "irReserved3");
            return (Criteria) this;
        }

        public Criteria andIrReserved3GreaterThan(String value) {
            addCriterion("t.IR_RESERVED3 >", value, "irReserved3");
            return (Criteria) this;
        }

        public Criteria andIrReserved3GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED3 >=", value, "irReserved3");
            return (Criteria) this;
        }

        public Criteria andIrReserved3LessThan(String value) {
            addCriterion("t.IR_RESERVED3 <", value, "irReserved3");
            return (Criteria) this;
        }

        public Criteria andIrReserved3LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED3 <=", value, "irReserved3");
            return (Criteria) this;
        }

        public Criteria andIrReserved3Like(String value) {
            addCriterion("t.IR_RESERVED3 like", value, "irReserved3");
            return (Criteria) this;
        }

        public Criteria andIrReserved3NotLike(String value) {
            addCriterion("t.IR_RESERVED3 not like", value, "irReserved3");
            return (Criteria) this;
        }

        public Criteria andIrReserved3In(List<String> values) {
            addCriterion("t.IR_RESERVED3 in", values, "irReserved3");
            return (Criteria) this;
        }

        public Criteria andIrReserved3NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED3 not in", values, "irReserved3");
            return (Criteria) this;
        }

        public Criteria andIrReserved3Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED3 between", value1, value2, "irReserved3");
            return (Criteria) this;
        }

        public Criteria andIrReserved3NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED3 not between", value1, value2, "irReserved3");
            return (Criteria) this;
        }

        public Criteria andIrReserved4IsNull() {
            addCriterion("t.IR_RESERVED4 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved4IsNotNull() {
            addCriterion("t.IR_RESERVED4 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved4EqualTo(String value) {
            addCriterion("t.IR_RESERVED4 =", value, "irReserved4");
            return (Criteria) this;
        }

        public Criteria andIrReserved4NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED4 <>", value, "irReserved4");
            return (Criteria) this;
        }

        public Criteria andIrReserved4GreaterThan(String value) {
            addCriterion("t.IR_RESERVED4 >", value, "irReserved4");
            return (Criteria) this;
        }

        public Criteria andIrReserved4GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED4 >=", value, "irReserved4");
            return (Criteria) this;
        }

        public Criteria andIrReserved4LessThan(String value) {
            addCriterion("t.IR_RESERVED4 <", value, "irReserved4");
            return (Criteria) this;
        }

        public Criteria andIrReserved4LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED4 <=", value, "irReserved4");
            return (Criteria) this;
        }

        public Criteria andIrReserved4Like(String value) {
            addCriterion("t.IR_RESERVED4 like", value, "irReserved4");
            return (Criteria) this;
        }

        public Criteria andIrReserved4NotLike(String value) {
            addCriterion("t.IR_RESERVED4 not like", value, "irReserved4");
            return (Criteria) this;
        }

        public Criteria andIrReserved4In(List<String> values) {
            addCriterion("t.IR_RESERVED4 in", values, "irReserved4");
            return (Criteria) this;
        }

        public Criteria andIrReserved4NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED4 not in", values, "irReserved4");
            return (Criteria) this;
        }

        public Criteria andIrReserved4Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED4 between", value1, value2, "irReserved4");
            return (Criteria) this;
        }

        public Criteria andIrReserved4NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED4 not between", value1, value2, "irReserved4");
            return (Criteria) this;
        }

        public Criteria andIrReserved5IsNull() {
            addCriterion("t.IR_RESERVED5 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved5IsNotNull() {
            addCriterion("t.IR_RESERVED5 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved5EqualTo(String value) {
            addCriterion("t.IR_RESERVED5 =", value, "irReserved5");
            return (Criteria) this;
        }

        public Criteria andIrReserved5NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED5 <>", value, "irReserved5");
            return (Criteria) this;
        }

        public Criteria andIrReserved5GreaterThan(String value) {
            addCriterion("t.IR_RESERVED5 >", value, "irReserved5");
            return (Criteria) this;
        }

        public Criteria andIrReserved5GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED5 >=", value, "irReserved5");
            return (Criteria) this;
        }

        public Criteria andIrReserved5LessThan(String value) {
            addCriterion("t.IR_RESERVED5 <", value, "irReserved5");
            return (Criteria) this;
        }

        public Criteria andIrReserved5LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED5 <=", value, "irReserved5");
            return (Criteria) this;
        }

        public Criteria andIrReserved5Like(String value) {
            addCriterion("t.IR_RESERVED5 like", value, "irReserved5");
            return (Criteria) this;
        }

        public Criteria andIrReserved5NotLike(String value) {
            addCriterion("t.IR_RESERVED5 not like", value, "irReserved5");
            return (Criteria) this;
        }

        public Criteria andIrReserved5In(List<String> values) {
            addCriterion("t.IR_RESERVED5 in", values, "irReserved5");
            return (Criteria) this;
        }

        public Criteria andIrReserved5NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED5 not in", values, "irReserved5");
            return (Criteria) this;
        }

        public Criteria andIrReserved5Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED5 between", value1, value2, "irReserved5");
            return (Criteria) this;
        }

        public Criteria andIrReserved5NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED5 not between", value1, value2, "irReserved5");
            return (Criteria) this;
        }

        public Criteria andIrReserved6IsNull() {
            addCriterion("t.IR_RESERVED6 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved6IsNotNull() {
            addCriterion("t.IR_RESERVED6 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved6EqualTo(String value) {
            addCriterion("t.IR_RESERVED6 =", value, "irReserved6");
            return (Criteria) this;
        }

        public Criteria andIrReserved6NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED6 <>", value, "irReserved6");
            return (Criteria) this;
        }

        public Criteria andIrReserved6GreaterThan(String value) {
            addCriterion("t.IR_RESERVED6 >", value, "irReserved6");
            return (Criteria) this;
        }

        public Criteria andIrReserved6GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED6 >=", value, "irReserved6");
            return (Criteria) this;
        }

        public Criteria andIrReserved6LessThan(String value) {
            addCriterion("t.IR_RESERVED6 <", value, "irReserved6");
            return (Criteria) this;
        }

        public Criteria andIrReserved6LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED6 <=", value, "irReserved6");
            return (Criteria) this;
        }

        public Criteria andIrReserved6Like(String value) {
            addCriterion("t.IR_RESERVED6 like", value, "irReserved6");
            return (Criteria) this;
        }

        public Criteria andIrReserved6NotLike(String value) {
            addCriterion("t.IR_RESERVED6 not like", value, "irReserved6");
            return (Criteria) this;
        }

        public Criteria andIrReserved6In(List<String> values) {
            addCriterion("t.IR_RESERVED6 in", values, "irReserved6");
            return (Criteria) this;
        }

        public Criteria andIrReserved6NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED6 not in", values, "irReserved6");
            return (Criteria) this;
        }

        public Criteria andIrReserved6Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED6 between", value1, value2, "irReserved6");
            return (Criteria) this;
        }

        public Criteria andIrReserved6NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED6 not between", value1, value2, "irReserved6");
            return (Criteria) this;
        }

        public Criteria andIrReserved7IsNull() {
            addCriterion("t.IR_RESERVED7 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved7IsNotNull() {
            addCriterion("t.IR_RESERVED7 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved7EqualTo(String value) {
            addCriterion("t.IR_RESERVED7 =", value, "irReserved7");
            return (Criteria) this;
        }

        public Criteria andIrReserved7NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED7 <>", value, "irReserved7");
            return (Criteria) this;
        }

        public Criteria andIrReserved7GreaterThan(String value) {
            addCriterion("t.IR_RESERVED7 >", value, "irReserved7");
            return (Criteria) this;
        }

        public Criteria andIrReserved7GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED7 >=", value, "irReserved7");
            return (Criteria) this;
        }

        public Criteria andIrReserved7LessThan(String value) {
            addCriterion("t.IR_RESERVED7 <", value, "irReserved7");
            return (Criteria) this;
        }

        public Criteria andIrReserved7LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED7 <=", value, "irReserved7");
            return (Criteria) this;
        }

        public Criteria andIrReserved7Like(String value) {
            addCriterion("t.IR_RESERVED7 like", value, "irReserved7");
            return (Criteria) this;
        }

        public Criteria andIrReserved7NotLike(String value) {
            addCriterion("t.IR_RESERVED7 not like", value, "irReserved7");
            return (Criteria) this;
        }

        public Criteria andIrReserved7In(List<String> values) {
            addCriterion("t.IR_RESERVED7 in", values, "irReserved7");
            return (Criteria) this;
        }

        public Criteria andIrReserved7NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED7 not in", values, "irReserved7");
            return (Criteria) this;
        }

        public Criteria andIrReserved7Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED7 between", value1, value2, "irReserved7");
            return (Criteria) this;
        }

        public Criteria andIrReserved7NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED7 not between", value1, value2, "irReserved7");
            return (Criteria) this;
        }

        public Criteria andIrReserved8IsNull() {
            addCriterion("t.IR_RESERVED8 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved8IsNotNull() {
            addCriterion("t.IR_RESERVED8 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved8EqualTo(String value) {
            addCriterion("t.IR_RESERVED8 =", value, "irReserved8");
            return (Criteria) this;
        }

        public Criteria andIrReserved8NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED8 <>", value, "irReserved8");
            return (Criteria) this;
        }

        public Criteria andIrReserved8GreaterThan(String value) {
            addCriterion("t.IR_RESERVED8 >", value, "irReserved8");
            return (Criteria) this;
        }

        public Criteria andIrReserved8GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED8 >=", value, "irReserved8");
            return (Criteria) this;
        }

        public Criteria andIrReserved8LessThan(String value) {
            addCriterion("t.IR_RESERVED8 <", value, "irReserved8");
            return (Criteria) this;
        }

        public Criteria andIrReserved8LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED8 <=", value, "irReserved8");
            return (Criteria) this;
        }

        public Criteria andIrReserved8Like(String value) {
            addCriterion("t.IR_RESERVED8 like", value, "irReserved8");
            return (Criteria) this;
        }

        public Criteria andIrReserved8NotLike(String value) {
            addCriterion("t.IR_RESERVED8 not like", value, "irReserved8");
            return (Criteria) this;
        }

        public Criteria andIrReserved8In(List<String> values) {
            addCriterion("t.IR_RESERVED8 in", values, "irReserved8");
            return (Criteria) this;
        }

        public Criteria andIrReserved8NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED8 not in", values, "irReserved8");
            return (Criteria) this;
        }

        public Criteria andIrReserved8Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED8 between", value1, value2, "irReserved8");
            return (Criteria) this;
        }

        public Criteria andIrReserved8NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED8 not between", value1, value2, "irReserved8");
            return (Criteria) this;
        }

        public Criteria andIrReserved9IsNull() {
            addCriterion("t.IR_RESERVED9 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved9IsNotNull() {
            addCriterion("t.IR_RESERVED9 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved9EqualTo(String value) {
            addCriterion("t.IR_RESERVED9 =", value, "irReserved9");
            return (Criteria) this;
        }

        public Criteria andIrReserved9NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED9 <>", value, "irReserved9");
            return (Criteria) this;
        }

        public Criteria andIrReserved9GreaterThan(String value) {
            addCriterion("t.IR_RESERVED9 >", value, "irReserved9");
            return (Criteria) this;
        }

        public Criteria andIrReserved9GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED9 >=", value, "irReserved9");
            return (Criteria) this;
        }

        public Criteria andIrReserved9LessThan(String value) {
            addCriterion("t.IR_RESERVED9 <", value, "irReserved9");
            return (Criteria) this;
        }

        public Criteria andIrReserved9LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED9 <=", value, "irReserved9");
            return (Criteria) this;
        }

        public Criteria andIrReserved9Like(String value) {
            addCriterion("t.IR_RESERVED9 like", value, "irReserved9");
            return (Criteria) this;
        }

        public Criteria andIrReserved9NotLike(String value) {
            addCriterion("t.IR_RESERVED9 not like", value, "irReserved9");
            return (Criteria) this;
        }

        public Criteria andIrReserved9In(List<String> values) {
            addCriterion("t.IR_RESERVED9 in", values, "irReserved9");
            return (Criteria) this;
        }

        public Criteria andIrReserved9NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED9 not in", values, "irReserved9");
            return (Criteria) this;
        }

        public Criteria andIrReserved9Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED9 between", value1, value2, "irReserved9");
            return (Criteria) this;
        }

        public Criteria andIrReserved9NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED9 not between", value1, value2, "irReserved9");
            return (Criteria) this;
        }

        public Criteria andIrReserved10IsNull() {
            addCriterion("t.IR_RESERVED10 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved10IsNotNull() {
            addCriterion("t.IR_RESERVED10 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved10EqualTo(String value) {
            addCriterion("t.IR_RESERVED10 =", value, "irReserved10");
            return (Criteria) this;
        }

        public Criteria andIrReserved10NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED10 <>", value, "irReserved10");
            return (Criteria) this;
        }

        public Criteria andIrReserved10GreaterThan(String value) {
            addCriterion("t.IR_RESERVED10 >", value, "irReserved10");
            return (Criteria) this;
        }

        public Criteria andIrReserved10GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED10 >=", value, "irReserved10");
            return (Criteria) this;
        }

        public Criteria andIrReserved10LessThan(String value) {
            addCriterion("t.IR_RESERVED10 <", value, "irReserved10");
            return (Criteria) this;
        }

        public Criteria andIrReserved10LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED10 <=", value, "irReserved10");
            return (Criteria) this;
        }

        public Criteria andIrReserved10Like(String value) {
            addCriterion("t.IR_RESERVED10 like", value, "irReserved10");
            return (Criteria) this;
        }

        public Criteria andIrReserved10NotLike(String value) {
            addCriterion("t.IR_RESERVED10 not like", value, "irReserved10");
            return (Criteria) this;
        }

        public Criteria andIrReserved10In(List<String> values) {
            addCriterion("t.IR_RESERVED10 in", values, "irReserved10");
            return (Criteria) this;
        }

        public Criteria andIrReserved10NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED10 not in", values, "irReserved10");
            return (Criteria) this;
        }

        public Criteria andIrReserved10Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED10 between", value1, value2, "irReserved10");
            return (Criteria) this;
        }

        public Criteria andIrReserved10NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED10 not between", value1, value2, "irReserved10");
            return (Criteria) this;
        }

        public Criteria andIrReserved11IsNull() {
            addCriterion("t.IR_RESERVED11 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved11IsNotNull() {
            addCriterion("t.IR_RESERVED11 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved11EqualTo(String value) {
            addCriterion("t.IR_RESERVED11 =", value, "irReserved11");
            return (Criteria) this;
        }

        public Criteria andIrReserved11NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED11 <>", value, "irReserved11");
            return (Criteria) this;
        }

        public Criteria andIrReserved11GreaterThan(String value) {
            addCriterion("t.IR_RESERVED11 >", value, "irReserved11");
            return (Criteria) this;
        }

        public Criteria andIrReserved11GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED11 >=", value, "irReserved11");
            return (Criteria) this;
        }

        public Criteria andIrReserved11LessThan(String value) {
            addCriterion("t.IR_RESERVED11 <", value, "irReserved11");
            return (Criteria) this;
        }

        public Criteria andIrReserved11LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED11 <=", value, "irReserved11");
            return (Criteria) this;
        }

        public Criteria andIrReserved11Like(String value) {
            addCriterion("t.IR_RESERVED11 like", value, "irReserved11");
            return (Criteria) this;
        }

        public Criteria andIrReserved11NotLike(String value) {
            addCriterion("t.IR_RESERVED11 not like", value, "irReserved11");
            return (Criteria) this;
        }

        public Criteria andIrReserved11In(List<String> values) {
            addCriterion("t.IR_RESERVED11 in", values, "irReserved11");
            return (Criteria) this;
        }

        public Criteria andIrReserved11NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED11 not in", values, "irReserved11");
            return (Criteria) this;
        }

        public Criteria andIrReserved11Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED11 between", value1, value2, "irReserved11");
            return (Criteria) this;
        }

        public Criteria andIrReserved11NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED11 not between", value1, value2, "irReserved11");
            return (Criteria) this;
        }

        public Criteria andIrReserved12IsNull() {
            addCriterion("t.IR_RESERVED12 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved12IsNotNull() {
            addCriterion("t.IR_RESERVED12 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved12EqualTo(String value) {
            addCriterion("t.IR_RESERVED12 =", value, "irReserved12");
            return (Criteria) this;
        }

        public Criteria andIrReserved12NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED12 <>", value, "irReserved12");
            return (Criteria) this;
        }

        public Criteria andIrReserved12GreaterThan(String value) {
            addCriterion("t.IR_RESERVED12 >", value, "irReserved12");
            return (Criteria) this;
        }

        public Criteria andIrReserved12GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED12 >=", value, "irReserved12");
            return (Criteria) this;
        }

        public Criteria andIrReserved12LessThan(String value) {
            addCriterion("t.IR_RESERVED12 <", value, "irReserved12");
            return (Criteria) this;
        }

        public Criteria andIrReserved12LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED12 <=", value, "irReserved12");
            return (Criteria) this;
        }

        public Criteria andIrReserved12Like(String value) {
            addCriterion("t.IR_RESERVED12 like", value, "irReserved12");
            return (Criteria) this;
        }

        public Criteria andIrReserved12NotLike(String value) {
            addCriterion("t.IR_RESERVED12 not like", value, "irReserved12");
            return (Criteria) this;
        }

        public Criteria andIrReserved12In(List<String> values) {
            addCriterion("t.IR_RESERVED12 in", values, "irReserved12");
            return (Criteria) this;
        }

        public Criteria andIrReserved12NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED12 not in", values, "irReserved12");
            return (Criteria) this;
        }

        public Criteria andIrReserved12Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED12 between", value1, value2, "irReserved12");
            return (Criteria) this;
        }

        public Criteria andIrReserved12NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED12 not between", value1, value2, "irReserved12");
            return (Criteria) this;
        }

        public Criteria andIrReserved13IsNull() {
            addCriterion("t.IR_RESERVED13 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved13IsNotNull() {
            addCriterion("t.IR_RESERVED13 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved13EqualTo(String value) {
            addCriterion("t.IR_RESERVED13 =", value, "irReserved13");
            return (Criteria) this;
        }

        public Criteria andIrReserved13NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED13 <>", value, "irReserved13");
            return (Criteria) this;
        }

        public Criteria andIrReserved13GreaterThan(String value) {
            addCriterion("t.IR_RESERVED13 >", value, "irReserved13");
            return (Criteria) this;
        }

        public Criteria andIrReserved13GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED13 >=", value, "irReserved13");
            return (Criteria) this;
        }

        public Criteria andIrReserved13LessThan(String value) {
            addCriterion("t.IR_RESERVED13 <", value, "irReserved13");
            return (Criteria) this;
        }

        public Criteria andIrReserved13LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED13 <=", value, "irReserved13");
            return (Criteria) this;
        }

        public Criteria andIrReserved13Like(String value) {
            addCriterion("t.IR_RESERVED13 like", value, "irReserved13");
            return (Criteria) this;
        }

        public Criteria andIrReserved13NotLike(String value) {
            addCriterion("t.IR_RESERVED13 not like", value, "irReserved13");
            return (Criteria) this;
        }

        public Criteria andIrReserved13In(List<String> values) {
            addCriterion("t.IR_RESERVED13 in", values, "irReserved13");
            return (Criteria) this;
        }

        public Criteria andIrReserved13NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED13 not in", values, "irReserved13");
            return (Criteria) this;
        }

        public Criteria andIrReserved13Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED13 between", value1, value2, "irReserved13");
            return (Criteria) this;
        }

        public Criteria andIrReserved13NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED13 not between", value1, value2, "irReserved13");
            return (Criteria) this;
        }

        public Criteria andIrReserved14IsNull() {
            addCriterion("t.IR_RESERVED14 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved14IsNotNull() {
            addCriterion("t.IR_RESERVED14 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved14EqualTo(String value) {
            addCriterion("t.IR_RESERVED14 =", value, "irReserved14");
            return (Criteria) this;
        }

        public Criteria andIrReserved14NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED14 <>", value, "irReserved14");
            return (Criteria) this;
        }

        public Criteria andIrReserved14GreaterThan(String value) {
            addCriterion("t.IR_RESERVED14 >", value, "irReserved14");
            return (Criteria) this;
        }

        public Criteria andIrReserved14GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED14 >=", value, "irReserved14");
            return (Criteria) this;
        }

        public Criteria andIrReserved14LessThan(String value) {
            addCriterion("t.IR_RESERVED14 <", value, "irReserved14");
            return (Criteria) this;
        }

        public Criteria andIrReserved14LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED14 <=", value, "irReserved14");
            return (Criteria) this;
        }

        public Criteria andIrReserved14Like(String value) {
            addCriterion("t.IR_RESERVED14 like", value, "irReserved14");
            return (Criteria) this;
        }

        public Criteria andIrReserved14NotLike(String value) {
            addCriterion("t.IR_RESERVED14 not like", value, "irReserved14");
            return (Criteria) this;
        }

        public Criteria andIrReserved14In(List<String> values) {
            addCriterion("t.IR_RESERVED14 in", values, "irReserved14");
            return (Criteria) this;
        }

        public Criteria andIrReserved14NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED14 not in", values, "irReserved14");
            return (Criteria) this;
        }

        public Criteria andIrReserved14Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED14 between", value1, value2, "irReserved14");
            return (Criteria) this;
        }

        public Criteria andIrReserved14NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED14 not between", value1, value2, "irReserved14");
            return (Criteria) this;
        }

        public Criteria andIrReserved15IsNull() {
            addCriterion("t.IR_RESERVED15 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved15IsNotNull() {
            addCriterion("t.IR_RESERVED15 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved15EqualTo(String value) {
            addCriterion("t.IR_RESERVED15 =", value, "irReserved15");
            return (Criteria) this;
        }

        public Criteria andIrReserved15NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED15 <>", value, "irReserved15");
            return (Criteria) this;
        }

        public Criteria andIrReserved15GreaterThan(String value) {
            addCriterion("t.IR_RESERVED15 >", value, "irReserved15");
            return (Criteria) this;
        }

        public Criteria andIrReserved15GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED15 >=", value, "irReserved15");
            return (Criteria) this;
        }

        public Criteria andIrReserved15LessThan(String value) {
            addCriterion("t.IR_RESERVED15 <", value, "irReserved15");
            return (Criteria) this;
        }

        public Criteria andIrReserved15LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED15 <=", value, "irReserved15");
            return (Criteria) this;
        }

        public Criteria andIrReserved15Like(String value) {
            addCriterion("t.IR_RESERVED15 like", value, "irReserved15");
            return (Criteria) this;
        }

        public Criteria andIrReserved15NotLike(String value) {
            addCriterion("t.IR_RESERVED15 not like", value, "irReserved15");
            return (Criteria) this;
        }

        public Criteria andIrReserved15In(List<String> values) {
            addCriterion("t.IR_RESERVED15 in", values, "irReserved15");
            return (Criteria) this;
        }

        public Criteria andIrReserved15NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED15 not in", values, "irReserved15");
            return (Criteria) this;
        }

        public Criteria andIrReserved15Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED15 between", value1, value2, "irReserved15");
            return (Criteria) this;
        }

        public Criteria andIrReserved15NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED15 not between", value1, value2, "irReserved15");
            return (Criteria) this;
        }

        public Criteria andIrReserved16IsNull() {
            addCriterion("t.IR_RESERVED16 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved16IsNotNull() {
            addCriterion("t.IR_RESERVED16 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved16EqualTo(String value) {
            addCriterion("t.IR_RESERVED16 =", value, "irReserved16");
            return (Criteria) this;
        }

        public Criteria andIrReserved16NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED16 <>", value, "irReserved16");
            return (Criteria) this;
        }

        public Criteria andIrReserved16GreaterThan(String value) {
            addCriterion("t.IR_RESERVED16 >", value, "irReserved16");
            return (Criteria) this;
        }

        public Criteria andIrReserved16GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED16 >=", value, "irReserved16");
            return (Criteria) this;
        }

        public Criteria andIrReserved16LessThan(String value) {
            addCriterion("t.IR_RESERVED16 <", value, "irReserved16");
            return (Criteria) this;
        }

        public Criteria andIrReserved16LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED16 <=", value, "irReserved16");
            return (Criteria) this;
        }

        public Criteria andIrReserved16Like(String value) {
            addCriterion("t.IR_RESERVED16 like", value, "irReserved16");
            return (Criteria) this;
        }

        public Criteria andIrReserved16NotLike(String value) {
            addCriterion("t.IR_RESERVED16 not like", value, "irReserved16");
            return (Criteria) this;
        }

        public Criteria andIrReserved16In(List<String> values) {
            addCriterion("t.IR_RESERVED16 in", values, "irReserved16");
            return (Criteria) this;
        }

        public Criteria andIrReserved16NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED16 not in", values, "irReserved16");
            return (Criteria) this;
        }

        public Criteria andIrReserved16Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED16 between", value1, value2, "irReserved16");
            return (Criteria) this;
        }

        public Criteria andIrReserved16NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED16 not between", value1, value2, "irReserved16");
            return (Criteria) this;
        }

        public Criteria andIrReserved17IsNull() {
            addCriterion("t.IR_RESERVED17 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved17IsNotNull() {
            addCriterion("t.IR_RESERVED17 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved17EqualTo(String value) {
            addCriterion("t.IR_RESERVED17 =", value, "irReserved17");
            return (Criteria) this;
        }

        public Criteria andIrReserved17NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED17 <>", value, "irReserved17");
            return (Criteria) this;
        }

        public Criteria andIrReserved17GreaterThan(String value) {
            addCriterion("t.IR_RESERVED17 >", value, "irReserved17");
            return (Criteria) this;
        }

        public Criteria andIrReserved17GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED17 >=", value, "irReserved17");
            return (Criteria) this;
        }

        public Criteria andIrReserved17LessThan(String value) {
            addCriterion("t.IR_RESERVED17 <", value, "irReserved17");
            return (Criteria) this;
        }

        public Criteria andIrReserved17LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED17 <=", value, "irReserved17");
            return (Criteria) this;
        }

        public Criteria andIrReserved17Like(String value) {
            addCriterion("t.IR_RESERVED17 like", value, "irReserved17");
            return (Criteria) this;
        }

        public Criteria andIrReserved17NotLike(String value) {
            addCriterion("t.IR_RESERVED17 not like", value, "irReserved17");
            return (Criteria) this;
        }

        public Criteria andIrReserved17In(List<String> values) {
            addCriterion("t.IR_RESERVED17 in", values, "irReserved17");
            return (Criteria) this;
        }

        public Criteria andIrReserved17NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED17 not in", values, "irReserved17");
            return (Criteria) this;
        }

        public Criteria andIrReserved17Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED17 between", value1, value2, "irReserved17");
            return (Criteria) this;
        }

        public Criteria andIrReserved17NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED17 not between", value1, value2, "irReserved17");
            return (Criteria) this;
        }

        public Criteria andIrReserved18IsNull() {
            addCriterion("t.IR_RESERVED18 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved18IsNotNull() {
            addCriterion("t.IR_RESERVED18 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved18EqualTo(String value) {
            addCriterion("t.IR_RESERVED18 =", value, "irReserved18");
            return (Criteria) this;
        }

        public Criteria andIrReserved18NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED18 <>", value, "irReserved18");
            return (Criteria) this;
        }

        public Criteria andIrReserved18GreaterThan(String value) {
            addCriterion("t.IR_RESERVED18 >", value, "irReserved18");
            return (Criteria) this;
        }

        public Criteria andIrReserved18GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED18 >=", value, "irReserved18");
            return (Criteria) this;
        }

        public Criteria andIrReserved18LessThan(String value) {
            addCriterion("t.IR_RESERVED18 <", value, "irReserved18");
            return (Criteria) this;
        }

        public Criteria andIrReserved18LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED18 <=", value, "irReserved18");
            return (Criteria) this;
        }

        public Criteria andIrReserved18Like(String value) {
            addCriterion("t.IR_RESERVED18 like", value, "irReserved18");
            return (Criteria) this;
        }

        public Criteria andIrReserved18NotLike(String value) {
            addCriterion("t.IR_RESERVED18 not like", value, "irReserved18");
            return (Criteria) this;
        }

        public Criteria andIrReserved18In(List<String> values) {
            addCriterion("t.IR_RESERVED18 in", values, "irReserved18");
            return (Criteria) this;
        }

        public Criteria andIrReserved18NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED18 not in", values, "irReserved18");
            return (Criteria) this;
        }

        public Criteria andIrReserved18Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED18 between", value1, value2, "irReserved18");
            return (Criteria) this;
        }

        public Criteria andIrReserved18NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED18 not between", value1, value2, "irReserved18");
            return (Criteria) this;
        }

        public Criteria andIrReserved19IsNull() {
            addCriterion("t.IR_RESERVED19 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved19IsNotNull() {
            addCriterion("t.IR_RESERVED19 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved19EqualTo(String value) {
            addCriterion("t.IR_RESERVED19 =", value, "irReserved19");
            return (Criteria) this;
        }

        public Criteria andIrReserved19NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED19 <>", value, "irReserved19");
            return (Criteria) this;
        }

        public Criteria andIrReserved19GreaterThan(String value) {
            addCriterion("t.IR_RESERVED19 >", value, "irReserved19");
            return (Criteria) this;
        }

        public Criteria andIrReserved19GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED19 >=", value, "irReserved19");
            return (Criteria) this;
        }

        public Criteria andIrReserved19LessThan(String value) {
            addCriterion("t.IR_RESERVED19 <", value, "irReserved19");
            return (Criteria) this;
        }

        public Criteria andIrReserved19LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED19 <=", value, "irReserved19");
            return (Criteria) this;
        }

        public Criteria andIrReserved19Like(String value) {
            addCriterion("t.IR_RESERVED19 like", value, "irReserved19");
            return (Criteria) this;
        }

        public Criteria andIrReserved19NotLike(String value) {
            addCriterion("t.IR_RESERVED19 not like", value, "irReserved19");
            return (Criteria) this;
        }

        public Criteria andIrReserved19In(List<String> values) {
            addCriterion("t.IR_RESERVED19 in", values, "irReserved19");
            return (Criteria) this;
        }

        public Criteria andIrReserved19NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED19 not in", values, "irReserved19");
            return (Criteria) this;
        }

        public Criteria andIrReserved19Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED19 between", value1, value2, "irReserved19");
            return (Criteria) this;
        }

        public Criteria andIrReserved19NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED19 not between", value1, value2, "irReserved19");
            return (Criteria) this;
        }

        public Criteria andIrReserved20IsNull() {
            addCriterion("t.IR_RESERVED20 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved20IsNotNull() {
            addCriterion("t.IR_RESERVED20 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved20EqualTo(String value) {
            addCriterion("t.IR_RESERVED20 =", value, "irReserved20");
            return (Criteria) this;
        }

        public Criteria andIrReserved20NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED20 <>", value, "irReserved20");
            return (Criteria) this;
        }

        public Criteria andIrReserved20GreaterThan(String value) {
            addCriterion("t.IR_RESERVED20 >", value, "irReserved20");
            return (Criteria) this;
        }

        public Criteria andIrReserved20GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED20 >=", value, "irReserved20");
            return (Criteria) this;
        }

        public Criteria andIrReserved20LessThan(String value) {
            addCriterion("t.IR_RESERVED20 <", value, "irReserved20");
            return (Criteria) this;
        }

        public Criteria andIrReserved20LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED20 <=", value, "irReserved20");
            return (Criteria) this;
        }

        public Criteria andIrReserved20Like(String value) {
            addCriterion("t.IR_RESERVED20 like", value, "irReserved20");
            return (Criteria) this;
        }

        public Criteria andIrReserved20NotLike(String value) {
            addCriterion("t.IR_RESERVED20 not like", value, "irReserved20");
            return (Criteria) this;
        }

        public Criteria andIrReserved20In(List<String> values) {
            addCriterion("t.IR_RESERVED20 in", values, "irReserved20");
            return (Criteria) this;
        }

        public Criteria andIrReserved20NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED20 not in", values, "irReserved20");
            return (Criteria) this;
        }

        public Criteria andIrReserved20Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED20 between", value1, value2, "irReserved20");
            return (Criteria) this;
        }

        public Criteria andIrReserved20NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED20 not between", value1, value2, "irReserved20");
            return (Criteria) this;
        }

        public Criteria andIrReserved21IsNull() {
            addCriterion("t.IR_RESERVED21 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved21IsNotNull() {
            addCriterion("t.IR_RESERVED21 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved21EqualTo(String value) {
            addCriterion("t.IR_RESERVED21 =", value, "irReserved21");
            return (Criteria) this;
        }

        public Criteria andIrReserved21NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED21 <>", value, "irReserved21");
            return (Criteria) this;
        }

        public Criteria andIrReserved21GreaterThan(String value) {
            addCriterion("t.IR_RESERVED21 >", value, "irReserved21");
            return (Criteria) this;
        }

        public Criteria andIrReserved21GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED21 >=", value, "irReserved21");
            return (Criteria) this;
        }

        public Criteria andIrReserved21LessThan(String value) {
            addCriterion("t.IR_RESERVED21 <", value, "irReserved21");
            return (Criteria) this;
        }

        public Criteria andIrReserved21LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED21 <=", value, "irReserved21");
            return (Criteria) this;
        }

        public Criteria andIrReserved21Like(String value) {
            addCriterion("t.IR_RESERVED21 like", value, "irReserved21");
            return (Criteria) this;
        }

        public Criteria andIrReserved21NotLike(String value) {
            addCriterion("t.IR_RESERVED21 not like", value, "irReserved21");
            return (Criteria) this;
        }

        public Criteria andIrReserved21In(List<String> values) {
            addCriterion("t.IR_RESERVED21 in", values, "irReserved21");
            return (Criteria) this;
        }

        public Criteria andIrReserved21NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED21 not in", values, "irReserved21");
            return (Criteria) this;
        }

        public Criteria andIrReserved21Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED21 between", value1, value2, "irReserved21");
            return (Criteria) this;
        }

        public Criteria andIrReserved21NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED21 not between", value1, value2, "irReserved21");
            return (Criteria) this;
        }

        public Criteria andIrReserved22IsNull() {
            addCriterion("t.IR_RESERVED22 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved22IsNotNull() {
            addCriterion("t.IR_RESERVED22 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved22EqualTo(String value) {
            addCriterion("t.IR_RESERVED22 =", value, "irReserved22");
            return (Criteria) this;
        }

        public Criteria andIrReserved22NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED22 <>", value, "irReserved22");
            return (Criteria) this;
        }

        public Criteria andIrReserved22GreaterThan(String value) {
            addCriterion("t.IR_RESERVED22 >", value, "irReserved22");
            return (Criteria) this;
        }

        public Criteria andIrReserved22GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED22 >=", value, "irReserved22");
            return (Criteria) this;
        }

        public Criteria andIrReserved22LessThan(String value) {
            addCriterion("t.IR_RESERVED22 <", value, "irReserved22");
            return (Criteria) this;
        }

        public Criteria andIrReserved22LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED22 <=", value, "irReserved22");
            return (Criteria) this;
        }

        public Criteria andIrReserved22Like(String value) {
            addCriterion("t.IR_RESERVED22 like", value, "irReserved22");
            return (Criteria) this;
        }

        public Criteria andIrReserved22NotLike(String value) {
            addCriterion("t.IR_RESERVED22 not like", value, "irReserved22");
            return (Criteria) this;
        }

        public Criteria andIrReserved22In(List<String> values) {
            addCriterion("t.IR_RESERVED22 in", values, "irReserved22");
            return (Criteria) this;
        }

        public Criteria andIrReserved22NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED22 not in", values, "irReserved22");
            return (Criteria) this;
        }

        public Criteria andIrReserved22Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED22 between", value1, value2, "irReserved22");
            return (Criteria) this;
        }

        public Criteria andIrReserved22NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED22 not between", value1, value2, "irReserved22");
            return (Criteria) this;
        }

        public Criteria andIrReserved23IsNull() {
            addCriterion("t.IR_RESERVED23 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved23IsNotNull() {
            addCriterion("t.IR_RESERVED23 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved23EqualTo(String value) {
            addCriterion("t.IR_RESERVED23 =", value, "irReserved23");
            return (Criteria) this;
        }

        public Criteria andIrReserved23NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED23 <>", value, "irReserved23");
            return (Criteria) this;
        }

        public Criteria andIrReserved23GreaterThan(String value) {
            addCriterion("t.IR_RESERVED23 >", value, "irReserved23");
            return (Criteria) this;
        }

        public Criteria andIrReserved23GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED23 >=", value, "irReserved23");
            return (Criteria) this;
        }

        public Criteria andIrReserved23LessThan(String value) {
            addCriterion("t.IR_RESERVED23 <", value, "irReserved23");
            return (Criteria) this;
        }

        public Criteria andIrReserved23LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED23 <=", value, "irReserved23");
            return (Criteria) this;
        }

        public Criteria andIrReserved23Like(String value) {
            addCriterion("t.IR_RESERVED23 like", value, "irReserved23");
            return (Criteria) this;
        }

        public Criteria andIrReserved23NotLike(String value) {
            addCriterion("t.IR_RESERVED23 not like", value, "irReserved23");
            return (Criteria) this;
        }

        public Criteria andIrReserved23In(List<String> values) {
            addCriterion("t.IR_RESERVED23 in", values, "irReserved23");
            return (Criteria) this;
        }

        public Criteria andIrReserved23NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED23 not in", values, "irReserved23");
            return (Criteria) this;
        }

        public Criteria andIrReserved23Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED23 between", value1, value2, "irReserved23");
            return (Criteria) this;
        }

        public Criteria andIrReserved23NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED23 not between", value1, value2, "irReserved23");
            return (Criteria) this;
        }

        public Criteria andIrReserved24IsNull() {
            addCriterion("t.IR_RESERVED24 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved24IsNotNull() {
            addCriterion("t.IR_RESERVED24 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved24EqualTo(String value) {
            addCriterion("t.IR_RESERVED24 =", value, "irReserved24");
            return (Criteria) this;
        }

        public Criteria andIrReserved24NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED24 <>", value, "irReserved24");
            return (Criteria) this;
        }

        public Criteria andIrReserved24GreaterThan(String value) {
            addCriterion("t.IR_RESERVED24 >", value, "irReserved24");
            return (Criteria) this;
        }

        public Criteria andIrReserved24GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED24 >=", value, "irReserved24");
            return (Criteria) this;
        }

        public Criteria andIrReserved24LessThan(String value) {
            addCriterion("t.IR_RESERVED24 <", value, "irReserved24");
            return (Criteria) this;
        }

        public Criteria andIrReserved24LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED24 <=", value, "irReserved24");
            return (Criteria) this;
        }

        public Criteria andIrReserved24Like(String value) {
            addCriterion("t.IR_RESERVED24 like", value, "irReserved24");
            return (Criteria) this;
        }

        public Criteria andIrReserved24NotLike(String value) {
            addCriterion("t.IR_RESERVED24 not like", value, "irReserved24");
            return (Criteria) this;
        }

        public Criteria andIrReserved24In(List<String> values) {
            addCriterion("t.IR_RESERVED24 in", values, "irReserved24");
            return (Criteria) this;
        }

        public Criteria andIrReserved24NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED24 not in", values, "irReserved24");
            return (Criteria) this;
        }

        public Criteria andIrReserved24Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED24 between", value1, value2, "irReserved24");
            return (Criteria) this;
        }

        public Criteria andIrReserved24NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED24 not between", value1, value2, "irReserved24");
            return (Criteria) this;
        }

        public Criteria andIrReserved25IsNull() {
            addCriterion("t.IR_RESERVED25 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved25IsNotNull() {
            addCriterion("t.IR_RESERVED25 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved25EqualTo(String value) {
            addCriterion("t.IR_RESERVED25 =", value, "irReserved25");
            return (Criteria) this;
        }

        public Criteria andIrReserved25NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED25 <>", value, "irReserved25");
            return (Criteria) this;
        }

        public Criteria andIrReserved25GreaterThan(String value) {
            addCriterion("t.IR_RESERVED25 >", value, "irReserved25");
            return (Criteria) this;
        }

        public Criteria andIrReserved25GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED25 >=", value, "irReserved25");
            return (Criteria) this;
        }

        public Criteria andIrReserved25LessThan(String value) {
            addCriterion("t.IR_RESERVED25 <", value, "irReserved25");
            return (Criteria) this;
        }

        public Criteria andIrReserved25LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED25 <=", value, "irReserved25");
            return (Criteria) this;
        }

        public Criteria andIrReserved25Like(String value) {
            addCriterion("t.IR_RESERVED25 like", value, "irReserved25");
            return (Criteria) this;
        }

        public Criteria andIrReserved25NotLike(String value) {
            addCriterion("t.IR_RESERVED25 not like", value, "irReserved25");
            return (Criteria) this;
        }

        public Criteria andIrReserved25In(List<String> values) {
            addCriterion("t.IR_RESERVED25 in", values, "irReserved25");
            return (Criteria) this;
        }

        public Criteria andIrReserved25NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED25 not in", values, "irReserved25");
            return (Criteria) this;
        }

        public Criteria andIrReserved25Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED25 between", value1, value2, "irReserved25");
            return (Criteria) this;
        }

        public Criteria andIrReserved25NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED25 not between", value1, value2, "irReserved25");
            return (Criteria) this;
        }

        public Criteria andIrReserved26IsNull() {
            addCriterion("t.IR_RESERVED26 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved26IsNotNull() {
            addCriterion("t.IR_RESERVED26 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved26EqualTo(String value) {
            addCriterion("t.IR_RESERVED26 =", value, "irReserved26");
            return (Criteria) this;
        }

        public Criteria andIrReserved26NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED26 <>", value, "irReserved26");
            return (Criteria) this;
        }

        public Criteria andIrReserved26GreaterThan(String value) {
            addCriterion("t.IR_RESERVED26 >", value, "irReserved26");
            return (Criteria) this;
        }

        public Criteria andIrReserved26GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED26 >=", value, "irReserved26");
            return (Criteria) this;
        }

        public Criteria andIrReserved26LessThan(String value) {
            addCriterion("t.IR_RESERVED26 <", value, "irReserved26");
            return (Criteria) this;
        }

        public Criteria andIrReserved26LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED26 <=", value, "irReserved26");
            return (Criteria) this;
        }

        public Criteria andIrReserved26Like(String value) {
            addCriterion("t.IR_RESERVED26 like", value, "irReserved26");
            return (Criteria) this;
        }

        public Criteria andIrReserved26NotLike(String value) {
            addCriterion("t.IR_RESERVED26 not like", value, "irReserved26");
            return (Criteria) this;
        }

        public Criteria andIrReserved26In(List<String> values) {
            addCriterion("t.IR_RESERVED26 in", values, "irReserved26");
            return (Criteria) this;
        }

        public Criteria andIrReserved26NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED26 not in", values, "irReserved26");
            return (Criteria) this;
        }

        public Criteria andIrReserved26Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED26 between", value1, value2, "irReserved26");
            return (Criteria) this;
        }

        public Criteria andIrReserved26NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED26 not between", value1, value2, "irReserved26");
            return (Criteria) this;
        }

        public Criteria andIrReserved27IsNull() {
            addCriterion("t.IR_RESERVED27 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved27IsNotNull() {
            addCriterion("t.IR_RESERVED27 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved27EqualTo(String value) {
            addCriterion("t.IR_RESERVED27 =", value, "irReserved27");
            return (Criteria) this;
        }

        public Criteria andIrReserved27NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED27 <>", value, "irReserved27");
            return (Criteria) this;
        }

        public Criteria andIrReserved27GreaterThan(String value) {
            addCriterion("t.IR_RESERVED27 >", value, "irReserved27");
            return (Criteria) this;
        }

        public Criteria andIrReserved27GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED27 >=", value, "irReserved27");
            return (Criteria) this;
        }

        public Criteria andIrReserved27LessThan(String value) {
            addCriterion("t.IR_RESERVED27 <", value, "irReserved27");
            return (Criteria) this;
        }

        public Criteria andIrReserved27LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED27 <=", value, "irReserved27");
            return (Criteria) this;
        }

        public Criteria andIrReserved27Like(String value) {
            addCriterion("t.IR_RESERVED27 like", value, "irReserved27");
            return (Criteria) this;
        }

        public Criteria andIrReserved27NotLike(String value) {
            addCriterion("t.IR_RESERVED27 not like", value, "irReserved27");
            return (Criteria) this;
        }

        public Criteria andIrReserved27In(List<String> values) {
            addCriterion("t.IR_RESERVED27 in", values, "irReserved27");
            return (Criteria) this;
        }

        public Criteria andIrReserved27NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED27 not in", values, "irReserved27");
            return (Criteria) this;
        }

        public Criteria andIrReserved27Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED27 between", value1, value2, "irReserved27");
            return (Criteria) this;
        }

        public Criteria andIrReserved27NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED27 not between", value1, value2, "irReserved27");
            return (Criteria) this;
        }

        public Criteria andIrReserved28IsNull() {
            addCriterion("t.IR_RESERVED28 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved28IsNotNull() {
            addCriterion("t.IR_RESERVED28 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved28EqualTo(String value) {
            addCriterion("t.IR_RESERVED28 =", value, "irReserved28");
            return (Criteria) this;
        }

        public Criteria andIrReserved28NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED28 <>", value, "irReserved28");
            return (Criteria) this;
        }

        public Criteria andIrReserved28GreaterThan(String value) {
            addCriterion("t.IR_RESERVED28 >", value, "irReserved28");
            return (Criteria) this;
        }

        public Criteria andIrReserved28GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED28 >=", value, "irReserved28");
            return (Criteria) this;
        }

        public Criteria andIrReserved28LessThan(String value) {
            addCriterion("t.IR_RESERVED28 <", value, "irReserved28");
            return (Criteria) this;
        }

        public Criteria andIrReserved28LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED28 <=", value, "irReserved28");
            return (Criteria) this;
        }

        public Criteria andIrReserved28Like(String value) {
            addCriterion("t.IR_RESERVED28 like", value, "irReserved28");
            return (Criteria) this;
        }

        public Criteria andIrReserved28NotLike(String value) {
            addCriterion("t.IR_RESERVED28 not like", value, "irReserved28");
            return (Criteria) this;
        }

        public Criteria andIrReserved28In(List<String> values) {
            addCriterion("t.IR_RESERVED28 in", values, "irReserved28");
            return (Criteria) this;
        }

        public Criteria andIrReserved28NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED28 not in", values, "irReserved28");
            return (Criteria) this;
        }

        public Criteria andIrReserved28Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED28 between", value1, value2, "irReserved28");
            return (Criteria) this;
        }

        public Criteria andIrReserved28NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED28 not between", value1, value2, "irReserved28");
            return (Criteria) this;
        }

        public Criteria andIrReserved29IsNull() {
            addCriterion("t.IR_RESERVED29 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved29IsNotNull() {
            addCriterion("t.IR_RESERVED29 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved29EqualTo(String value) {
            addCriterion("t.IR_RESERVED29 =", value, "irReserved29");
            return (Criteria) this;
        }

        public Criteria andIrReserved29NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED29 <>", value, "irReserved29");
            return (Criteria) this;
        }

        public Criteria andIrReserved29GreaterThan(String value) {
            addCriterion("t.IR_RESERVED29 >", value, "irReserved29");
            return (Criteria) this;
        }

        public Criteria andIrReserved29GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED29 >=", value, "irReserved29");
            return (Criteria) this;
        }

        public Criteria andIrReserved29LessThan(String value) {
            addCriterion("t.IR_RESERVED29 <", value, "irReserved29");
            return (Criteria) this;
        }

        public Criteria andIrReserved29LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED29 <=", value, "irReserved29");
            return (Criteria) this;
        }

        public Criteria andIrReserved29Like(String value) {
            addCriterion("t.IR_RESERVED29 like", value, "irReserved29");
            return (Criteria) this;
        }

        public Criteria andIrReserved29NotLike(String value) {
            addCriterion("t.IR_RESERVED29 not like", value, "irReserved29");
            return (Criteria) this;
        }

        public Criteria andIrReserved29In(List<String> values) {
            addCriterion("t.IR_RESERVED29 in", values, "irReserved29");
            return (Criteria) this;
        }

        public Criteria andIrReserved29NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED29 not in", values, "irReserved29");
            return (Criteria) this;
        }

        public Criteria andIrReserved29Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED29 between", value1, value2, "irReserved29");
            return (Criteria) this;
        }

        public Criteria andIrReserved29NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED29 not between", value1, value2, "irReserved29");
            return (Criteria) this;
        }

        public Criteria andIrReserved30IsNull() {
            addCriterion("t.IR_RESERVED30 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved30IsNotNull() {
            addCriterion("t.IR_RESERVED30 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved30EqualTo(String value) {
            addCriterion("t.IR_RESERVED30 =", value, "irReserved30");
            return (Criteria) this;
        }

        public Criteria andIrReserved30NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED30 <>", value, "irReserved30");
            return (Criteria) this;
        }

        public Criteria andIrReserved30GreaterThan(String value) {
            addCriterion("t.IR_RESERVED30 >", value, "irReserved30");
            return (Criteria) this;
        }

        public Criteria andIrReserved30GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED30 >=", value, "irReserved30");
            return (Criteria) this;
        }

        public Criteria andIrReserved30LessThan(String value) {
            addCriterion("t.IR_RESERVED30 <", value, "irReserved30");
            return (Criteria) this;
        }

        public Criteria andIrReserved30LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED30 <=", value, "irReserved30");
            return (Criteria) this;
        }

        public Criteria andIrReserved30Like(String value) {
            addCriterion("t.IR_RESERVED30 like", value, "irReserved30");
            return (Criteria) this;
        }

        public Criteria andIrReserved30NotLike(String value) {
            addCriterion("t.IR_RESERVED30 not like", value, "irReserved30");
            return (Criteria) this;
        }

        public Criteria andIrReserved30In(List<String> values) {
            addCriterion("t.IR_RESERVED30 in", values, "irReserved30");
            return (Criteria) this;
        }

        public Criteria andIrReserved30NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED30 not in", values, "irReserved30");
            return (Criteria) this;
        }

        public Criteria andIrReserved30Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED30 between", value1, value2, "irReserved30");
            return (Criteria) this;
        }

        public Criteria andIrReserved30NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED30 not between", value1, value2, "irReserved30");
            return (Criteria) this;
        }

        public Criteria andIrReserved31IsNull() {
            addCriterion("t.IR_RESERVED31 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved31IsNotNull() {
            addCriterion("t.IR_RESERVED31 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved31EqualTo(String value) {
            addCriterion("t.IR_RESERVED31 =", value, "irReserved31");
            return (Criteria) this;
        }

        public Criteria andIrReserved31NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED31 <>", value, "irReserved31");
            return (Criteria) this;
        }

        public Criteria andIrReserved31GreaterThan(String value) {
            addCriterion("t.IR_RESERVED31 >", value, "irReserved31");
            return (Criteria) this;
        }

        public Criteria andIrReserved31GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED31 >=", value, "irReserved31");
            return (Criteria) this;
        }

        public Criteria andIrReserved31LessThan(String value) {
            addCriterion("t.IR_RESERVED31 <", value, "irReserved31");
            return (Criteria) this;
        }

        public Criteria andIrReserved31LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED31 <=", value, "irReserved31");
            return (Criteria) this;
        }

        public Criteria andIrReserved31Like(String value) {
            addCriterion("t.IR_RESERVED31 like", value, "irReserved31");
            return (Criteria) this;
        }

        public Criteria andIrReserved31NotLike(String value) {
            addCriterion("t.IR_RESERVED31 not like", value, "irReserved31");
            return (Criteria) this;
        }

        public Criteria andIrReserved31In(List<String> values) {
            addCriterion("t.IR_RESERVED31 in", values, "irReserved31");
            return (Criteria) this;
        }

        public Criteria andIrReserved31NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED31 not in", values, "irReserved31");
            return (Criteria) this;
        }

        public Criteria andIrReserved31Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED31 between", value1, value2, "irReserved31");
            return (Criteria) this;
        }

        public Criteria andIrReserved31NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED31 not between", value1, value2, "irReserved31");
            return (Criteria) this;
        }

        public Criteria andIrReserved32IsNull() {
            addCriterion("t.IR_RESERVED32 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved32IsNotNull() {
            addCriterion("t.IR_RESERVED32 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved32EqualTo(String value) {
            addCriterion("t.IR_RESERVED32 =", value, "irReserved32");
            return (Criteria) this;
        }

        public Criteria andIrReserved32NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED32 <>", value, "irReserved32");
            return (Criteria) this;
        }

        public Criteria andIrReserved32GreaterThan(String value) {
            addCriterion("t.IR_RESERVED32 >", value, "irReserved32");
            return (Criteria) this;
        }

        public Criteria andIrReserved32GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED32 >=", value, "irReserved32");
            return (Criteria) this;
        }

        public Criteria andIrReserved32LessThan(String value) {
            addCriterion("t.IR_RESERVED32 <", value, "irReserved32");
            return (Criteria) this;
        }

        public Criteria andIrReserved32LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED32 <=", value, "irReserved32");
            return (Criteria) this;
        }

        public Criteria andIrReserved32Like(String value) {
            addCriterion("t.IR_RESERVED32 like", value, "irReserved32");
            return (Criteria) this;
        }

        public Criteria andIrReserved32NotLike(String value) {
            addCriterion("t.IR_RESERVED32 not like", value, "irReserved32");
            return (Criteria) this;
        }

        public Criteria andIrReserved32In(List<String> values) {
            addCriterion("t.IR_RESERVED32 in", values, "irReserved32");
            return (Criteria) this;
        }

        public Criteria andIrReserved32NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED32 not in", values, "irReserved32");
            return (Criteria) this;
        }

        public Criteria andIrReserved32Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED32 between", value1, value2, "irReserved32");
            return (Criteria) this;
        }

        public Criteria andIrReserved32NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED32 not between", value1, value2, "irReserved32");
            return (Criteria) this;
        }

        public Criteria andIrReserved33IsNull() {
            addCriterion("t.IR_RESERVED33 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved33IsNotNull() {
            addCriterion("t.IR_RESERVED33 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved33EqualTo(String value) {
            addCriterion("t.IR_RESERVED33 =", value, "irReserved33");
            return (Criteria) this;
        }

        public Criteria andIrReserved33NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED33 <>", value, "irReserved33");
            return (Criteria) this;
        }

        public Criteria andIrReserved33GreaterThan(String value) {
            addCriterion("t.IR_RESERVED33 >", value, "irReserved33");
            return (Criteria) this;
        }

        public Criteria andIrReserved33GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED33 >=", value, "irReserved33");
            return (Criteria) this;
        }

        public Criteria andIrReserved33LessThan(String value) {
            addCriterion("t.IR_RESERVED33 <", value, "irReserved33");
            return (Criteria) this;
        }

        public Criteria andIrReserved33LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED33 <=", value, "irReserved33");
            return (Criteria) this;
        }

        public Criteria andIrReserved33Like(String value) {
            addCriterion("t.IR_RESERVED33 like", value, "irReserved33");
            return (Criteria) this;
        }

        public Criteria andIrReserved33NotLike(String value) {
            addCriterion("t.IR_RESERVED33 not like", value, "irReserved33");
            return (Criteria) this;
        }

        public Criteria andIrReserved33In(List<String> values) {
            addCriterion("t.IR_RESERVED33 in", values, "irReserved33");
            return (Criteria) this;
        }

        public Criteria andIrReserved33NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED33 not in", values, "irReserved33");
            return (Criteria) this;
        }

        public Criteria andIrReserved33Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED33 between", value1, value2, "irReserved33");
            return (Criteria) this;
        }

        public Criteria andIrReserved33NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED33 not between", value1, value2, "irReserved33");
            return (Criteria) this;
        }

        public Criteria andIrReserved34IsNull() {
            addCriterion("t.IR_RESERVED34 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved34IsNotNull() {
            addCriterion("t.IR_RESERVED34 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved34EqualTo(String value) {
            addCriterion("t.IR_RESERVED34 =", value, "irReserved34");
            return (Criteria) this;
        }

        public Criteria andIrReserved34NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED34 <>", value, "irReserved34");
            return (Criteria) this;
        }

        public Criteria andIrReserved34GreaterThan(String value) {
            addCriterion("t.IR_RESERVED34 >", value, "irReserved34");
            return (Criteria) this;
        }

        public Criteria andIrReserved34GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED34 >=", value, "irReserved34");
            return (Criteria) this;
        }

        public Criteria andIrReserved34LessThan(String value) {
            addCriterion("t.IR_RESERVED34 <", value, "irReserved34");
            return (Criteria) this;
        }

        public Criteria andIrReserved34LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED34 <=", value, "irReserved34");
            return (Criteria) this;
        }

        public Criteria andIrReserved34Like(String value) {
            addCriterion("t.IR_RESERVED34 like", value, "irReserved34");
            return (Criteria) this;
        }

        public Criteria andIrReserved34NotLike(String value) {
            addCriterion("t.IR_RESERVED34 not like", value, "irReserved34");
            return (Criteria) this;
        }

        public Criteria andIrReserved34In(List<String> values) {
            addCriterion("t.IR_RESERVED34 in", values, "irReserved34");
            return (Criteria) this;
        }

        public Criteria andIrReserved34NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED34 not in", values, "irReserved34");
            return (Criteria) this;
        }

        public Criteria andIrReserved34Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED34 between", value1, value2, "irReserved34");
            return (Criteria) this;
        }

        public Criteria andIrReserved34NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED34 not between", value1, value2, "irReserved34");
            return (Criteria) this;
        }

        public Criteria andIrReserved35IsNull() {
            addCriterion("t.IR_RESERVED35 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved35IsNotNull() {
            addCriterion("t.IR_RESERVED35 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved35EqualTo(String value) {
            addCriterion("t.IR_RESERVED35 =", value, "irReserved35");
            return (Criteria) this;
        }

        public Criteria andIrReserved35NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED35 <>", value, "irReserved35");
            return (Criteria) this;
        }

        public Criteria andIrReserved35GreaterThan(String value) {
            addCriterion("t.IR_RESERVED35 >", value, "irReserved35");
            return (Criteria) this;
        }

        public Criteria andIrReserved35GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED35 >=", value, "irReserved35");
            return (Criteria) this;
        }

        public Criteria andIrReserved35LessThan(String value) {
            addCriterion("t.IR_RESERVED35 <", value, "irReserved35");
            return (Criteria) this;
        }

        public Criteria andIrReserved35LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED35 <=", value, "irReserved35");
            return (Criteria) this;
        }

        public Criteria andIrReserved35Like(String value) {
            addCriterion("t.IR_RESERVED35 like", value, "irReserved35");
            return (Criteria) this;
        }

        public Criteria andIrReserved35NotLike(String value) {
            addCriterion("t.IR_RESERVED35 not like", value, "irReserved35");
            return (Criteria) this;
        }

        public Criteria andIrReserved35In(List<String> values) {
            addCriterion("t.IR_RESERVED35 in", values, "irReserved35");
            return (Criteria) this;
        }

        public Criteria andIrReserved35NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED35 not in", values, "irReserved35");
            return (Criteria) this;
        }

        public Criteria andIrReserved35Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED35 between", value1, value2, "irReserved35");
            return (Criteria) this;
        }

        public Criteria andIrReserved35NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED35 not between", value1, value2, "irReserved35");
            return (Criteria) this;
        }

        public Criteria andIrReserved36IsNull() {
            addCriterion("t.IR_RESERVED36 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved36IsNotNull() {
            addCriterion("t.IR_RESERVED36 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved36EqualTo(String value) {
            addCriterion("t.IR_RESERVED36 =", value, "irReserved36");
            return (Criteria) this;
        }

        public Criteria andIrReserved36NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED36 <>", value, "irReserved36");
            return (Criteria) this;
        }

        public Criteria andIrReserved36GreaterThan(String value) {
            addCriterion("t.IR_RESERVED36 >", value, "irReserved36");
            return (Criteria) this;
        }

        public Criteria andIrReserved36GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED36 >=", value, "irReserved36");
            return (Criteria) this;
        }

        public Criteria andIrReserved36LessThan(String value) {
            addCriterion("t.IR_RESERVED36 <", value, "irReserved36");
            return (Criteria) this;
        }

        public Criteria andIrReserved36LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED36 <=", value, "irReserved36");
            return (Criteria) this;
        }

        public Criteria andIrReserved36Like(String value) {
            addCriterion("t.IR_RESERVED36 like", value, "irReserved36");
            return (Criteria) this;
        }

        public Criteria andIrReserved36NotLike(String value) {
            addCriterion("t.IR_RESERVED36 not like", value, "irReserved36");
            return (Criteria) this;
        }

        public Criteria andIrReserved36In(List<String> values) {
            addCriterion("t.IR_RESERVED36 in", values, "irReserved36");
            return (Criteria) this;
        }

        public Criteria andIrReserved36NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED36 not in", values, "irReserved36");
            return (Criteria) this;
        }

        public Criteria andIrReserved36Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED36 between", value1, value2, "irReserved36");
            return (Criteria) this;
        }

        public Criteria andIrReserved36NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED36 not between", value1, value2, "irReserved36");
            return (Criteria) this;
        }

        public Criteria andIrReserved37IsNull() {
            addCriterion("t.IR_RESERVED37 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved37IsNotNull() {
            addCriterion("t.IR_RESERVED37 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved37EqualTo(String value) {
            addCriterion("t.IR_RESERVED37 =", value, "irReserved37");
            return (Criteria) this;
        }

        public Criteria andIrReserved37NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED37 <>", value, "irReserved37");
            return (Criteria) this;
        }

        public Criteria andIrReserved37GreaterThan(String value) {
            addCriterion("t.IR_RESERVED37 >", value, "irReserved37");
            return (Criteria) this;
        }

        public Criteria andIrReserved37GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED37 >=", value, "irReserved37");
            return (Criteria) this;
        }

        public Criteria andIrReserved37LessThan(String value) {
            addCriterion("t.IR_RESERVED37 <", value, "irReserved37");
            return (Criteria) this;
        }

        public Criteria andIrReserved37LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED37 <=", value, "irReserved37");
            return (Criteria) this;
        }

        public Criteria andIrReserved37Like(String value) {
            addCriterion("t.IR_RESERVED37 like", value, "irReserved37");
            return (Criteria) this;
        }

        public Criteria andIrReserved37NotLike(String value) {
            addCriterion("t.IR_RESERVED37 not like", value, "irReserved37");
            return (Criteria) this;
        }

        public Criteria andIrReserved37In(List<String> values) {
            addCriterion("t.IR_RESERVED37 in", values, "irReserved37");
            return (Criteria) this;
        }

        public Criteria andIrReserved37NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED37 not in", values, "irReserved37");
            return (Criteria) this;
        }

        public Criteria andIrReserved37Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED37 between", value1, value2, "irReserved37");
            return (Criteria) this;
        }

        public Criteria andIrReserved37NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED37 not between", value1, value2, "irReserved37");
            return (Criteria) this;
        }

        public Criteria andIrReserved38IsNull() {
            addCriterion("t.IR_RESERVED38 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved38IsNotNull() {
            addCriterion("t.IR_RESERVED38 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved38EqualTo(String value) {
            addCriterion("t.IR_RESERVED38 =", value, "irReserved38");
            return (Criteria) this;
        }

        public Criteria andIrReserved38NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED38 <>", value, "irReserved38");
            return (Criteria) this;
        }

        public Criteria andIrReserved38GreaterThan(String value) {
            addCriterion("t.IR_RESERVED38 >", value, "irReserved38");
            return (Criteria) this;
        }

        public Criteria andIrReserved38GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED38 >=", value, "irReserved38");
            return (Criteria) this;
        }

        public Criteria andIrReserved38LessThan(String value) {
            addCriterion("t.IR_RESERVED38 <", value, "irReserved38");
            return (Criteria) this;
        }

        public Criteria andIrReserved38LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED38 <=", value, "irReserved38");
            return (Criteria) this;
        }

        public Criteria andIrReserved38Like(String value) {
            addCriterion("t.IR_RESERVED38 like", value, "irReserved38");
            return (Criteria) this;
        }

        public Criteria andIrReserved38NotLike(String value) {
            addCriterion("t.IR_RESERVED38 not like", value, "irReserved38");
            return (Criteria) this;
        }

        public Criteria andIrReserved38In(List<String> values) {
            addCriterion("t.IR_RESERVED38 in", values, "irReserved38");
            return (Criteria) this;
        }

        public Criteria andIrReserved38NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED38 not in", values, "irReserved38");
            return (Criteria) this;
        }

        public Criteria andIrReserved38Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED38 between", value1, value2, "irReserved38");
            return (Criteria) this;
        }

        public Criteria andIrReserved38NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED38 not between", value1, value2, "irReserved38");
            return (Criteria) this;
        }

        public Criteria andIrReserved39IsNull() {
            addCriterion("t.IR_RESERVED39 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved39IsNotNull() {
            addCriterion("t.IR_RESERVED39 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved39EqualTo(String value) {
            addCriterion("t.IR_RESERVED39 =", value, "irReserved39");
            return (Criteria) this;
        }

        public Criteria andIrReserved39NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED39 <>", value, "irReserved39");
            return (Criteria) this;
        }

        public Criteria andIrReserved39GreaterThan(String value) {
            addCriterion("t.IR_RESERVED39 >", value, "irReserved39");
            return (Criteria) this;
        }

        public Criteria andIrReserved39GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED39 >=", value, "irReserved39");
            return (Criteria) this;
        }

        public Criteria andIrReserved39LessThan(String value) {
            addCriterion("t.IR_RESERVED39 <", value, "irReserved39");
            return (Criteria) this;
        }

        public Criteria andIrReserved39LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED39 <=", value, "irReserved39");
            return (Criteria) this;
        }

        public Criteria andIrReserved39Like(String value) {
            addCriterion("t.IR_RESERVED39 like", value, "irReserved39");
            return (Criteria) this;
        }

        public Criteria andIrReserved39NotLike(String value) {
            addCriterion("t.IR_RESERVED39 not like", value, "irReserved39");
            return (Criteria) this;
        }

        public Criteria andIrReserved39In(List<String> values) {
            addCriterion("t.IR_RESERVED39 in", values, "irReserved39");
            return (Criteria) this;
        }

        public Criteria andIrReserved39NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED39 not in", values, "irReserved39");
            return (Criteria) this;
        }

        public Criteria andIrReserved39Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED39 between", value1, value2, "irReserved39");
            return (Criteria) this;
        }

        public Criteria andIrReserved39NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED39 not between", value1, value2, "irReserved39");
            return (Criteria) this;
        }

        public Criteria andIrReserved40IsNull() {
            addCriterion("t.IR_RESERVED40 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved40IsNotNull() {
            addCriterion("t.IR_RESERVED40 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved40EqualTo(String value) {
            addCriterion("t.IR_RESERVED40 =", value, "irReserved40");
            return (Criteria) this;
        }

        public Criteria andIrReserved40NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED40 <>", value, "irReserved40");
            return (Criteria) this;
        }

        public Criteria andIrReserved40GreaterThan(String value) {
            addCriterion("t.IR_RESERVED40 >", value, "irReserved40");
            return (Criteria) this;
        }

        public Criteria andIrReserved40GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED40 >=", value, "irReserved40");
            return (Criteria) this;
        }

        public Criteria andIrReserved40LessThan(String value) {
            addCriterion("t.IR_RESERVED40 <", value, "irReserved40");
            return (Criteria) this;
        }

        public Criteria andIrReserved40LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED40 <=", value, "irReserved40");
            return (Criteria) this;
        }

        public Criteria andIrReserved40Like(String value) {
            addCriterion("t.IR_RESERVED40 like", value, "irReserved40");
            return (Criteria) this;
        }

        public Criteria andIrReserved40NotLike(String value) {
            addCriterion("t.IR_RESERVED40 not like", value, "irReserved40");
            return (Criteria) this;
        }

        public Criteria andIrReserved40In(List<String> values) {
            addCriterion("t.IR_RESERVED40 in", values, "irReserved40");
            return (Criteria) this;
        }

        public Criteria andIrReserved40NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED40 not in", values, "irReserved40");
            return (Criteria) this;
        }

        public Criteria andIrReserved40Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED40 between", value1, value2, "irReserved40");
            return (Criteria) this;
        }

        public Criteria andIrReserved40NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED40 not between", value1, value2, "irReserved40");
            return (Criteria) this;
        }

        public Criteria andIrReserved41IsNull() {
            addCriterion("t.IR_RESERVED41 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved41IsNotNull() {
            addCriterion("t.IR_RESERVED41 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved41EqualTo(String value) {
            addCriterion("t.IR_RESERVED41 =", value, "irReserved41");
            return (Criteria) this;
        }

        public Criteria andIrReserved41NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED41 <>", value, "irReserved41");
            return (Criteria) this;
        }

        public Criteria andIrReserved41GreaterThan(String value) {
            addCriterion("t.IR_RESERVED41 >", value, "irReserved41");
            return (Criteria) this;
        }

        public Criteria andIrReserved41GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED41 >=", value, "irReserved41");
            return (Criteria) this;
        }

        public Criteria andIrReserved41LessThan(String value) {
            addCriterion("t.IR_RESERVED41 <", value, "irReserved41");
            return (Criteria) this;
        }

        public Criteria andIrReserved41LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED41 <=", value, "irReserved41");
            return (Criteria) this;
        }

        public Criteria andIrReserved41Like(String value) {
            addCriterion("t.IR_RESERVED41 like", value, "irReserved41");
            return (Criteria) this;
        }

        public Criteria andIrReserved41NotLike(String value) {
            addCriterion("t.IR_RESERVED41 not like", value, "irReserved41");
            return (Criteria) this;
        }

        public Criteria andIrReserved41In(List<String> values) {
            addCriterion("t.IR_RESERVED41 in", values, "irReserved41");
            return (Criteria) this;
        }

        public Criteria andIrReserved41NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED41 not in", values, "irReserved41");
            return (Criteria) this;
        }

        public Criteria andIrReserved41Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED41 between", value1, value2, "irReserved41");
            return (Criteria) this;
        }

        public Criteria andIrReserved41NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED41 not between", value1, value2, "irReserved41");
            return (Criteria) this;
        }

        public Criteria andIrReserved42IsNull() {
            addCriterion("t.IR_RESERVED42 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved42IsNotNull() {
            addCriterion("t.IR_RESERVED42 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved42EqualTo(String value) {
            addCriterion("t.IR_RESERVED42 =", value, "irReserved42");
            return (Criteria) this;
        }

        public Criteria andIrReserved42NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED42 <>", value, "irReserved42");
            return (Criteria) this;
        }

        public Criteria andIrReserved42GreaterThan(String value) {
            addCriterion("t.IR_RESERVED42 >", value, "irReserved42");
            return (Criteria) this;
        }

        public Criteria andIrReserved42GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED42 >=", value, "irReserved42");
            return (Criteria) this;
        }

        public Criteria andIrReserved42LessThan(String value) {
            addCriterion("t.IR_RESERVED42 <", value, "irReserved42");
            return (Criteria) this;
        }

        public Criteria andIrReserved42LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED42 <=", value, "irReserved42");
            return (Criteria) this;
        }

        public Criteria andIrReserved42Like(String value) {
            addCriterion("t.IR_RESERVED42 like", value, "irReserved42");
            return (Criteria) this;
        }

        public Criteria andIrReserved42NotLike(String value) {
            addCriterion("t.IR_RESERVED42 not like", value, "irReserved42");
            return (Criteria) this;
        }

        public Criteria andIrReserved42In(List<String> values) {
            addCriterion("t.IR_RESERVED42 in", values, "irReserved42");
            return (Criteria) this;
        }

        public Criteria andIrReserved42NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED42 not in", values, "irReserved42");
            return (Criteria) this;
        }

        public Criteria andIrReserved42Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED42 between", value1, value2, "irReserved42");
            return (Criteria) this;
        }

        public Criteria andIrReserved42NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED42 not between", value1, value2, "irReserved42");
            return (Criteria) this;
        }

        public Criteria andIrReserved43IsNull() {
            addCriterion("t.IR_RESERVED43 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved43IsNotNull() {
            addCriterion("t.IR_RESERVED43 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved43EqualTo(String value) {
            addCriterion("t.IR_RESERVED43 =", value, "irReserved43");
            return (Criteria) this;
        }

        public Criteria andIrReserved43NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED43 <>", value, "irReserved43");
            return (Criteria) this;
        }

        public Criteria andIrReserved43GreaterThan(String value) {
            addCriterion("t.IR_RESERVED43 >", value, "irReserved43");
            return (Criteria) this;
        }

        public Criteria andIrReserved43GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED43 >=", value, "irReserved43");
            return (Criteria) this;
        }

        public Criteria andIrReserved43LessThan(String value) {
            addCriterion("t.IR_RESERVED43 <", value, "irReserved43");
            return (Criteria) this;
        }

        public Criteria andIrReserved43LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED43 <=", value, "irReserved43");
            return (Criteria) this;
        }

        public Criteria andIrReserved43Like(String value) {
            addCriterion("t.IR_RESERVED43 like", value, "irReserved43");
            return (Criteria) this;
        }

        public Criteria andIrReserved43NotLike(String value) {
            addCriterion("t.IR_RESERVED43 not like", value, "irReserved43");
            return (Criteria) this;
        }

        public Criteria andIrReserved43In(List<String> values) {
            addCriterion("t.IR_RESERVED43 in", values, "irReserved43");
            return (Criteria) this;
        }

        public Criteria andIrReserved43NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED43 not in", values, "irReserved43");
            return (Criteria) this;
        }

        public Criteria andIrReserved43Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED43 between", value1, value2, "irReserved43");
            return (Criteria) this;
        }

        public Criteria andIrReserved43NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED43 not between", value1, value2, "irReserved43");
            return (Criteria) this;
        }

        public Criteria andIrReserved44IsNull() {
            addCriterion("t.IR_RESERVED44 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved44IsNotNull() {
            addCriterion("t.IR_RESERVED44 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved44EqualTo(String value) {
            addCriterion("t.IR_RESERVED44 =", value, "irReserved44");
            return (Criteria) this;
        }

        public Criteria andIrReserved44NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED44 <>", value, "irReserved44");
            return (Criteria) this;
        }

        public Criteria andIrReserved44GreaterThan(String value) {
            addCriterion("t.IR_RESERVED44 >", value, "irReserved44");
            return (Criteria) this;
        }

        public Criteria andIrReserved44GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED44 >=", value, "irReserved44");
            return (Criteria) this;
        }

        public Criteria andIrReserved44LessThan(String value) {
            addCriterion("t.IR_RESERVED44 <", value, "irReserved44");
            return (Criteria) this;
        }

        public Criteria andIrReserved44LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED44 <=", value, "irReserved44");
            return (Criteria) this;
        }

        public Criteria andIrReserved44Like(String value) {
            addCriterion("t.IR_RESERVED44 like", value, "irReserved44");
            return (Criteria) this;
        }

        public Criteria andIrReserved44NotLike(String value) {
            addCriterion("t.IR_RESERVED44 not like", value, "irReserved44");
            return (Criteria) this;
        }

        public Criteria andIrReserved44In(List<String> values) {
            addCriterion("t.IR_RESERVED44 in", values, "irReserved44");
            return (Criteria) this;
        }

        public Criteria andIrReserved44NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED44 not in", values, "irReserved44");
            return (Criteria) this;
        }

        public Criteria andIrReserved44Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED44 between", value1, value2, "irReserved44");
            return (Criteria) this;
        }

        public Criteria andIrReserved44NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED44 not between", value1, value2, "irReserved44");
            return (Criteria) this;
        }

        public Criteria andIrReserved45IsNull() {
            addCriterion("t.IR_RESERVED45 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved45IsNotNull() {
            addCriterion("t.IR_RESERVED45 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved45EqualTo(String value) {
            addCriterion("t.IR_RESERVED45 =", value, "irReserved45");
            return (Criteria) this;
        }

        public Criteria andIrReserved45NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED45 <>", value, "irReserved45");
            return (Criteria) this;
        }

        public Criteria andIrReserved45GreaterThan(String value) {
            addCriterion("t.IR_RESERVED45 >", value, "irReserved45");
            return (Criteria) this;
        }

        public Criteria andIrReserved45GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED45 >=", value, "irReserved45");
            return (Criteria) this;
        }

        public Criteria andIrReserved45LessThan(String value) {
            addCriterion("t.IR_RESERVED45 <", value, "irReserved45");
            return (Criteria) this;
        }

        public Criteria andIrReserved45LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED45 <=", value, "irReserved45");
            return (Criteria) this;
        }

        public Criteria andIrReserved45Like(String value) {
            addCriterion("t.IR_RESERVED45 like", value, "irReserved45");
            return (Criteria) this;
        }

        public Criteria andIrReserved45NotLike(String value) {
            addCriterion("t.IR_RESERVED45 not like", value, "irReserved45");
            return (Criteria) this;
        }

        public Criteria andIrReserved45In(List<String> values) {
            addCriterion("t.IR_RESERVED45 in", values, "irReserved45");
            return (Criteria) this;
        }

        public Criteria andIrReserved45NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED45 not in", values, "irReserved45");
            return (Criteria) this;
        }

        public Criteria andIrReserved45Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED45 between", value1, value2, "irReserved45");
            return (Criteria) this;
        }

        public Criteria andIrReserved45NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED45 not between", value1, value2, "irReserved45");
            return (Criteria) this;
        }

        public Criteria andIrReserved46IsNull() {
            addCriterion("t.IR_RESERVED46 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved46IsNotNull() {
            addCriterion("t.IR_RESERVED46 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved46EqualTo(String value) {
            addCriterion("t.IR_RESERVED46 =", value, "irReserved46");
            return (Criteria) this;
        }

        public Criteria andIrReserved46NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED46 <>", value, "irReserved46");
            return (Criteria) this;
        }

        public Criteria andIrReserved46GreaterThan(String value) {
            addCriterion("t.IR_RESERVED46 >", value, "irReserved46");
            return (Criteria) this;
        }

        public Criteria andIrReserved46GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED46 >=", value, "irReserved46");
            return (Criteria) this;
        }

        public Criteria andIrReserved46LessThan(String value) {
            addCriterion("t.IR_RESERVED46 <", value, "irReserved46");
            return (Criteria) this;
        }

        public Criteria andIrReserved46LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED46 <=", value, "irReserved46");
            return (Criteria) this;
        }

        public Criteria andIrReserved46Like(String value) {
            addCriterion("t.IR_RESERVED46 like", value, "irReserved46");
            return (Criteria) this;
        }

        public Criteria andIrReserved46NotLike(String value) {
            addCriterion("t.IR_RESERVED46 not like", value, "irReserved46");
            return (Criteria) this;
        }

        public Criteria andIrReserved46In(List<String> values) {
            addCriterion("t.IR_RESERVED46 in", values, "irReserved46");
            return (Criteria) this;
        }

        public Criteria andIrReserved46NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED46 not in", values, "irReserved46");
            return (Criteria) this;
        }

        public Criteria andIrReserved46Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED46 between", value1, value2, "irReserved46");
            return (Criteria) this;
        }

        public Criteria andIrReserved46NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED46 not between", value1, value2, "irReserved46");
            return (Criteria) this;
        }

        public Criteria andIrReserved47IsNull() {
            addCriterion("t.IR_RESERVED47 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved47IsNotNull() {
            addCriterion("t.IR_RESERVED47 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved47EqualTo(String value) {
            addCriterion("t.IR_RESERVED47 =", value, "irReserved47");
            return (Criteria) this;
        }

        public Criteria andIrReserved47NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED47 <>", value, "irReserved47");
            return (Criteria) this;
        }

        public Criteria andIrReserved47GreaterThan(String value) {
            addCriterion("t.IR_RESERVED47 >", value, "irReserved47");
            return (Criteria) this;
        }

        public Criteria andIrReserved47GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED47 >=", value, "irReserved47");
            return (Criteria) this;
        }

        public Criteria andIrReserved47LessThan(String value) {
            addCriterion("t.IR_RESERVED47 <", value, "irReserved47");
            return (Criteria) this;
        }

        public Criteria andIrReserved47LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED47 <=", value, "irReserved47");
            return (Criteria) this;
        }

        public Criteria andIrReserved47Like(String value) {
            addCriterion("t.IR_RESERVED47 like", value, "irReserved47");
            return (Criteria) this;
        }

        public Criteria andIrReserved47NotLike(String value) {
            addCriterion("t.IR_RESERVED47 not like", value, "irReserved47");
            return (Criteria) this;
        }

        public Criteria andIrReserved47In(List<String> values) {
            addCriterion("t.IR_RESERVED47 in", values, "irReserved47");
            return (Criteria) this;
        }

        public Criteria andIrReserved47NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED47 not in", values, "irReserved47");
            return (Criteria) this;
        }

        public Criteria andIrReserved47Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED47 between", value1, value2, "irReserved47");
            return (Criteria) this;
        }

        public Criteria andIrReserved47NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED47 not between", value1, value2, "irReserved47");
            return (Criteria) this;
        }

        public Criteria andIrReserved48IsNull() {
            addCriterion("t.IR_RESERVED48 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved48IsNotNull() {
            addCriterion("t.IR_RESERVED48 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved48EqualTo(String value) {
            addCriterion("t.IR_RESERVED48 =", value, "irReserved48");
            return (Criteria) this;
        }

        public Criteria andIrReserved48NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED48 <>", value, "irReserved48");
            return (Criteria) this;
        }

        public Criteria andIrReserved48GreaterThan(String value) {
            addCriterion("t.IR_RESERVED48 >", value, "irReserved48");
            return (Criteria) this;
        }

        public Criteria andIrReserved48GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED48 >=", value, "irReserved48");
            return (Criteria) this;
        }

        public Criteria andIrReserved48LessThan(String value) {
            addCriterion("t.IR_RESERVED48 <", value, "irReserved48");
            return (Criteria) this;
        }

        public Criteria andIrReserved48LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED48 <=", value, "irReserved48");
            return (Criteria) this;
        }

        public Criteria andIrReserved48Like(String value) {
            addCriterion("t.IR_RESERVED48 like", value, "irReserved48");
            return (Criteria) this;
        }

        public Criteria andIrReserved48NotLike(String value) {
            addCriterion("t.IR_RESERVED48 not like", value, "irReserved48");
            return (Criteria) this;
        }

        public Criteria andIrReserved48In(List<String> values) {
            addCriterion("t.IR_RESERVED48 in", values, "irReserved48");
            return (Criteria) this;
        }

        public Criteria andIrReserved48NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED48 not in", values, "irReserved48");
            return (Criteria) this;
        }

        public Criteria andIrReserved48Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED48 between", value1, value2, "irReserved48");
            return (Criteria) this;
        }

        public Criteria andIrReserved48NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED48 not between", value1, value2, "irReserved48");
            return (Criteria) this;
        }

        public Criteria andIrReserved49IsNull() {
            addCriterion("t.IR_RESERVED49 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved49IsNotNull() {
            addCriterion("t.IR_RESERVED49 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved49EqualTo(String value) {
            addCriterion("t.IR_RESERVED49 =", value, "irReserved49");
            return (Criteria) this;
        }

        public Criteria andIrReserved49NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED49 <>", value, "irReserved49");
            return (Criteria) this;
        }

        public Criteria andIrReserved49GreaterThan(String value) {
            addCriterion("t.IR_RESERVED49 >", value, "irReserved49");
            return (Criteria) this;
        }

        public Criteria andIrReserved49GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED49 >=", value, "irReserved49");
            return (Criteria) this;
        }

        public Criteria andIrReserved49LessThan(String value) {
            addCriterion("t.IR_RESERVED49 <", value, "irReserved49");
            return (Criteria) this;
        }

        public Criteria andIrReserved49LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED49 <=", value, "irReserved49");
            return (Criteria) this;
        }

        public Criteria andIrReserved49Like(String value) {
            addCriterion("t.IR_RESERVED49 like", value, "irReserved49");
            return (Criteria) this;
        }

        public Criteria andIrReserved49NotLike(String value) {
            addCriterion("t.IR_RESERVED49 not like", value, "irReserved49");
            return (Criteria) this;
        }

        public Criteria andIrReserved49In(List<String> values) {
            addCriterion("t.IR_RESERVED49 in", values, "irReserved49");
            return (Criteria) this;
        }

        public Criteria andIrReserved49NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED49 not in", values, "irReserved49");
            return (Criteria) this;
        }

        public Criteria andIrReserved49Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED49 between", value1, value2, "irReserved49");
            return (Criteria) this;
        }

        public Criteria andIrReserved49NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED49 not between", value1, value2, "irReserved49");
            return (Criteria) this;
        }

        public Criteria andIrReserved50IsNull() {
            addCriterion("t.IR_RESERVED50 is null");
            return (Criteria) this;
        }

        public Criteria andIrReserved50IsNotNull() {
            addCriterion("t.IR_RESERVED50 is not null");
            return (Criteria) this;
        }

        public Criteria andIrReserved50EqualTo(String value) {
            addCriterion("t.IR_RESERVED50 =", value, "irReserved50");
            return (Criteria) this;
        }

        public Criteria andIrReserved50NotEqualTo(String value) {
            addCriterion("t.IR_RESERVED50 <>", value, "irReserved50");
            return (Criteria) this;
        }

        public Criteria andIrReserved50GreaterThan(String value) {
            addCriterion("t.IR_RESERVED50 >", value, "irReserved50");
            return (Criteria) this;
        }

        public Criteria andIrReserved50GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED50 >=", value, "irReserved50");
            return (Criteria) this;
        }

        public Criteria andIrReserved50LessThan(String value) {
            addCriterion("t.IR_RESERVED50 <", value, "irReserved50");
            return (Criteria) this;
        }

        public Criteria andIrReserved50LessThanOrEqualTo(String value) {
            addCriterion("t.IR_RESERVED50 <=", value, "irReserved50");
            return (Criteria) this;
        }

        public Criteria andIrReserved50Like(String value) {
            addCriterion("t.IR_RESERVED50 like", value, "irReserved50");
            return (Criteria) this;
        }

        public Criteria andIrReserved50NotLike(String value) {
            addCriterion("t.IR_RESERVED50 not like", value, "irReserved50");
            return (Criteria) this;
        }

        public Criteria andIrReserved50In(List<String> values) {
            addCriterion("t.IR_RESERVED50 in", values, "irReserved50");
            return (Criteria) this;
        }

        public Criteria andIrReserved50NotIn(List<String> values) {
            addCriterion("t.IR_RESERVED50 not in", values, "irReserved50");
            return (Criteria) this;
        }

        public Criteria andIrReserved50Between(String value1, String value2) {
            addCriterion("t.IR_RESERVED50 between", value1, value2, "irReserved50");
            return (Criteria) this;
        }

        public Criteria andIrReserved50NotBetween(String value1, String value2) {
            addCriterion("t.IR_RESERVED50 not between", value1, value2, "irReserved50");
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

        public Criteria andIrSrcnameLikeInsensitive(String value) {
            addCriterion("upper(t.IR_SRCNAME) like", value.toUpperCase(), "irSrcname");
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

        public Criteria andIrReserved1LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED1) like", value.toUpperCase(), "irReserved1");
            return (Criteria) this;
        }

        public Criteria andIrReserved2LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED2) like", value.toUpperCase(), "irReserved2");
            return (Criteria) this;
        }

        public Criteria andIrReserved3LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED3) like", value.toUpperCase(), "irReserved3");
            return (Criteria) this;
        }

        public Criteria andIrReserved4LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED4) like", value.toUpperCase(), "irReserved4");
            return (Criteria) this;
        }

        public Criteria andIrReserved5LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED5) like", value.toUpperCase(), "irReserved5");
            return (Criteria) this;
        }

        public Criteria andIrReserved6LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED6) like", value.toUpperCase(), "irReserved6");
            return (Criteria) this;
        }

        public Criteria andIrReserved7LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED7) like", value.toUpperCase(), "irReserved7");
            return (Criteria) this;
        }

        public Criteria andIrReserved8LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED8) like", value.toUpperCase(), "irReserved8");
            return (Criteria) this;
        }

        public Criteria andIrReserved9LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED9) like", value.toUpperCase(), "irReserved9");
            return (Criteria) this;
        }

        public Criteria andIrReserved10LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED10) like", value.toUpperCase(), "irReserved10");
            return (Criteria) this;
        }

        public Criteria andIrReserved11LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED11) like", value.toUpperCase(), "irReserved11");
            return (Criteria) this;
        }

        public Criteria andIrReserved12LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED12) like", value.toUpperCase(), "irReserved12");
            return (Criteria) this;
        }

        public Criteria andIrReserved13LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED13) like", value.toUpperCase(), "irReserved13");
            return (Criteria) this;
        }

        public Criteria andIrReserved14LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED14) like", value.toUpperCase(), "irReserved14");
            return (Criteria) this;
        }

        public Criteria andIrReserved15LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED15) like", value.toUpperCase(), "irReserved15");
            return (Criteria) this;
        }

        public Criteria andIrReserved16LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED16) like", value.toUpperCase(), "irReserved16");
            return (Criteria) this;
        }

        public Criteria andIrReserved17LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED17) like", value.toUpperCase(), "irReserved17");
            return (Criteria) this;
        }

        public Criteria andIrReserved18LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED18) like", value.toUpperCase(), "irReserved18");
            return (Criteria) this;
        }

        public Criteria andIrReserved19LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED19) like", value.toUpperCase(), "irReserved19");
            return (Criteria) this;
        }

        public Criteria andIrReserved20LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED20) like", value.toUpperCase(), "irReserved20");
            return (Criteria) this;
        }

        public Criteria andIrReserved21LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED21) like", value.toUpperCase(), "irReserved21");
            return (Criteria) this;
        }

        public Criteria andIrReserved22LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED22) like", value.toUpperCase(), "irReserved22");
            return (Criteria) this;
        }

        public Criteria andIrReserved23LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED23) like", value.toUpperCase(), "irReserved23");
            return (Criteria) this;
        }

        public Criteria andIrReserved24LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED24) like", value.toUpperCase(), "irReserved24");
            return (Criteria) this;
        }

        public Criteria andIrReserved25LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED25) like", value.toUpperCase(), "irReserved25");
            return (Criteria) this;
        }

        public Criteria andIrReserved26LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED26) like", value.toUpperCase(), "irReserved26");
            return (Criteria) this;
        }

        public Criteria andIrReserved27LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED27) like", value.toUpperCase(), "irReserved27");
            return (Criteria) this;
        }

        public Criteria andIrReserved28LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED28) like", value.toUpperCase(), "irReserved28");
            return (Criteria) this;
        }

        public Criteria andIrReserved29LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED29) like", value.toUpperCase(), "irReserved29");
            return (Criteria) this;
        }

        public Criteria andIrReserved30LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED30) like", value.toUpperCase(), "irReserved30");
            return (Criteria) this;
        }

        public Criteria andIrReserved31LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED31) like", value.toUpperCase(), "irReserved31");
            return (Criteria) this;
        }

        public Criteria andIrReserved32LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED32) like", value.toUpperCase(), "irReserved32");
            return (Criteria) this;
        }

        public Criteria andIrReserved33LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED33) like", value.toUpperCase(), "irReserved33");
            return (Criteria) this;
        }

        public Criteria andIrReserved34LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED34) like", value.toUpperCase(), "irReserved34");
            return (Criteria) this;
        }

        public Criteria andIrReserved35LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED35) like", value.toUpperCase(), "irReserved35");
            return (Criteria) this;
        }

        public Criteria andIrReserved36LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED36) like", value.toUpperCase(), "irReserved36");
            return (Criteria) this;
        }

        public Criteria andIrReserved37LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED37) like", value.toUpperCase(), "irReserved37");
            return (Criteria) this;
        }

        public Criteria andIrReserved38LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED38) like", value.toUpperCase(), "irReserved38");
            return (Criteria) this;
        }

        public Criteria andIrReserved39LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED39) like", value.toUpperCase(), "irReserved39");
            return (Criteria) this;
        }

        public Criteria andIrReserved40LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED40) like", value.toUpperCase(), "irReserved40");
            return (Criteria) this;
        }

        public Criteria andIrReserved41LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED41) like", value.toUpperCase(), "irReserved41");
            return (Criteria) this;
        }

        public Criteria andIrReserved42LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED42) like", value.toUpperCase(), "irReserved42");
            return (Criteria) this;
        }

        public Criteria andIrReserved43LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED43) like", value.toUpperCase(), "irReserved43");
            return (Criteria) this;
        }

        public Criteria andIrReserved44LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED44) like", value.toUpperCase(), "irReserved44");
            return (Criteria) this;
        }

        public Criteria andIrReserved45LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED45) like", value.toUpperCase(), "irReserved45");
            return (Criteria) this;
        }

        public Criteria andIrReserved46LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED46) like", value.toUpperCase(), "irReserved46");
            return (Criteria) this;
        }

        public Criteria andIrReserved47LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED47) like", value.toUpperCase(), "irReserved47");
            return (Criteria) this;
        }

        public Criteria andIrReserved48LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED48) like", value.toUpperCase(), "irReserved48");
            return (Criteria) this;
        }

        public Criteria andIrReserved49LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED49) like", value.toUpperCase(), "irReserved49");
            return (Criteria) this;
        }

        public Criteria andIrReserved50LikeInsensitive(String value) {
            addCriterion("upper(t.IR_RESERVED50) like", value.toUpperCase(), "irReserved50");
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