package com.wine.model3;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class TocleanCriteria {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TocleanCriteria() {
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

        public Criteria andIrBiddingDateIsNull() {
            addCriterion("t.IR_BIDDING_DATE is null");
            return (Criteria) this;
        }

        public Criteria andIrBiddingDateIsNotNull() {
            addCriterion("t.IR_BIDDING_DATE is not null");
            return (Criteria) this;
        }

        public Criteria andIrBiddingDateEqualTo(Date value) {
            addCriterion("t.IR_BIDDING_DATE =", value, "irBiddingDate");
            return (Criteria) this;
        }

        public Criteria andIrBiddingDateNotEqualTo(Date value) {
            addCriterion("t.IR_BIDDING_DATE <>", value, "irBiddingDate");
            return (Criteria) this;
        }

        public Criteria andIrBiddingDateGreaterThan(Date value) {
            addCriterion("t.IR_BIDDING_DATE >", value, "irBiddingDate");
            return (Criteria) this;
        }

        public Criteria andIrBiddingDateGreaterThanOrEqualTo(Date value) {
            addCriterion("t.IR_BIDDING_DATE >=", value, "irBiddingDate");
            return (Criteria) this;
        }

        public Criteria andIrBiddingDateLessThan(Date value) {
            addCriterion("t.IR_BIDDING_DATE <", value, "irBiddingDate");
            return (Criteria) this;
        }

        public Criteria andIrBiddingDateLessThanOrEqualTo(Date value) {
            addCriterion("t.IR_BIDDING_DATE <=", value, "irBiddingDate");
            return (Criteria) this;
        }

        public Criteria andIrBiddingDateIn(List<Date> values) {
            addCriterion("t.IR_BIDDING_DATE in", values, "irBiddingDate");
            return (Criteria) this;
        }

        public Criteria andIrBiddingDateNotIn(List<Date> values) {
            addCriterion("t.IR_BIDDING_DATE not in", values, "irBiddingDate");
            return (Criteria) this;
        }

        public Criteria andIrBiddingDateBetween(Date value1, Date value2) {
            addCriterion("t.IR_BIDDING_DATE between", value1, value2, "irBiddingDate");
            return (Criteria) this;
        }

        public Criteria andIrBiddingDateNotBetween(Date value1, Date value2) {
            addCriterion("t.IR_BIDDING_DATE not between", value1, value2, "irBiddingDate");
            return (Criteria) this;
        }

        public Criteria andClCheckCountIsNull() {
            addCriterion("t.CL_CHECK_COUNT is null");
            return (Criteria) this;
        }

        public Criteria andClCheckCountIsNotNull() {
            addCriterion("t.CL_CHECK_COUNT is not null");
            return (Criteria) this;
        }

        public Criteria andClCheckCountEqualTo(Integer value) {
            addCriterion("t.CL_CHECK_COUNT =", value, "clCheckCount");
            return (Criteria) this;
        }

        public Criteria andClCheckCountNotEqualTo(Integer value) {
            addCriterion("t.CL_CHECK_COUNT <>", value, "clCheckCount");
            return (Criteria) this;
        }

        public Criteria andClCheckCountGreaterThan(Integer value) {
            addCriterion("t.CL_CHECK_COUNT >", value, "clCheckCount");
            return (Criteria) this;
        }

        public Criteria andClCheckCountGreaterThanOrEqualTo(Integer value) {
            addCriterion("t.CL_CHECK_COUNT >=", value, "clCheckCount");
            return (Criteria) this;
        }

        public Criteria andClCheckCountLessThan(Integer value) {
            addCriterion("t.CL_CHECK_COUNT <", value, "clCheckCount");
            return (Criteria) this;
        }

        public Criteria andClCheckCountLessThanOrEqualTo(Integer value) {
            addCriterion("t.CL_CHECK_COUNT <=", value, "clCheckCount");
            return (Criteria) this;
        }

        public Criteria andClCheckCountIn(List<Integer> values) {
            addCriterion("t.CL_CHECK_COUNT in", values, "clCheckCount");
            return (Criteria) this;
        }

        public Criteria andClCheckCountNotIn(List<Integer> values) {
            addCriterion("t.CL_CHECK_COUNT not in", values, "clCheckCount");
            return (Criteria) this;
        }

        public Criteria andClCheckCountBetween(Integer value1, Integer value2) {
            addCriterion("t.CL_CHECK_COUNT between", value1, value2, "clCheckCount");
            return (Criteria) this;
        }

        public Criteria andClCheckCountNotBetween(Integer value1, Integer value2) {
            addCriterion("t.CL_CHECK_COUNT not between", value1, value2, "clCheckCount");
            return (Criteria) this;
        }

        public Criteria andClTaskidIsNull() {
            addCriterion("t.CL_TASKID is null");
            return (Criteria) this;
        }

        public Criteria andClTaskidIsNotNull() {
            addCriterion("t.CL_TASKID is not null");
            return (Criteria) this;
        }

        public Criteria andClTaskidEqualTo(String value) {
            addCriterion("t.CL_TASKID =", value, "clTaskid");
            return (Criteria) this;
        }

        public Criteria andClTaskidNotEqualTo(String value) {
            addCriterion("t.CL_TASKID <>", value, "clTaskid");
            return (Criteria) this;
        }

        public Criteria andClTaskidGreaterThan(String value) {
            addCriterion("t.CL_TASKID >", value, "clTaskid");
            return (Criteria) this;
        }

        public Criteria andClTaskidGreaterThanOrEqualTo(String value) {
            addCriterion("t.CL_TASKID >=", value, "clTaskid");
            return (Criteria) this;
        }

        public Criteria andClTaskidLessThan(String value) {
            addCriterion("t.CL_TASKID <", value, "clTaskid");
            return (Criteria) this;
        }

        public Criteria andClTaskidLessThanOrEqualTo(String value) {
            addCriterion("t.CL_TASKID <=", value, "clTaskid");
            return (Criteria) this;
        }

        public Criteria andClTaskidLike(String value) {
            addCriterion("t.CL_TASKID like", value, "clTaskid");
            return (Criteria) this;
        }

        public Criteria andClTaskidNotLike(String value) {
            addCriterion("t.CL_TASKID not like", value, "clTaskid");
            return (Criteria) this;
        }

        public Criteria andClTaskidIn(List<String> values) {
            addCriterion("t.CL_TASKID in", values, "clTaskid");
            return (Criteria) this;
        }

        public Criteria andClTaskidNotIn(List<String> values) {
            addCriterion("t.CL_TASKID not in", values, "clTaskid");
            return (Criteria) this;
        }

        public Criteria andClTaskidBetween(String value1, String value2) {
            addCriterion("t.CL_TASKID between", value1, value2, "clTaskid");
            return (Criteria) this;
        }

        public Criteria andClTaskidNotBetween(String value1, String value2) {
            addCriterion("t.CL_TASKID not between", value1, value2, "clTaskid");
            return (Criteria) this;
        }

        public Criteria andClCheckWorkerIsNull() {
            addCriterion("t.CL_CHECK_WORKER is null");
            return (Criteria) this;
        }

        public Criteria andClCheckWorkerIsNotNull() {
            addCriterion("t.CL_CHECK_WORKER is not null");
            return (Criteria) this;
        }

        public Criteria andClCheckWorkerEqualTo(String value) {
            addCriterion("t.CL_CHECK_WORKER =", value, "clCheckWorker");
            return (Criteria) this;
        }

        public Criteria andClCheckWorkerNotEqualTo(String value) {
            addCriterion("t.CL_CHECK_WORKER <>", value, "clCheckWorker");
            return (Criteria) this;
        }

        public Criteria andClCheckWorkerGreaterThan(String value) {
            addCriterion("t.CL_CHECK_WORKER >", value, "clCheckWorker");
            return (Criteria) this;
        }

        public Criteria andClCheckWorkerGreaterThanOrEqualTo(String value) {
            addCriterion("t.CL_CHECK_WORKER >=", value, "clCheckWorker");
            return (Criteria) this;
        }

        public Criteria andClCheckWorkerLessThan(String value) {
            addCriterion("t.CL_CHECK_WORKER <", value, "clCheckWorker");
            return (Criteria) this;
        }

        public Criteria andClCheckWorkerLessThanOrEqualTo(String value) {
            addCriterion("t.CL_CHECK_WORKER <=", value, "clCheckWorker");
            return (Criteria) this;
        }

        public Criteria andClCheckWorkerLike(String value) {
            addCriterion("t.CL_CHECK_WORKER like", value, "clCheckWorker");
            return (Criteria) this;
        }

        public Criteria andClCheckWorkerNotLike(String value) {
            addCriterion("t.CL_CHECK_WORKER not like", value, "clCheckWorker");
            return (Criteria) this;
        }

        public Criteria andClCheckWorkerIn(List<String> values) {
            addCriterion("t.CL_CHECK_WORKER in", values, "clCheckWorker");
            return (Criteria) this;
        }

        public Criteria andClCheckWorkerNotIn(List<String> values) {
            addCriterion("t.CL_CHECK_WORKER not in", values, "clCheckWorker");
            return (Criteria) this;
        }

        public Criteria andClCheckWorkerBetween(String value1, String value2) {
            addCriterion("t.CL_CHECK_WORKER between", value1, value2, "clCheckWorker");
            return (Criteria) this;
        }

        public Criteria andClCheckWorkerNotBetween(String value1, String value2) {
            addCriterion("t.CL_CHECK_WORKER not between", value1, value2, "clCheckWorker");
            return (Criteria) this;
        }

        public Criteria andIrHkeyLikeInsensitive(String value) {
            addCriterion("upper(t.IR_HKEY) like", value.toUpperCase(), "irHkey");
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

        public Criteria andIrUrltitleLikeInsensitive(String value) {
            addCriterion("upper(t.IR_URLTITLE) like", value.toUpperCase(), "irUrltitle");
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

        public Criteria andClTaskidLikeInsensitive(String value) {
            addCriterion("upper(t.CL_TASKID) like", value.toUpperCase(), "clTaskid");
            return (Criteria) this;
        }

        public Criteria andClCheckWorkerLikeInsensitive(String value) {
            addCriterion("upper(t.CL_CHECK_WORKER) like", value.toUpperCase(), "clCheckWorker");
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