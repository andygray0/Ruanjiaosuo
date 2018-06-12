package com.wine.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class WashTimerCriteria {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public WashTimerCriteria() {
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

        public Criteria andIdIsNull() {
            addCriterion("t.id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("t.id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("t.id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("t.id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("t.id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("t.id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("t.id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("t.id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("t.id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("t.id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("t.id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("t.id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andNameIsNull() {
            addCriterion("t.name is null");
            return (Criteria) this;
        }

        public Criteria andNameIsNotNull() {
            addCriterion("t.name is not null");
            return (Criteria) this;
        }

        public Criteria andNameEqualTo(String value) {
            addCriterion("t.name =", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotEqualTo(String value) {
            addCriterion("t.name <>", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThan(String value) {
            addCriterion("t.name >", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThanOrEqualTo(String value) {
            addCriterion("t.name >=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThan(String value) {
            addCriterion("t.name <", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThanOrEqualTo(String value) {
            addCriterion("t.name <=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLike(String value) {
            addCriterion("t.name like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotLike(String value) {
            addCriterion("t.name not like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameIn(List<String> values) {
            addCriterion("t.name in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotIn(List<String> values) {
            addCriterion("t.name not in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameBetween(String value1, String value2) {
            addCriterion("t.name between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotBetween(String value1, String value2) {
            addCriterion("t.name not between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andDescriptionIsNull() {
            addCriterion("t.description is null");
            return (Criteria) this;
        }

        public Criteria andDescriptionIsNotNull() {
            addCriterion("t.description is not null");
            return (Criteria) this;
        }

        public Criteria andDescriptionEqualTo(String value) {
            addCriterion("t.description =", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotEqualTo(String value) {
            addCriterion("t.description <>", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionGreaterThan(String value) {
            addCriterion("t.description >", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionGreaterThanOrEqualTo(String value) {
            addCriterion("t.description >=", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionLessThan(String value) {
            addCriterion("t.description <", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionLessThanOrEqualTo(String value) {
            addCriterion("t.description <=", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionLike(String value) {
            addCriterion("t.description like", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotLike(String value) {
            addCriterion("t.description not like", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionIn(List<String> values) {
            addCriterion("t.description in", values, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotIn(List<String> values) {
            addCriterion("t.description not in", values, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionBetween(String value1, String value2) {
            addCriterion("t.description between", value1, value2, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotBetween(String value1, String value2) {
            addCriterion("t.description not between", value1, value2, "description");
            return (Criteria) this;
        }

        public Criteria andSourcetableIsNull() {
            addCriterion("t.sourcetable is null");
            return (Criteria) this;
        }

        public Criteria andSourcetableIsNotNull() {
            addCriterion("t.sourcetable is not null");
            return (Criteria) this;
        }

        public Criteria andSourcetableEqualTo(String value) {
            addCriterion("t.sourcetable =", value, "sourcetable");
            return (Criteria) this;
        }

        public Criteria andSourcetableNotEqualTo(String value) {
            addCriterion("t.sourcetable <>", value, "sourcetable");
            return (Criteria) this;
        }

        public Criteria andSourcetableGreaterThan(String value) {
            addCriterion("t.sourcetable >", value, "sourcetable");
            return (Criteria) this;
        }

        public Criteria andSourcetableGreaterThanOrEqualTo(String value) {
            addCriterion("t.sourcetable >=", value, "sourcetable");
            return (Criteria) this;
        }

        public Criteria andSourcetableLessThan(String value) {
            addCriterion("t.sourcetable <", value, "sourcetable");
            return (Criteria) this;
        }

        public Criteria andSourcetableLessThanOrEqualTo(String value) {
            addCriterion("t.sourcetable <=", value, "sourcetable");
            return (Criteria) this;
        }

        public Criteria andSourcetableLike(String value) {
            addCriterion("t.sourcetable like", value, "sourcetable");
            return (Criteria) this;
        }

        public Criteria andSourcetableNotLike(String value) {
            addCriterion("t.sourcetable not like", value, "sourcetable");
            return (Criteria) this;
        }

        public Criteria andSourcetableIn(List<String> values) {
            addCriterion("t.sourcetable in", values, "sourcetable");
            return (Criteria) this;
        }

        public Criteria andSourcetableNotIn(List<String> values) {
            addCriterion("t.sourcetable not in", values, "sourcetable");
            return (Criteria) this;
        }

        public Criteria andSourcetableBetween(String value1, String value2) {
            addCriterion("t.sourcetable between", value1, value2, "sourcetable");
            return (Criteria) this;
        }

        public Criteria andSourcetableNotBetween(String value1, String value2) {
            addCriterion("t.sourcetable not between", value1, value2, "sourcetable");
            return (Criteria) this;
        }

        public Criteria andQuerysIsNull() {
            addCriterion("t.querys is null");
            return (Criteria) this;
        }

        public Criteria andQuerysIsNotNull() {
            addCriterion("t.querys is not null");
            return (Criteria) this;
        }

        public Criteria andQuerysEqualTo(String value) {
            addCriterion("t.querys =", value, "querys");
            return (Criteria) this;
        }

        public Criteria andQuerysNotEqualTo(String value) {
            addCriterion("t.querys <>", value, "querys");
            return (Criteria) this;
        }

        public Criteria andQuerysGreaterThan(String value) {
            addCriterion("t.querys >", value, "querys");
            return (Criteria) this;
        }

        public Criteria andQuerysGreaterThanOrEqualTo(String value) {
            addCriterion("t.querys >=", value, "querys");
            return (Criteria) this;
        }

        public Criteria andQuerysLessThan(String value) {
            addCriterion("t.querys <", value, "querys");
            return (Criteria) this;
        }

        public Criteria andQuerysLessThanOrEqualTo(String value) {
            addCriterion("t.querys <=", value, "querys");
            return (Criteria) this;
        }

        public Criteria andQuerysLike(String value) {
            addCriterion("t.querys like", value, "querys");
            return (Criteria) this;
        }

        public Criteria andQuerysNotLike(String value) {
            addCriterion("t.querys not like", value, "querys");
            return (Criteria) this;
        }

        public Criteria andQuerysIn(List<String> values) {
            addCriterion("t.querys in", values, "querys");
            return (Criteria) this;
        }

        public Criteria andQuerysNotIn(List<String> values) {
            addCriterion("t.querys not in", values, "querys");
            return (Criteria) this;
        }

        public Criteria andQuerysBetween(String value1, String value2) {
            addCriterion("t.querys between", value1, value2, "querys");
            return (Criteria) this;
        }

        public Criteria andQuerysNotBetween(String value1, String value2) {
            addCriterion("t.querys not between", value1, value2, "querys");
            return (Criteria) this;
        }

        public Criteria andRulesIsNull() {
            addCriterion("t.rules is null");
            return (Criteria) this;
        }

        public Criteria andRulesIsNotNull() {
            addCriterion("t.rules is not null");
            return (Criteria) this;
        }

        public Criteria andRulesEqualTo(String value) {
            addCriterion("t.rules =", value, "rules");
            return (Criteria) this;
        }

        public Criteria andRulesNotEqualTo(String value) {
            addCriterion("t.rules <>", value, "rules");
            return (Criteria) this;
        }

        public Criteria andRulesGreaterThan(String value) {
            addCriterion("t.rules >", value, "rules");
            return (Criteria) this;
        }

        public Criteria andRulesGreaterThanOrEqualTo(String value) {
            addCriterion("t.rules >=", value, "rules");
            return (Criteria) this;
        }

        public Criteria andRulesLessThan(String value) {
            addCriterion("t.rules <", value, "rules");
            return (Criteria) this;
        }

        public Criteria andRulesLessThanOrEqualTo(String value) {
            addCriterion("t.rules <=", value, "rules");
            return (Criteria) this;
        }

        public Criteria andRulesLike(String value) {
            addCriterion("t.rules like", value, "rules");
            return (Criteria) this;
        }

        public Criteria andRulesNotLike(String value) {
            addCriterion("t.rules not like", value, "rules");
            return (Criteria) this;
        }

        public Criteria andRulesIn(List<String> values) {
            addCriterion("t.rules in", values, "rules");
            return (Criteria) this;
        }

        public Criteria andRulesNotIn(List<String> values) {
            addCriterion("t.rules not in", values, "rules");
            return (Criteria) this;
        }

        public Criteria andRulesBetween(String value1, String value2) {
            addCriterion("t.rules between", value1, value2, "rules");
            return (Criteria) this;
        }

        public Criteria andRulesNotBetween(String value1, String value2) {
            addCriterion("t.rules not between", value1, value2, "rules");
            return (Criteria) this;
        }

        public Criteria andGoaltableIsNull() {
            addCriterion("t.goaltable is null");
            return (Criteria) this;
        }

        public Criteria andGoaltableIsNotNull() {
            addCriterion("t.goaltable is not null");
            return (Criteria) this;
        }

        public Criteria andGoaltableEqualTo(String value) {
            addCriterion("t.goaltable =", value, "goaltable");
            return (Criteria) this;
        }

        public Criteria andGoaltableNotEqualTo(String value) {
            addCriterion("t.goaltable <>", value, "goaltable");
            return (Criteria) this;
        }

        public Criteria andGoaltableGreaterThan(String value) {
            addCriterion("t.goaltable >", value, "goaltable");
            return (Criteria) this;
        }

        public Criteria andGoaltableGreaterThanOrEqualTo(String value) {
            addCriterion("t.goaltable >=", value, "goaltable");
            return (Criteria) this;
        }

        public Criteria andGoaltableLessThan(String value) {
            addCriterion("t.goaltable <", value, "goaltable");
            return (Criteria) this;
        }

        public Criteria andGoaltableLessThanOrEqualTo(String value) {
            addCriterion("t.goaltable <=", value, "goaltable");
            return (Criteria) this;
        }

        public Criteria andGoaltableLike(String value) {
            addCriterion("t.goaltable like", value, "goaltable");
            return (Criteria) this;
        }

        public Criteria andGoaltableNotLike(String value) {
            addCriterion("t.goaltable not like", value, "goaltable");
            return (Criteria) this;
        }

        public Criteria andGoaltableIn(List<String> values) {
            addCriterion("t.goaltable in", values, "goaltable");
            return (Criteria) this;
        }

        public Criteria andGoaltableNotIn(List<String> values) {
            addCriterion("t.goaltable not in", values, "goaltable");
            return (Criteria) this;
        }

        public Criteria andGoaltableBetween(String value1, String value2) {
            addCriterion("t.goaltable between", value1, value2, "goaltable");
            return (Criteria) this;
        }

        public Criteria andGoaltableNotBetween(String value1, String value2) {
            addCriterion("t.goaltable not between", value1, value2, "goaltable");
            return (Criteria) this;
        }

        public Criteria andStarttimeIsNull() {
            addCriterion("t.starttime is null");
            return (Criteria) this;
        }

        public Criteria andStarttimeIsNotNull() {
            addCriterion("t.starttime is not null");
            return (Criteria) this;
        }

        public Criteria andStarttimeEqualTo(Date value) {
            addCriterion("t.starttime =", value, "starttime");
            return (Criteria) this;
        }

        public Criteria andStarttimeNotEqualTo(Date value) {
            addCriterion("t.starttime <>", value, "starttime");
            return (Criteria) this;
        }

        public Criteria andStarttimeGreaterThan(Date value) {
            addCriterion("t.starttime >", value, "starttime");
            return (Criteria) this;
        }

        public Criteria andStarttimeGreaterThanOrEqualTo(Date value) {
            addCriterion("t.starttime >=", value, "starttime");
            return (Criteria) this;
        }

        public Criteria andStarttimeLessThan(Date value) {
            addCriterion("t.starttime <", value, "starttime");
            return (Criteria) this;
        }

        public Criteria andStarttimeLessThanOrEqualTo(Date value) {
            addCriterion("t.starttime <=", value, "starttime");
            return (Criteria) this;
        }

        public Criteria andStarttimeIn(List<Date> values) {
            addCriterion("t.starttime in", values, "starttime");
            return (Criteria) this;
        }

        public Criteria andStarttimeNotIn(List<Date> values) {
            addCriterion("t.starttime not in", values, "starttime");
            return (Criteria) this;
        }

        public Criteria andStarttimeBetween(Date value1, Date value2) {
            addCriterion("t.starttime between", value1, value2, "starttime");
            return (Criteria) this;
        }

        public Criteria andStarttimeNotBetween(Date value1, Date value2) {
            addCriterion("t.starttime not between", value1, value2, "starttime");
            return (Criteria) this;
        }

        public Criteria andStampIsNull() {
            addCriterion("t.stamp is null");
            return (Criteria) this;
        }

        public Criteria andStampIsNotNull() {
            addCriterion("t.stamp is not null");
            return (Criteria) this;
        }

        public Criteria andStampEqualTo(Date value) {
            addCriterion("t.stamp =", value, "stamp");
            return (Criteria) this;
        }

        public Criteria andStampNotEqualTo(Date value) {
            addCriterion("t.stamp <>", value, "stamp");
            return (Criteria) this;
        }

        public Criteria andStampGreaterThan(Date value) {
            addCriterion("t.stamp >", value, "stamp");
            return (Criteria) this;
        }

        public Criteria andStampGreaterThanOrEqualTo(Date value) {
            addCriterion("t.stamp >=", value, "stamp");
            return (Criteria) this;
        }

        public Criteria andStampLessThan(Date value) {
            addCriterion("t.stamp <", value, "stamp");
            return (Criteria) this;
        }

        public Criteria andStampLessThanOrEqualTo(Date value) {
            addCriterion("t.stamp <=", value, "stamp");
            return (Criteria) this;
        }

        public Criteria andStampIn(List<Date> values) {
            addCriterion("t.stamp in", values, "stamp");
            return (Criteria) this;
        }

        public Criteria andStampNotIn(List<Date> values) {
            addCriterion("t.stamp not in", values, "stamp");
            return (Criteria) this;
        }

        public Criteria andStampBetween(Date value1, Date value2) {
            addCriterion("t.stamp between", value1, value2, "stamp");
            return (Criteria) this;
        }

        public Criteria andStampNotBetween(Date value1, Date value2) {
            addCriterion("t.stamp not between", value1, value2, "stamp");
            return (Criteria) this;
        }

        public Criteria andOnoffIsNull() {
            addCriterion("t.onoff is null");
            return (Criteria) this;
        }

        public Criteria andOnoffIsNotNull() {
            addCriterion("t.onoff is not null");
            return (Criteria) this;
        }

        public Criteria andOnoffEqualTo(Integer value) {
            addCriterion("t.onoff =", value, "onoff");
            return (Criteria) this;
        }

        public Criteria andOnoffNotEqualTo(Integer value) {
            addCriterion("t.onoff <>", value, "onoff");
            return (Criteria) this;
        }

        public Criteria andOnoffGreaterThan(Integer value) {
            addCriterion("t.onoff >", value, "onoff");
            return (Criteria) this;
        }

        public Criteria andOnoffGreaterThanOrEqualTo(Integer value) {
            addCriterion("t.onoff >=", value, "onoff");
            return (Criteria) this;
        }

        public Criteria andOnoffLessThan(Integer value) {
            addCriterion("t.onoff <", value, "onoff");
            return (Criteria) this;
        }

        public Criteria andOnoffLessThanOrEqualTo(Integer value) {
            addCriterion("t.onoff <=", value, "onoff");
            return (Criteria) this;
        }

        public Criteria andOnoffIn(List<Integer> values) {
            addCriterion("t.onoff in", values, "onoff");
            return (Criteria) this;
        }

        public Criteria andOnoffNotIn(List<Integer> values) {
            addCriterion("t.onoff not in", values, "onoff");
            return (Criteria) this;
        }

        public Criteria andOnoffBetween(Integer value1, Integer value2) {
            addCriterion("t.onoff between", value1, value2, "onoff");
            return (Criteria) this;
        }

        public Criteria andOnoffNotBetween(Integer value1, Integer value2) {
            addCriterion("t.onoff not between", value1, value2, "onoff");
            return (Criteria) this;
        }

        public Criteria andReserved1IsNull() {
            addCriterion("t.reserved1 is null");
            return (Criteria) this;
        }

        public Criteria andReserved1IsNotNull() {
            addCriterion("t.reserved1 is not null");
            return (Criteria) this;
        }

        public Criteria andReserved1EqualTo(String value) {
            addCriterion("t.reserved1 =", value, "reserved1");
            return (Criteria) this;
        }

        public Criteria andReserved1NotEqualTo(String value) {
            addCriterion("t.reserved1 <>", value, "reserved1");
            return (Criteria) this;
        }

        public Criteria andReserved1GreaterThan(String value) {
            addCriterion("t.reserved1 >", value, "reserved1");
            return (Criteria) this;
        }

        public Criteria andReserved1GreaterThanOrEqualTo(String value) {
            addCriterion("t.reserved1 >=", value, "reserved1");
            return (Criteria) this;
        }

        public Criteria andReserved1LessThan(String value) {
            addCriterion("t.reserved1 <", value, "reserved1");
            return (Criteria) this;
        }

        public Criteria andReserved1LessThanOrEqualTo(String value) {
            addCriterion("t.reserved1 <=", value, "reserved1");
            return (Criteria) this;
        }

        public Criteria andReserved1Like(String value) {
            addCriterion("t.reserved1 like", value, "reserved1");
            return (Criteria) this;
        }

        public Criteria andReserved1NotLike(String value) {
            addCriterion("t.reserved1 not like", value, "reserved1");
            return (Criteria) this;
        }

        public Criteria andReserved1In(List<String> values) {
            addCriterion("t.reserved1 in", values, "reserved1");
            return (Criteria) this;
        }

        public Criteria andReserved1NotIn(List<String> values) {
            addCriterion("t.reserved1 not in", values, "reserved1");
            return (Criteria) this;
        }

        public Criteria andReserved1Between(String value1, String value2) {
            addCriterion("t.reserved1 between", value1, value2, "reserved1");
            return (Criteria) this;
        }

        public Criteria andReserved1NotBetween(String value1, String value2) {
            addCriterion("t.reserved1 not between", value1, value2, "reserved1");
            return (Criteria) this;
        }

        public Criteria andReserved2IsNull() {
            addCriterion("t.reserved2 is null");
            return (Criteria) this;
        }

        public Criteria andReserved2IsNotNull() {
            addCriterion("t.reserved2 is not null");
            return (Criteria) this;
        }

        public Criteria andReserved2EqualTo(String value) {
            addCriterion("t.reserved2 =", value, "reserved2");
            return (Criteria) this;
        }

        public Criteria andReserved2NotEqualTo(String value) {
            addCriterion("t.reserved2 <>", value, "reserved2");
            return (Criteria) this;
        }

        public Criteria andReserved2GreaterThan(String value) {
            addCriterion("t.reserved2 >", value, "reserved2");
            return (Criteria) this;
        }

        public Criteria andReserved2GreaterThanOrEqualTo(String value) {
            addCriterion("t.reserved2 >=", value, "reserved2");
            return (Criteria) this;
        }

        public Criteria andReserved2LessThan(String value) {
            addCriterion("t.reserved2 <", value, "reserved2");
            return (Criteria) this;
        }

        public Criteria andReserved2LessThanOrEqualTo(String value) {
            addCriterion("t.reserved2 <=", value, "reserved2");
            return (Criteria) this;
        }

        public Criteria andReserved2Like(String value) {
            addCriterion("t.reserved2 like", value, "reserved2");
            return (Criteria) this;
        }

        public Criteria andReserved2NotLike(String value) {
            addCriterion("t.reserved2 not like", value, "reserved2");
            return (Criteria) this;
        }

        public Criteria andReserved2In(List<String> values) {
            addCriterion("t.reserved2 in", values, "reserved2");
            return (Criteria) this;
        }

        public Criteria andReserved2NotIn(List<String> values) {
            addCriterion("t.reserved2 not in", values, "reserved2");
            return (Criteria) this;
        }

        public Criteria andReserved2Between(String value1, String value2) {
            addCriterion("t.reserved2 between", value1, value2, "reserved2");
            return (Criteria) this;
        }

        public Criteria andReserved2NotBetween(String value1, String value2) {
            addCriterion("t.reserved2 not between", value1, value2, "reserved2");
            return (Criteria) this;
        }

        public Criteria andReserved3IsNull() {
            addCriterion("t.reserved3 is null");
            return (Criteria) this;
        }

        public Criteria andReserved3IsNotNull() {
            addCriterion("t.reserved3 is not null");
            return (Criteria) this;
        }

        public Criteria andReserved3EqualTo(String value) {
            addCriterion("t.reserved3 =", value, "reserved3");
            return (Criteria) this;
        }

        public Criteria andReserved3NotEqualTo(String value) {
            addCriterion("t.reserved3 <>", value, "reserved3");
            return (Criteria) this;
        }

        public Criteria andReserved3GreaterThan(String value) {
            addCriterion("t.reserved3 >", value, "reserved3");
            return (Criteria) this;
        }

        public Criteria andReserved3GreaterThanOrEqualTo(String value) {
            addCriterion("t.reserved3 >=", value, "reserved3");
            return (Criteria) this;
        }

        public Criteria andReserved3LessThan(String value) {
            addCriterion("t.reserved3 <", value, "reserved3");
            return (Criteria) this;
        }

        public Criteria andReserved3LessThanOrEqualTo(String value) {
            addCriterion("t.reserved3 <=", value, "reserved3");
            return (Criteria) this;
        }

        public Criteria andReserved3Like(String value) {
            addCriterion("t.reserved3 like", value, "reserved3");
            return (Criteria) this;
        }

        public Criteria andReserved3NotLike(String value) {
            addCriterion("t.reserved3 not like", value, "reserved3");
            return (Criteria) this;
        }

        public Criteria andReserved3In(List<String> values) {
            addCriterion("t.reserved3 in", values, "reserved3");
            return (Criteria) this;
        }

        public Criteria andReserved3NotIn(List<String> values) {
            addCriterion("t.reserved3 not in", values, "reserved3");
            return (Criteria) this;
        }

        public Criteria andReserved3Between(String value1, String value2) {
            addCriterion("t.reserved3 between", value1, value2, "reserved3");
            return (Criteria) this;
        }

        public Criteria andReserved3NotBetween(String value1, String value2) {
            addCriterion("t.reserved3 not between", value1, value2, "reserved3");
            return (Criteria) this;
        }

        public Criteria andNameLikeInsensitive(String value) {
            addCriterion("upper(t.name) like", value.toUpperCase(), "name");
            return (Criteria) this;
        }

        public Criteria andDescriptionLikeInsensitive(String value) {
            addCriterion("upper(t.description) like", value.toUpperCase(), "description");
            return (Criteria) this;
        }

        public Criteria andSourcetableLikeInsensitive(String value) {
            addCriterion("upper(t.sourcetable) like", value.toUpperCase(), "sourcetable");
            return (Criteria) this;
        }

        public Criteria andQuerysLikeInsensitive(String value) {
            addCriterion("upper(t.querys) like", value.toUpperCase(), "querys");
            return (Criteria) this;
        }

        public Criteria andRulesLikeInsensitive(String value) {
            addCriterion("upper(t.rules) like", value.toUpperCase(), "rules");
            return (Criteria) this;
        }

        public Criteria andGoaltableLikeInsensitive(String value) {
            addCriterion("upper(t.goaltable) like", value.toUpperCase(), "goaltable");
            return (Criteria) this;
        }

        public Criteria andReserved1LikeInsensitive(String value) {
            addCriterion("upper(t.reserved1) like", value.toUpperCase(), "reserved1");
            return (Criteria) this;
        }

        public Criteria andReserved2LikeInsensitive(String value) {
            addCriterion("upper(t.reserved2) like", value.toUpperCase(), "reserved2");
            return (Criteria) this;
        }

        public Criteria andReserved3LikeInsensitive(String value) {
            addCriterion("upper(t.reserved3) like", value.toUpperCase(), "reserved3");
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