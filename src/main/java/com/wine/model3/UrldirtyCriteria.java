package com.wine.model3;

import java.util.ArrayList;
import java.util.List;

public class UrldirtyCriteria {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public UrldirtyCriteria() {
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

        public Criteria andIrLasttimeEqualTo(String value) {
            addCriterion("t.IR_LASTTIME =", value, "irLasttime");
            return (Criteria) this;
        }

        public Criteria andIrLasttimeNotEqualTo(String value) {
            addCriterion("t.IR_LASTTIME <>", value, "irLasttime");
            return (Criteria) this;
        }

        public Criteria andIrLasttimeGreaterThan(String value) {
            addCriterion("t.IR_LASTTIME >", value, "irLasttime");
            return (Criteria) this;
        }

        public Criteria andIrLasttimeGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_LASTTIME >=", value, "irLasttime");
            return (Criteria) this;
        }

        public Criteria andIrLasttimeLessThan(String value) {
            addCriterion("t.IR_LASTTIME <", value, "irLasttime");
            return (Criteria) this;
        }

        public Criteria andIrLasttimeLessThanOrEqualTo(String value) {
            addCriterion("t.IR_LASTTIME <=", value, "irLasttime");
            return (Criteria) this;
        }

        public Criteria andIrLasttimeLike(String value) {
            addCriterion("t.IR_LASTTIME like", value, "irLasttime");
            return (Criteria) this;
        }

        public Criteria andIrLasttimeNotLike(String value) {
            addCriterion("t.IR_LASTTIME not like", value, "irLasttime");
            return (Criteria) this;
        }

        public Criteria andIrLasttimeIn(List<String> values) {
            addCriterion("t.IR_LASTTIME in", values, "irLasttime");
            return (Criteria) this;
        }

        public Criteria andIrLasttimeNotIn(List<String> values) {
            addCriterion("t.IR_LASTTIME not in", values, "irLasttime");
            return (Criteria) this;
        }

        public Criteria andIrLasttimeBetween(String value1, String value2) {
            addCriterion("t.IR_LASTTIME between", value1, value2, "irLasttime");
            return (Criteria) this;
        }

        public Criteria andIrLasttimeNotBetween(String value1, String value2) {
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

        public Criteria andIrUrldateEqualTo(String value) {
            addCriterion("t.IR_URLDATE =", value, "irUrldate");
            return (Criteria) this;
        }

        public Criteria andIrUrldateNotEqualTo(String value) {
            addCriterion("t.IR_URLDATE <>", value, "irUrldate");
            return (Criteria) this;
        }

        public Criteria andIrUrldateGreaterThan(String value) {
            addCriterion("t.IR_URLDATE >", value, "irUrldate");
            return (Criteria) this;
        }

        public Criteria andIrUrldateGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_URLDATE >=", value, "irUrldate");
            return (Criteria) this;
        }

        public Criteria andIrUrldateLessThan(String value) {
            addCriterion("t.IR_URLDATE <", value, "irUrldate");
            return (Criteria) this;
        }

        public Criteria andIrUrldateLessThanOrEqualTo(String value) {
            addCriterion("t.IR_URLDATE <=", value, "irUrldate");
            return (Criteria) this;
        }

        public Criteria andIrUrldateLike(String value) {
            addCriterion("t.IR_URLDATE like", value, "irUrldate");
            return (Criteria) this;
        }

        public Criteria andIrUrldateNotLike(String value) {
            addCriterion("t.IR_URLDATE not like", value, "irUrldate");
            return (Criteria) this;
        }

        public Criteria andIrUrldateIn(List<String> values) {
            addCriterion("t.IR_URLDATE in", values, "irUrldate");
            return (Criteria) this;
        }

        public Criteria andIrUrldateNotIn(List<String> values) {
            addCriterion("t.IR_URLDATE not in", values, "irUrldate");
            return (Criteria) this;
        }

        public Criteria andIrUrldateBetween(String value1, String value2) {
            addCriterion("t.IR_URLDATE between", value1, value2, "irUrldate");
            return (Criteria) this;
        }

        public Criteria andIrUrldateNotBetween(String value1, String value2) {
            addCriterion("t.IR_URLDATE not between", value1, value2, "irUrldate");
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

        public Criteria andIrUrltimeEqualTo(String value) {
            addCriterion("t.IR_URLTIME =", value, "irUrltime");
            return (Criteria) this;
        }

        public Criteria andIrUrltimeNotEqualTo(String value) {
            addCriterion("t.IR_URLTIME <>", value, "irUrltime");
            return (Criteria) this;
        }

        public Criteria andIrUrltimeGreaterThan(String value) {
            addCriterion("t.IR_URLTIME >", value, "irUrltime");
            return (Criteria) this;
        }

        public Criteria andIrUrltimeGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_URLTIME >=", value, "irUrltime");
            return (Criteria) this;
        }

        public Criteria andIrUrltimeLessThan(String value) {
            addCriterion("t.IR_URLTIME <", value, "irUrltime");
            return (Criteria) this;
        }

        public Criteria andIrUrltimeLessThanOrEqualTo(String value) {
            addCriterion("t.IR_URLTIME <=", value, "irUrltime");
            return (Criteria) this;
        }

        public Criteria andIrUrltimeLike(String value) {
            addCriterion("t.IR_URLTIME like", value, "irUrltime");
            return (Criteria) this;
        }

        public Criteria andIrUrltimeNotLike(String value) {
            addCriterion("t.IR_URLTIME not like", value, "irUrltime");
            return (Criteria) this;
        }

        public Criteria andIrUrltimeIn(List<String> values) {
            addCriterion("t.IR_URLTIME in", values, "irUrltime");
            return (Criteria) this;
        }

        public Criteria andIrUrltimeNotIn(List<String> values) {
            addCriterion("t.IR_URLTIME not in", values, "irUrltime");
            return (Criteria) this;
        }

        public Criteria andIrUrltimeBetween(String value1, String value2) {
            addCriterion("t.IR_URLTIME between", value1, value2, "irUrltime");
            return (Criteria) this;
        }

        public Criteria andIrUrltimeNotBetween(String value1, String value2) {
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

        public Criteria andIrLoadtimeEqualTo(String value) {
            addCriterion("t.IR_LOADTIME =", value, "irLoadtime");
            return (Criteria) this;
        }

        public Criteria andIrLoadtimeNotEqualTo(String value) {
            addCriterion("t.IR_LOADTIME <>", value, "irLoadtime");
            return (Criteria) this;
        }

        public Criteria andIrLoadtimeGreaterThan(String value) {
            addCriterion("t.IR_LOADTIME >", value, "irLoadtime");
            return (Criteria) this;
        }

        public Criteria andIrLoadtimeGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_LOADTIME >=", value, "irLoadtime");
            return (Criteria) this;
        }

        public Criteria andIrLoadtimeLessThan(String value) {
            addCriterion("t.IR_LOADTIME <", value, "irLoadtime");
            return (Criteria) this;
        }

        public Criteria andIrLoadtimeLessThanOrEqualTo(String value) {
            addCriterion("t.IR_LOADTIME <=", value, "irLoadtime");
            return (Criteria) this;
        }

        public Criteria andIrLoadtimeLike(String value) {
            addCriterion("t.IR_LOADTIME like", value, "irLoadtime");
            return (Criteria) this;
        }

        public Criteria andIrLoadtimeNotLike(String value) {
            addCriterion("t.IR_LOADTIME not like", value, "irLoadtime");
            return (Criteria) this;
        }

        public Criteria andIrLoadtimeIn(List<String> values) {
            addCriterion("t.IR_LOADTIME in", values, "irLoadtime");
            return (Criteria) this;
        }

        public Criteria andIrLoadtimeNotIn(List<String> values) {
            addCriterion("t.IR_LOADTIME not in", values, "irLoadtime");
            return (Criteria) this;
        }

        public Criteria andIrLoadtimeBetween(String value1, String value2) {
            addCriterion("t.IR_LOADTIME between", value1, value2, "irLoadtime");
            return (Criteria) this;
        }

        public Criteria andIrLoadtimeNotBetween(String value1, String value2) {
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

        public Criteria andIrSimrankEqualTo(String value) {
            addCriterion("t.IR_SIMRANK =", value, "irSimrank");
            return (Criteria) this;
        }

        public Criteria andIrSimrankNotEqualTo(String value) {
            addCriterion("t.IR_SIMRANK <>", value, "irSimrank");
            return (Criteria) this;
        }

        public Criteria andIrSimrankGreaterThan(String value) {
            addCriterion("t.IR_SIMRANK >", value, "irSimrank");
            return (Criteria) this;
        }

        public Criteria andIrSimrankGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_SIMRANK >=", value, "irSimrank");
            return (Criteria) this;
        }

        public Criteria andIrSimrankLessThan(String value) {
            addCriterion("t.IR_SIMRANK <", value, "irSimrank");
            return (Criteria) this;
        }

        public Criteria andIrSimrankLessThanOrEqualTo(String value) {
            addCriterion("t.IR_SIMRANK <=", value, "irSimrank");
            return (Criteria) this;
        }

        public Criteria andIrSimrankLike(String value) {
            addCriterion("t.IR_SIMRANK like", value, "irSimrank");
            return (Criteria) this;
        }

        public Criteria andIrSimrankNotLike(String value) {
            addCriterion("t.IR_SIMRANK not like", value, "irSimrank");
            return (Criteria) this;
        }

        public Criteria andIrSimrankIn(List<String> values) {
            addCriterion("t.IR_SIMRANK in", values, "irSimrank");
            return (Criteria) this;
        }

        public Criteria andIrSimrankNotIn(List<String> values) {
            addCriterion("t.IR_SIMRANK not in", values, "irSimrank");
            return (Criteria) this;
        }

        public Criteria andIrSimrankBetween(String value1, String value2) {
            addCriterion("t.IR_SIMRANK between", value1, value2, "irSimrank");
            return (Criteria) this;
        }

        public Criteria andIrSimrankNotBetween(String value1, String value2) {
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

        public Criteria andIrImageflagEqualTo(String value) {
            addCriterion("t.IR_IMAGEFLAG =", value, "irImageflag");
            return (Criteria) this;
        }

        public Criteria andIrImageflagNotEqualTo(String value) {
            addCriterion("t.IR_IMAGEFLAG <>", value, "irImageflag");
            return (Criteria) this;
        }

        public Criteria andIrImageflagGreaterThan(String value) {
            addCriterion("t.IR_IMAGEFLAG >", value, "irImageflag");
            return (Criteria) this;
        }

        public Criteria andIrImageflagGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_IMAGEFLAG >=", value, "irImageflag");
            return (Criteria) this;
        }

        public Criteria andIrImageflagLessThan(String value) {
            addCriterion("t.IR_IMAGEFLAG <", value, "irImageflag");
            return (Criteria) this;
        }

        public Criteria andIrImageflagLessThanOrEqualTo(String value) {
            addCriterion("t.IR_IMAGEFLAG <=", value, "irImageflag");
            return (Criteria) this;
        }

        public Criteria andIrImageflagLike(String value) {
            addCriterion("t.IR_IMAGEFLAG like", value, "irImageflag");
            return (Criteria) this;
        }

        public Criteria andIrImageflagNotLike(String value) {
            addCriterion("t.IR_IMAGEFLAG not like", value, "irImageflag");
            return (Criteria) this;
        }

        public Criteria andIrImageflagIn(List<String> values) {
            addCriterion("t.IR_IMAGEFLAG in", values, "irImageflag");
            return (Criteria) this;
        }

        public Criteria andIrImageflagNotIn(List<String> values) {
            addCriterion("t.IR_IMAGEFLAG not in", values, "irImageflag");
            return (Criteria) this;
        }

        public Criteria andIrImageflagBetween(String value1, String value2) {
            addCriterion("t.IR_IMAGEFLAG between", value1, value2, "irImageflag");
            return (Criteria) this;
        }

        public Criteria andIrImageflagNotBetween(String value1, String value2) {
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

        public Criteria andIrTableflagEqualTo(String value) {
            addCriterion("t.IR_TABLEFLAG =", value, "irTableflag");
            return (Criteria) this;
        }

        public Criteria andIrTableflagNotEqualTo(String value) {
            addCriterion("t.IR_TABLEFLAG <>", value, "irTableflag");
            return (Criteria) this;
        }

        public Criteria andIrTableflagGreaterThan(String value) {
            addCriterion("t.IR_TABLEFLAG >", value, "irTableflag");
            return (Criteria) this;
        }

        public Criteria andIrTableflagGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_TABLEFLAG >=", value, "irTableflag");
            return (Criteria) this;
        }

        public Criteria andIrTableflagLessThan(String value) {
            addCriterion("t.IR_TABLEFLAG <", value, "irTableflag");
            return (Criteria) this;
        }

        public Criteria andIrTableflagLessThanOrEqualTo(String value) {
            addCriterion("t.IR_TABLEFLAG <=", value, "irTableflag");
            return (Criteria) this;
        }

        public Criteria andIrTableflagLike(String value) {
            addCriterion("t.IR_TABLEFLAG like", value, "irTableflag");
            return (Criteria) this;
        }

        public Criteria andIrTableflagNotLike(String value) {
            addCriterion("t.IR_TABLEFLAG not like", value, "irTableflag");
            return (Criteria) this;
        }

        public Criteria andIrTableflagIn(List<String> values) {
            addCriterion("t.IR_TABLEFLAG in", values, "irTableflag");
            return (Criteria) this;
        }

        public Criteria andIrTableflagNotIn(List<String> values) {
            addCriterion("t.IR_TABLEFLAG not in", values, "irTableflag");
            return (Criteria) this;
        }

        public Criteria andIrTableflagBetween(String value1, String value2) {
            addCriterion("t.IR_TABLEFLAG between", value1, value2, "irTableflag");
            return (Criteria) this;
        }

        public Criteria andIrTableflagNotBetween(String value1, String value2) {
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

        public Criteria andIrDoclengthEqualTo(String value) {
            addCriterion("t.IR_DOCLENGTH =", value, "irDoclength");
            return (Criteria) this;
        }

        public Criteria andIrDoclengthNotEqualTo(String value) {
            addCriterion("t.IR_DOCLENGTH <>", value, "irDoclength");
            return (Criteria) this;
        }

        public Criteria andIrDoclengthGreaterThan(String value) {
            addCriterion("t.IR_DOCLENGTH >", value, "irDoclength");
            return (Criteria) this;
        }

        public Criteria andIrDoclengthGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_DOCLENGTH >=", value, "irDoclength");
            return (Criteria) this;
        }

        public Criteria andIrDoclengthLessThan(String value) {
            addCriterion("t.IR_DOCLENGTH <", value, "irDoclength");
            return (Criteria) this;
        }

        public Criteria andIrDoclengthLessThanOrEqualTo(String value) {
            addCriterion("t.IR_DOCLENGTH <=", value, "irDoclength");
            return (Criteria) this;
        }

        public Criteria andIrDoclengthLike(String value) {
            addCriterion("t.IR_DOCLENGTH like", value, "irDoclength");
            return (Criteria) this;
        }

        public Criteria andIrDoclengthNotLike(String value) {
            addCriterion("t.IR_DOCLENGTH not like", value, "irDoclength");
            return (Criteria) this;
        }

        public Criteria andIrDoclengthIn(List<String> values) {
            addCriterion("t.IR_DOCLENGTH in", values, "irDoclength");
            return (Criteria) this;
        }

        public Criteria andIrDoclengthNotIn(List<String> values) {
            addCriterion("t.IR_DOCLENGTH not in", values, "irDoclength");
            return (Criteria) this;
        }

        public Criteria andIrDoclengthBetween(String value1, String value2) {
            addCriterion("t.IR_DOCLENGTH between", value1, value2, "irDoclength");
            return (Criteria) this;
        }

        public Criteria andIrDoclengthNotBetween(String value1, String value2) {
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

        public Criteria andIrBbsnumEqualTo(String value) {
            addCriterion("t.IR_BBSNUM =", value, "irBbsnum");
            return (Criteria) this;
        }

        public Criteria andIrBbsnumNotEqualTo(String value) {
            addCriterion("t.IR_BBSNUM <>", value, "irBbsnum");
            return (Criteria) this;
        }

        public Criteria andIrBbsnumGreaterThan(String value) {
            addCriterion("t.IR_BBSNUM >", value, "irBbsnum");
            return (Criteria) this;
        }

        public Criteria andIrBbsnumGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_BBSNUM >=", value, "irBbsnum");
            return (Criteria) this;
        }

        public Criteria andIrBbsnumLessThan(String value) {
            addCriterion("t.IR_BBSNUM <", value, "irBbsnum");
            return (Criteria) this;
        }

        public Criteria andIrBbsnumLessThanOrEqualTo(String value) {
            addCriterion("t.IR_BBSNUM <=", value, "irBbsnum");
            return (Criteria) this;
        }

        public Criteria andIrBbsnumLike(String value) {
            addCriterion("t.IR_BBSNUM like", value, "irBbsnum");
            return (Criteria) this;
        }

        public Criteria andIrBbsnumNotLike(String value) {
            addCriterion("t.IR_BBSNUM not like", value, "irBbsnum");
            return (Criteria) this;
        }

        public Criteria andIrBbsnumIn(List<String> values) {
            addCriterion("t.IR_BBSNUM in", values, "irBbsnum");
            return (Criteria) this;
        }

        public Criteria andIrBbsnumNotIn(List<String> values) {
            addCriterion("t.IR_BBSNUM not in", values, "irBbsnum");
            return (Criteria) this;
        }

        public Criteria andIrBbsnumBetween(String value1, String value2) {
            addCriterion("t.IR_BBSNUM between", value1, value2, "irBbsnum");
            return (Criteria) this;
        }

        public Criteria andIrBbsnumNotBetween(String value1, String value2) {
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

        public Criteria andIrBbstopicEqualTo(String value) {
            addCriterion("t.IR_BBSTOPIC =", value, "irBbstopic");
            return (Criteria) this;
        }

        public Criteria andIrBbstopicNotEqualTo(String value) {
            addCriterion("t.IR_BBSTOPIC <>", value, "irBbstopic");
            return (Criteria) this;
        }

        public Criteria andIrBbstopicGreaterThan(String value) {
            addCriterion("t.IR_BBSTOPIC >", value, "irBbstopic");
            return (Criteria) this;
        }

        public Criteria andIrBbstopicGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_BBSTOPIC >=", value, "irBbstopic");
            return (Criteria) this;
        }

        public Criteria andIrBbstopicLessThan(String value) {
            addCriterion("t.IR_BBSTOPIC <", value, "irBbstopic");
            return (Criteria) this;
        }

        public Criteria andIrBbstopicLessThanOrEqualTo(String value) {
            addCriterion("t.IR_BBSTOPIC <=", value, "irBbstopic");
            return (Criteria) this;
        }

        public Criteria andIrBbstopicLike(String value) {
            addCriterion("t.IR_BBSTOPIC like", value, "irBbstopic");
            return (Criteria) this;
        }

        public Criteria andIrBbstopicNotLike(String value) {
            addCriterion("t.IR_BBSTOPIC not like", value, "irBbstopic");
            return (Criteria) this;
        }

        public Criteria andIrBbstopicIn(List<String> values) {
            addCriterion("t.IR_BBSTOPIC in", values, "irBbstopic");
            return (Criteria) this;
        }

        public Criteria andIrBbstopicNotIn(List<String> values) {
            addCriterion("t.IR_BBSTOPIC not in", values, "irBbstopic");
            return (Criteria) this;
        }

        public Criteria andIrBbstopicBetween(String value1, String value2) {
            addCriterion("t.IR_BBSTOPIC between", value1, value2, "irBbstopic");
            return (Criteria) this;
        }

        public Criteria andIrBbstopicNotBetween(String value1, String value2) {
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

        public Criteria andIrPagelevelEqualTo(String value) {
            addCriterion("t.IR_PAGELEVEL =", value, "irPagelevel");
            return (Criteria) this;
        }

        public Criteria andIrPagelevelNotEqualTo(String value) {
            addCriterion("t.IR_PAGELEVEL <>", value, "irPagelevel");
            return (Criteria) this;
        }

        public Criteria andIrPagelevelGreaterThan(String value) {
            addCriterion("t.IR_PAGELEVEL >", value, "irPagelevel");
            return (Criteria) this;
        }

        public Criteria andIrPagelevelGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_PAGELEVEL >=", value, "irPagelevel");
            return (Criteria) this;
        }

        public Criteria andIrPagelevelLessThan(String value) {
            addCriterion("t.IR_PAGELEVEL <", value, "irPagelevel");
            return (Criteria) this;
        }

        public Criteria andIrPagelevelLessThanOrEqualTo(String value) {
            addCriterion("t.IR_PAGELEVEL <=", value, "irPagelevel");
            return (Criteria) this;
        }

        public Criteria andIrPagelevelLike(String value) {
            addCriterion("t.IR_PAGELEVEL like", value, "irPagelevel");
            return (Criteria) this;
        }

        public Criteria andIrPagelevelNotLike(String value) {
            addCriterion("t.IR_PAGELEVEL not like", value, "irPagelevel");
            return (Criteria) this;
        }

        public Criteria andIrPagelevelIn(List<String> values) {
            addCriterion("t.IR_PAGELEVEL in", values, "irPagelevel");
            return (Criteria) this;
        }

        public Criteria andIrPagelevelNotIn(List<String> values) {
            addCriterion("t.IR_PAGELEVEL not in", values, "irPagelevel");
            return (Criteria) this;
        }

        public Criteria andIrPagelevelBetween(String value1, String value2) {
            addCriterion("t.IR_PAGELEVEL between", value1, value2, "irPagelevel");
            return (Criteria) this;
        }

        public Criteria andIrPagelevelNotBetween(String value1, String value2) {
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

        public Criteria andIrPagerankEqualTo(String value) {
            addCriterion("t.IR_PAGERANK =", value, "irPagerank");
            return (Criteria) this;
        }

        public Criteria andIrPagerankNotEqualTo(String value) {
            addCriterion("t.IR_PAGERANK <>", value, "irPagerank");
            return (Criteria) this;
        }

        public Criteria andIrPagerankGreaterThan(String value) {
            addCriterion("t.IR_PAGERANK >", value, "irPagerank");
            return (Criteria) this;
        }

        public Criteria andIrPagerankGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_PAGERANK >=", value, "irPagerank");
            return (Criteria) this;
        }

        public Criteria andIrPagerankLessThan(String value) {
            addCriterion("t.IR_PAGERANK <", value, "irPagerank");
            return (Criteria) this;
        }

        public Criteria andIrPagerankLessThanOrEqualTo(String value) {
            addCriterion("t.IR_PAGERANK <=", value, "irPagerank");
            return (Criteria) this;
        }

        public Criteria andIrPagerankLike(String value) {
            addCriterion("t.IR_PAGERANK like", value, "irPagerank");
            return (Criteria) this;
        }

        public Criteria andIrPagerankNotLike(String value) {
            addCriterion("t.IR_PAGERANK not like", value, "irPagerank");
            return (Criteria) this;
        }

        public Criteria andIrPagerankIn(List<String> values) {
            addCriterion("t.IR_PAGERANK in", values, "irPagerank");
            return (Criteria) this;
        }

        public Criteria andIrPagerankNotIn(List<String> values) {
            addCriterion("t.IR_PAGERANK not in", values, "irPagerank");
            return (Criteria) this;
        }

        public Criteria andIrPagerankBetween(String value1, String value2) {
            addCriterion("t.IR_PAGERANK between", value1, value2, "irPagerank");
            return (Criteria) this;
        }

        public Criteria andIrPagerankNotBetween(String value1, String value2) {
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

        public Criteria andIrUrllevelEqualTo(String value) {
            addCriterion("t.IR_URLLEVEL =", value, "irUrllevel");
            return (Criteria) this;
        }

        public Criteria andIrUrllevelNotEqualTo(String value) {
            addCriterion("t.IR_URLLEVEL <>", value, "irUrllevel");
            return (Criteria) this;
        }

        public Criteria andIrUrllevelGreaterThan(String value) {
            addCriterion("t.IR_URLLEVEL >", value, "irUrllevel");
            return (Criteria) this;
        }

        public Criteria andIrUrllevelGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_URLLEVEL >=", value, "irUrllevel");
            return (Criteria) this;
        }

        public Criteria andIrUrllevelLessThan(String value) {
            addCriterion("t.IR_URLLEVEL <", value, "irUrllevel");
            return (Criteria) this;
        }

        public Criteria andIrUrllevelLessThanOrEqualTo(String value) {
            addCriterion("t.IR_URLLEVEL <=", value, "irUrllevel");
            return (Criteria) this;
        }

        public Criteria andIrUrllevelLike(String value) {
            addCriterion("t.IR_URLLEVEL like", value, "irUrllevel");
            return (Criteria) this;
        }

        public Criteria andIrUrllevelNotLike(String value) {
            addCriterion("t.IR_URLLEVEL not like", value, "irUrllevel");
            return (Criteria) this;
        }

        public Criteria andIrUrllevelIn(List<String> values) {
            addCriterion("t.IR_URLLEVEL in", values, "irUrllevel");
            return (Criteria) this;
        }

        public Criteria andIrUrllevelNotIn(List<String> values) {
            addCriterion("t.IR_URLLEVEL not in", values, "irUrllevel");
            return (Criteria) this;
        }

        public Criteria andIrUrllevelBetween(String value1, String value2) {
            addCriterion("t.IR_URLLEVEL between", value1, value2, "irUrllevel");
            return (Criteria) this;
        }

        public Criteria andIrUrllevelNotBetween(String value1, String value2) {
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

        public Criteria andIrUrlsizeEqualTo(String value) {
            addCriterion("t.IR_URLSIZE =", value, "irUrlsize");
            return (Criteria) this;
        }

        public Criteria andIrUrlsizeNotEqualTo(String value) {
            addCriterion("t.IR_URLSIZE <>", value, "irUrlsize");
            return (Criteria) this;
        }

        public Criteria andIrUrlsizeGreaterThan(String value) {
            addCriterion("t.IR_URLSIZE >", value, "irUrlsize");
            return (Criteria) this;
        }

        public Criteria andIrUrlsizeGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_URLSIZE >=", value, "irUrlsize");
            return (Criteria) this;
        }

        public Criteria andIrUrlsizeLessThan(String value) {
            addCriterion("t.IR_URLSIZE <", value, "irUrlsize");
            return (Criteria) this;
        }

        public Criteria andIrUrlsizeLessThanOrEqualTo(String value) {
            addCriterion("t.IR_URLSIZE <=", value, "irUrlsize");
            return (Criteria) this;
        }

        public Criteria andIrUrlsizeLike(String value) {
            addCriterion("t.IR_URLSIZE like", value, "irUrlsize");
            return (Criteria) this;
        }

        public Criteria andIrUrlsizeNotLike(String value) {
            addCriterion("t.IR_URLSIZE not like", value, "irUrlsize");
            return (Criteria) this;
        }

        public Criteria andIrUrlsizeIn(List<String> values) {
            addCriterion("t.IR_URLSIZE in", values, "irUrlsize");
            return (Criteria) this;
        }

        public Criteria andIrUrlsizeNotIn(List<String> values) {
            addCriterion("t.IR_URLSIZE not in", values, "irUrlsize");
            return (Criteria) this;
        }

        public Criteria andIrUrlsizeBetween(String value1, String value2) {
            addCriterion("t.IR_URLSIZE between", value1, value2, "irUrlsize");
            return (Criteria) this;
        }

        public Criteria andIrUrlsizeNotBetween(String value1, String value2) {
            addCriterion("t.IR_URLSIZE not between", value1, value2, "irUrlsize");
            return (Criteria) this;
        }

        public Criteria andIrUrlbodyIsNull() {
            addCriterion("t.IR_URLBODY is null");
            return (Criteria) this;
        }

        public Criteria andIrUrlbodyIsNotNull() {
            addCriterion("t.IR_URLBODY is not null");
            return (Criteria) this;
        }

        public Criteria andIrUrlbodyEqualTo(String value) {
            addCriterion("t.IR_URLBODY =", value, "irUrlbody");
            return (Criteria) this;
        }

        public Criteria andIrUrlbodyNotEqualTo(String value) {
            addCriterion("t.IR_URLBODY <>", value, "irUrlbody");
            return (Criteria) this;
        }

        public Criteria andIrUrlbodyGreaterThan(String value) {
            addCriterion("t.IR_URLBODY >", value, "irUrlbody");
            return (Criteria) this;
        }

        public Criteria andIrUrlbodyGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_URLBODY >=", value, "irUrlbody");
            return (Criteria) this;
        }

        public Criteria andIrUrlbodyLessThan(String value) {
            addCriterion("t.IR_URLBODY <", value, "irUrlbody");
            return (Criteria) this;
        }

        public Criteria andIrUrlbodyLessThanOrEqualTo(String value) {
            addCriterion("t.IR_URLBODY <=", value, "irUrlbody");
            return (Criteria) this;
        }

        public Criteria andIrUrlbodyLike(String value) {
            addCriterion("t.IR_URLBODY like", value, "irUrlbody");
            return (Criteria) this;
        }

        public Criteria andIrUrlbodyNotLike(String value) {
            addCriterion("t.IR_URLBODY not like", value, "irUrlbody");
            return (Criteria) this;
        }

        public Criteria andIrUrlbodyIn(List<String> values) {
            addCriterion("t.IR_URLBODY in", values, "irUrlbody");
            return (Criteria) this;
        }

        public Criteria andIrUrlbodyNotIn(List<String> values) {
            addCriterion("t.IR_URLBODY not in", values, "irUrlbody");
            return (Criteria) this;
        }

        public Criteria andIrUrlbodyBetween(String value1, String value2) {
            addCriterion("t.IR_URLBODY between", value1, value2, "irUrlbody");
            return (Criteria) this;
        }

        public Criteria andIrUrlbodyNotBetween(String value1, String value2) {
            addCriterion("t.IR_URLBODY not between", value1, value2, "irUrlbody");
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

        public Criteria andIrWcmidEqualTo(String value) {
            addCriterion("t.IR_WCMID =", value, "irWcmid");
            return (Criteria) this;
        }

        public Criteria andIrWcmidNotEqualTo(String value) {
            addCriterion("t.IR_WCMID <>", value, "irWcmid");
            return (Criteria) this;
        }

        public Criteria andIrWcmidGreaterThan(String value) {
            addCriterion("t.IR_WCMID >", value, "irWcmid");
            return (Criteria) this;
        }

        public Criteria andIrWcmidGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_WCMID >=", value, "irWcmid");
            return (Criteria) this;
        }

        public Criteria andIrWcmidLessThan(String value) {
            addCriterion("t.IR_WCMID <", value, "irWcmid");
            return (Criteria) this;
        }

        public Criteria andIrWcmidLessThanOrEqualTo(String value) {
            addCriterion("t.IR_WCMID <=", value, "irWcmid");
            return (Criteria) this;
        }

        public Criteria andIrWcmidLike(String value) {
            addCriterion("t.IR_WCMID like", value, "irWcmid");
            return (Criteria) this;
        }

        public Criteria andIrWcmidNotLike(String value) {
            addCriterion("t.IR_WCMID not like", value, "irWcmid");
            return (Criteria) this;
        }

        public Criteria andIrWcmidIn(List<String> values) {
            addCriterion("t.IR_WCMID in", values, "irWcmid");
            return (Criteria) this;
        }

        public Criteria andIrWcmidNotIn(List<String> values) {
            addCriterion("t.IR_WCMID not in", values, "irWcmid");
            return (Criteria) this;
        }

        public Criteria andIrWcmidBetween(String value1, String value2) {
            addCriterion("t.IR_WCMID between", value1, value2, "irWcmid");
            return (Criteria) this;
        }

        public Criteria andIrWcmidNotBetween(String value1, String value2) {
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

        public Criteria andIrStatusEqualTo(String value) {
            addCriterion("t.IR_STATUS =", value, "irStatus");
            return (Criteria) this;
        }

        public Criteria andIrStatusNotEqualTo(String value) {
            addCriterion("t.IR_STATUS <>", value, "irStatus");
            return (Criteria) this;
        }

        public Criteria andIrStatusGreaterThan(String value) {
            addCriterion("t.IR_STATUS >", value, "irStatus");
            return (Criteria) this;
        }

        public Criteria andIrStatusGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_STATUS >=", value, "irStatus");
            return (Criteria) this;
        }

        public Criteria andIrStatusLessThan(String value) {
            addCriterion("t.IR_STATUS <", value, "irStatus");
            return (Criteria) this;
        }

        public Criteria andIrStatusLessThanOrEqualTo(String value) {
            addCriterion("t.IR_STATUS <=", value, "irStatus");
            return (Criteria) this;
        }

        public Criteria andIrStatusLike(String value) {
            addCriterion("t.IR_STATUS like", value, "irStatus");
            return (Criteria) this;
        }

        public Criteria andIrStatusNotLike(String value) {
            addCriterion("t.IR_STATUS not like", value, "irStatus");
            return (Criteria) this;
        }

        public Criteria andIrStatusIn(List<String> values) {
            addCriterion("t.IR_STATUS in", values, "irStatus");
            return (Criteria) this;
        }

        public Criteria andIrStatusNotIn(List<String> values) {
            addCriterion("t.IR_STATUS not in", values, "irStatus");
            return (Criteria) this;
        }

        public Criteria andIrStatusBetween(String value1, String value2) {
            addCriterion("t.IR_STATUS between", value1, value2, "irStatus");
            return (Criteria) this;
        }

        public Criteria andIrStatusNotBetween(String value1, String value2) {
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

        public Criteria andIrNreserved1EqualTo(String value) {
            addCriterion("t.IR_NRESERVED1 =", value, "irNreserved1");
            return (Criteria) this;
        }

        public Criteria andIrNreserved1NotEqualTo(String value) {
            addCriterion("t.IR_NRESERVED1 <>", value, "irNreserved1");
            return (Criteria) this;
        }

        public Criteria andIrNreserved1GreaterThan(String value) {
            addCriterion("t.IR_NRESERVED1 >", value, "irNreserved1");
            return (Criteria) this;
        }

        public Criteria andIrNreserved1GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_NRESERVED1 >=", value, "irNreserved1");
            return (Criteria) this;
        }

        public Criteria andIrNreserved1LessThan(String value) {
            addCriterion("t.IR_NRESERVED1 <", value, "irNreserved1");
            return (Criteria) this;
        }

        public Criteria andIrNreserved1LessThanOrEqualTo(String value) {
            addCriterion("t.IR_NRESERVED1 <=", value, "irNreserved1");
            return (Criteria) this;
        }

        public Criteria andIrNreserved1Like(String value) {
            addCriterion("t.IR_NRESERVED1 like", value, "irNreserved1");
            return (Criteria) this;
        }

        public Criteria andIrNreserved1NotLike(String value) {
            addCriterion("t.IR_NRESERVED1 not like", value, "irNreserved1");
            return (Criteria) this;
        }

        public Criteria andIrNreserved1In(List<String> values) {
            addCriterion("t.IR_NRESERVED1 in", values, "irNreserved1");
            return (Criteria) this;
        }

        public Criteria andIrNreserved1NotIn(List<String> values) {
            addCriterion("t.IR_NRESERVED1 not in", values, "irNreserved1");
            return (Criteria) this;
        }

        public Criteria andIrNreserved1Between(String value1, String value2) {
            addCriterion("t.IR_NRESERVED1 between", value1, value2, "irNreserved1");
            return (Criteria) this;
        }

        public Criteria andIrNreserved1NotBetween(String value1, String value2) {
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

        public Criteria andIrNreserved2EqualTo(String value) {
            addCriterion("t.IR_NRESERVED2 =", value, "irNreserved2");
            return (Criteria) this;
        }

        public Criteria andIrNreserved2NotEqualTo(String value) {
            addCriterion("t.IR_NRESERVED2 <>", value, "irNreserved2");
            return (Criteria) this;
        }

        public Criteria andIrNreserved2GreaterThan(String value) {
            addCriterion("t.IR_NRESERVED2 >", value, "irNreserved2");
            return (Criteria) this;
        }

        public Criteria andIrNreserved2GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_NRESERVED2 >=", value, "irNreserved2");
            return (Criteria) this;
        }

        public Criteria andIrNreserved2LessThan(String value) {
            addCriterion("t.IR_NRESERVED2 <", value, "irNreserved2");
            return (Criteria) this;
        }

        public Criteria andIrNreserved2LessThanOrEqualTo(String value) {
            addCriterion("t.IR_NRESERVED2 <=", value, "irNreserved2");
            return (Criteria) this;
        }

        public Criteria andIrNreserved2Like(String value) {
            addCriterion("t.IR_NRESERVED2 like", value, "irNreserved2");
            return (Criteria) this;
        }

        public Criteria andIrNreserved2NotLike(String value) {
            addCriterion("t.IR_NRESERVED2 not like", value, "irNreserved2");
            return (Criteria) this;
        }

        public Criteria andIrNreserved2In(List<String> values) {
            addCriterion("t.IR_NRESERVED2 in", values, "irNreserved2");
            return (Criteria) this;
        }

        public Criteria andIrNreserved2NotIn(List<String> values) {
            addCriterion("t.IR_NRESERVED2 not in", values, "irNreserved2");
            return (Criteria) this;
        }

        public Criteria andIrNreserved2Between(String value1, String value2) {
            addCriterion("t.IR_NRESERVED2 between", value1, value2, "irNreserved2");
            return (Criteria) this;
        }

        public Criteria andIrNreserved2NotBetween(String value1, String value2) {
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

        public Criteria andIrNreserved3EqualTo(String value) {
            addCriterion("t.IR_NRESERVED3 =", value, "irNreserved3");
            return (Criteria) this;
        }

        public Criteria andIrNreserved3NotEqualTo(String value) {
            addCriterion("t.IR_NRESERVED3 <>", value, "irNreserved3");
            return (Criteria) this;
        }

        public Criteria andIrNreserved3GreaterThan(String value) {
            addCriterion("t.IR_NRESERVED3 >", value, "irNreserved3");
            return (Criteria) this;
        }

        public Criteria andIrNreserved3GreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_NRESERVED3 >=", value, "irNreserved3");
            return (Criteria) this;
        }

        public Criteria andIrNreserved3LessThan(String value) {
            addCriterion("t.IR_NRESERVED3 <", value, "irNreserved3");
            return (Criteria) this;
        }

        public Criteria andIrNreserved3LessThanOrEqualTo(String value) {
            addCriterion("t.IR_NRESERVED3 <=", value, "irNreserved3");
            return (Criteria) this;
        }

        public Criteria andIrNreserved3Like(String value) {
            addCriterion("t.IR_NRESERVED3 like", value, "irNreserved3");
            return (Criteria) this;
        }

        public Criteria andIrNreserved3NotLike(String value) {
            addCriterion("t.IR_NRESERVED3 not like", value, "irNreserved3");
            return (Criteria) this;
        }

        public Criteria andIrNreserved3In(List<String> values) {
            addCriterion("t.IR_NRESERVED3 in", values, "irNreserved3");
            return (Criteria) this;
        }

        public Criteria andIrNreserved3NotIn(List<String> values) {
            addCriterion("t.IR_NRESERVED3 not in", values, "irNreserved3");
            return (Criteria) this;
        }

        public Criteria andIrNreserved3Between(String value1, String value2) {
            addCriterion("t.IR_NRESERVED3 between", value1, value2, "irNreserved3");
            return (Criteria) this;
        }

        public Criteria andIrNreserved3NotBetween(String value1, String value2) {
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

        public Criteria andIrInserttimeEqualTo(String value) {
            addCriterion("t.IR_INSERTTIME =", value, "irInserttime");
            return (Criteria) this;
        }

        public Criteria andIrInserttimeNotEqualTo(String value) {
            addCriterion("t.IR_INSERTTIME <>", value, "irInserttime");
            return (Criteria) this;
        }

        public Criteria andIrInserttimeGreaterThan(String value) {
            addCriterion("t.IR_INSERTTIME >", value, "irInserttime");
            return (Criteria) this;
        }

        public Criteria andIrInserttimeGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_INSERTTIME >=", value, "irInserttime");
            return (Criteria) this;
        }

        public Criteria andIrInserttimeLessThan(String value) {
            addCriterion("t.IR_INSERTTIME <", value, "irInserttime");
            return (Criteria) this;
        }

        public Criteria andIrInserttimeLessThanOrEqualTo(String value) {
            addCriterion("t.IR_INSERTTIME <=", value, "irInserttime");
            return (Criteria) this;
        }

        public Criteria andIrInserttimeLike(String value) {
            addCriterion("t.IR_INSERTTIME like", value, "irInserttime");
            return (Criteria) this;
        }

        public Criteria andIrInserttimeNotLike(String value) {
            addCriterion("t.IR_INSERTTIME not like", value, "irInserttime");
            return (Criteria) this;
        }

        public Criteria andIrInserttimeIn(List<String> values) {
            addCriterion("t.IR_INSERTTIME in", values, "irInserttime");
            return (Criteria) this;
        }

        public Criteria andIrInserttimeNotIn(List<String> values) {
            addCriterion("t.IR_INSERTTIME not in", values, "irInserttime");
            return (Criteria) this;
        }

        public Criteria andIrInserttimeBetween(String value1, String value2) {
            addCriterion("t.IR_INSERTTIME between", value1, value2, "irInserttime");
            return (Criteria) this;
        }

        public Criteria andIrInserttimeNotBetween(String value1, String value2) {
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

        public Criteria andIrBiddingDateEqualTo(String value) {
            addCriterion("t.IR_BIDDING_DATE =", value, "irBiddingDate");
            return (Criteria) this;
        }

        public Criteria andIrBiddingDateNotEqualTo(String value) {
            addCriterion("t.IR_BIDDING_DATE <>", value, "irBiddingDate");
            return (Criteria) this;
        }

        public Criteria andIrBiddingDateGreaterThan(String value) {
            addCriterion("t.IR_BIDDING_DATE >", value, "irBiddingDate");
            return (Criteria) this;
        }

        public Criteria andIrBiddingDateGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_BIDDING_DATE >=", value, "irBiddingDate");
            return (Criteria) this;
        }

        public Criteria andIrBiddingDateLessThan(String value) {
            addCriterion("t.IR_BIDDING_DATE <", value, "irBiddingDate");
            return (Criteria) this;
        }

        public Criteria andIrBiddingDateLessThanOrEqualTo(String value) {
            addCriterion("t.IR_BIDDING_DATE <=", value, "irBiddingDate");
            return (Criteria) this;
        }

        public Criteria andIrBiddingDateLike(String value) {
            addCriterion("t.IR_BIDDING_DATE like", value, "irBiddingDate");
            return (Criteria) this;
        }

        public Criteria andIrBiddingDateNotLike(String value) {
            addCriterion("t.IR_BIDDING_DATE not like", value, "irBiddingDate");
            return (Criteria) this;
        }

        public Criteria andIrBiddingDateIn(List<String> values) {
            addCriterion("t.IR_BIDDING_DATE in", values, "irBiddingDate");
            return (Criteria) this;
        }

        public Criteria andIrBiddingDateNotIn(List<String> values) {
            addCriterion("t.IR_BIDDING_DATE not in", values, "irBiddingDate");
            return (Criteria) this;
        }

        public Criteria andIrBiddingDateBetween(String value1, String value2) {
            addCriterion("t.IR_BIDDING_DATE between", value1, value2, "irBiddingDate");
            return (Criteria) this;
        }

        public Criteria andIrBiddingDateNotBetween(String value1, String value2) {
            addCriterion("t.IR_BIDDING_DATE not between", value1, value2, "irBiddingDate");
            return (Criteria) this;
        }

        public Criteria andIrBiddingIdIsNull() {
            addCriterion("t.IR_BIDDING_ID is null");
            return (Criteria) this;
        }

        public Criteria andIrBiddingIdIsNotNull() {
            addCriterion("t.IR_BIDDING_ID is not null");
            return (Criteria) this;
        }

        public Criteria andIrBiddingIdEqualTo(String value) {
            addCriterion("t.IR_BIDDING_ID =", value, "irBiddingId");
            return (Criteria) this;
        }

        public Criteria andIrBiddingIdNotEqualTo(String value) {
            addCriterion("t.IR_BIDDING_ID <>", value, "irBiddingId");
            return (Criteria) this;
        }

        public Criteria andIrBiddingIdGreaterThan(String value) {
            addCriterion("t.IR_BIDDING_ID >", value, "irBiddingId");
            return (Criteria) this;
        }

        public Criteria andIrBiddingIdGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_BIDDING_ID >=", value, "irBiddingId");
            return (Criteria) this;
        }

        public Criteria andIrBiddingIdLessThan(String value) {
            addCriterion("t.IR_BIDDING_ID <", value, "irBiddingId");
            return (Criteria) this;
        }

        public Criteria andIrBiddingIdLessThanOrEqualTo(String value) {
            addCriterion("t.IR_BIDDING_ID <=", value, "irBiddingId");
            return (Criteria) this;
        }

        public Criteria andIrBiddingIdLike(String value) {
            addCriterion("t.IR_BIDDING_ID like", value, "irBiddingId");
            return (Criteria) this;
        }

        public Criteria andIrBiddingIdNotLike(String value) {
            addCriterion("t.IR_BIDDING_ID not like", value, "irBiddingId");
            return (Criteria) this;
        }

        public Criteria andIrBiddingIdIn(List<String> values) {
            addCriterion("t.IR_BIDDING_ID in", values, "irBiddingId");
            return (Criteria) this;
        }

        public Criteria andIrBiddingIdNotIn(List<String> values) {
            addCriterion("t.IR_BIDDING_ID not in", values, "irBiddingId");
            return (Criteria) this;
        }

        public Criteria andIrBiddingIdBetween(String value1, String value2) {
            addCriterion("t.IR_BIDDING_ID between", value1, value2, "irBiddingId");
            return (Criteria) this;
        }

        public Criteria andIrBiddingIdNotBetween(String value1, String value2) {
            addCriterion("t.IR_BIDDING_ID not between", value1, value2, "irBiddingId");
            return (Criteria) this;
        }

        public Criteria andIrBiddingTypeIsNull() {
            addCriterion("t.IR_BIDDING_TYPE is null");
            return (Criteria) this;
        }

        public Criteria andIrBiddingTypeIsNotNull() {
            addCriterion("t.IR_BIDDING_TYPE is not null");
            return (Criteria) this;
        }

        public Criteria andIrBiddingTypeEqualTo(String value) {
            addCriterion("t.IR_BIDDING_TYPE =", value, "irBiddingType");
            return (Criteria) this;
        }

        public Criteria andIrBiddingTypeNotEqualTo(String value) {
            addCriterion("t.IR_BIDDING_TYPE <>", value, "irBiddingType");
            return (Criteria) this;
        }

        public Criteria andIrBiddingTypeGreaterThan(String value) {
            addCriterion("t.IR_BIDDING_TYPE >", value, "irBiddingType");
            return (Criteria) this;
        }

        public Criteria andIrBiddingTypeGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_BIDDING_TYPE >=", value, "irBiddingType");
            return (Criteria) this;
        }

        public Criteria andIrBiddingTypeLessThan(String value) {
            addCriterion("t.IR_BIDDING_TYPE <", value, "irBiddingType");
            return (Criteria) this;
        }

        public Criteria andIrBiddingTypeLessThanOrEqualTo(String value) {
            addCriterion("t.IR_BIDDING_TYPE <=", value, "irBiddingType");
            return (Criteria) this;
        }

        public Criteria andIrBiddingTypeLike(String value) {
            addCriterion("t.IR_BIDDING_TYPE like", value, "irBiddingType");
            return (Criteria) this;
        }

        public Criteria andIrBiddingTypeNotLike(String value) {
            addCriterion("t.IR_BIDDING_TYPE not like", value, "irBiddingType");
            return (Criteria) this;
        }

        public Criteria andIrBiddingTypeIn(List<String> values) {
            addCriterion("t.IR_BIDDING_TYPE in", values, "irBiddingType");
            return (Criteria) this;
        }

        public Criteria andIrBiddingTypeNotIn(List<String> values) {
            addCriterion("t.IR_BIDDING_TYPE not in", values, "irBiddingType");
            return (Criteria) this;
        }

        public Criteria andIrBiddingTypeBetween(String value1, String value2) {
            addCriterion("t.IR_BIDDING_TYPE between", value1, value2, "irBiddingType");
            return (Criteria) this;
        }

        public Criteria andIrBiddingTypeNotBetween(String value1, String value2) {
            addCriterion("t.IR_BIDDING_TYPE not between", value1, value2, "irBiddingType");
            return (Criteria) this;
        }

        public Criteria andIrBiddingNameIsNull() {
            addCriterion("t.IR_BIDDING_NAME is null");
            return (Criteria) this;
        }

        public Criteria andIrBiddingNameIsNotNull() {
            addCriterion("t.IR_BIDDING_NAME is not null");
            return (Criteria) this;
        }

        public Criteria andIrBiddingNameEqualTo(String value) {
            addCriterion("t.IR_BIDDING_NAME =", value, "irBiddingName");
            return (Criteria) this;
        }

        public Criteria andIrBiddingNameNotEqualTo(String value) {
            addCriterion("t.IR_BIDDING_NAME <>", value, "irBiddingName");
            return (Criteria) this;
        }

        public Criteria andIrBiddingNameGreaterThan(String value) {
            addCriterion("t.IR_BIDDING_NAME >", value, "irBiddingName");
            return (Criteria) this;
        }

        public Criteria andIrBiddingNameGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_BIDDING_NAME >=", value, "irBiddingName");
            return (Criteria) this;
        }

        public Criteria andIrBiddingNameLessThan(String value) {
            addCriterion("t.IR_BIDDING_NAME <", value, "irBiddingName");
            return (Criteria) this;
        }

        public Criteria andIrBiddingNameLessThanOrEqualTo(String value) {
            addCriterion("t.IR_BIDDING_NAME <=", value, "irBiddingName");
            return (Criteria) this;
        }

        public Criteria andIrBiddingNameLike(String value) {
            addCriterion("t.IR_BIDDING_NAME like", value, "irBiddingName");
            return (Criteria) this;
        }

        public Criteria andIrBiddingNameNotLike(String value) {
            addCriterion("t.IR_BIDDING_NAME not like", value, "irBiddingName");
            return (Criteria) this;
        }

        public Criteria andIrBiddingNameIn(List<String> values) {
            addCriterion("t.IR_BIDDING_NAME in", values, "irBiddingName");
            return (Criteria) this;
        }

        public Criteria andIrBiddingNameNotIn(List<String> values) {
            addCriterion("t.IR_BIDDING_NAME not in", values, "irBiddingName");
            return (Criteria) this;
        }

        public Criteria andIrBiddingNameBetween(String value1, String value2) {
            addCriterion("t.IR_BIDDING_NAME between", value1, value2, "irBiddingName");
            return (Criteria) this;
        }

        public Criteria andIrBiddingNameNotBetween(String value1, String value2) {
            addCriterion("t.IR_BIDDING_NAME not between", value1, value2, "irBiddingName");
            return (Criteria) this;
        }

        public Criteria andIrBiddingContentIsNull() {
            addCriterion("t.IR_BIDDING_CONTENT is null");
            return (Criteria) this;
        }

        public Criteria andIrBiddingContentIsNotNull() {
            addCriterion("t.IR_BIDDING_CONTENT is not null");
            return (Criteria) this;
        }

        public Criteria andIrBiddingContentEqualTo(String value) {
            addCriterion("t.IR_BIDDING_CONTENT =", value, "irBiddingContent");
            return (Criteria) this;
        }

        public Criteria andIrBiddingContentNotEqualTo(String value) {
            addCriterion("t.IR_BIDDING_CONTENT <>", value, "irBiddingContent");
            return (Criteria) this;
        }

        public Criteria andIrBiddingContentGreaterThan(String value) {
            addCriterion("t.IR_BIDDING_CONTENT >", value, "irBiddingContent");
            return (Criteria) this;
        }

        public Criteria andIrBiddingContentGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_BIDDING_CONTENT >=", value, "irBiddingContent");
            return (Criteria) this;
        }

        public Criteria andIrBiddingContentLessThan(String value) {
            addCriterion("t.IR_BIDDING_CONTENT <", value, "irBiddingContent");
            return (Criteria) this;
        }

        public Criteria andIrBiddingContentLessThanOrEqualTo(String value) {
            addCriterion("t.IR_BIDDING_CONTENT <=", value, "irBiddingContent");
            return (Criteria) this;
        }

        public Criteria andIrBiddingContentLike(String value) {
            addCriterion("t.IR_BIDDING_CONTENT like", value, "irBiddingContent");
            return (Criteria) this;
        }

        public Criteria andIrBiddingContentNotLike(String value) {
            addCriterion("t.IR_BIDDING_CONTENT not like", value, "irBiddingContent");
            return (Criteria) this;
        }

        public Criteria andIrBiddingContentIn(List<String> values) {
            addCriterion("t.IR_BIDDING_CONTENT in", values, "irBiddingContent");
            return (Criteria) this;
        }

        public Criteria andIrBiddingContentNotIn(List<String> values) {
            addCriterion("t.IR_BIDDING_CONTENT not in", values, "irBiddingContent");
            return (Criteria) this;
        }

        public Criteria andIrBiddingContentBetween(String value1, String value2) {
            addCriterion("t.IR_BIDDING_CONTENT between", value1, value2, "irBiddingContent");
            return (Criteria) this;
        }

        public Criteria andIrBiddingContentNotBetween(String value1, String value2) {
            addCriterion("t.IR_BIDDING_CONTENT not between", value1, value2, "irBiddingContent");
            return (Criteria) this;
        }

        public Criteria andIrBiddingSourceIsNull() {
            addCriterion("t.IR_BIDDING_SOURCE is null");
            return (Criteria) this;
        }

        public Criteria andIrBiddingSourceIsNotNull() {
            addCriterion("t.IR_BIDDING_SOURCE is not null");
            return (Criteria) this;
        }

        public Criteria andIrBiddingSourceEqualTo(String value) {
            addCriterion("t.IR_BIDDING_SOURCE =", value, "irBiddingSource");
            return (Criteria) this;
        }

        public Criteria andIrBiddingSourceNotEqualTo(String value) {
            addCriterion("t.IR_BIDDING_SOURCE <>", value, "irBiddingSource");
            return (Criteria) this;
        }

        public Criteria andIrBiddingSourceGreaterThan(String value) {
            addCriterion("t.IR_BIDDING_SOURCE >", value, "irBiddingSource");
            return (Criteria) this;
        }

        public Criteria andIrBiddingSourceGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_BIDDING_SOURCE >=", value, "irBiddingSource");
            return (Criteria) this;
        }

        public Criteria andIrBiddingSourceLessThan(String value) {
            addCriterion("t.IR_BIDDING_SOURCE <", value, "irBiddingSource");
            return (Criteria) this;
        }

        public Criteria andIrBiddingSourceLessThanOrEqualTo(String value) {
            addCriterion("t.IR_BIDDING_SOURCE <=", value, "irBiddingSource");
            return (Criteria) this;
        }

        public Criteria andIrBiddingSourceLike(String value) {
            addCriterion("t.IR_BIDDING_SOURCE like", value, "irBiddingSource");
            return (Criteria) this;
        }

        public Criteria andIrBiddingSourceNotLike(String value) {
            addCriterion("t.IR_BIDDING_SOURCE not like", value, "irBiddingSource");
            return (Criteria) this;
        }

        public Criteria andIrBiddingSourceIn(List<String> values) {
            addCriterion("t.IR_BIDDING_SOURCE in", values, "irBiddingSource");
            return (Criteria) this;
        }

        public Criteria andIrBiddingSourceNotIn(List<String> values) {
            addCriterion("t.IR_BIDDING_SOURCE not in", values, "irBiddingSource");
            return (Criteria) this;
        }

        public Criteria andIrBiddingSourceBetween(String value1, String value2) {
            addCriterion("t.IR_BIDDING_SOURCE between", value1, value2, "irBiddingSource");
            return (Criteria) this;
        }

        public Criteria andIrBiddingSourceNotBetween(String value1, String value2) {
            addCriterion("t.IR_BIDDING_SOURCE not between", value1, value2, "irBiddingSource");
            return (Criteria) this;
        }

        public Criteria andIrBiddingMoneyIsNull() {
            addCriterion("t.IR_BIDDING_MONEY is null");
            return (Criteria) this;
        }

        public Criteria andIrBiddingMoneyIsNotNull() {
            addCriterion("t.IR_BIDDING_MONEY is not null");
            return (Criteria) this;
        }

        public Criteria andIrBiddingMoneyEqualTo(String value) {
            addCriterion("t.IR_BIDDING_MONEY =", value, "irBiddingMoney");
            return (Criteria) this;
        }

        public Criteria andIrBiddingMoneyNotEqualTo(String value) {
            addCriterion("t.IR_BIDDING_MONEY <>", value, "irBiddingMoney");
            return (Criteria) this;
        }

        public Criteria andIrBiddingMoneyGreaterThan(String value) {
            addCriterion("t.IR_BIDDING_MONEY >", value, "irBiddingMoney");
            return (Criteria) this;
        }

        public Criteria andIrBiddingMoneyGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_BIDDING_MONEY >=", value, "irBiddingMoney");
            return (Criteria) this;
        }

        public Criteria andIrBiddingMoneyLessThan(String value) {
            addCriterion("t.IR_BIDDING_MONEY <", value, "irBiddingMoney");
            return (Criteria) this;
        }

        public Criteria andIrBiddingMoneyLessThanOrEqualTo(String value) {
            addCriterion("t.IR_BIDDING_MONEY <=", value, "irBiddingMoney");
            return (Criteria) this;
        }

        public Criteria andIrBiddingMoneyLike(String value) {
            addCriterion("t.IR_BIDDING_MONEY like", value, "irBiddingMoney");
            return (Criteria) this;
        }

        public Criteria andIrBiddingMoneyNotLike(String value) {
            addCriterion("t.IR_BIDDING_MONEY not like", value, "irBiddingMoney");
            return (Criteria) this;
        }

        public Criteria andIrBiddingMoneyIn(List<String> values) {
            addCriterion("t.IR_BIDDING_MONEY in", values, "irBiddingMoney");
            return (Criteria) this;
        }

        public Criteria andIrBiddingMoneyNotIn(List<String> values) {
            addCriterion("t.IR_BIDDING_MONEY not in", values, "irBiddingMoney");
            return (Criteria) this;
        }

        public Criteria andIrBiddingMoneyBetween(String value1, String value2) {
            addCriterion("t.IR_BIDDING_MONEY between", value1, value2, "irBiddingMoney");
            return (Criteria) this;
        }

        public Criteria andIrBiddingMoneyNotBetween(String value1, String value2) {
            addCriterion("t.IR_BIDDING_MONEY not between", value1, value2, "irBiddingMoney");
            return (Criteria) this;
        }

        public Criteria andIrBiddingAgencyIsNull() {
            addCriterion("t.IR_BIDDING_AGENCY is null");
            return (Criteria) this;
        }

        public Criteria andIrBiddingAgencyIsNotNull() {
            addCriterion("t.IR_BIDDING_AGENCY is not null");
            return (Criteria) this;
        }

        public Criteria andIrBiddingAgencyEqualTo(String value) {
            addCriterion("t.IR_BIDDING_AGENCY =", value, "irBiddingAgency");
            return (Criteria) this;
        }

        public Criteria andIrBiddingAgencyNotEqualTo(String value) {
            addCriterion("t.IR_BIDDING_AGENCY <>", value, "irBiddingAgency");
            return (Criteria) this;
        }

        public Criteria andIrBiddingAgencyGreaterThan(String value) {
            addCriterion("t.IR_BIDDING_AGENCY >", value, "irBiddingAgency");
            return (Criteria) this;
        }

        public Criteria andIrBiddingAgencyGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_BIDDING_AGENCY >=", value, "irBiddingAgency");
            return (Criteria) this;
        }

        public Criteria andIrBiddingAgencyLessThan(String value) {
            addCriterion("t.IR_BIDDING_AGENCY <", value, "irBiddingAgency");
            return (Criteria) this;
        }

        public Criteria andIrBiddingAgencyLessThanOrEqualTo(String value) {
            addCriterion("t.IR_BIDDING_AGENCY <=", value, "irBiddingAgency");
            return (Criteria) this;
        }

        public Criteria andIrBiddingAgencyLike(String value) {
            addCriterion("t.IR_BIDDING_AGENCY like", value, "irBiddingAgency");
            return (Criteria) this;
        }

        public Criteria andIrBiddingAgencyNotLike(String value) {
            addCriterion("t.IR_BIDDING_AGENCY not like", value, "irBiddingAgency");
            return (Criteria) this;
        }

        public Criteria andIrBiddingAgencyIn(List<String> values) {
            addCriterion("t.IR_BIDDING_AGENCY in", values, "irBiddingAgency");
            return (Criteria) this;
        }

        public Criteria andIrBiddingAgencyNotIn(List<String> values) {
            addCriterion("t.IR_BIDDING_AGENCY not in", values, "irBiddingAgency");
            return (Criteria) this;
        }

        public Criteria andIrBiddingAgencyBetween(String value1, String value2) {
            addCriterion("t.IR_BIDDING_AGENCY between", value1, value2, "irBiddingAgency");
            return (Criteria) this;
        }

        public Criteria andIrBiddingAgencyNotBetween(String value1, String value2) {
            addCriterion("t.IR_BIDDING_AGENCY not between", value1, value2, "irBiddingAgency");
            return (Criteria) this;
        }

        public Criteria andIrBiddingOrgIsNull() {
            addCriterion("t.IR_BIDDING_ORG is null");
            return (Criteria) this;
        }

        public Criteria andIrBiddingOrgIsNotNull() {
            addCriterion("t.IR_BIDDING_ORG is not null");
            return (Criteria) this;
        }

        public Criteria andIrBiddingOrgEqualTo(String value) {
            addCriterion("t.IR_BIDDING_ORG =", value, "irBiddingOrg");
            return (Criteria) this;
        }

        public Criteria andIrBiddingOrgNotEqualTo(String value) {
            addCriterion("t.IR_BIDDING_ORG <>", value, "irBiddingOrg");
            return (Criteria) this;
        }

        public Criteria andIrBiddingOrgGreaterThan(String value) {
            addCriterion("t.IR_BIDDING_ORG >", value, "irBiddingOrg");
            return (Criteria) this;
        }

        public Criteria andIrBiddingOrgGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_BIDDING_ORG >=", value, "irBiddingOrg");
            return (Criteria) this;
        }

        public Criteria andIrBiddingOrgLessThan(String value) {
            addCriterion("t.IR_BIDDING_ORG <", value, "irBiddingOrg");
            return (Criteria) this;
        }

        public Criteria andIrBiddingOrgLessThanOrEqualTo(String value) {
            addCriterion("t.IR_BIDDING_ORG <=", value, "irBiddingOrg");
            return (Criteria) this;
        }

        public Criteria andIrBiddingOrgLike(String value) {
            addCriterion("t.IR_BIDDING_ORG like", value, "irBiddingOrg");
            return (Criteria) this;
        }

        public Criteria andIrBiddingOrgNotLike(String value) {
            addCriterion("t.IR_BIDDING_ORG not like", value, "irBiddingOrg");
            return (Criteria) this;
        }

        public Criteria andIrBiddingOrgIn(List<String> values) {
            addCriterion("t.IR_BIDDING_ORG in", values, "irBiddingOrg");
            return (Criteria) this;
        }

        public Criteria andIrBiddingOrgNotIn(List<String> values) {
            addCriterion("t.IR_BIDDING_ORG not in", values, "irBiddingOrg");
            return (Criteria) this;
        }

        public Criteria andIrBiddingOrgBetween(String value1, String value2) {
            addCriterion("t.IR_BIDDING_ORG between", value1, value2, "irBiddingOrg");
            return (Criteria) this;
        }

        public Criteria andIrBiddingOrgNotBetween(String value1, String value2) {
            addCriterion("t.IR_BIDDING_ORG not between", value1, value2, "irBiddingOrg");
            return (Criteria) this;
        }

        public Criteria andIrBiddingAddrIsNull() {
            addCriterion("t.IR_BIDDING_ADDR is null");
            return (Criteria) this;
        }

        public Criteria andIrBiddingAddrIsNotNull() {
            addCriterion("t.IR_BIDDING_ADDR is not null");
            return (Criteria) this;
        }

        public Criteria andIrBiddingAddrEqualTo(String value) {
            addCriterion("t.IR_BIDDING_ADDR =", value, "irBiddingAddr");
            return (Criteria) this;
        }

        public Criteria andIrBiddingAddrNotEqualTo(String value) {
            addCriterion("t.IR_BIDDING_ADDR <>", value, "irBiddingAddr");
            return (Criteria) this;
        }

        public Criteria andIrBiddingAddrGreaterThan(String value) {
            addCriterion("t.IR_BIDDING_ADDR >", value, "irBiddingAddr");
            return (Criteria) this;
        }

        public Criteria andIrBiddingAddrGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_BIDDING_ADDR >=", value, "irBiddingAddr");
            return (Criteria) this;
        }

        public Criteria andIrBiddingAddrLessThan(String value) {
            addCriterion("t.IR_BIDDING_ADDR <", value, "irBiddingAddr");
            return (Criteria) this;
        }

        public Criteria andIrBiddingAddrLessThanOrEqualTo(String value) {
            addCriterion("t.IR_BIDDING_ADDR <=", value, "irBiddingAddr");
            return (Criteria) this;
        }

        public Criteria andIrBiddingAddrLike(String value) {
            addCriterion("t.IR_BIDDING_ADDR like", value, "irBiddingAddr");
            return (Criteria) this;
        }

        public Criteria andIrBiddingAddrNotLike(String value) {
            addCriterion("t.IR_BIDDING_ADDR not like", value, "irBiddingAddr");
            return (Criteria) this;
        }

        public Criteria andIrBiddingAddrIn(List<String> values) {
            addCriterion("t.IR_BIDDING_ADDR in", values, "irBiddingAddr");
            return (Criteria) this;
        }

        public Criteria andIrBiddingAddrNotIn(List<String> values) {
            addCriterion("t.IR_BIDDING_ADDR not in", values, "irBiddingAddr");
            return (Criteria) this;
        }

        public Criteria andIrBiddingAddrBetween(String value1, String value2) {
            addCriterion("t.IR_BIDDING_ADDR between", value1, value2, "irBiddingAddr");
            return (Criteria) this;
        }

        public Criteria andIrBiddingAddrNotBetween(String value1, String value2) {
            addCriterion("t.IR_BIDDING_ADDR not between", value1, value2, "irBiddingAddr");
            return (Criteria) this;
        }

        public Criteria andIrBiddingPerIsNull() {
            addCriterion("t.IR_BIDDING_PER is null");
            return (Criteria) this;
        }

        public Criteria andIrBiddingPerIsNotNull() {
            addCriterion("t.IR_BIDDING_PER is not null");
            return (Criteria) this;
        }

        public Criteria andIrBiddingPerEqualTo(String value) {
            addCriterion("t.IR_BIDDING_PER =", value, "irBiddingPer");
            return (Criteria) this;
        }

        public Criteria andIrBiddingPerNotEqualTo(String value) {
            addCriterion("t.IR_BIDDING_PER <>", value, "irBiddingPer");
            return (Criteria) this;
        }

        public Criteria andIrBiddingPerGreaterThan(String value) {
            addCriterion("t.IR_BIDDING_PER >", value, "irBiddingPer");
            return (Criteria) this;
        }

        public Criteria andIrBiddingPerGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_BIDDING_PER >=", value, "irBiddingPer");
            return (Criteria) this;
        }

        public Criteria andIrBiddingPerLessThan(String value) {
            addCriterion("t.IR_BIDDING_PER <", value, "irBiddingPer");
            return (Criteria) this;
        }

        public Criteria andIrBiddingPerLessThanOrEqualTo(String value) {
            addCriterion("t.IR_BIDDING_PER <=", value, "irBiddingPer");
            return (Criteria) this;
        }

        public Criteria andIrBiddingPerLike(String value) {
            addCriterion("t.IR_BIDDING_PER like", value, "irBiddingPer");
            return (Criteria) this;
        }

        public Criteria andIrBiddingPerNotLike(String value) {
            addCriterion("t.IR_BIDDING_PER not like", value, "irBiddingPer");
            return (Criteria) this;
        }

        public Criteria andIrBiddingPerIn(List<String> values) {
            addCriterion("t.IR_BIDDING_PER in", values, "irBiddingPer");
            return (Criteria) this;
        }

        public Criteria andIrBiddingPerNotIn(List<String> values) {
            addCriterion("t.IR_BIDDING_PER not in", values, "irBiddingPer");
            return (Criteria) this;
        }

        public Criteria andIrBiddingPerBetween(String value1, String value2) {
            addCriterion("t.IR_BIDDING_PER between", value1, value2, "irBiddingPer");
            return (Criteria) this;
        }

        public Criteria andIrBiddingPerNotBetween(String value1, String value2) {
            addCriterion("t.IR_BIDDING_PER not between", value1, value2, "irBiddingPer");
            return (Criteria) this;
        }

        public Criteria andIrBiddingTelIsNull() {
            addCriterion("t.IR_BIDDING_TEL is null");
            return (Criteria) this;
        }

        public Criteria andIrBiddingTelIsNotNull() {
            addCriterion("t.IR_BIDDING_TEL is not null");
            return (Criteria) this;
        }

        public Criteria andIrBiddingTelEqualTo(String value) {
            addCriterion("t.IR_BIDDING_TEL =", value, "irBiddingTel");
            return (Criteria) this;
        }

        public Criteria andIrBiddingTelNotEqualTo(String value) {
            addCriterion("t.IR_BIDDING_TEL <>", value, "irBiddingTel");
            return (Criteria) this;
        }

        public Criteria andIrBiddingTelGreaterThan(String value) {
            addCriterion("t.IR_BIDDING_TEL >", value, "irBiddingTel");
            return (Criteria) this;
        }

        public Criteria andIrBiddingTelGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_BIDDING_TEL >=", value, "irBiddingTel");
            return (Criteria) this;
        }

        public Criteria andIrBiddingTelLessThan(String value) {
            addCriterion("t.IR_BIDDING_TEL <", value, "irBiddingTel");
            return (Criteria) this;
        }

        public Criteria andIrBiddingTelLessThanOrEqualTo(String value) {
            addCriterion("t.IR_BIDDING_TEL <=", value, "irBiddingTel");
            return (Criteria) this;
        }

        public Criteria andIrBiddingTelLike(String value) {
            addCriterion("t.IR_BIDDING_TEL like", value, "irBiddingTel");
            return (Criteria) this;
        }

        public Criteria andIrBiddingTelNotLike(String value) {
            addCriterion("t.IR_BIDDING_TEL not like", value, "irBiddingTel");
            return (Criteria) this;
        }

        public Criteria andIrBiddingTelIn(List<String> values) {
            addCriterion("t.IR_BIDDING_TEL in", values, "irBiddingTel");
            return (Criteria) this;
        }

        public Criteria andIrBiddingTelNotIn(List<String> values) {
            addCriterion("t.IR_BIDDING_TEL not in", values, "irBiddingTel");
            return (Criteria) this;
        }

        public Criteria andIrBiddingTelBetween(String value1, String value2) {
            addCriterion("t.IR_BIDDING_TEL between", value1, value2, "irBiddingTel");
            return (Criteria) this;
        }

        public Criteria andIrBiddingTelNotBetween(String value1, String value2) {
            addCriterion("t.IR_BIDDING_TEL not between", value1, value2, "irBiddingTel");
            return (Criteria) this;
        }

        public Criteria andIrBidDateIsNull() {
            addCriterion("t.IR_BID_DATE is null");
            return (Criteria) this;
        }

        public Criteria andIrBidDateIsNotNull() {
            addCriterion("t.IR_BID_DATE is not null");
            return (Criteria) this;
        }

        public Criteria andIrBidDateEqualTo(String value) {
            addCriterion("t.IR_BID_DATE =", value, "irBidDate");
            return (Criteria) this;
        }

        public Criteria andIrBidDateNotEqualTo(String value) {
            addCriterion("t.IR_BID_DATE <>", value, "irBidDate");
            return (Criteria) this;
        }

        public Criteria andIrBidDateGreaterThan(String value) {
            addCriterion("t.IR_BID_DATE >", value, "irBidDate");
            return (Criteria) this;
        }

        public Criteria andIrBidDateGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_BID_DATE >=", value, "irBidDate");
            return (Criteria) this;
        }

        public Criteria andIrBidDateLessThan(String value) {
            addCriterion("t.IR_BID_DATE <", value, "irBidDate");
            return (Criteria) this;
        }

        public Criteria andIrBidDateLessThanOrEqualTo(String value) {
            addCriterion("t.IR_BID_DATE <=", value, "irBidDate");
            return (Criteria) this;
        }

        public Criteria andIrBidDateLike(String value) {
            addCriterion("t.IR_BID_DATE like", value, "irBidDate");
            return (Criteria) this;
        }

        public Criteria andIrBidDateNotLike(String value) {
            addCriterion("t.IR_BID_DATE not like", value, "irBidDate");
            return (Criteria) this;
        }

        public Criteria andIrBidDateIn(List<String> values) {
            addCriterion("t.IR_BID_DATE in", values, "irBidDate");
            return (Criteria) this;
        }

        public Criteria andIrBidDateNotIn(List<String> values) {
            addCriterion("t.IR_BID_DATE not in", values, "irBidDate");
            return (Criteria) this;
        }

        public Criteria andIrBidDateBetween(String value1, String value2) {
            addCriterion("t.IR_BID_DATE between", value1, value2, "irBidDate");
            return (Criteria) this;
        }

        public Criteria andIrBidDateNotBetween(String value1, String value2) {
            addCriterion("t.IR_BID_DATE not between", value1, value2, "irBidDate");
            return (Criteria) this;
        }

        public Criteria andIrBidTypeIsNull() {
            addCriterion("t.IR_BID_TYPE is null");
            return (Criteria) this;
        }

        public Criteria andIrBidTypeIsNotNull() {
            addCriterion("t.IR_BID_TYPE is not null");
            return (Criteria) this;
        }

        public Criteria andIrBidTypeEqualTo(String value) {
            addCriterion("t.IR_BID_TYPE =", value, "irBidType");
            return (Criteria) this;
        }

        public Criteria andIrBidTypeNotEqualTo(String value) {
            addCriterion("t.IR_BID_TYPE <>", value, "irBidType");
            return (Criteria) this;
        }

        public Criteria andIrBidTypeGreaterThan(String value) {
            addCriterion("t.IR_BID_TYPE >", value, "irBidType");
            return (Criteria) this;
        }

        public Criteria andIrBidTypeGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_BID_TYPE >=", value, "irBidType");
            return (Criteria) this;
        }

        public Criteria andIrBidTypeLessThan(String value) {
            addCriterion("t.IR_BID_TYPE <", value, "irBidType");
            return (Criteria) this;
        }

        public Criteria andIrBidTypeLessThanOrEqualTo(String value) {
            addCriterion("t.IR_BID_TYPE <=", value, "irBidType");
            return (Criteria) this;
        }

        public Criteria andIrBidTypeLike(String value) {
            addCriterion("t.IR_BID_TYPE like", value, "irBidType");
            return (Criteria) this;
        }

        public Criteria andIrBidTypeNotLike(String value) {
            addCriterion("t.IR_BID_TYPE not like", value, "irBidType");
            return (Criteria) this;
        }

        public Criteria andIrBidTypeIn(List<String> values) {
            addCriterion("t.IR_BID_TYPE in", values, "irBidType");
            return (Criteria) this;
        }

        public Criteria andIrBidTypeNotIn(List<String> values) {
            addCriterion("t.IR_BID_TYPE not in", values, "irBidType");
            return (Criteria) this;
        }

        public Criteria andIrBidTypeBetween(String value1, String value2) {
            addCriterion("t.IR_BID_TYPE between", value1, value2, "irBidType");
            return (Criteria) this;
        }

        public Criteria andIrBidTypeNotBetween(String value1, String value2) {
            addCriterion("t.IR_BID_TYPE not between", value1, value2, "irBidType");
            return (Criteria) this;
        }

        public Criteria andIrBidOrgIsNull() {
            addCriterion("t.IR_BID_ORG is null");
            return (Criteria) this;
        }

        public Criteria andIrBidOrgIsNotNull() {
            addCriterion("t.IR_BID_ORG is not null");
            return (Criteria) this;
        }

        public Criteria andIrBidOrgEqualTo(String value) {
            addCriterion("t.IR_BID_ORG =", value, "irBidOrg");
            return (Criteria) this;
        }

        public Criteria andIrBidOrgNotEqualTo(String value) {
            addCriterion("t.IR_BID_ORG <>", value, "irBidOrg");
            return (Criteria) this;
        }

        public Criteria andIrBidOrgGreaterThan(String value) {
            addCriterion("t.IR_BID_ORG >", value, "irBidOrg");
            return (Criteria) this;
        }

        public Criteria andIrBidOrgGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_BID_ORG >=", value, "irBidOrg");
            return (Criteria) this;
        }

        public Criteria andIrBidOrgLessThan(String value) {
            addCriterion("t.IR_BID_ORG <", value, "irBidOrg");
            return (Criteria) this;
        }

        public Criteria andIrBidOrgLessThanOrEqualTo(String value) {
            addCriterion("t.IR_BID_ORG <=", value, "irBidOrg");
            return (Criteria) this;
        }

        public Criteria andIrBidOrgLike(String value) {
            addCriterion("t.IR_BID_ORG like", value, "irBidOrg");
            return (Criteria) this;
        }

        public Criteria andIrBidOrgNotLike(String value) {
            addCriterion("t.IR_BID_ORG not like", value, "irBidOrg");
            return (Criteria) this;
        }

        public Criteria andIrBidOrgIn(List<String> values) {
            addCriterion("t.IR_BID_ORG in", values, "irBidOrg");
            return (Criteria) this;
        }

        public Criteria andIrBidOrgNotIn(List<String> values) {
            addCriterion("t.IR_BID_ORG not in", values, "irBidOrg");
            return (Criteria) this;
        }

        public Criteria andIrBidOrgBetween(String value1, String value2) {
            addCriterion("t.IR_BID_ORG between", value1, value2, "irBidOrg");
            return (Criteria) this;
        }

        public Criteria andIrBidOrgNotBetween(String value1, String value2) {
            addCriterion("t.IR_BID_ORG not between", value1, value2, "irBidOrg");
            return (Criteria) this;
        }

        public Criteria andIrBidMoneyIsNull() {
            addCriterion("t.IR_BID_MONEY is null");
            return (Criteria) this;
        }

        public Criteria andIrBidMoneyIsNotNull() {
            addCriterion("t.IR_BID_MONEY is not null");
            return (Criteria) this;
        }

        public Criteria andIrBidMoneyEqualTo(String value) {
            addCriterion("t.IR_BID_MONEY =", value, "irBidMoney");
            return (Criteria) this;
        }

        public Criteria andIrBidMoneyNotEqualTo(String value) {
            addCriterion("t.IR_BID_MONEY <>", value, "irBidMoney");
            return (Criteria) this;
        }

        public Criteria andIrBidMoneyGreaterThan(String value) {
            addCriterion("t.IR_BID_MONEY >", value, "irBidMoney");
            return (Criteria) this;
        }

        public Criteria andIrBidMoneyGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_BID_MONEY >=", value, "irBidMoney");
            return (Criteria) this;
        }

        public Criteria andIrBidMoneyLessThan(String value) {
            addCriterion("t.IR_BID_MONEY <", value, "irBidMoney");
            return (Criteria) this;
        }

        public Criteria andIrBidMoneyLessThanOrEqualTo(String value) {
            addCriterion("t.IR_BID_MONEY <=", value, "irBidMoney");
            return (Criteria) this;
        }

        public Criteria andIrBidMoneyLike(String value) {
            addCriterion("t.IR_BID_MONEY like", value, "irBidMoney");
            return (Criteria) this;
        }

        public Criteria andIrBidMoneyNotLike(String value) {
            addCriterion("t.IR_BID_MONEY not like", value, "irBidMoney");
            return (Criteria) this;
        }

        public Criteria andIrBidMoneyIn(List<String> values) {
            addCriterion("t.IR_BID_MONEY in", values, "irBidMoney");
            return (Criteria) this;
        }

        public Criteria andIrBidMoneyNotIn(List<String> values) {
            addCriterion("t.IR_BID_MONEY not in", values, "irBidMoney");
            return (Criteria) this;
        }

        public Criteria andIrBidMoneyBetween(String value1, String value2) {
            addCriterion("t.IR_BID_MONEY between", value1, value2, "irBidMoney");
            return (Criteria) this;
        }

        public Criteria andIrBidMoneyNotBetween(String value1, String value2) {
            addCriterion("t.IR_BID_MONEY not between", value1, value2, "irBidMoney");
            return (Criteria) this;
        }

        public Criteria andIrBidAddrIsNull() {
            addCriterion("t.IR_BID_ADDR is null");
            return (Criteria) this;
        }

        public Criteria andIrBidAddrIsNotNull() {
            addCriterion("t.IR_BID_ADDR is not null");
            return (Criteria) this;
        }

        public Criteria andIrBidAddrEqualTo(String value) {
            addCriterion("t.IR_BID_ADDR =", value, "irBidAddr");
            return (Criteria) this;
        }

        public Criteria andIrBidAddrNotEqualTo(String value) {
            addCriterion("t.IR_BID_ADDR <>", value, "irBidAddr");
            return (Criteria) this;
        }

        public Criteria andIrBidAddrGreaterThan(String value) {
            addCriterion("t.IR_BID_ADDR >", value, "irBidAddr");
            return (Criteria) this;
        }

        public Criteria andIrBidAddrGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_BID_ADDR >=", value, "irBidAddr");
            return (Criteria) this;
        }

        public Criteria andIrBidAddrLessThan(String value) {
            addCriterion("t.IR_BID_ADDR <", value, "irBidAddr");
            return (Criteria) this;
        }

        public Criteria andIrBidAddrLessThanOrEqualTo(String value) {
            addCriterion("t.IR_BID_ADDR <=", value, "irBidAddr");
            return (Criteria) this;
        }

        public Criteria andIrBidAddrLike(String value) {
            addCriterion("t.IR_BID_ADDR like", value, "irBidAddr");
            return (Criteria) this;
        }

        public Criteria andIrBidAddrNotLike(String value) {
            addCriterion("t.IR_BID_ADDR not like", value, "irBidAddr");
            return (Criteria) this;
        }

        public Criteria andIrBidAddrIn(List<String> values) {
            addCriterion("t.IR_BID_ADDR in", values, "irBidAddr");
            return (Criteria) this;
        }

        public Criteria andIrBidAddrNotIn(List<String> values) {
            addCriterion("t.IR_BID_ADDR not in", values, "irBidAddr");
            return (Criteria) this;
        }

        public Criteria andIrBidAddrBetween(String value1, String value2) {
            addCriterion("t.IR_BID_ADDR between", value1, value2, "irBidAddr");
            return (Criteria) this;
        }

        public Criteria andIrBidAddrNotBetween(String value1, String value2) {
            addCriterion("t.IR_BID_ADDR not between", value1, value2, "irBidAddr");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentDateIsNull() {
            addCriterion("t.IR_ANNULMENT_DATE is null");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentDateIsNotNull() {
            addCriterion("t.IR_ANNULMENT_DATE is not null");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentDateEqualTo(String value) {
            addCriterion("t.IR_ANNULMENT_DATE =", value, "irAnnulmentDate");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentDateNotEqualTo(String value) {
            addCriterion("t.IR_ANNULMENT_DATE <>", value, "irAnnulmentDate");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentDateGreaterThan(String value) {
            addCriterion("t.IR_ANNULMENT_DATE >", value, "irAnnulmentDate");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentDateGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_ANNULMENT_DATE >=", value, "irAnnulmentDate");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentDateLessThan(String value) {
            addCriterion("t.IR_ANNULMENT_DATE <", value, "irAnnulmentDate");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentDateLessThanOrEqualTo(String value) {
            addCriterion("t.IR_ANNULMENT_DATE <=", value, "irAnnulmentDate");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentDateLike(String value) {
            addCriterion("t.IR_ANNULMENT_DATE like", value, "irAnnulmentDate");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentDateNotLike(String value) {
            addCriterion("t.IR_ANNULMENT_DATE not like", value, "irAnnulmentDate");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentDateIn(List<String> values) {
            addCriterion("t.IR_ANNULMENT_DATE in", values, "irAnnulmentDate");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentDateNotIn(List<String> values) {
            addCriterion("t.IR_ANNULMENT_DATE not in", values, "irAnnulmentDate");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentDateBetween(String value1, String value2) {
            addCriterion("t.IR_ANNULMENT_DATE between", value1, value2, "irAnnulmentDate");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentDateNotBetween(String value1, String value2) {
            addCriterion("t.IR_ANNULMENT_DATE not between", value1, value2, "irAnnulmentDate");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentReasonIsNull() {
            addCriterion("t.IR_ANNULMENT_REASON is null");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentReasonIsNotNull() {
            addCriterion("t.IR_ANNULMENT_REASON is not null");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentReasonEqualTo(String value) {
            addCriterion("t.IR_ANNULMENT_REASON =", value, "irAnnulmentReason");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentReasonNotEqualTo(String value) {
            addCriterion("t.IR_ANNULMENT_REASON <>", value, "irAnnulmentReason");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentReasonGreaterThan(String value) {
            addCriterion("t.IR_ANNULMENT_REASON >", value, "irAnnulmentReason");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentReasonGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_ANNULMENT_REASON >=", value, "irAnnulmentReason");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentReasonLessThan(String value) {
            addCriterion("t.IR_ANNULMENT_REASON <", value, "irAnnulmentReason");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentReasonLessThanOrEqualTo(String value) {
            addCriterion("t.IR_ANNULMENT_REASON <=", value, "irAnnulmentReason");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentReasonLike(String value) {
            addCriterion("t.IR_ANNULMENT_REASON like", value, "irAnnulmentReason");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentReasonNotLike(String value) {
            addCriterion("t.IR_ANNULMENT_REASON not like", value, "irAnnulmentReason");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentReasonIn(List<String> values) {
            addCriterion("t.IR_ANNULMENT_REASON in", values, "irAnnulmentReason");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentReasonNotIn(List<String> values) {
            addCriterion("t.IR_ANNULMENT_REASON not in", values, "irAnnulmentReason");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentReasonBetween(String value1, String value2) {
            addCriterion("t.IR_ANNULMENT_REASON between", value1, value2, "irAnnulmentReason");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentReasonNotBetween(String value1, String value2) {
            addCriterion("t.IR_ANNULMENT_REASON not between", value1, value2, "irAnnulmentReason");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentTreatmentIsNull() {
            addCriterion("t.IR_ANNULMENT_TREATMENT is null");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentTreatmentIsNotNull() {
            addCriterion("t.IR_ANNULMENT_TREATMENT is not null");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentTreatmentEqualTo(String value) {
            addCriterion("t.IR_ANNULMENT_TREATMENT =", value, "irAnnulmentTreatment");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentTreatmentNotEqualTo(String value) {
            addCriterion("t.IR_ANNULMENT_TREATMENT <>", value, "irAnnulmentTreatment");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentTreatmentGreaterThan(String value) {
            addCriterion("t.IR_ANNULMENT_TREATMENT >", value, "irAnnulmentTreatment");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentTreatmentGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_ANNULMENT_TREATMENT >=", value, "irAnnulmentTreatment");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentTreatmentLessThan(String value) {
            addCriterion("t.IR_ANNULMENT_TREATMENT <", value, "irAnnulmentTreatment");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentTreatmentLessThanOrEqualTo(String value) {
            addCriterion("t.IR_ANNULMENT_TREATMENT <=", value, "irAnnulmentTreatment");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentTreatmentLike(String value) {
            addCriterion("t.IR_ANNULMENT_TREATMENT like", value, "irAnnulmentTreatment");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentTreatmentNotLike(String value) {
            addCriterion("t.IR_ANNULMENT_TREATMENT not like", value, "irAnnulmentTreatment");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentTreatmentIn(List<String> values) {
            addCriterion("t.IR_ANNULMENT_TREATMENT in", values, "irAnnulmentTreatment");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentTreatmentNotIn(List<String> values) {
            addCriterion("t.IR_ANNULMENT_TREATMENT not in", values, "irAnnulmentTreatment");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentTreatmentBetween(String value1, String value2) {
            addCriterion("t.IR_ANNULMENT_TREATMENT between", value1, value2, "irAnnulmentTreatment");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentTreatmentNotBetween(String value1, String value2) {
            addCriterion("t.IR_ANNULMENT_TREATMENT not between", value1, value2, "irAnnulmentTreatment");
            return (Criteria) this;
        }

        public Criteria andIrOpenTimeIsNull() {
            addCriterion("t.IR_OPEN_TIME is null");
            return (Criteria) this;
        }

        public Criteria andIrOpenTimeIsNotNull() {
            addCriterion("t.IR_OPEN_TIME is not null");
            return (Criteria) this;
        }

        public Criteria andIrOpenTimeEqualTo(String value) {
            addCriterion("t.IR_OPEN_TIME =", value, "irOpenTime");
            return (Criteria) this;
        }

        public Criteria andIrOpenTimeNotEqualTo(String value) {
            addCriterion("t.IR_OPEN_TIME <>", value, "irOpenTime");
            return (Criteria) this;
        }

        public Criteria andIrOpenTimeGreaterThan(String value) {
            addCriterion("t.IR_OPEN_TIME >", value, "irOpenTime");
            return (Criteria) this;
        }

        public Criteria andIrOpenTimeGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_OPEN_TIME >=", value, "irOpenTime");
            return (Criteria) this;
        }

        public Criteria andIrOpenTimeLessThan(String value) {
            addCriterion("t.IR_OPEN_TIME <", value, "irOpenTime");
            return (Criteria) this;
        }

        public Criteria andIrOpenTimeLessThanOrEqualTo(String value) {
            addCriterion("t.IR_OPEN_TIME <=", value, "irOpenTime");
            return (Criteria) this;
        }

        public Criteria andIrOpenTimeLike(String value) {
            addCriterion("t.IR_OPEN_TIME like", value, "irOpenTime");
            return (Criteria) this;
        }

        public Criteria andIrOpenTimeNotLike(String value) {
            addCriterion("t.IR_OPEN_TIME not like", value, "irOpenTime");
            return (Criteria) this;
        }

        public Criteria andIrOpenTimeIn(List<String> values) {
            addCriterion("t.IR_OPEN_TIME in", values, "irOpenTime");
            return (Criteria) this;
        }

        public Criteria andIrOpenTimeNotIn(List<String> values) {
            addCriterion("t.IR_OPEN_TIME not in", values, "irOpenTime");
            return (Criteria) this;
        }

        public Criteria andIrOpenTimeBetween(String value1, String value2) {
            addCriterion("t.IR_OPEN_TIME between", value1, value2, "irOpenTime");
            return (Criteria) this;
        }

        public Criteria andIrOpenTimeNotBetween(String value1, String value2) {
            addCriterion("t.IR_OPEN_TIME not between", value1, value2, "irOpenTime");
            return (Criteria) this;
        }

        public Criteria andIrOpenAddrIsNull() {
            addCriterion("t.IR_OPEN_ADDR is null");
            return (Criteria) this;
        }

        public Criteria andIrOpenAddrIsNotNull() {
            addCriterion("t.IR_OPEN_ADDR is not null");
            return (Criteria) this;
        }

        public Criteria andIrOpenAddrEqualTo(String value) {
            addCriterion("t.IR_OPEN_ADDR =", value, "irOpenAddr");
            return (Criteria) this;
        }

        public Criteria andIrOpenAddrNotEqualTo(String value) {
            addCriterion("t.IR_OPEN_ADDR <>", value, "irOpenAddr");
            return (Criteria) this;
        }

        public Criteria andIrOpenAddrGreaterThan(String value) {
            addCriterion("t.IR_OPEN_ADDR >", value, "irOpenAddr");
            return (Criteria) this;
        }

        public Criteria andIrOpenAddrGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_OPEN_ADDR >=", value, "irOpenAddr");
            return (Criteria) this;
        }

        public Criteria andIrOpenAddrLessThan(String value) {
            addCriterion("t.IR_OPEN_ADDR <", value, "irOpenAddr");
            return (Criteria) this;
        }

        public Criteria andIrOpenAddrLessThanOrEqualTo(String value) {
            addCriterion("t.IR_OPEN_ADDR <=", value, "irOpenAddr");
            return (Criteria) this;
        }

        public Criteria andIrOpenAddrLike(String value) {
            addCriterion("t.IR_OPEN_ADDR like", value, "irOpenAddr");
            return (Criteria) this;
        }

        public Criteria andIrOpenAddrNotLike(String value) {
            addCriterion("t.IR_OPEN_ADDR not like", value, "irOpenAddr");
            return (Criteria) this;
        }

        public Criteria andIrOpenAddrIn(List<String> values) {
            addCriterion("t.IR_OPEN_ADDR in", values, "irOpenAddr");
            return (Criteria) this;
        }

        public Criteria andIrOpenAddrNotIn(List<String> values) {
            addCriterion("t.IR_OPEN_ADDR not in", values, "irOpenAddr");
            return (Criteria) this;
        }

        public Criteria andIrOpenAddrBetween(String value1, String value2) {
            addCriterion("t.IR_OPEN_ADDR between", value1, value2, "irOpenAddr");
            return (Criteria) this;
        }

        public Criteria andIrOpenAddrNotBetween(String value1, String value2) {
            addCriterion("t.IR_OPEN_ADDR not between", value1, value2, "irOpenAddr");
            return (Criteria) this;
        }

        public Criteria andIrSaleStartTimeIsNull() {
            addCriterion("t.IR_SALE_START_TIME is null");
            return (Criteria) this;
        }

        public Criteria andIrSaleStartTimeIsNotNull() {
            addCriterion("t.IR_SALE_START_TIME is not null");
            return (Criteria) this;
        }

        public Criteria andIrSaleStartTimeEqualTo(String value) {
            addCriterion("t.IR_SALE_START_TIME =", value, "irSaleStartTime");
            return (Criteria) this;
        }

        public Criteria andIrSaleStartTimeNotEqualTo(String value) {
            addCriterion("t.IR_SALE_START_TIME <>", value, "irSaleStartTime");
            return (Criteria) this;
        }

        public Criteria andIrSaleStartTimeGreaterThan(String value) {
            addCriterion("t.IR_SALE_START_TIME >", value, "irSaleStartTime");
            return (Criteria) this;
        }

        public Criteria andIrSaleStartTimeGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_SALE_START_TIME >=", value, "irSaleStartTime");
            return (Criteria) this;
        }

        public Criteria andIrSaleStartTimeLessThan(String value) {
            addCriterion("t.IR_SALE_START_TIME <", value, "irSaleStartTime");
            return (Criteria) this;
        }

        public Criteria andIrSaleStartTimeLessThanOrEqualTo(String value) {
            addCriterion("t.IR_SALE_START_TIME <=", value, "irSaleStartTime");
            return (Criteria) this;
        }

        public Criteria andIrSaleStartTimeLike(String value) {
            addCriterion("t.IR_SALE_START_TIME like", value, "irSaleStartTime");
            return (Criteria) this;
        }

        public Criteria andIrSaleStartTimeNotLike(String value) {
            addCriterion("t.IR_SALE_START_TIME not like", value, "irSaleStartTime");
            return (Criteria) this;
        }

        public Criteria andIrSaleStartTimeIn(List<String> values) {
            addCriterion("t.IR_SALE_START_TIME in", values, "irSaleStartTime");
            return (Criteria) this;
        }

        public Criteria andIrSaleStartTimeNotIn(List<String> values) {
            addCriterion("t.IR_SALE_START_TIME not in", values, "irSaleStartTime");
            return (Criteria) this;
        }

        public Criteria andIrSaleStartTimeBetween(String value1, String value2) {
            addCriterion("t.IR_SALE_START_TIME between", value1, value2, "irSaleStartTime");
            return (Criteria) this;
        }

        public Criteria andIrSaleStartTimeNotBetween(String value1, String value2) {
            addCriterion("t.IR_SALE_START_TIME not between", value1, value2, "irSaleStartTime");
            return (Criteria) this;
        }

        public Criteria andIrSaleEndTimeIsNull() {
            addCriterion("t.IR_SALE_END_TIME is null");
            return (Criteria) this;
        }

        public Criteria andIrSaleEndTimeIsNotNull() {
            addCriterion("t.IR_SALE_END_TIME is not null");
            return (Criteria) this;
        }

        public Criteria andIrSaleEndTimeEqualTo(String value) {
            addCriterion("t.IR_SALE_END_TIME =", value, "irSaleEndTime");
            return (Criteria) this;
        }

        public Criteria andIrSaleEndTimeNotEqualTo(String value) {
            addCriterion("t.IR_SALE_END_TIME <>", value, "irSaleEndTime");
            return (Criteria) this;
        }

        public Criteria andIrSaleEndTimeGreaterThan(String value) {
            addCriterion("t.IR_SALE_END_TIME >", value, "irSaleEndTime");
            return (Criteria) this;
        }

        public Criteria andIrSaleEndTimeGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_SALE_END_TIME >=", value, "irSaleEndTime");
            return (Criteria) this;
        }

        public Criteria andIrSaleEndTimeLessThan(String value) {
            addCriterion("t.IR_SALE_END_TIME <", value, "irSaleEndTime");
            return (Criteria) this;
        }

        public Criteria andIrSaleEndTimeLessThanOrEqualTo(String value) {
            addCriterion("t.IR_SALE_END_TIME <=", value, "irSaleEndTime");
            return (Criteria) this;
        }

        public Criteria andIrSaleEndTimeLike(String value) {
            addCriterion("t.IR_SALE_END_TIME like", value, "irSaleEndTime");
            return (Criteria) this;
        }

        public Criteria andIrSaleEndTimeNotLike(String value) {
            addCriterion("t.IR_SALE_END_TIME not like", value, "irSaleEndTime");
            return (Criteria) this;
        }

        public Criteria andIrSaleEndTimeIn(List<String> values) {
            addCriterion("t.IR_SALE_END_TIME in", values, "irSaleEndTime");
            return (Criteria) this;
        }

        public Criteria andIrSaleEndTimeNotIn(List<String> values) {
            addCriterion("t.IR_SALE_END_TIME not in", values, "irSaleEndTime");
            return (Criteria) this;
        }

        public Criteria andIrSaleEndTimeBetween(String value1, String value2) {
            addCriterion("t.IR_SALE_END_TIME between", value1, value2, "irSaleEndTime");
            return (Criteria) this;
        }

        public Criteria andIrSaleEndTimeNotBetween(String value1, String value2) {
            addCriterion("t.IR_SALE_END_TIME not between", value1, value2, "irSaleEndTime");
            return (Criteria) this;
        }

        public Criteria andIrQualificationIsNull() {
            addCriterion("t.IR_QUALIFICATION is null");
            return (Criteria) this;
        }

        public Criteria andIrQualificationIsNotNull() {
            addCriterion("t.IR_QUALIFICATION is not null");
            return (Criteria) this;
        }

        public Criteria andIrQualificationEqualTo(String value) {
            addCriterion("t.IR_QUALIFICATION =", value, "irQualification");
            return (Criteria) this;
        }

        public Criteria andIrQualificationNotEqualTo(String value) {
            addCriterion("t.IR_QUALIFICATION <>", value, "irQualification");
            return (Criteria) this;
        }

        public Criteria andIrQualificationGreaterThan(String value) {
            addCriterion("t.IR_QUALIFICATION >", value, "irQualification");
            return (Criteria) this;
        }

        public Criteria andIrQualificationGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_QUALIFICATION >=", value, "irQualification");
            return (Criteria) this;
        }

        public Criteria andIrQualificationLessThan(String value) {
            addCriterion("t.IR_QUALIFICATION <", value, "irQualification");
            return (Criteria) this;
        }

        public Criteria andIrQualificationLessThanOrEqualTo(String value) {
            addCriterion("t.IR_QUALIFICATION <=", value, "irQualification");
            return (Criteria) this;
        }

        public Criteria andIrQualificationLike(String value) {
            addCriterion("t.IR_QUALIFICATION like", value, "irQualification");
            return (Criteria) this;
        }

        public Criteria andIrQualificationNotLike(String value) {
            addCriterion("t.IR_QUALIFICATION not like", value, "irQualification");
            return (Criteria) this;
        }

        public Criteria andIrQualificationIn(List<String> values) {
            addCriterion("t.IR_QUALIFICATION in", values, "irQualification");
            return (Criteria) this;
        }

        public Criteria andIrQualificationNotIn(List<String> values) {
            addCriterion("t.IR_QUALIFICATION not in", values, "irQualification");
            return (Criteria) this;
        }

        public Criteria andIrQualificationBetween(String value1, String value2) {
            addCriterion("t.IR_QUALIFICATION between", value1, value2, "irQualification");
            return (Criteria) this;
        }

        public Criteria andIrQualificationNotBetween(String value1, String value2) {
            addCriterion("t.IR_QUALIFICATION not between", value1, value2, "irQualification");
            return (Criteria) this;
        }

        public Criteria andIrSubcontractIsNull() {
            addCriterion("t.IR_SUBCONTRACT is null");
            return (Criteria) this;
        }

        public Criteria andIrSubcontractIsNotNull() {
            addCriterion("t.IR_SUBCONTRACT is not null");
            return (Criteria) this;
        }

        public Criteria andIrSubcontractEqualTo(String value) {
            addCriterion("t.IR_SUBCONTRACT =", value, "irSubcontract");
            return (Criteria) this;
        }

        public Criteria andIrSubcontractNotEqualTo(String value) {
            addCriterion("t.IR_SUBCONTRACT <>", value, "irSubcontract");
            return (Criteria) this;
        }

        public Criteria andIrSubcontractGreaterThan(String value) {
            addCriterion("t.IR_SUBCONTRACT >", value, "irSubcontract");
            return (Criteria) this;
        }

        public Criteria andIrSubcontractGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_SUBCONTRACT >=", value, "irSubcontract");
            return (Criteria) this;
        }

        public Criteria andIrSubcontractLessThan(String value) {
            addCriterion("t.IR_SUBCONTRACT <", value, "irSubcontract");
            return (Criteria) this;
        }

        public Criteria andIrSubcontractLessThanOrEqualTo(String value) {
            addCriterion("t.IR_SUBCONTRACT <=", value, "irSubcontract");
            return (Criteria) this;
        }

        public Criteria andIrSubcontractLike(String value) {
            addCriterion("t.IR_SUBCONTRACT like", value, "irSubcontract");
            return (Criteria) this;
        }

        public Criteria andIrSubcontractNotLike(String value) {
            addCriterion("t.IR_SUBCONTRACT not like", value, "irSubcontract");
            return (Criteria) this;
        }

        public Criteria andIrSubcontractIn(List<String> values) {
            addCriterion("t.IR_SUBCONTRACT in", values, "irSubcontract");
            return (Criteria) this;
        }

        public Criteria andIrSubcontractNotIn(List<String> values) {
            addCriterion("t.IR_SUBCONTRACT not in", values, "irSubcontract");
            return (Criteria) this;
        }

        public Criteria andIrSubcontractBetween(String value1, String value2) {
            addCriterion("t.IR_SUBCONTRACT between", value1, value2, "irSubcontract");
            return (Criteria) this;
        }

        public Criteria andIrSubcontractNotBetween(String value1, String value2) {
            addCriterion("t.IR_SUBCONTRACT not between", value1, value2, "irSubcontract");
            return (Criteria) this;
        }

        public Criteria andIrTableTagIsNull() {
            addCriterion("t.IR_TABLE_TAG is null");
            return (Criteria) this;
        }

        public Criteria andIrTableTagIsNotNull() {
            addCriterion("t.IR_TABLE_TAG is not null");
            return (Criteria) this;
        }

        public Criteria andIrTableTagEqualTo(String value) {
            addCriterion("t.IR_TABLE_TAG =", value, "irTableTag");
            return (Criteria) this;
        }

        public Criteria andIrTableTagNotEqualTo(String value) {
            addCriterion("t.IR_TABLE_TAG <>", value, "irTableTag");
            return (Criteria) this;
        }

        public Criteria andIrTableTagGreaterThan(String value) {
            addCriterion("t.IR_TABLE_TAG >", value, "irTableTag");
            return (Criteria) this;
        }

        public Criteria andIrTableTagGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_TABLE_TAG >=", value, "irTableTag");
            return (Criteria) this;
        }

        public Criteria andIrTableTagLessThan(String value) {
            addCriterion("t.IR_TABLE_TAG <", value, "irTableTag");
            return (Criteria) this;
        }

        public Criteria andIrTableTagLessThanOrEqualTo(String value) {
            addCriterion("t.IR_TABLE_TAG <=", value, "irTableTag");
            return (Criteria) this;
        }

        public Criteria andIrTableTagLike(String value) {
            addCriterion("t.IR_TABLE_TAG like", value, "irTableTag");
            return (Criteria) this;
        }

        public Criteria andIrTableTagNotLike(String value) {
            addCriterion("t.IR_TABLE_TAG not like", value, "irTableTag");
            return (Criteria) this;
        }

        public Criteria andIrTableTagIn(List<String> values) {
            addCriterion("t.IR_TABLE_TAG in", values, "irTableTag");
            return (Criteria) this;
        }

        public Criteria andIrTableTagNotIn(List<String> values) {
            addCriterion("t.IR_TABLE_TAG not in", values, "irTableTag");
            return (Criteria) this;
        }

        public Criteria andIrTableTagBetween(String value1, String value2) {
            addCriterion("t.IR_TABLE_TAG between", value1, value2, "irTableTag");
            return (Criteria) this;
        }

        public Criteria andIrTableTagNotBetween(String value1, String value2) {
            addCriterion("t.IR_TABLE_TAG not between", value1, value2, "irTableTag");
            return (Criteria) this;
        }

        public Criteria andIrFirstAddrIsNull() {
            addCriterion("t.IR_FIRST_ADDR is null");
            return (Criteria) this;
        }

        public Criteria andIrFirstAddrIsNotNull() {
            addCriterion("t.IR_FIRST_ADDR is not null");
            return (Criteria) this;
        }

        public Criteria andIrFirstAddrEqualTo(String value) {
            addCriterion("t.IR_FIRST_ADDR =", value, "irFirstAddr");
            return (Criteria) this;
        }

        public Criteria andIrFirstAddrNotEqualTo(String value) {
            addCriterion("t.IR_FIRST_ADDR <>", value, "irFirstAddr");
            return (Criteria) this;
        }

        public Criteria andIrFirstAddrGreaterThan(String value) {
            addCriterion("t.IR_FIRST_ADDR >", value, "irFirstAddr");
            return (Criteria) this;
        }

        public Criteria andIrFirstAddrGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_FIRST_ADDR >=", value, "irFirstAddr");
            return (Criteria) this;
        }

        public Criteria andIrFirstAddrLessThan(String value) {
            addCriterion("t.IR_FIRST_ADDR <", value, "irFirstAddr");
            return (Criteria) this;
        }

        public Criteria andIrFirstAddrLessThanOrEqualTo(String value) {
            addCriterion("t.IR_FIRST_ADDR <=", value, "irFirstAddr");
            return (Criteria) this;
        }

        public Criteria andIrFirstAddrLike(String value) {
            addCriterion("t.IR_FIRST_ADDR like", value, "irFirstAddr");
            return (Criteria) this;
        }

        public Criteria andIrFirstAddrNotLike(String value) {
            addCriterion("t.IR_FIRST_ADDR not like", value, "irFirstAddr");
            return (Criteria) this;
        }

        public Criteria andIrFirstAddrIn(List<String> values) {
            addCriterion("t.IR_FIRST_ADDR in", values, "irFirstAddr");
            return (Criteria) this;
        }

        public Criteria andIrFirstAddrNotIn(List<String> values) {
            addCriterion("t.IR_FIRST_ADDR not in", values, "irFirstAddr");
            return (Criteria) this;
        }

        public Criteria andIrFirstAddrBetween(String value1, String value2) {
            addCriterion("t.IR_FIRST_ADDR between", value1, value2, "irFirstAddr");
            return (Criteria) this;
        }

        public Criteria andIrFirstAddrNotBetween(String value1, String value2) {
            addCriterion("t.IR_FIRST_ADDR not between", value1, value2, "irFirstAddr");
            return (Criteria) this;
        }

        public Criteria andIrBankIsNull() {
            addCriterion("t.IR_BANK is null");
            return (Criteria) this;
        }

        public Criteria andIrBankIsNotNull() {
            addCriterion("t.IR_BANK is not null");
            return (Criteria) this;
        }

        public Criteria andIrBankEqualTo(String value) {
            addCriterion("t.IR_BANK =", value, "irBank");
            return (Criteria) this;
        }

        public Criteria andIrBankNotEqualTo(String value) {
            addCriterion("t.IR_BANK <>", value, "irBank");
            return (Criteria) this;
        }

        public Criteria andIrBankGreaterThan(String value) {
            addCriterion("t.IR_BANK >", value, "irBank");
            return (Criteria) this;
        }

        public Criteria andIrBankGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_BANK >=", value, "irBank");
            return (Criteria) this;
        }

        public Criteria andIrBankLessThan(String value) {
            addCriterion("t.IR_BANK <", value, "irBank");
            return (Criteria) this;
        }

        public Criteria andIrBankLessThanOrEqualTo(String value) {
            addCriterion("t.IR_BANK <=", value, "irBank");
            return (Criteria) this;
        }

        public Criteria andIrBankLike(String value) {
            addCriterion("t.IR_BANK like", value, "irBank");
            return (Criteria) this;
        }

        public Criteria andIrBankNotLike(String value) {
            addCriterion("t.IR_BANK not like", value, "irBank");
            return (Criteria) this;
        }

        public Criteria andIrBankIn(List<String> values) {
            addCriterion("t.IR_BANK in", values, "irBank");
            return (Criteria) this;
        }

        public Criteria andIrBankNotIn(List<String> values) {
            addCriterion("t.IR_BANK not in", values, "irBank");
            return (Criteria) this;
        }

        public Criteria andIrBankBetween(String value1, String value2) {
            addCriterion("t.IR_BANK between", value1, value2, "irBank");
            return (Criteria) this;
        }

        public Criteria andIrBankNotBetween(String value1, String value2) {
            addCriterion("t.IR_BANK not between", value1, value2, "irBank");
            return (Criteria) this;
        }

        public Criteria andIrPriceIsNull() {
            addCriterion("t.IR_PRICE is null");
            return (Criteria) this;
        }

        public Criteria andIrPriceIsNotNull() {
            addCriterion("t.IR_PRICE is not null");
            return (Criteria) this;
        }

        public Criteria andIrPriceEqualTo(String value) {
            addCriterion("t.IR_PRICE =", value, "irPrice");
            return (Criteria) this;
        }

        public Criteria andIrPriceNotEqualTo(String value) {
            addCriterion("t.IR_PRICE <>", value, "irPrice");
            return (Criteria) this;
        }

        public Criteria andIrPriceGreaterThan(String value) {
            addCriterion("t.IR_PRICE >", value, "irPrice");
            return (Criteria) this;
        }

        public Criteria andIrPriceGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_PRICE >=", value, "irPrice");
            return (Criteria) this;
        }

        public Criteria andIrPriceLessThan(String value) {
            addCriterion("t.IR_PRICE <", value, "irPrice");
            return (Criteria) this;
        }

        public Criteria andIrPriceLessThanOrEqualTo(String value) {
            addCriterion("t.IR_PRICE <=", value, "irPrice");
            return (Criteria) this;
        }

        public Criteria andIrPriceLike(String value) {
            addCriterion("t.IR_PRICE like", value, "irPrice");
            return (Criteria) this;
        }

        public Criteria andIrPriceNotLike(String value) {
            addCriterion("t.IR_PRICE not like", value, "irPrice");
            return (Criteria) this;
        }

        public Criteria andIrPriceIn(List<String> values) {
            addCriterion("t.IR_PRICE in", values, "irPrice");
            return (Criteria) this;
        }

        public Criteria andIrPriceNotIn(List<String> values) {
            addCriterion("t.IR_PRICE not in", values, "irPrice");
            return (Criteria) this;
        }

        public Criteria andIrPriceBetween(String value1, String value2) {
            addCriterion("t.IR_PRICE between", value1, value2, "irPrice");
            return (Criteria) this;
        }

        public Criteria andIrPriceNotBetween(String value1, String value2) {
            addCriterion("t.IR_PRICE not between", value1, value2, "irPrice");
            return (Criteria) this;
        }

        public Criteria andIrPolicyIsNull() {
            addCriterion("t.IR_POLICY is null");
            return (Criteria) this;
        }

        public Criteria andIrPolicyIsNotNull() {
            addCriterion("t.IR_POLICY is not null");
            return (Criteria) this;
        }

        public Criteria andIrPolicyEqualTo(String value) {
            addCriterion("t.IR_POLICY =", value, "irPolicy");
            return (Criteria) this;
        }

        public Criteria andIrPolicyNotEqualTo(String value) {
            addCriterion("t.IR_POLICY <>", value, "irPolicy");
            return (Criteria) this;
        }

        public Criteria andIrPolicyGreaterThan(String value) {
            addCriterion("t.IR_POLICY >", value, "irPolicy");
            return (Criteria) this;
        }

        public Criteria andIrPolicyGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_POLICY >=", value, "irPolicy");
            return (Criteria) this;
        }

        public Criteria andIrPolicyLessThan(String value) {
            addCriterion("t.IR_POLICY <", value, "irPolicy");
            return (Criteria) this;
        }

        public Criteria andIrPolicyLessThanOrEqualTo(String value) {
            addCriterion("t.IR_POLICY <=", value, "irPolicy");
            return (Criteria) this;
        }

        public Criteria andIrPolicyLike(String value) {
            addCriterion("t.IR_POLICY like", value, "irPolicy");
            return (Criteria) this;
        }

        public Criteria andIrPolicyNotLike(String value) {
            addCriterion("t.IR_POLICY not like", value, "irPolicy");
            return (Criteria) this;
        }

        public Criteria andIrPolicyIn(List<String> values) {
            addCriterion("t.IR_POLICY in", values, "irPolicy");
            return (Criteria) this;
        }

        public Criteria andIrPolicyNotIn(List<String> values) {
            addCriterion("t.IR_POLICY not in", values, "irPolicy");
            return (Criteria) this;
        }

        public Criteria andIrPolicyBetween(String value1, String value2) {
            addCriterion("t.IR_POLICY between", value1, value2, "irPolicy");
            return (Criteria) this;
        }

        public Criteria andIrPolicyNotBetween(String value1, String value2) {
            addCriterion("t.IR_POLICY not between", value1, value2, "irPolicy");
            return (Criteria) this;
        }

        public Criteria andIrSmallEnterpriseIsNull() {
            addCriterion("t.IR_SMALL_ENTERPRISE is null");
            return (Criteria) this;
        }

        public Criteria andIrSmallEnterpriseIsNotNull() {
            addCriterion("t.IR_SMALL_ENTERPRISE is not null");
            return (Criteria) this;
        }

        public Criteria andIrSmallEnterpriseEqualTo(String value) {
            addCriterion("t.IR_SMALL_ENTERPRISE =", value, "irSmallEnterprise");
            return (Criteria) this;
        }

        public Criteria andIrSmallEnterpriseNotEqualTo(String value) {
            addCriterion("t.IR_SMALL_ENTERPRISE <>", value, "irSmallEnterprise");
            return (Criteria) this;
        }

        public Criteria andIrSmallEnterpriseGreaterThan(String value) {
            addCriterion("t.IR_SMALL_ENTERPRISE >", value, "irSmallEnterprise");
            return (Criteria) this;
        }

        public Criteria andIrSmallEnterpriseGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_SMALL_ENTERPRISE >=", value, "irSmallEnterprise");
            return (Criteria) this;
        }

        public Criteria andIrSmallEnterpriseLessThan(String value) {
            addCriterion("t.IR_SMALL_ENTERPRISE <", value, "irSmallEnterprise");
            return (Criteria) this;
        }

        public Criteria andIrSmallEnterpriseLessThanOrEqualTo(String value) {
            addCriterion("t.IR_SMALL_ENTERPRISE <=", value, "irSmallEnterprise");
            return (Criteria) this;
        }

        public Criteria andIrSmallEnterpriseLike(String value) {
            addCriterion("t.IR_SMALL_ENTERPRISE like", value, "irSmallEnterprise");
            return (Criteria) this;
        }

        public Criteria andIrSmallEnterpriseNotLike(String value) {
            addCriterion("t.IR_SMALL_ENTERPRISE not like", value, "irSmallEnterprise");
            return (Criteria) this;
        }

        public Criteria andIrSmallEnterpriseIn(List<String> values) {
            addCriterion("t.IR_SMALL_ENTERPRISE in", values, "irSmallEnterprise");
            return (Criteria) this;
        }

        public Criteria andIrSmallEnterpriseNotIn(List<String> values) {
            addCriterion("t.IR_SMALL_ENTERPRISE not in", values, "irSmallEnterprise");
            return (Criteria) this;
        }

        public Criteria andIrSmallEnterpriseBetween(String value1, String value2) {
            addCriterion("t.IR_SMALL_ENTERPRISE between", value1, value2, "irSmallEnterprise");
            return (Criteria) this;
        }

        public Criteria andIrSmallEnterpriseNotBetween(String value1, String value2) {
            addCriterion("t.IR_SMALL_ENTERPRISE not between", value1, value2, "irSmallEnterprise");
            return (Criteria) this;
        }

        public Criteria andIrNatureIsNull() {
            addCriterion("t.IR_NATURE is null");
            return (Criteria) this;
        }

        public Criteria andIrNatureIsNotNull() {
            addCriterion("t.IR_NATURE is not null");
            return (Criteria) this;
        }

        public Criteria andIrNatureEqualTo(String value) {
            addCriterion("t.IR_NATURE =", value, "irNature");
            return (Criteria) this;
        }

        public Criteria andIrNatureNotEqualTo(String value) {
            addCriterion("t.IR_NATURE <>", value, "irNature");
            return (Criteria) this;
        }

        public Criteria andIrNatureGreaterThan(String value) {
            addCriterion("t.IR_NATURE >", value, "irNature");
            return (Criteria) this;
        }

        public Criteria andIrNatureGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_NATURE >=", value, "irNature");
            return (Criteria) this;
        }

        public Criteria andIrNatureLessThan(String value) {
            addCriterion("t.IR_NATURE <", value, "irNature");
            return (Criteria) this;
        }

        public Criteria andIrNatureLessThanOrEqualTo(String value) {
            addCriterion("t.IR_NATURE <=", value, "irNature");
            return (Criteria) this;
        }

        public Criteria andIrNatureLike(String value) {
            addCriterion("t.IR_NATURE like", value, "irNature");
            return (Criteria) this;
        }

        public Criteria andIrNatureNotLike(String value) {
            addCriterion("t.IR_NATURE not like", value, "irNature");
            return (Criteria) this;
        }

        public Criteria andIrNatureIn(List<String> values) {
            addCriterion("t.IR_NATURE in", values, "irNature");
            return (Criteria) this;
        }

        public Criteria andIrNatureNotIn(List<String> values) {
            addCriterion("t.IR_NATURE not in", values, "irNature");
            return (Criteria) this;
        }

        public Criteria andIrNatureBetween(String value1, String value2) {
            addCriterion("t.IR_NATURE between", value1, value2, "irNature");
            return (Criteria) this;
        }

        public Criteria andIrNatureNotBetween(String value1, String value2) {
            addCriterion("t.IR_NATURE not between", value1, value2, "irNature");
            return (Criteria) this;
        }

        public Criteria andIrMediaIsNull() {
            addCriterion("t.IR_MEDIA is null");
            return (Criteria) this;
        }

        public Criteria andIrMediaIsNotNull() {
            addCriterion("t.IR_MEDIA is not null");
            return (Criteria) this;
        }

        public Criteria andIrMediaEqualTo(String value) {
            addCriterion("t.IR_MEDIA =", value, "irMedia");
            return (Criteria) this;
        }

        public Criteria andIrMediaNotEqualTo(String value) {
            addCriterion("t.IR_MEDIA <>", value, "irMedia");
            return (Criteria) this;
        }

        public Criteria andIrMediaGreaterThan(String value) {
            addCriterion("t.IR_MEDIA >", value, "irMedia");
            return (Criteria) this;
        }

        public Criteria andIrMediaGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_MEDIA >=", value, "irMedia");
            return (Criteria) this;
        }

        public Criteria andIrMediaLessThan(String value) {
            addCriterion("t.IR_MEDIA <", value, "irMedia");
            return (Criteria) this;
        }

        public Criteria andIrMediaLessThanOrEqualTo(String value) {
            addCriterion("t.IR_MEDIA <=", value, "irMedia");
            return (Criteria) this;
        }

        public Criteria andIrMediaLike(String value) {
            addCriterion("t.IR_MEDIA like", value, "irMedia");
            return (Criteria) this;
        }

        public Criteria andIrMediaNotLike(String value) {
            addCriterion("t.IR_MEDIA not like", value, "irMedia");
            return (Criteria) this;
        }

        public Criteria andIrMediaIn(List<String> values) {
            addCriterion("t.IR_MEDIA in", values, "irMedia");
            return (Criteria) this;
        }

        public Criteria andIrMediaNotIn(List<String> values) {
            addCriterion("t.IR_MEDIA not in", values, "irMedia");
            return (Criteria) this;
        }

        public Criteria andIrMediaBetween(String value1, String value2) {
            addCriterion("t.IR_MEDIA between", value1, value2, "irMedia");
            return (Criteria) this;
        }

        public Criteria andIrMediaNotBetween(String value1, String value2) {
            addCriterion("t.IR_MEDIA not between", value1, value2, "irMedia");
            return (Criteria) this;
        }

        public Criteria andIrBiddingFileidIsNull() {
            addCriterion("t.IR_BIDDING_FILEID is null");
            return (Criteria) this;
        }

        public Criteria andIrBiddingFileidIsNotNull() {
            addCriterion("t.IR_BIDDING_FILEID is not null");
            return (Criteria) this;
        }

        public Criteria andIrBiddingFileidEqualTo(String value) {
            addCriterion("t.IR_BIDDING_FILEID =", value, "irBiddingFileid");
            return (Criteria) this;
        }

        public Criteria andIrBiddingFileidNotEqualTo(String value) {
            addCriterion("t.IR_BIDDING_FILEID <>", value, "irBiddingFileid");
            return (Criteria) this;
        }

        public Criteria andIrBiddingFileidGreaterThan(String value) {
            addCriterion("t.IR_BIDDING_FILEID >", value, "irBiddingFileid");
            return (Criteria) this;
        }

        public Criteria andIrBiddingFileidGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_BIDDING_FILEID >=", value, "irBiddingFileid");
            return (Criteria) this;
        }

        public Criteria andIrBiddingFileidLessThan(String value) {
            addCriterion("t.IR_BIDDING_FILEID <", value, "irBiddingFileid");
            return (Criteria) this;
        }

        public Criteria andIrBiddingFileidLessThanOrEqualTo(String value) {
            addCriterion("t.IR_BIDDING_FILEID <=", value, "irBiddingFileid");
            return (Criteria) this;
        }

        public Criteria andIrBiddingFileidLike(String value) {
            addCriterion("t.IR_BIDDING_FILEID like", value, "irBiddingFileid");
            return (Criteria) this;
        }

        public Criteria andIrBiddingFileidNotLike(String value) {
            addCriterion("t.IR_BIDDING_FILEID not like", value, "irBiddingFileid");
            return (Criteria) this;
        }

        public Criteria andIrBiddingFileidIn(List<String> values) {
            addCriterion("t.IR_BIDDING_FILEID in", values, "irBiddingFileid");
            return (Criteria) this;
        }

        public Criteria andIrBiddingFileidNotIn(List<String> values) {
            addCriterion("t.IR_BIDDING_FILEID not in", values, "irBiddingFileid");
            return (Criteria) this;
        }

        public Criteria andIrBiddingFileidBetween(String value1, String value2) {
            addCriterion("t.IR_BIDDING_FILEID between", value1, value2, "irBiddingFileid");
            return (Criteria) this;
        }

        public Criteria andIrBiddingFileidNotBetween(String value1, String value2) {
            addCriterion("t.IR_BIDDING_FILEID not between", value1, value2, "irBiddingFileid");
            return (Criteria) this;
        }

        public Criteria andIrBiddingNameTitleIsNull() {
            addCriterion("t.IR_BIDDING_NAME_TITLE is null");
            return (Criteria) this;
        }

        public Criteria andIrBiddingNameTitleIsNotNull() {
            addCriterion("t.IR_BIDDING_NAME_TITLE is not null");
            return (Criteria) this;
        }

        public Criteria andIrBiddingNameTitleEqualTo(String value) {
            addCriterion("t.IR_BIDDING_NAME_TITLE =", value, "irBiddingNameTitle");
            return (Criteria) this;
        }

        public Criteria andIrBiddingNameTitleNotEqualTo(String value) {
            addCriterion("t.IR_BIDDING_NAME_TITLE <>", value, "irBiddingNameTitle");
            return (Criteria) this;
        }

        public Criteria andIrBiddingNameTitleGreaterThan(String value) {
            addCriterion("t.IR_BIDDING_NAME_TITLE >", value, "irBiddingNameTitle");
            return (Criteria) this;
        }

        public Criteria andIrBiddingNameTitleGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_BIDDING_NAME_TITLE >=", value, "irBiddingNameTitle");
            return (Criteria) this;
        }

        public Criteria andIrBiddingNameTitleLessThan(String value) {
            addCriterion("t.IR_BIDDING_NAME_TITLE <", value, "irBiddingNameTitle");
            return (Criteria) this;
        }

        public Criteria andIrBiddingNameTitleLessThanOrEqualTo(String value) {
            addCriterion("t.IR_BIDDING_NAME_TITLE <=", value, "irBiddingNameTitle");
            return (Criteria) this;
        }

        public Criteria andIrBiddingNameTitleLike(String value) {
            addCriterion("t.IR_BIDDING_NAME_TITLE like", value, "irBiddingNameTitle");
            return (Criteria) this;
        }

        public Criteria andIrBiddingNameTitleNotLike(String value) {
            addCriterion("t.IR_BIDDING_NAME_TITLE not like", value, "irBiddingNameTitle");
            return (Criteria) this;
        }

        public Criteria andIrBiddingNameTitleIn(List<String> values) {
            addCriterion("t.IR_BIDDING_NAME_TITLE in", values, "irBiddingNameTitle");
            return (Criteria) this;
        }

        public Criteria andIrBiddingNameTitleNotIn(List<String> values) {
            addCriterion("t.IR_BIDDING_NAME_TITLE not in", values, "irBiddingNameTitle");
            return (Criteria) this;
        }

        public Criteria andIrBiddingNameTitleBetween(String value1, String value2) {
            addCriterion("t.IR_BIDDING_NAME_TITLE between", value1, value2, "irBiddingNameTitle");
            return (Criteria) this;
        }

        public Criteria andIrBiddingNameTitleNotBetween(String value1, String value2) {
            addCriterion("t.IR_BIDDING_NAME_TITLE not between", value1, value2, "irBiddingNameTitle");
            return (Criteria) this;
        }

        public Criteria andIrPublicDateIsNull() {
            addCriterion("t.IR_PUBLIC_DATE is null");
            return (Criteria) this;
        }

        public Criteria andIrPublicDateIsNotNull() {
            addCriterion("t.IR_PUBLIC_DATE is not null");
            return (Criteria) this;
        }

        public Criteria andIrPublicDateEqualTo(String value) {
            addCriterion("t.IR_PUBLIC_DATE =", value, "irPublicDate");
            return (Criteria) this;
        }

        public Criteria andIrPublicDateNotEqualTo(String value) {
            addCriterion("t.IR_PUBLIC_DATE <>", value, "irPublicDate");
            return (Criteria) this;
        }

        public Criteria andIrPublicDateGreaterThan(String value) {
            addCriterion("t.IR_PUBLIC_DATE >", value, "irPublicDate");
            return (Criteria) this;
        }

        public Criteria andIrPublicDateGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_PUBLIC_DATE >=", value, "irPublicDate");
            return (Criteria) this;
        }

        public Criteria andIrPublicDateLessThan(String value) {
            addCriterion("t.IR_PUBLIC_DATE <", value, "irPublicDate");
            return (Criteria) this;
        }

        public Criteria andIrPublicDateLessThanOrEqualTo(String value) {
            addCriterion("t.IR_PUBLIC_DATE <=", value, "irPublicDate");
            return (Criteria) this;
        }

        public Criteria andIrPublicDateLike(String value) {
            addCriterion("t.IR_PUBLIC_DATE like", value, "irPublicDate");
            return (Criteria) this;
        }

        public Criteria andIrPublicDateNotLike(String value) {
            addCriterion("t.IR_PUBLIC_DATE not like", value, "irPublicDate");
            return (Criteria) this;
        }

        public Criteria andIrPublicDateIn(List<String> values) {
            addCriterion("t.IR_PUBLIC_DATE in", values, "irPublicDate");
            return (Criteria) this;
        }

        public Criteria andIrPublicDateNotIn(List<String> values) {
            addCriterion("t.IR_PUBLIC_DATE not in", values, "irPublicDate");
            return (Criteria) this;
        }

        public Criteria andIrPublicDateBetween(String value1, String value2) {
            addCriterion("t.IR_PUBLIC_DATE between", value1, value2, "irPublicDate");
            return (Criteria) this;
        }

        public Criteria andIrPublicDateNotBetween(String value1, String value2) {
            addCriterion("t.IR_PUBLIC_DATE not between", value1, value2, "irPublicDate");
            return (Criteria) this;
        }

        public Criteria andIrSubmitDateIsNull() {
            addCriterion("t.IR_SUBMIT_DATE is null");
            return (Criteria) this;
        }

        public Criteria andIrSubmitDateIsNotNull() {
            addCriterion("t.IR_SUBMIT_DATE is not null");
            return (Criteria) this;
        }

        public Criteria andIrSubmitDateEqualTo(String value) {
            addCriterion("t.IR_SUBMIT_DATE =", value, "irSubmitDate");
            return (Criteria) this;
        }

        public Criteria andIrSubmitDateNotEqualTo(String value) {
            addCriterion("t.IR_SUBMIT_DATE <>", value, "irSubmitDate");
            return (Criteria) this;
        }

        public Criteria andIrSubmitDateGreaterThan(String value) {
            addCriterion("t.IR_SUBMIT_DATE >", value, "irSubmitDate");
            return (Criteria) this;
        }

        public Criteria andIrSubmitDateGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_SUBMIT_DATE >=", value, "irSubmitDate");
            return (Criteria) this;
        }

        public Criteria andIrSubmitDateLessThan(String value) {
            addCriterion("t.IR_SUBMIT_DATE <", value, "irSubmitDate");
            return (Criteria) this;
        }

        public Criteria andIrSubmitDateLessThanOrEqualTo(String value) {
            addCriterion("t.IR_SUBMIT_DATE <=", value, "irSubmitDate");
            return (Criteria) this;
        }

        public Criteria andIrSubmitDateLike(String value) {
            addCriterion("t.IR_SUBMIT_DATE like", value, "irSubmitDate");
            return (Criteria) this;
        }

        public Criteria andIrSubmitDateNotLike(String value) {
            addCriterion("t.IR_SUBMIT_DATE not like", value, "irSubmitDate");
            return (Criteria) this;
        }

        public Criteria andIrSubmitDateIn(List<String> values) {
            addCriterion("t.IR_SUBMIT_DATE in", values, "irSubmitDate");
            return (Criteria) this;
        }

        public Criteria andIrSubmitDateNotIn(List<String> values) {
            addCriterion("t.IR_SUBMIT_DATE not in", values, "irSubmitDate");
            return (Criteria) this;
        }

        public Criteria andIrSubmitDateBetween(String value1, String value2) {
            addCriterion("t.IR_SUBMIT_DATE between", value1, value2, "irSubmitDate");
            return (Criteria) this;
        }

        public Criteria andIrSubmitDateNotBetween(String value1, String value2) {
            addCriterion("t.IR_SUBMIT_DATE not between", value1, value2, "irSubmitDate");
            return (Criteria) this;
        }

        public Criteria andIrAssociationIsNull() {
            addCriterion("t.IR_ASSOCIATION is null");
            return (Criteria) this;
        }

        public Criteria andIrAssociationIsNotNull() {
            addCriterion("t.IR_ASSOCIATION is not null");
            return (Criteria) this;
        }

        public Criteria andIrAssociationEqualTo(String value) {
            addCriterion("t.IR_ASSOCIATION =", value, "irAssociation");
            return (Criteria) this;
        }

        public Criteria andIrAssociationNotEqualTo(String value) {
            addCriterion("t.IR_ASSOCIATION <>", value, "irAssociation");
            return (Criteria) this;
        }

        public Criteria andIrAssociationGreaterThan(String value) {
            addCriterion("t.IR_ASSOCIATION >", value, "irAssociation");
            return (Criteria) this;
        }

        public Criteria andIrAssociationGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_ASSOCIATION >=", value, "irAssociation");
            return (Criteria) this;
        }

        public Criteria andIrAssociationLessThan(String value) {
            addCriterion("t.IR_ASSOCIATION <", value, "irAssociation");
            return (Criteria) this;
        }

        public Criteria andIrAssociationLessThanOrEqualTo(String value) {
            addCriterion("t.IR_ASSOCIATION <=", value, "irAssociation");
            return (Criteria) this;
        }

        public Criteria andIrAssociationLike(String value) {
            addCriterion("t.IR_ASSOCIATION like", value, "irAssociation");
            return (Criteria) this;
        }

        public Criteria andIrAssociationNotLike(String value) {
            addCriterion("t.IR_ASSOCIATION not like", value, "irAssociation");
            return (Criteria) this;
        }

        public Criteria andIrAssociationIn(List<String> values) {
            addCriterion("t.IR_ASSOCIATION in", values, "irAssociation");
            return (Criteria) this;
        }

        public Criteria andIrAssociationNotIn(List<String> values) {
            addCriterion("t.IR_ASSOCIATION not in", values, "irAssociation");
            return (Criteria) this;
        }

        public Criteria andIrAssociationBetween(String value1, String value2) {
            addCriterion("t.IR_ASSOCIATION between", value1, value2, "irAssociation");
            return (Criteria) this;
        }

        public Criteria andIrAssociationNotBetween(String value1, String value2) {
            addCriterion("t.IR_ASSOCIATION not between", value1, value2, "irAssociation");
            return (Criteria) this;
        }

        public Criteria andIrExpertIsNull() {
            addCriterion("t.IR_EXPERT is null");
            return (Criteria) this;
        }

        public Criteria andIrExpertIsNotNull() {
            addCriterion("t.IR_EXPERT is not null");
            return (Criteria) this;
        }

        public Criteria andIrExpertEqualTo(String value) {
            addCriterion("t.IR_EXPERT =", value, "irExpert");
            return (Criteria) this;
        }

        public Criteria andIrExpertNotEqualTo(String value) {
            addCriterion("t.IR_EXPERT <>", value, "irExpert");
            return (Criteria) this;
        }

        public Criteria andIrExpertGreaterThan(String value) {
            addCriterion("t.IR_EXPERT >", value, "irExpert");
            return (Criteria) this;
        }

        public Criteria andIrExpertGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_EXPERT >=", value, "irExpert");
            return (Criteria) this;
        }

        public Criteria andIrExpertLessThan(String value) {
            addCriterion("t.IR_EXPERT <", value, "irExpert");
            return (Criteria) this;
        }

        public Criteria andIrExpertLessThanOrEqualTo(String value) {
            addCriterion("t.IR_EXPERT <=", value, "irExpert");
            return (Criteria) this;
        }

        public Criteria andIrExpertLike(String value) {
            addCriterion("t.IR_EXPERT like", value, "irExpert");
            return (Criteria) this;
        }

        public Criteria andIrExpertNotLike(String value) {
            addCriterion("t.IR_EXPERT not like", value, "irExpert");
            return (Criteria) this;
        }

        public Criteria andIrExpertIn(List<String> values) {
            addCriterion("t.IR_EXPERT in", values, "irExpert");
            return (Criteria) this;
        }

        public Criteria andIrExpertNotIn(List<String> values) {
            addCriterion("t.IR_EXPERT not in", values, "irExpert");
            return (Criteria) this;
        }

        public Criteria andIrExpertBetween(String value1, String value2) {
            addCriterion("t.IR_EXPERT between", value1, value2, "irExpert");
            return (Criteria) this;
        }

        public Criteria andIrExpertNotBetween(String value1, String value2) {
            addCriterion("t.IR_EXPERT not between", value1, value2, "irExpert");
            return (Criteria) this;
        }

        public Criteria andIrSignDateIsNull() {
            addCriterion("t.IR_SIGN_DATE is null");
            return (Criteria) this;
        }

        public Criteria andIrSignDateIsNotNull() {
            addCriterion("t.IR_SIGN_DATE is not null");
            return (Criteria) this;
        }

        public Criteria andIrSignDateEqualTo(String value) {
            addCriterion("t.IR_SIGN_DATE =", value, "irSignDate");
            return (Criteria) this;
        }

        public Criteria andIrSignDateNotEqualTo(String value) {
            addCriterion("t.IR_SIGN_DATE <>", value, "irSignDate");
            return (Criteria) this;
        }

        public Criteria andIrSignDateGreaterThan(String value) {
            addCriterion("t.IR_SIGN_DATE >", value, "irSignDate");
            return (Criteria) this;
        }

        public Criteria andIrSignDateGreaterThanOrEqualTo(String value) {
            addCriterion("t.IR_SIGN_DATE >=", value, "irSignDate");
            return (Criteria) this;
        }

        public Criteria andIrSignDateLessThan(String value) {
            addCriterion("t.IR_SIGN_DATE <", value, "irSignDate");
            return (Criteria) this;
        }

        public Criteria andIrSignDateLessThanOrEqualTo(String value) {
            addCriterion("t.IR_SIGN_DATE <=", value, "irSignDate");
            return (Criteria) this;
        }

        public Criteria andIrSignDateLike(String value) {
            addCriterion("t.IR_SIGN_DATE like", value, "irSignDate");
            return (Criteria) this;
        }

        public Criteria andIrSignDateNotLike(String value) {
            addCriterion("t.IR_SIGN_DATE not like", value, "irSignDate");
            return (Criteria) this;
        }

        public Criteria andIrSignDateIn(List<String> values) {
            addCriterion("t.IR_SIGN_DATE in", values, "irSignDate");
            return (Criteria) this;
        }

        public Criteria andIrSignDateNotIn(List<String> values) {
            addCriterion("t.IR_SIGN_DATE not in", values, "irSignDate");
            return (Criteria) this;
        }

        public Criteria andIrSignDateBetween(String value1, String value2) {
            addCriterion("t.IR_SIGN_DATE between", value1, value2, "irSignDate");
            return (Criteria) this;
        }

        public Criteria andIrSignDateNotBetween(String value1, String value2) {
            addCriterion("t.IR_SIGN_DATE not between", value1, value2, "irSignDate");
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

        public Criteria andIrLasttimeLikeInsensitive(String value) {
            addCriterion("upper(t.IR_LASTTIME) like", value.toUpperCase(), "irLasttime");
            return (Criteria) this;
        }

        public Criteria andIrUrldateLikeInsensitive(String value) {
            addCriterion("upper(t.IR_URLDATE) like", value.toUpperCase(), "irUrldate");
            return (Criteria) this;
        }

        public Criteria andIrUrltimeLikeInsensitive(String value) {
            addCriterion("upper(t.IR_URLTIME) like", value.toUpperCase(), "irUrltime");
            return (Criteria) this;
        }

        public Criteria andIrLoadtimeLikeInsensitive(String value) {
            addCriterion("upper(t.IR_LOADTIME) like", value.toUpperCase(), "irLoadtime");
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

        public Criteria andIrSimrankLikeInsensitive(String value) {
            addCriterion("upper(t.IR_SIMRANK) like", value.toUpperCase(), "irSimrank");
            return (Criteria) this;
        }

        public Criteria andIrImageflagLikeInsensitive(String value) {
            addCriterion("upper(t.IR_IMAGEFLAG) like", value.toUpperCase(), "irImageflag");
            return (Criteria) this;
        }

        public Criteria andIrTableflagLikeInsensitive(String value) {
            addCriterion("upper(t.IR_TABLEFLAG) like", value.toUpperCase(), "irTableflag");
            return (Criteria) this;
        }

        public Criteria andIrDoclengthLikeInsensitive(String value) {
            addCriterion("upper(t.IR_DOCLENGTH) like", value.toUpperCase(), "irDoclength");
            return (Criteria) this;
        }

        public Criteria andIrBbsnumLikeInsensitive(String value) {
            addCriterion("upper(t.IR_BBSNUM) like", value.toUpperCase(), "irBbsnum");
            return (Criteria) this;
        }

        public Criteria andIrBbstopicLikeInsensitive(String value) {
            addCriterion("upper(t.IR_BBSTOPIC) like", value.toUpperCase(), "irBbstopic");
            return (Criteria) this;
        }

        public Criteria andIrBbskeyLikeInsensitive(String value) {
            addCriterion("upper(t.IR_BBSKEY) like", value.toUpperCase(), "irBbskey");
            return (Criteria) this;
        }

        public Criteria andIrPagelevelLikeInsensitive(String value) {
            addCriterion("upper(t.IR_PAGELEVEL) like", value.toUpperCase(), "irPagelevel");
            return (Criteria) this;
        }

        public Criteria andIrPagerankLikeInsensitive(String value) {
            addCriterion("upper(t.IR_PAGERANK) like", value.toUpperCase(), "irPagerank");
            return (Criteria) this;
        }

        public Criteria andIrUrllevelLikeInsensitive(String value) {
            addCriterion("upper(t.IR_URLLEVEL) like", value.toUpperCase(), "irUrllevel");
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

        public Criteria andIrUrlsizeLikeInsensitive(String value) {
            addCriterion("upper(t.IR_URLSIZE) like", value.toUpperCase(), "irUrlsize");
            return (Criteria) this;
        }

        public Criteria andIrUrlbodyLikeInsensitive(String value) {
            addCriterion("upper(t.IR_URLBODY) like", value.toUpperCase(), "irUrlbody");
            return (Criteria) this;
        }

        public Criteria andIrWcmidLikeInsensitive(String value) {
            addCriterion("upper(t.IR_WCMID) like", value.toUpperCase(), "irWcmid");
            return (Criteria) this;
        }

        public Criteria andIrStatusLikeInsensitive(String value) {
            addCriterion("upper(t.IR_STATUS) like", value.toUpperCase(), "irStatus");
            return (Criteria) this;
        }

        public Criteria andIrNreserved1LikeInsensitive(String value) {
            addCriterion("upper(t.IR_NRESERVED1) like", value.toUpperCase(), "irNreserved1");
            return (Criteria) this;
        }

        public Criteria andIrNreserved2LikeInsensitive(String value) {
            addCriterion("upper(t.IR_NRESERVED2) like", value.toUpperCase(), "irNreserved2");
            return (Criteria) this;
        }

        public Criteria andIrNreserved3LikeInsensitive(String value) {
            addCriterion("upper(t.IR_NRESERVED3) like", value.toUpperCase(), "irNreserved3");
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

        public Criteria andIrInserttimeLikeInsensitive(String value) {
            addCriterion("upper(t.IR_INSERTTIME) like", value.toUpperCase(), "irInserttime");
            return (Criteria) this;
        }

        public Criteria andIrBiddingDateLikeInsensitive(String value) {
            addCriterion("upper(t.IR_BIDDING_DATE) like", value.toUpperCase(), "irBiddingDate");
            return (Criteria) this;
        }

        public Criteria andIrBiddingIdLikeInsensitive(String value) {
            addCriterion("upper(t.IR_BIDDING_ID) like", value.toUpperCase(), "irBiddingId");
            return (Criteria) this;
        }

        public Criteria andIrBiddingTypeLikeInsensitive(String value) {
            addCriterion("upper(t.IR_BIDDING_TYPE) like", value.toUpperCase(), "irBiddingType");
            return (Criteria) this;
        }

        public Criteria andIrBiddingNameLikeInsensitive(String value) {
            addCriterion("upper(t.IR_BIDDING_NAME) like", value.toUpperCase(), "irBiddingName");
            return (Criteria) this;
        }

        public Criteria andIrBiddingContentLikeInsensitive(String value) {
            addCriterion("upper(t.IR_BIDDING_CONTENT) like", value.toUpperCase(), "irBiddingContent");
            return (Criteria) this;
        }

        public Criteria andIrBiddingSourceLikeInsensitive(String value) {
            addCriterion("upper(t.IR_BIDDING_SOURCE) like", value.toUpperCase(), "irBiddingSource");
            return (Criteria) this;
        }

        public Criteria andIrBiddingMoneyLikeInsensitive(String value) {
            addCriterion("upper(t.IR_BIDDING_MONEY) like", value.toUpperCase(), "irBiddingMoney");
            return (Criteria) this;
        }

        public Criteria andIrBiddingAgencyLikeInsensitive(String value) {
            addCriterion("upper(t.IR_BIDDING_AGENCY) like", value.toUpperCase(), "irBiddingAgency");
            return (Criteria) this;
        }

        public Criteria andIrBiddingOrgLikeInsensitive(String value) {
            addCriterion("upper(t.IR_BIDDING_ORG) like", value.toUpperCase(), "irBiddingOrg");
            return (Criteria) this;
        }

        public Criteria andIrBiddingAddrLikeInsensitive(String value) {
            addCriterion("upper(t.IR_BIDDING_ADDR) like", value.toUpperCase(), "irBiddingAddr");
            return (Criteria) this;
        }

        public Criteria andIrBiddingPerLikeInsensitive(String value) {
            addCriterion("upper(t.IR_BIDDING_PER) like", value.toUpperCase(), "irBiddingPer");
            return (Criteria) this;
        }

        public Criteria andIrBiddingTelLikeInsensitive(String value) {
            addCriterion("upper(t.IR_BIDDING_TEL) like", value.toUpperCase(), "irBiddingTel");
            return (Criteria) this;
        }

        public Criteria andIrBidDateLikeInsensitive(String value) {
            addCriterion("upper(t.IR_BID_DATE) like", value.toUpperCase(), "irBidDate");
            return (Criteria) this;
        }

        public Criteria andIrBidTypeLikeInsensitive(String value) {
            addCriterion("upper(t.IR_BID_TYPE) like", value.toUpperCase(), "irBidType");
            return (Criteria) this;
        }

        public Criteria andIrBidOrgLikeInsensitive(String value) {
            addCriterion("upper(t.IR_BID_ORG) like", value.toUpperCase(), "irBidOrg");
            return (Criteria) this;
        }

        public Criteria andIrBidMoneyLikeInsensitive(String value) {
            addCriterion("upper(t.IR_BID_MONEY) like", value.toUpperCase(), "irBidMoney");
            return (Criteria) this;
        }

        public Criteria andIrBidAddrLikeInsensitive(String value) {
            addCriterion("upper(t.IR_BID_ADDR) like", value.toUpperCase(), "irBidAddr");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentDateLikeInsensitive(String value) {
            addCriterion("upper(t.IR_ANNULMENT_DATE) like", value.toUpperCase(), "irAnnulmentDate");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentReasonLikeInsensitive(String value) {
            addCriterion("upper(t.IR_ANNULMENT_REASON) like", value.toUpperCase(), "irAnnulmentReason");
            return (Criteria) this;
        }

        public Criteria andIrAnnulmentTreatmentLikeInsensitive(String value) {
            addCriterion("upper(t.IR_ANNULMENT_TREATMENT) like", value.toUpperCase(), "irAnnulmentTreatment");
            return (Criteria) this;
        }

        public Criteria andIrOpenTimeLikeInsensitive(String value) {
            addCriterion("upper(t.IR_OPEN_TIME) like", value.toUpperCase(), "irOpenTime");
            return (Criteria) this;
        }

        public Criteria andIrOpenAddrLikeInsensitive(String value) {
            addCriterion("upper(t.IR_OPEN_ADDR) like", value.toUpperCase(), "irOpenAddr");
            return (Criteria) this;
        }

        public Criteria andIrSaleStartTimeLikeInsensitive(String value) {
            addCriterion("upper(t.IR_SALE_START_TIME) like", value.toUpperCase(), "irSaleStartTime");
            return (Criteria) this;
        }

        public Criteria andIrSaleEndTimeLikeInsensitive(String value) {
            addCriterion("upper(t.IR_SALE_END_TIME) like", value.toUpperCase(), "irSaleEndTime");
            return (Criteria) this;
        }

        public Criteria andIrQualificationLikeInsensitive(String value) {
            addCriterion("upper(t.IR_QUALIFICATION) like", value.toUpperCase(), "irQualification");
            return (Criteria) this;
        }

        public Criteria andIrSubcontractLikeInsensitive(String value) {
            addCriterion("upper(t.IR_SUBCONTRACT) like", value.toUpperCase(), "irSubcontract");
            return (Criteria) this;
        }

        public Criteria andIrTableTagLikeInsensitive(String value) {
            addCriterion("upper(t.IR_TABLE_TAG) like", value.toUpperCase(), "irTableTag");
            return (Criteria) this;
        }

        public Criteria andIrFirstAddrLikeInsensitive(String value) {
            addCriterion("upper(t.IR_FIRST_ADDR) like", value.toUpperCase(), "irFirstAddr");
            return (Criteria) this;
        }

        public Criteria andIrBankLikeInsensitive(String value) {
            addCriterion("upper(t.IR_BANK) like", value.toUpperCase(), "irBank");
            return (Criteria) this;
        }

        public Criteria andIrPriceLikeInsensitive(String value) {
            addCriterion("upper(t.IR_PRICE) like", value.toUpperCase(), "irPrice");
            return (Criteria) this;
        }

        public Criteria andIrPolicyLikeInsensitive(String value) {
            addCriterion("upper(t.IR_POLICY) like", value.toUpperCase(), "irPolicy");
            return (Criteria) this;
        }

        public Criteria andIrSmallEnterpriseLikeInsensitive(String value) {
            addCriterion("upper(t.IR_SMALL_ENTERPRISE) like", value.toUpperCase(), "irSmallEnterprise");
            return (Criteria) this;
        }

        public Criteria andIrNatureLikeInsensitive(String value) {
            addCriterion("upper(t.IR_NATURE) like", value.toUpperCase(), "irNature");
            return (Criteria) this;
        }

        public Criteria andIrMediaLikeInsensitive(String value) {
            addCriterion("upper(t.IR_MEDIA) like", value.toUpperCase(), "irMedia");
            return (Criteria) this;
        }

        public Criteria andIrBiddingFileidLikeInsensitive(String value) {
            addCriterion("upper(t.IR_BIDDING_FILEID) like", value.toUpperCase(), "irBiddingFileid");
            return (Criteria) this;
        }

        public Criteria andIrBiddingNameTitleLikeInsensitive(String value) {
            addCriterion("upper(t.IR_BIDDING_NAME_TITLE) like", value.toUpperCase(), "irBiddingNameTitle");
            return (Criteria) this;
        }

        public Criteria andIrPublicDateLikeInsensitive(String value) {
            addCriterion("upper(t.IR_PUBLIC_DATE) like", value.toUpperCase(), "irPublicDate");
            return (Criteria) this;
        }

        public Criteria andIrSubmitDateLikeInsensitive(String value) {
            addCriterion("upper(t.IR_SUBMIT_DATE) like", value.toUpperCase(), "irSubmitDate");
            return (Criteria) this;
        }

        public Criteria andIrAssociationLikeInsensitive(String value) {
            addCriterion("upper(t.IR_ASSOCIATION) like", value.toUpperCase(), "irAssociation");
            return (Criteria) this;
        }

        public Criteria andIrExpertLikeInsensitive(String value) {
            addCriterion("upper(t.IR_EXPERT) like", value.toUpperCase(), "irExpert");
            return (Criteria) this;
        }

        public Criteria andIrSignDateLikeInsensitive(String value) {
            addCriterion("upper(t.IR_SIGN_DATE) like", value.toUpperCase(), "irSignDate");
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