package com.wine.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class WashLogCriteria {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public WashLogCriteria() {
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

        public Criteria andExwayIsNull() {
            addCriterion("t.exway is null");
            return (Criteria) this;
        }

        public Criteria andExwayIsNotNull() {
            addCriterion("t.exway is not null");
            return (Criteria) this;
        }

        public Criteria andExwayEqualTo(Integer value) {
            addCriterion("t.exway =", value, "exway");
            return (Criteria) this;
        }

        public Criteria andExwayNotEqualTo(Integer value) {
            addCriterion("t.exway <>", value, "exway");
            return (Criteria) this;
        }

        public Criteria andExwayGreaterThan(Integer value) {
            addCriterion("t.exway >", value, "exway");
            return (Criteria) this;
        }

        public Criteria andExwayGreaterThanOrEqualTo(Integer value) {
            addCriterion("t.exway >=", value, "exway");
            return (Criteria) this;
        }

        public Criteria andExwayLessThan(Integer value) {
            addCriterion("t.exway <", value, "exway");
            return (Criteria) this;
        }

        public Criteria andExwayLessThanOrEqualTo(Integer value) {
            addCriterion("t.exway <=", value, "exway");
            return (Criteria) this;
        }

        public Criteria andExwayIn(List<Integer> values) {
            addCriterion("t.exway in", values, "exway");
            return (Criteria) this;
        }

        public Criteria andExwayNotIn(List<Integer> values) {
            addCriterion("t.exway not in", values, "exway");
            return (Criteria) this;
        }

        public Criteria andExwayBetween(Integer value1, Integer value2) {
            addCriterion("t.exway between", value1, value2, "exway");
            return (Criteria) this;
        }

        public Criteria andExwayNotBetween(Integer value1, Integer value2) {
            addCriterion("t.exway not between", value1, value2, "exway");
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

        public Criteria andCountsIsNull() {
            addCriterion("t.counts is null");
            return (Criteria) this;
        }

        public Criteria andCountsIsNotNull() {
            addCriterion("t.counts is not null");
            return (Criteria) this;
        }

        public Criteria andCountsEqualTo(Integer value) {
            addCriterion("t.counts =", value, "counts");
            return (Criteria) this;
        }

        public Criteria andCountsNotEqualTo(Integer value) {
            addCriterion("t.counts <>", value, "counts");
            return (Criteria) this;
        }

        public Criteria andCountsGreaterThan(Integer value) {
            addCriterion("t.counts >", value, "counts");
            return (Criteria) this;
        }

        public Criteria andCountsGreaterThanOrEqualTo(Integer value) {
            addCriterion("t.counts >=", value, "counts");
            return (Criteria) this;
        }

        public Criteria andCountsLessThan(Integer value) {
            addCriterion("t.counts <", value, "counts");
            return (Criteria) this;
        }

        public Criteria andCountsLessThanOrEqualTo(Integer value) {
            addCriterion("t.counts <=", value, "counts");
            return (Criteria) this;
        }

        public Criteria andCountsIn(List<Integer> values) {
            addCriterion("t.counts in", values, "counts");
            return (Criteria) this;
        }

        public Criteria andCountsNotIn(List<Integer> values) {
            addCriterion("t.counts not in", values, "counts");
            return (Criteria) this;
        }

        public Criteria andCountsBetween(Integer value1, Integer value2) {
            addCriterion("t.counts between", value1, value2, "counts");
            return (Criteria) this;
        }

        public Criteria andCountsNotBetween(Integer value1, Integer value2) {
            addCriterion("t.counts not between", value1, value2, "counts");
            return (Criteria) this;
        }

        public Criteria andFromtimeIsNull() {
            addCriterion("t.fromtime is null");
            return (Criteria) this;
        }

        public Criteria andFromtimeIsNotNull() {
            addCriterion("t.fromtime is not null");
            return (Criteria) this;
        }

        public Criteria andFromtimeEqualTo(Date value) {
            addCriterion("t.fromtime =", value, "fromtime");
            return (Criteria) this;
        }

        public Criteria andFromtimeNotEqualTo(Date value) {
            addCriterion("t.fromtime <>", value, "fromtime");
            return (Criteria) this;
        }

        public Criteria andFromtimeGreaterThan(Date value) {
            addCriterion("t.fromtime >", value, "fromtime");
            return (Criteria) this;
        }

        public Criteria andFromtimeGreaterThanOrEqualTo(Date value) {
            addCriterion("t.fromtime >=", value, "fromtime");
            return (Criteria) this;
        }

        public Criteria andFromtimeLessThan(Date value) {
            addCriterion("t.fromtime <", value, "fromtime");
            return (Criteria) this;
        }

        public Criteria andFromtimeLessThanOrEqualTo(Date value) {
            addCriterion("t.fromtime <=", value, "fromtime");
            return (Criteria) this;
        }

        public Criteria andFromtimeIn(List<Date> values) {
            addCriterion("t.fromtime in", values, "fromtime");
            return (Criteria) this;
        }

        public Criteria andFromtimeNotIn(List<Date> values) {
            addCriterion("t.fromtime not in", values, "fromtime");
            return (Criteria) this;
        }

        public Criteria andFromtimeBetween(Date value1, Date value2) {
            addCriterion("t.fromtime between", value1, value2, "fromtime");
            return (Criteria) this;
        }

        public Criteria andFromtimeNotBetween(Date value1, Date value2) {
            addCriterion("t.fromtime not between", value1, value2, "fromtime");
            return (Criteria) this;
        }

        public Criteria andTotimeIsNull() {
            addCriterion("t.totime is null");
            return (Criteria) this;
        }

        public Criteria andTotimeIsNotNull() {
            addCriterion("t.totime is not null");
            return (Criteria) this;
        }

        public Criteria andTotimeEqualTo(Date value) {
            addCriterion("t.totime =", value, "totime");
            return (Criteria) this;
        }

        public Criteria andTotimeNotEqualTo(Date value) {
            addCriterion("t.totime <>", value, "totime");
            return (Criteria) this;
        }

        public Criteria andTotimeGreaterThan(Date value) {
            addCriterion("t.totime >", value, "totime");
            return (Criteria) this;
        }

        public Criteria andTotimeGreaterThanOrEqualTo(Date value) {
            addCriterion("t.totime >=", value, "totime");
            return (Criteria) this;
        }

        public Criteria andTotimeLessThan(Date value) {
            addCriterion("t.totime <", value, "totime");
            return (Criteria) this;
        }

        public Criteria andTotimeLessThanOrEqualTo(Date value) {
            addCriterion("t.totime <=", value, "totime");
            return (Criteria) this;
        }

        public Criteria andTotimeIn(List<Date> values) {
            addCriterion("t.totime in", values, "totime");
            return (Criteria) this;
        }

        public Criteria andTotimeNotIn(List<Date> values) {
            addCriterion("t.totime not in", values, "totime");
            return (Criteria) this;
        }

        public Criteria andTotimeBetween(Date value1, Date value2) {
            addCriterion("t.totime between", value1, value2, "totime");
            return (Criteria) this;
        }

        public Criteria andTotimeNotBetween(Date value1, Date value2) {
            addCriterion("t.totime not between", value1, value2, "totime");
            return (Criteria) this;
        }

        public Criteria andSuccessflagIsNull() {
            addCriterion("t.successflag is null");
            return (Criteria) this;
        }

        public Criteria andSuccessflagIsNotNull() {
            addCriterion("t.successflag is not null");
            return (Criteria) this;
        }

        public Criteria andSuccessflagEqualTo(Integer value) {
            addCriterion("t.successflag =", value, "successflag");
            return (Criteria) this;
        }

        public Criteria andSuccessflagNotEqualTo(Integer value) {
            addCriterion("t.successflag <>", value, "successflag");
            return (Criteria) this;
        }

        public Criteria andSuccessflagGreaterThan(Integer value) {
            addCriterion("t.successflag >", value, "successflag");
            return (Criteria) this;
        }

        public Criteria andSuccessflagGreaterThanOrEqualTo(Integer value) {
            addCriterion("t.successflag >=", value, "successflag");
            return (Criteria) this;
        }

        public Criteria andSuccessflagLessThan(Integer value) {
            addCriterion("t.successflag <", value, "successflag");
            return (Criteria) this;
        }

        public Criteria andSuccessflagLessThanOrEqualTo(Integer value) {
            addCriterion("t.successflag <=", value, "successflag");
            return (Criteria) this;
        }

        public Criteria andSuccessflagIn(List<Integer> values) {
            addCriterion("t.successflag in", values, "successflag");
            return (Criteria) this;
        }

        public Criteria andSuccessflagNotIn(List<Integer> values) {
            addCriterion("t.successflag not in", values, "successflag");
            return (Criteria) this;
        }

        public Criteria andSuccessflagBetween(Integer value1, Integer value2) {
            addCriterion("t.successflag between", value1, value2, "successflag");
            return (Criteria) this;
        }

        public Criteria andSuccessflagNotBetween(Integer value1, Integer value2) {
            addCriterion("t.successflag not between", value1, value2, "successflag");
            return (Criteria) this;
        }

        public Criteria andErrlogIsNull() {
            addCriterion("t.errlog is null");
            return (Criteria) this;
        }

        public Criteria andErrlogIsNotNull() {
            addCriterion("t.errlog is not null");
            return (Criteria) this;
        }

        public Criteria andErrlogEqualTo(String value) {
            addCriterion("t.errlog =", value, "errlog");
            return (Criteria) this;
        }

        public Criteria andErrlogNotEqualTo(String value) {
            addCriterion("t.errlog <>", value, "errlog");
            return (Criteria) this;
        }

        public Criteria andErrlogGreaterThan(String value) {
            addCriterion("t.errlog >", value, "errlog");
            return (Criteria) this;
        }

        public Criteria andErrlogGreaterThanOrEqualTo(String value) {
            addCriterion("t.errlog >=", value, "errlog");
            return (Criteria) this;
        }

        public Criteria andErrlogLessThan(String value) {
            addCriterion("t.errlog <", value, "errlog");
            return (Criteria) this;
        }

        public Criteria andErrlogLessThanOrEqualTo(String value) {
            addCriterion("t.errlog <=", value, "errlog");
            return (Criteria) this;
        }

        public Criteria andErrlogLike(String value) {
            addCriterion("t.errlog like", value, "errlog");
            return (Criteria) this;
        }

        public Criteria andErrlogNotLike(String value) {
            addCriterion("t.errlog not like", value, "errlog");
            return (Criteria) this;
        }

        public Criteria andErrlogIn(List<String> values) {
            addCriterion("t.errlog in", values, "errlog");
            return (Criteria) this;
        }

        public Criteria andErrlogNotIn(List<String> values) {
            addCriterion("t.errlog not in", values, "errlog");
            return (Criteria) this;
        }

        public Criteria andErrlogBetween(String value1, String value2) {
            addCriterion("t.errlog between", value1, value2, "errlog");
            return (Criteria) this;
        }

        public Criteria andErrlogNotBetween(String value1, String value2) {
            addCriterion("t.errlog not between", value1, value2, "errlog");
            return (Criteria) this;
        }

        public Criteria andCleancountIsNull() {
            addCriterion("t.cleancount is null");
            return (Criteria) this;
        }

        public Criteria andCleancountIsNotNull() {
            addCriterion("t.cleancount is not null");
            return (Criteria) this;
        }

        public Criteria andCleancountEqualTo(Integer value) {
            addCriterion("t.cleancount =", value, "cleancount");
            return (Criteria) this;
        }

        public Criteria andCleancountNotEqualTo(Integer value) {
            addCriterion("t.cleancount <>", value, "cleancount");
            return (Criteria) this;
        }

        public Criteria andCleancountGreaterThan(Integer value) {
            addCriterion("t.cleancount >", value, "cleancount");
            return (Criteria) this;
        }

        public Criteria andCleancountGreaterThanOrEqualTo(Integer value) {
            addCriterion("t.cleancount >=", value, "cleancount");
            return (Criteria) this;
        }

        public Criteria andCleancountLessThan(Integer value) {
            addCriterion("t.cleancount <", value, "cleancount");
            return (Criteria) this;
        }

        public Criteria andCleancountLessThanOrEqualTo(Integer value) {
            addCriterion("t.cleancount <=", value, "cleancount");
            return (Criteria) this;
        }

        public Criteria andCleancountIn(List<Integer> values) {
            addCriterion("t.cleancount in", values, "cleancount");
            return (Criteria) this;
        }

        public Criteria andCleancountNotIn(List<Integer> values) {
            addCriterion("t.cleancount not in", values, "cleancount");
            return (Criteria) this;
        }

        public Criteria andCleancountBetween(Integer value1, Integer value2) {
            addCriterion("t.cleancount between", value1, value2, "cleancount");
            return (Criteria) this;
        }

        public Criteria andCleancountNotBetween(Integer value1, Integer value2) {
            addCriterion("t.cleancount not between", value1, value2, "cleancount");
            return (Criteria) this;
        }

        public Criteria andCheckcountIsNull() {
            addCriterion("t.checkcount is null");
            return (Criteria) this;
        }

        public Criteria andCheckcountIsNotNull() {
            addCriterion("t.checkcount is not null");
            return (Criteria) this;
        }

        public Criteria andCheckcountEqualTo(Integer value) {
            addCriterion("t.checkcount =", value, "checkcount");
            return (Criteria) this;
        }

        public Criteria andCheckcountNotEqualTo(Integer value) {
            addCriterion("t.checkcount <>", value, "checkcount");
            return (Criteria) this;
        }

        public Criteria andCheckcountGreaterThan(Integer value) {
            addCriterion("t.checkcount >", value, "checkcount");
            return (Criteria) this;
        }

        public Criteria andCheckcountGreaterThanOrEqualTo(Integer value) {
            addCriterion("t.checkcount >=", value, "checkcount");
            return (Criteria) this;
        }

        public Criteria andCheckcountLessThan(Integer value) {
            addCriterion("t.checkcount <", value, "checkcount");
            return (Criteria) this;
        }

        public Criteria andCheckcountLessThanOrEqualTo(Integer value) {
            addCriterion("t.checkcount <=", value, "checkcount");
            return (Criteria) this;
        }

        public Criteria andCheckcountIn(List<Integer> values) {
            addCriterion("t.checkcount in", values, "checkcount");
            return (Criteria) this;
        }

        public Criteria andCheckcountNotIn(List<Integer> values) {
            addCriterion("t.checkcount not in", values, "checkcount");
            return (Criteria) this;
        }

        public Criteria andCheckcountBetween(Integer value1, Integer value2) {
            addCriterion("t.checkcount between", value1, value2, "checkcount");
            return (Criteria) this;
        }

        public Criteria andCheckcountNotBetween(Integer value1, Integer value2) {
            addCriterion("t.checkcount not between", value1, value2, "checkcount");
            return (Criteria) this;
        }

        public Criteria andSimplewashcolumnIsNull() {
            addCriterion("t.simplewashcolumn is null");
            return (Criteria) this;
        }

        public Criteria andSimplewashcolumnIsNotNull() {
            addCriterion("t.simplewashcolumn is not null");
            return (Criteria) this;
        }

        public Criteria andSimplewashcolumnEqualTo(String value) {
            addCriterion("t.simplewashcolumn =", value, "simplewashcolumn");
            return (Criteria) this;
        }

        public Criteria andSimplewashcolumnNotEqualTo(String value) {
            addCriterion("t.simplewashcolumn <>", value, "simplewashcolumn");
            return (Criteria) this;
        }

        public Criteria andSimplewashcolumnGreaterThan(String value) {
            addCriterion("t.simplewashcolumn >", value, "simplewashcolumn");
            return (Criteria) this;
        }

        public Criteria andSimplewashcolumnGreaterThanOrEqualTo(String value) {
            addCriterion("t.simplewashcolumn >=", value, "simplewashcolumn");
            return (Criteria) this;
        }

        public Criteria andSimplewashcolumnLessThan(String value) {
            addCriterion("t.simplewashcolumn <", value, "simplewashcolumn");
            return (Criteria) this;
        }

        public Criteria andSimplewashcolumnLessThanOrEqualTo(String value) {
            addCriterion("t.simplewashcolumn <=", value, "simplewashcolumn");
            return (Criteria) this;
        }

        public Criteria andSimplewashcolumnLike(String value) {
            addCriterion("t.simplewashcolumn like", value, "simplewashcolumn");
            return (Criteria) this;
        }

        public Criteria andSimplewashcolumnNotLike(String value) {
            addCriterion("t.simplewashcolumn not like", value, "simplewashcolumn");
            return (Criteria) this;
        }

        public Criteria andSimplewashcolumnIn(List<String> values) {
            addCriterion("t.simplewashcolumn in", values, "simplewashcolumn");
            return (Criteria) this;
        }

        public Criteria andSimplewashcolumnNotIn(List<String> values) {
            addCriterion("t.simplewashcolumn not in", values, "simplewashcolumn");
            return (Criteria) this;
        }

        public Criteria andSimplewashcolumnBetween(String value1, String value2) {
            addCriterion("t.simplewashcolumn between", value1, value2, "simplewashcolumn");
            return (Criteria) this;
        }

        public Criteria andSimplewashcolumnNotBetween(String value1, String value2) {
            addCriterion("t.simplewashcolumn not between", value1, value2, "simplewashcolumn");
            return (Criteria) this;
        }

        public Criteria andNameLikeInsensitive(String value) {
            addCriterion("upper(t.name) like", value.toUpperCase(), "name");
            return (Criteria) this;
        }

        public Criteria andRulesLikeInsensitive(String value) {
            addCriterion("upper(t.rules) like", value.toUpperCase(), "rules");
            return (Criteria) this;
        }

        public Criteria andSourcetableLikeInsensitive(String value) {
            addCriterion("upper(t.sourcetable) like", value.toUpperCase(), "sourcetable");
            return (Criteria) this;
        }

        public Criteria andGoaltableLikeInsensitive(String value) {
            addCriterion("upper(t.goaltable) like", value.toUpperCase(), "goaltable");
            return (Criteria) this;
        }

        public Criteria andQuerysLikeInsensitive(String value) {
            addCriterion("upper(t.querys) like", value.toUpperCase(), "querys");
            return (Criteria) this;
        }

        public Criteria andErrlogLikeInsensitive(String value) {
            addCriterion("upper(t.errlog) like", value.toUpperCase(), "errlog");
            return (Criteria) this;
        }

        public Criteria andSimplewashcolumnLikeInsensitive(String value) {
            addCriterion("upper(t.simplewashcolumn) like", value.toUpperCase(), "simplewashcolumn");
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