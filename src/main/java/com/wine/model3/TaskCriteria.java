package com.wine.model3;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class TaskCriteria {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TaskCriteria() {
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
            addCriterion("t.ID is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("t.ID is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(String value) {
            addCriterion("t.ID =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(String value) {
            addCriterion("t.ID <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(String value) {
            addCriterion("t.ID >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(String value) {
            addCriterion("t.ID >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(String value) {
            addCriterion("t.ID <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(String value) {
            addCriterion("t.ID <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLike(String value) {
            addCriterion("t.ID like", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotLike(String value) {
            addCriterion("t.ID not like", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<String> values) {
            addCriterion("t.ID in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<String> values) {
            addCriterion("t.ID not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(String value1, String value2) {
            addCriterion("t.ID between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(String value1, String value2) {
            addCriterion("t.ID not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andCreatedIsNull() {
            addCriterion("t.CREATED is null");
            return (Criteria) this;
        }

        public Criteria andCreatedIsNotNull() {
            addCriterion("t.CREATED is not null");
            return (Criteria) this;
        }

        public Criteria andCreatedEqualTo(Date value) {
            addCriterion("t.CREATED =", value, "created");
            return (Criteria) this;
        }

        public Criteria andCreatedNotEqualTo(Date value) {
            addCriterion("t.CREATED <>", value, "created");
            return (Criteria) this;
        }

        public Criteria andCreatedGreaterThan(Date value) {
            addCriterion("t.CREATED >", value, "created");
            return (Criteria) this;
        }

        public Criteria andCreatedGreaterThanOrEqualTo(Date value) {
            addCriterion("t.CREATED >=", value, "created");
            return (Criteria) this;
        }

        public Criteria andCreatedLessThan(Date value) {
            addCriterion("t.CREATED <", value, "created");
            return (Criteria) this;
        }

        public Criteria andCreatedLessThanOrEqualTo(Date value) {
            addCriterion("t.CREATED <=", value, "created");
            return (Criteria) this;
        }

        public Criteria andCreatedIn(List<Date> values) {
            addCriterion("t.CREATED in", values, "created");
            return (Criteria) this;
        }

        public Criteria andCreatedNotIn(List<Date> values) {
            addCriterion("t.CREATED not in", values, "created");
            return (Criteria) this;
        }

        public Criteria andCreatedBetween(Date value1, Date value2) {
            addCriterion("t.CREATED between", value1, value2, "created");
            return (Criteria) this;
        }

        public Criteria andCreatedNotBetween(Date value1, Date value2) {
            addCriterion("t.CREATED not between", value1, value2, "created");
            return (Criteria) this;
        }

        public Criteria andModifiedIsNull() {
            addCriterion("t.MODIFIED is null");
            return (Criteria) this;
        }

        public Criteria andModifiedIsNotNull() {
            addCriterion("t.MODIFIED is not null");
            return (Criteria) this;
        }

        public Criteria andModifiedEqualTo(Date value) {
            addCriterion("t.MODIFIED =", value, "modified");
            return (Criteria) this;
        }

        public Criteria andModifiedNotEqualTo(Date value) {
            addCriterion("t.MODIFIED <>", value, "modified");
            return (Criteria) this;
        }

        public Criteria andModifiedGreaterThan(Date value) {
            addCriterion("t.MODIFIED >", value, "modified");
            return (Criteria) this;
        }

        public Criteria andModifiedGreaterThanOrEqualTo(Date value) {
            addCriterion("t.MODIFIED >=", value, "modified");
            return (Criteria) this;
        }

        public Criteria andModifiedLessThan(Date value) {
            addCriterion("t.MODIFIED <", value, "modified");
            return (Criteria) this;
        }

        public Criteria andModifiedLessThanOrEqualTo(Date value) {
            addCriterion("t.MODIFIED <=", value, "modified");
            return (Criteria) this;
        }

        public Criteria andModifiedIn(List<Date> values) {
            addCriterion("t.MODIFIED in", values, "modified");
            return (Criteria) this;
        }

        public Criteria andModifiedNotIn(List<Date> values) {
            addCriterion("t.MODIFIED not in", values, "modified");
            return (Criteria) this;
        }

        public Criteria andModifiedBetween(Date value1, Date value2) {
            addCriterion("t.MODIFIED between", value1, value2, "modified");
            return (Criteria) this;
        }

        public Criteria andModifiedNotBetween(Date value1, Date value2) {
            addCriterion("t.MODIFIED not between", value1, value2, "modified");
            return (Criteria) this;
        }

        public Criteria andNameIsNull() {
            addCriterion("t.NAME is null");
            return (Criteria) this;
        }

        public Criteria andNameIsNotNull() {
            addCriterion("t.NAME is not null");
            return (Criteria) this;
        }

        public Criteria andNameEqualTo(String value) {
            addCriterion("t.NAME =", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotEqualTo(String value) {
            addCriterion("t.NAME <>", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThan(String value) {
            addCriterion("t.NAME >", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThanOrEqualTo(String value) {
            addCriterion("t.NAME >=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThan(String value) {
            addCriterion("t.NAME <", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThanOrEqualTo(String value) {
            addCriterion("t.NAME <=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLike(String value) {
            addCriterion("t.NAME like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotLike(String value) {
            addCriterion("t.NAME not like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameIn(List<String> values) {
            addCriterion("t.NAME in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotIn(List<String> values) {
            addCriterion("t.NAME not in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameBetween(String value1, String value2) {
            addCriterion("t.NAME between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotBetween(String value1, String value2) {
            addCriterion("t.NAME not between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andWorkerIsNull() {
            addCriterion("t.WORKER is null");
            return (Criteria) this;
        }

        public Criteria andWorkerIsNotNull() {
            addCriterion("t.WORKER is not null");
            return (Criteria) this;
        }

        public Criteria andWorkerEqualTo(String value) {
            addCriterion("t.WORKER =", value, "worker");
            return (Criteria) this;
        }

        public Criteria andWorkerNotEqualTo(String value) {
            addCriterion("t.WORKER <>", value, "worker");
            return (Criteria) this;
        }

        public Criteria andWorkerGreaterThan(String value) {
            addCriterion("t.WORKER >", value, "worker");
            return (Criteria) this;
        }

        public Criteria andWorkerGreaterThanOrEqualTo(String value) {
            addCriterion("t.WORKER >=", value, "worker");
            return (Criteria) this;
        }

        public Criteria andWorkerLessThan(String value) {
            addCriterion("t.WORKER <", value, "worker");
            return (Criteria) this;
        }

        public Criteria andWorkerLessThanOrEqualTo(String value) {
            addCriterion("t.WORKER <=", value, "worker");
            return (Criteria) this;
        }

        public Criteria andWorkerLike(String value) {
            addCriterion("t.WORKER like", value, "worker");
            return (Criteria) this;
        }

        public Criteria andWorkerNotLike(String value) {
            addCriterion("t.WORKER not like", value, "worker");
            return (Criteria) this;
        }

        public Criteria andWorkerIn(List<String> values) {
            addCriterion("t.WORKER in", values, "worker");
            return (Criteria) this;
        }

        public Criteria andWorkerNotIn(List<String> values) {
            addCriterion("t.WORKER not in", values, "worker");
            return (Criteria) this;
        }

        public Criteria andWorkerBetween(String value1, String value2) {
            addCriterion("t.WORKER between", value1, value2, "worker");
            return (Criteria) this;
        }

        public Criteria andWorkerNotBetween(String value1, String value2) {
            addCriterion("t.WORKER not between", value1, value2, "worker");
            return (Criteria) this;
        }

        public Criteria andFlagIsNull() {
            addCriterion("t.FLAG is null");
            return (Criteria) this;
        }

        public Criteria andFlagIsNotNull() {
            addCriterion("t.FLAG is not null");
            return (Criteria) this;
        }

        public Criteria andFlagEqualTo(Integer value) {
            addCriterion("t.FLAG =", value, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagNotEqualTo(Integer value) {
            addCriterion("t.FLAG <>", value, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagGreaterThan(Integer value) {
            addCriterion("t.FLAG >", value, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagGreaterThanOrEqualTo(Integer value) {
            addCriterion("t.FLAG >=", value, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagLessThan(Integer value) {
            addCriterion("t.FLAG <", value, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagLessThanOrEqualTo(Integer value) {
            addCriterion("t.FLAG <=", value, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagIn(List<Integer> values) {
            addCriterion("t.FLAG in", values, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagNotIn(List<Integer> values) {
            addCriterion("t.FLAG not in", values, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagBetween(Integer value1, Integer value2) {
            addCriterion("t.FLAG between", value1, value2, "flag");
            return (Criteria) this;
        }

        public Criteria andFlagNotBetween(Integer value1, Integer value2) {
            addCriterion("t.FLAG not between", value1, value2, "flag");
            return (Criteria) this;
        }

        public Criteria andDetailIsNull() {
            addCriterion("t.DETAIL is null");
            return (Criteria) this;
        }

        public Criteria andDetailIsNotNull() {
            addCriterion("t.DETAIL is not null");
            return (Criteria) this;
        }

        public Criteria andDetailEqualTo(String value) {
            addCriterion("t.DETAIL =", value, "detail");
            return (Criteria) this;
        }

        public Criteria andDetailNotEqualTo(String value) {
            addCriterion("t.DETAIL <>", value, "detail");
            return (Criteria) this;
        }

        public Criteria andDetailGreaterThan(String value) {
            addCriterion("t.DETAIL >", value, "detail");
            return (Criteria) this;
        }

        public Criteria andDetailGreaterThanOrEqualTo(String value) {
            addCriterion("t.DETAIL >=", value, "detail");
            return (Criteria) this;
        }

        public Criteria andDetailLessThan(String value) {
            addCriterion("t.DETAIL <", value, "detail");
            return (Criteria) this;
        }

        public Criteria andDetailLessThanOrEqualTo(String value) {
            addCriterion("t.DETAIL <=", value, "detail");
            return (Criteria) this;
        }

        public Criteria andDetailLike(String value) {
            addCriterion("t.DETAIL like", value, "detail");
            return (Criteria) this;
        }

        public Criteria andDetailNotLike(String value) {
            addCriterion("t.DETAIL not like", value, "detail");
            return (Criteria) this;
        }

        public Criteria andDetailIn(List<String> values) {
            addCriterion("t.DETAIL in", values, "detail");
            return (Criteria) this;
        }

        public Criteria andDetailNotIn(List<String> values) {
            addCriterion("t.DETAIL not in", values, "detail");
            return (Criteria) this;
        }

        public Criteria andDetailBetween(String value1, String value2) {
            addCriterion("t.DETAIL between", value1, value2, "detail");
            return (Criteria) this;
        }

        public Criteria andDetailNotBetween(String value1, String value2) {
            addCriterion("t.DETAIL not between", value1, value2, "detail");
            return (Criteria) this;
        }

        public Criteria andYearIsNull() {
            addCriterion("t.YEAR is null");
            return (Criteria) this;
        }

        public Criteria andYearIsNotNull() {
            addCriterion("t.YEAR is not null");
            return (Criteria) this;
        }

        public Criteria andYearEqualTo(String value) {
            addCriterion("t.YEAR =", value, "year");
            return (Criteria) this;
        }

        public Criteria andYearNotEqualTo(String value) {
            addCriterion("t.YEAR <>", value, "year");
            return (Criteria) this;
        }

        public Criteria andYearGreaterThan(String value) {
            addCriterion("t.YEAR >", value, "year");
            return (Criteria) this;
        }

        public Criteria andYearGreaterThanOrEqualTo(String value) {
            addCriterion("t.YEAR >=", value, "year");
            return (Criteria) this;
        }

        public Criteria andYearLessThan(String value) {
            addCriterion("t.YEAR <", value, "year");
            return (Criteria) this;
        }

        public Criteria andYearLessThanOrEqualTo(String value) {
            addCriterion("t.YEAR <=", value, "year");
            return (Criteria) this;
        }

        public Criteria andYearLike(String value) {
            addCriterion("t.YEAR like", value, "year");
            return (Criteria) this;
        }

        public Criteria andYearNotLike(String value) {
            addCriterion("t.YEAR not like", value, "year");
            return (Criteria) this;
        }

        public Criteria andYearIn(List<String> values) {
            addCriterion("t.YEAR in", values, "year");
            return (Criteria) this;
        }

        public Criteria andYearNotIn(List<String> values) {
            addCriterion("t.YEAR not in", values, "year");
            return (Criteria) this;
        }

        public Criteria andYearBetween(String value1, String value2) {
            addCriterion("t.YEAR between", value1, value2, "year");
            return (Criteria) this;
        }

        public Criteria andYearNotBetween(String value1, String value2) {
            addCriterion("t.YEAR not between", value1, value2, "year");
            return (Criteria) this;
        }

        public Criteria andMonthIsNull() {
            addCriterion("t.MONTH is null");
            return (Criteria) this;
        }

        public Criteria andMonthIsNotNull() {
            addCriterion("t.MONTH is not null");
            return (Criteria) this;
        }

        public Criteria andMonthEqualTo(String value) {
            addCriterion("t.MONTH =", value, "month");
            return (Criteria) this;
        }

        public Criteria andMonthNotEqualTo(String value) {
            addCriterion("t.MONTH <>", value, "month");
            return (Criteria) this;
        }

        public Criteria andMonthGreaterThan(String value) {
            addCriterion("t.MONTH >", value, "month");
            return (Criteria) this;
        }

        public Criteria andMonthGreaterThanOrEqualTo(String value) {
            addCriterion("t.MONTH >=", value, "month");
            return (Criteria) this;
        }

        public Criteria andMonthLessThan(String value) {
            addCriterion("t.MONTH <", value, "month");
            return (Criteria) this;
        }

        public Criteria andMonthLessThanOrEqualTo(String value) {
            addCriterion("t.MONTH <=", value, "month");
            return (Criteria) this;
        }

        public Criteria andMonthLike(String value) {
            addCriterion("t.MONTH like", value, "month");
            return (Criteria) this;
        }

        public Criteria andMonthNotLike(String value) {
            addCriterion("t.MONTH not like", value, "month");
            return (Criteria) this;
        }

        public Criteria andMonthIn(List<String> values) {
            addCriterion("t.MONTH in", values, "month");
            return (Criteria) this;
        }

        public Criteria andMonthNotIn(List<String> values) {
            addCriterion("t.MONTH not in", values, "month");
            return (Criteria) this;
        }

        public Criteria andMonthBetween(String value1, String value2) {
            addCriterion("t.MONTH between", value1, value2, "month");
            return (Criteria) this;
        }

        public Criteria andMonthNotBetween(String value1, String value2) {
            addCriterion("t.MONTH not between", value1, value2, "month");
            return (Criteria) this;
        }

        public Criteria andOneitemsIsNull() {
            addCriterion("t.ONEITEMS is null");
            return (Criteria) this;
        }

        public Criteria andOneitemsIsNotNull() {
            addCriterion("t.ONEITEMS is not null");
            return (Criteria) this;
        }

        public Criteria andOneitemsEqualTo(Integer value) {
            addCriterion("t.ONEITEMS =", value, "oneitems");
            return (Criteria) this;
        }

        public Criteria andOneitemsNotEqualTo(Integer value) {
            addCriterion("t.ONEITEMS <>", value, "oneitems");
            return (Criteria) this;
        }

        public Criteria andOneitemsGreaterThan(Integer value) {
            addCriterion("t.ONEITEMS >", value, "oneitems");
            return (Criteria) this;
        }

        public Criteria andOneitemsGreaterThanOrEqualTo(Integer value) {
            addCriterion("t.ONEITEMS >=", value, "oneitems");
            return (Criteria) this;
        }

        public Criteria andOneitemsLessThan(Integer value) {
            addCriterion("t.ONEITEMS <", value, "oneitems");
            return (Criteria) this;
        }

        public Criteria andOneitemsLessThanOrEqualTo(Integer value) {
            addCriterion("t.ONEITEMS <=", value, "oneitems");
            return (Criteria) this;
        }

        public Criteria andOneitemsIn(List<Integer> values) {
            addCriterion("t.ONEITEMS in", values, "oneitems");
            return (Criteria) this;
        }

        public Criteria andOneitemsNotIn(List<Integer> values) {
            addCriterion("t.ONEITEMS not in", values, "oneitems");
            return (Criteria) this;
        }

        public Criteria andOneitemsBetween(Integer value1, Integer value2) {
            addCriterion("t.ONEITEMS between", value1, value2, "oneitems");
            return (Criteria) this;
        }

        public Criteria andOneitemsNotBetween(Integer value1, Integer value2) {
            addCriterion("t.ONEITEMS not between", value1, value2, "oneitems");
            return (Criteria) this;
        }

        public Criteria andTwoitemsIsNull() {
            addCriterion("t.TWOITEMS is null");
            return (Criteria) this;
        }

        public Criteria andTwoitemsIsNotNull() {
            addCriterion("t.TWOITEMS is not null");
            return (Criteria) this;
        }

        public Criteria andTwoitemsEqualTo(Integer value) {
            addCriterion("t.TWOITEMS =", value, "twoitems");
            return (Criteria) this;
        }

        public Criteria andTwoitemsNotEqualTo(Integer value) {
            addCriterion("t.TWOITEMS <>", value, "twoitems");
            return (Criteria) this;
        }

        public Criteria andTwoitemsGreaterThan(Integer value) {
            addCriterion("t.TWOITEMS >", value, "twoitems");
            return (Criteria) this;
        }

        public Criteria andTwoitemsGreaterThanOrEqualTo(Integer value) {
            addCriterion("t.TWOITEMS >=", value, "twoitems");
            return (Criteria) this;
        }

        public Criteria andTwoitemsLessThan(Integer value) {
            addCriterion("t.TWOITEMS <", value, "twoitems");
            return (Criteria) this;
        }

        public Criteria andTwoitemsLessThanOrEqualTo(Integer value) {
            addCriterion("t.TWOITEMS <=", value, "twoitems");
            return (Criteria) this;
        }

        public Criteria andTwoitemsIn(List<Integer> values) {
            addCriterion("t.TWOITEMS in", values, "twoitems");
            return (Criteria) this;
        }

        public Criteria andTwoitemsNotIn(List<Integer> values) {
            addCriterion("t.TWOITEMS not in", values, "twoitems");
            return (Criteria) this;
        }

        public Criteria andTwoitemsBetween(Integer value1, Integer value2) {
            addCriterion("t.TWOITEMS between", value1, value2, "twoitems");
            return (Criteria) this;
        }

        public Criteria andTwoitemsNotBetween(Integer value1, Integer value2) {
            addCriterion("t.TWOITEMS not between", value1, value2, "twoitems");
            return (Criteria) this;
        }

        public Criteria andThreeitemsIsNull() {
            addCriterion("t.THREEITEMS is null");
            return (Criteria) this;
        }

        public Criteria andThreeitemsIsNotNull() {
            addCriterion("t.THREEITEMS is not null");
            return (Criteria) this;
        }

        public Criteria andThreeitemsEqualTo(Integer value) {
            addCriterion("t.THREEITEMS =", value, "threeitems");
            return (Criteria) this;
        }

        public Criteria andThreeitemsNotEqualTo(Integer value) {
            addCriterion("t.THREEITEMS <>", value, "threeitems");
            return (Criteria) this;
        }

        public Criteria andThreeitemsGreaterThan(Integer value) {
            addCriterion("t.THREEITEMS >", value, "threeitems");
            return (Criteria) this;
        }

        public Criteria andThreeitemsGreaterThanOrEqualTo(Integer value) {
            addCriterion("t.THREEITEMS >=", value, "threeitems");
            return (Criteria) this;
        }

        public Criteria andThreeitemsLessThan(Integer value) {
            addCriterion("t.THREEITEMS <", value, "threeitems");
            return (Criteria) this;
        }

        public Criteria andThreeitemsLessThanOrEqualTo(Integer value) {
            addCriterion("t.THREEITEMS <=", value, "threeitems");
            return (Criteria) this;
        }

        public Criteria andThreeitemsIn(List<Integer> values) {
            addCriterion("t.THREEITEMS in", values, "threeitems");
            return (Criteria) this;
        }

        public Criteria andThreeitemsNotIn(List<Integer> values) {
            addCriterion("t.THREEITEMS not in", values, "threeitems");
            return (Criteria) this;
        }

        public Criteria andThreeitemsBetween(Integer value1, Integer value2) {
            addCriterion("t.THREEITEMS between", value1, value2, "threeitems");
            return (Criteria) this;
        }

        public Criteria andThreeitemsNotBetween(Integer value1, Integer value2) {
            addCriterion("t.THREEITEMS not between", value1, value2, "threeitems");
            return (Criteria) this;
        }

        public Criteria andFouritemsIsNull() {
            addCriterion("t.FOURITEMS is null");
            return (Criteria) this;
        }

        public Criteria andFouritemsIsNotNull() {
            addCriterion("t.FOURITEMS is not null");
            return (Criteria) this;
        }

        public Criteria andFouritemsEqualTo(Integer value) {
            addCriterion("t.FOURITEMS =", value, "fouritems");
            return (Criteria) this;
        }

        public Criteria andFouritemsNotEqualTo(Integer value) {
            addCriterion("t.FOURITEMS <>", value, "fouritems");
            return (Criteria) this;
        }

        public Criteria andFouritemsGreaterThan(Integer value) {
            addCriterion("t.FOURITEMS >", value, "fouritems");
            return (Criteria) this;
        }

        public Criteria andFouritemsGreaterThanOrEqualTo(Integer value) {
            addCriterion("t.FOURITEMS >=", value, "fouritems");
            return (Criteria) this;
        }

        public Criteria andFouritemsLessThan(Integer value) {
            addCriterion("t.FOURITEMS <", value, "fouritems");
            return (Criteria) this;
        }

        public Criteria andFouritemsLessThanOrEqualTo(Integer value) {
            addCriterion("t.FOURITEMS <=", value, "fouritems");
            return (Criteria) this;
        }

        public Criteria andFouritemsIn(List<Integer> values) {
            addCriterion("t.FOURITEMS in", values, "fouritems");
            return (Criteria) this;
        }

        public Criteria andFouritemsNotIn(List<Integer> values) {
            addCriterion("t.FOURITEMS not in", values, "fouritems");
            return (Criteria) this;
        }

        public Criteria andFouritemsBetween(Integer value1, Integer value2) {
            addCriterion("t.FOURITEMS between", value1, value2, "fouritems");
            return (Criteria) this;
        }

        public Criteria andFouritemsNotBetween(Integer value1, Integer value2) {
            addCriterion("t.FOURITEMS not between", value1, value2, "fouritems");
            return (Criteria) this;
        }

        public Criteria andFiveitemsIsNull() {
            addCriterion("t.FIVEITEMS is null");
            return (Criteria) this;
        }

        public Criteria andFiveitemsIsNotNull() {
            addCriterion("t.FIVEITEMS is not null");
            return (Criteria) this;
        }

        public Criteria andFiveitemsEqualTo(Integer value) {
            addCriterion("t.FIVEITEMS =", value, "fiveitems");
            return (Criteria) this;
        }

        public Criteria andFiveitemsNotEqualTo(Integer value) {
            addCriterion("t.FIVEITEMS <>", value, "fiveitems");
            return (Criteria) this;
        }

        public Criteria andFiveitemsGreaterThan(Integer value) {
            addCriterion("t.FIVEITEMS >", value, "fiveitems");
            return (Criteria) this;
        }

        public Criteria andFiveitemsGreaterThanOrEqualTo(Integer value) {
            addCriterion("t.FIVEITEMS >=", value, "fiveitems");
            return (Criteria) this;
        }

        public Criteria andFiveitemsLessThan(Integer value) {
            addCriterion("t.FIVEITEMS <", value, "fiveitems");
            return (Criteria) this;
        }

        public Criteria andFiveitemsLessThanOrEqualTo(Integer value) {
            addCriterion("t.FIVEITEMS <=", value, "fiveitems");
            return (Criteria) this;
        }

        public Criteria andFiveitemsIn(List<Integer> values) {
            addCriterion("t.FIVEITEMS in", values, "fiveitems");
            return (Criteria) this;
        }

        public Criteria andFiveitemsNotIn(List<Integer> values) {
            addCriterion("t.FIVEITEMS not in", values, "fiveitems");
            return (Criteria) this;
        }

        public Criteria andFiveitemsBetween(Integer value1, Integer value2) {
            addCriterion("t.FIVEITEMS between", value1, value2, "fiveitems");
            return (Criteria) this;
        }

        public Criteria andFiveitemsNotBetween(Integer value1, Integer value2) {
            addCriterion("t.FIVEITEMS not between", value1, value2, "fiveitems");
            return (Criteria) this;
        }

        public Criteria andPeriodIsNull() {
            addCriterion("t.PERIOD is null");
            return (Criteria) this;
        }

        public Criteria andPeriodIsNotNull() {
            addCriterion("t.PERIOD is not null");
            return (Criteria) this;
        }

        public Criteria andPeriodEqualTo(Integer value) {
            addCriterion("t.PERIOD =", value, "period");
            return (Criteria) this;
        }

        public Criteria andPeriodNotEqualTo(Integer value) {
            addCriterion("t.PERIOD <>", value, "period");
            return (Criteria) this;
        }

        public Criteria andPeriodGreaterThan(Integer value) {
            addCriterion("t.PERIOD >", value, "period");
            return (Criteria) this;
        }

        public Criteria andPeriodGreaterThanOrEqualTo(Integer value) {
            addCriterion("t.PERIOD >=", value, "period");
            return (Criteria) this;
        }

        public Criteria andPeriodLessThan(Integer value) {
            addCriterion("t.PERIOD <", value, "period");
            return (Criteria) this;
        }

        public Criteria andPeriodLessThanOrEqualTo(Integer value) {
            addCriterion("t.PERIOD <=", value, "period");
            return (Criteria) this;
        }

        public Criteria andPeriodIn(List<Integer> values) {
            addCriterion("t.PERIOD in", values, "period");
            return (Criteria) this;
        }

        public Criteria andPeriodNotIn(List<Integer> values) {
            addCriterion("t.PERIOD not in", values, "period");
            return (Criteria) this;
        }

        public Criteria andPeriodBetween(Integer value1, Integer value2) {
            addCriterion("t.PERIOD between", value1, value2, "period");
            return (Criteria) this;
        }

        public Criteria andPeriodNotBetween(Integer value1, Integer value2) {
            addCriterion("t.PERIOD not between", value1, value2, "period");
            return (Criteria) this;
        }

        public Criteria andCountIsNull() {
            addCriterion("t.COUNT is null");
            return (Criteria) this;
        }

        public Criteria andCountIsNotNull() {
            addCriterion("t.COUNT is not null");
            return (Criteria) this;
        }

        public Criteria andCountEqualTo(Integer value) {
            addCriterion("t.COUNT =", value, "count");
            return (Criteria) this;
        }

        public Criteria andCountNotEqualTo(Integer value) {
            addCriterion("t.COUNT <>", value, "count");
            return (Criteria) this;
        }

        public Criteria andCountGreaterThan(Integer value) {
            addCriterion("t.COUNT >", value, "count");
            return (Criteria) this;
        }

        public Criteria andCountGreaterThanOrEqualTo(Integer value) {
            addCriterion("t.COUNT >=", value, "count");
            return (Criteria) this;
        }

        public Criteria andCountLessThan(Integer value) {
            addCriterion("t.COUNT <", value, "count");
            return (Criteria) this;
        }

        public Criteria andCountLessThanOrEqualTo(Integer value) {
            addCriterion("t.COUNT <=", value, "count");
            return (Criteria) this;
        }

        public Criteria andCountIn(List<Integer> values) {
            addCriterion("t.COUNT in", values, "count");
            return (Criteria) this;
        }

        public Criteria andCountNotIn(List<Integer> values) {
            addCriterion("t.COUNT not in", values, "count");
            return (Criteria) this;
        }

        public Criteria andCountBetween(Integer value1, Integer value2) {
            addCriterion("t.COUNT between", value1, value2, "count");
            return (Criteria) this;
        }

        public Criteria andCountNotBetween(Integer value1, Integer value2) {
            addCriterion("t.COUNT not between", value1, value2, "count");
            return (Criteria) this;
        }

        public Criteria andWorkloadIsNull() {
            addCriterion("t.WORKLOAD is null");
            return (Criteria) this;
        }

        public Criteria andWorkloadIsNotNull() {
            addCriterion("t.WORKLOAD is not null");
            return (Criteria) this;
        }

        public Criteria andWorkloadEqualTo(Integer value) {
            addCriterion("t.WORKLOAD =", value, "workload");
            return (Criteria) this;
        }

        public Criteria andWorkloadNotEqualTo(Integer value) {
            addCriterion("t.WORKLOAD <>", value, "workload");
            return (Criteria) this;
        }

        public Criteria andWorkloadGreaterThan(Integer value) {
            addCriterion("t.WORKLOAD >", value, "workload");
            return (Criteria) this;
        }

        public Criteria andWorkloadGreaterThanOrEqualTo(Integer value) {
            addCriterion("t.WORKLOAD >=", value, "workload");
            return (Criteria) this;
        }

        public Criteria andWorkloadLessThan(Integer value) {
            addCriterion("t.WORKLOAD <", value, "workload");
            return (Criteria) this;
        }

        public Criteria andWorkloadLessThanOrEqualTo(Integer value) {
            addCriterion("t.WORKLOAD <=", value, "workload");
            return (Criteria) this;
        }

        public Criteria andWorkloadIn(List<Integer> values) {
            addCriterion("t.WORKLOAD in", values, "workload");
            return (Criteria) this;
        }

        public Criteria andWorkloadNotIn(List<Integer> values) {
            addCriterion("t.WORKLOAD not in", values, "workload");
            return (Criteria) this;
        }

        public Criteria andWorkloadBetween(Integer value1, Integer value2) {
            addCriterion("t.WORKLOAD between", value1, value2, "workload");
            return (Criteria) this;
        }

        public Criteria andWorkloadNotBetween(Integer value1, Integer value2) {
            addCriterion("t.WORKLOAD not between", value1, value2, "workload");
            return (Criteria) this;
        }

        public Criteria andUnitpriceIsNull() {
            addCriterion("t.UNITPRICE is null");
            return (Criteria) this;
        }

        public Criteria andUnitpriceIsNotNull() {
            addCriterion("t.UNITPRICE is not null");
            return (Criteria) this;
        }

        public Criteria andUnitpriceEqualTo(BigDecimal value) {
            addCriterion("t.UNITPRICE =", value, "unitprice");
            return (Criteria) this;
        }

        public Criteria andUnitpriceNotEqualTo(BigDecimal value) {
            addCriterion("t.UNITPRICE <>", value, "unitprice");
            return (Criteria) this;
        }

        public Criteria andUnitpriceGreaterThan(BigDecimal value) {
            addCriterion("t.UNITPRICE >", value, "unitprice");
            return (Criteria) this;
        }

        public Criteria andUnitpriceGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("t.UNITPRICE >=", value, "unitprice");
            return (Criteria) this;
        }

        public Criteria andUnitpriceLessThan(BigDecimal value) {
            addCriterion("t.UNITPRICE <", value, "unitprice");
            return (Criteria) this;
        }

        public Criteria andUnitpriceLessThanOrEqualTo(BigDecimal value) {
            addCriterion("t.UNITPRICE <=", value, "unitprice");
            return (Criteria) this;
        }

        public Criteria andUnitpriceIn(List<BigDecimal> values) {
            addCriterion("t.UNITPRICE in", values, "unitprice");
            return (Criteria) this;
        }

        public Criteria andUnitpriceNotIn(List<BigDecimal> values) {
            addCriterion("t.UNITPRICE not in", values, "unitprice");
            return (Criteria) this;
        }

        public Criteria andUnitpriceBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("t.UNITPRICE between", value1, value2, "unitprice");
            return (Criteria) this;
        }

        public Criteria andUnitpriceNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("t.UNITPRICE not between", value1, value2, "unitprice");
            return (Criteria) this;
        }

        public Criteria andRealWorkloadIsNull() {
            addCriterion("t.REAL_WORKLOAD is null");
            return (Criteria) this;
        }

        public Criteria andRealWorkloadIsNotNull() {
            addCriterion("t.REAL_WORKLOAD is not null");
            return (Criteria) this;
        }

        public Criteria andRealWorkloadEqualTo(Integer value) {
            addCriterion("t.REAL_WORKLOAD =", value, "realWorkload");
            return (Criteria) this;
        }

        public Criteria andRealWorkloadNotEqualTo(Integer value) {
            addCriterion("t.REAL_WORKLOAD <>", value, "realWorkload");
            return (Criteria) this;
        }

        public Criteria andRealWorkloadGreaterThan(Integer value) {
            addCriterion("t.REAL_WORKLOAD >", value, "realWorkload");
            return (Criteria) this;
        }

        public Criteria andRealWorkloadGreaterThanOrEqualTo(Integer value) {
            addCriterion("t.REAL_WORKLOAD >=", value, "realWorkload");
            return (Criteria) this;
        }

        public Criteria andRealWorkloadLessThan(Integer value) {
            addCriterion("t.REAL_WORKLOAD <", value, "realWorkload");
            return (Criteria) this;
        }

        public Criteria andRealWorkloadLessThanOrEqualTo(Integer value) {
            addCriterion("t.REAL_WORKLOAD <=", value, "realWorkload");
            return (Criteria) this;
        }

        public Criteria andRealWorkloadIn(List<Integer> values) {
            addCriterion("t.REAL_WORKLOAD in", values, "realWorkload");
            return (Criteria) this;
        }

        public Criteria andRealWorkloadNotIn(List<Integer> values) {
            addCriterion("t.REAL_WORKLOAD not in", values, "realWorkload");
            return (Criteria) this;
        }

        public Criteria andRealWorkloadBetween(Integer value1, Integer value2) {
            addCriterion("t.REAL_WORKLOAD between", value1, value2, "realWorkload");
            return (Criteria) this;
        }

        public Criteria andRealWorkloadNotBetween(Integer value1, Integer value2) {
            addCriterion("t.REAL_WORKLOAD not between", value1, value2, "realWorkload");
            return (Criteria) this;
        }

        public Criteria andDeadlineIsNull() {
            addCriterion("t.DEADLINE is null");
            return (Criteria) this;
        }

        public Criteria andDeadlineIsNotNull() {
            addCriterion("t.DEADLINE is not null");
            return (Criteria) this;
        }

        public Criteria andDeadlineEqualTo(Date value) {
            addCriterion("t.DEADLINE =", value, "deadline");
            return (Criteria) this;
        }

        public Criteria andDeadlineNotEqualTo(Date value) {
            addCriterion("t.DEADLINE <>", value, "deadline");
            return (Criteria) this;
        }

        public Criteria andDeadlineGreaterThan(Date value) {
            addCriterion("t.DEADLINE >", value, "deadline");
            return (Criteria) this;
        }

        public Criteria andDeadlineGreaterThanOrEqualTo(Date value) {
            addCriterion("t.DEADLINE >=", value, "deadline");
            return (Criteria) this;
        }

        public Criteria andDeadlineLessThan(Date value) {
            addCriterion("t.DEADLINE <", value, "deadline");
            return (Criteria) this;
        }

        public Criteria andDeadlineLessThanOrEqualTo(Date value) {
            addCriterion("t.DEADLINE <=", value, "deadline");
            return (Criteria) this;
        }

        public Criteria andDeadlineIn(List<Date> values) {
            addCriterion("t.DEADLINE in", values, "deadline");
            return (Criteria) this;
        }

        public Criteria andDeadlineNotIn(List<Date> values) {
            addCriterion("t.DEADLINE not in", values, "deadline");
            return (Criteria) this;
        }

        public Criteria andDeadlineBetween(Date value1, Date value2) {
            addCriterion("t.DEADLINE between", value1, value2, "deadline");
            return (Criteria) this;
        }

        public Criteria andDeadlineNotBetween(Date value1, Date value2) {
            addCriterion("t.DEADLINE not between", value1, value2, "deadline");
            return (Criteria) this;
        }

        public Criteria andStatusIsNull() {
            addCriterion("t.STATUS is null");
            return (Criteria) this;
        }

        public Criteria andStatusIsNotNull() {
            addCriterion("t.STATUS is not null");
            return (Criteria) this;
        }

        public Criteria andStatusEqualTo(Integer value) {
            addCriterion("t.STATUS =", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotEqualTo(Integer value) {
            addCriterion("t.STATUS <>", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThan(Integer value) {
            addCriterion("t.STATUS >", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("t.STATUS >=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThan(Integer value) {
            addCriterion("t.STATUS <", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThanOrEqualTo(Integer value) {
            addCriterion("t.STATUS <=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusIn(List<Integer> values) {
            addCriterion("t.STATUS in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotIn(List<Integer> values) {
            addCriterion("t.STATUS not in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusBetween(Integer value1, Integer value2) {
            addCriterion("t.STATUS between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("t.STATUS not between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andFeedbacktimeIsNull() {
            addCriterion("t.FEEDBACKTIME is null");
            return (Criteria) this;
        }

        public Criteria andFeedbacktimeIsNotNull() {
            addCriterion("t.FEEDBACKTIME is not null");
            return (Criteria) this;
        }

        public Criteria andFeedbacktimeEqualTo(Date value) {
            addCriterion("t.FEEDBACKTIME =", value, "feedbacktime");
            return (Criteria) this;
        }

        public Criteria andFeedbacktimeNotEqualTo(Date value) {
            addCriterion("t.FEEDBACKTIME <>", value, "feedbacktime");
            return (Criteria) this;
        }

        public Criteria andFeedbacktimeGreaterThan(Date value) {
            addCriterion("t.FEEDBACKTIME >", value, "feedbacktime");
            return (Criteria) this;
        }

        public Criteria andFeedbacktimeGreaterThanOrEqualTo(Date value) {
            addCriterion("t.FEEDBACKTIME >=", value, "feedbacktime");
            return (Criteria) this;
        }

        public Criteria andFeedbacktimeLessThan(Date value) {
            addCriterion("t.FEEDBACKTIME <", value, "feedbacktime");
            return (Criteria) this;
        }

        public Criteria andFeedbacktimeLessThanOrEqualTo(Date value) {
            addCriterion("t.FEEDBACKTIME <=", value, "feedbacktime");
            return (Criteria) this;
        }

        public Criteria andFeedbacktimeIn(List<Date> values) {
            addCriterion("t.FEEDBACKTIME in", values, "feedbacktime");
            return (Criteria) this;
        }

        public Criteria andFeedbacktimeNotIn(List<Date> values) {
            addCriterion("t.FEEDBACKTIME not in", values, "feedbacktime");
            return (Criteria) this;
        }

        public Criteria andFeedbacktimeBetween(Date value1, Date value2) {
            addCriterion("t.FEEDBACKTIME between", value1, value2, "feedbacktime");
            return (Criteria) this;
        }

        public Criteria andFeedbacktimeNotBetween(Date value1, Date value2) {
            addCriterion("t.FEEDBACKTIME not between", value1, value2, "feedbacktime");
            return (Criteria) this;
        }

        public Criteria andPurposeIsNull() {
            addCriterion("t.PURPOSE is null");
            return (Criteria) this;
        }

        public Criteria andPurposeIsNotNull() {
            addCriterion("t.PURPOSE is not null");
            return (Criteria) this;
        }

        public Criteria andPurposeEqualTo(String value) {
            addCriterion("t.PURPOSE =", value, "purpose");
            return (Criteria) this;
        }

        public Criteria andPurposeNotEqualTo(String value) {
            addCriterion("t.PURPOSE <>", value, "purpose");
            return (Criteria) this;
        }

        public Criteria andPurposeGreaterThan(String value) {
            addCriterion("t.PURPOSE >", value, "purpose");
            return (Criteria) this;
        }

        public Criteria andPurposeGreaterThanOrEqualTo(String value) {
            addCriterion("t.PURPOSE >=", value, "purpose");
            return (Criteria) this;
        }

        public Criteria andPurposeLessThan(String value) {
            addCriterion("t.PURPOSE <", value, "purpose");
            return (Criteria) this;
        }

        public Criteria andPurposeLessThanOrEqualTo(String value) {
            addCriterion("t.PURPOSE <=", value, "purpose");
            return (Criteria) this;
        }

        public Criteria andPurposeLike(String value) {
            addCriterion("t.PURPOSE like", value, "purpose");
            return (Criteria) this;
        }

        public Criteria andPurposeNotLike(String value) {
            addCriterion("t.PURPOSE not like", value, "purpose");
            return (Criteria) this;
        }

        public Criteria andPurposeIn(List<String> values) {
            addCriterion("t.PURPOSE in", values, "purpose");
            return (Criteria) this;
        }

        public Criteria andPurposeNotIn(List<String> values) {
            addCriterion("t.PURPOSE not in", values, "purpose");
            return (Criteria) this;
        }

        public Criteria andPurposeBetween(String value1, String value2) {
            addCriterion("t.PURPOSE between", value1, value2, "purpose");
            return (Criteria) this;
        }

        public Criteria andPurposeNotBetween(String value1, String value2) {
            addCriterion("t.PURPOSE not between", value1, value2, "purpose");
            return (Criteria) this;
        }

        public Criteria andConfirmtimeIsNull() {
            addCriterion("t.CONFIRMTIME is null");
            return (Criteria) this;
        }

        public Criteria andConfirmtimeIsNotNull() {
            addCriterion("t.CONFIRMTIME is not null");
            return (Criteria) this;
        }

        public Criteria andConfirmtimeEqualTo(Date value) {
            addCriterion("t.CONFIRMTIME =", value, "confirmtime");
            return (Criteria) this;
        }

        public Criteria andConfirmtimeNotEqualTo(Date value) {
            addCriterion("t.CONFIRMTIME <>", value, "confirmtime");
            return (Criteria) this;
        }

        public Criteria andConfirmtimeGreaterThan(Date value) {
            addCriterion("t.CONFIRMTIME >", value, "confirmtime");
            return (Criteria) this;
        }

        public Criteria andConfirmtimeGreaterThanOrEqualTo(Date value) {
            addCriterion("t.CONFIRMTIME >=", value, "confirmtime");
            return (Criteria) this;
        }

        public Criteria andConfirmtimeLessThan(Date value) {
            addCriterion("t.CONFIRMTIME <", value, "confirmtime");
            return (Criteria) this;
        }

        public Criteria andConfirmtimeLessThanOrEqualTo(Date value) {
            addCriterion("t.CONFIRMTIME <=", value, "confirmtime");
            return (Criteria) this;
        }

        public Criteria andConfirmtimeIn(List<Date> values) {
            addCriterion("t.CONFIRMTIME in", values, "confirmtime");
            return (Criteria) this;
        }

        public Criteria andConfirmtimeNotIn(List<Date> values) {
            addCriterion("t.CONFIRMTIME not in", values, "confirmtime");
            return (Criteria) this;
        }

        public Criteria andConfirmtimeBetween(Date value1, Date value2) {
            addCriterion("t.CONFIRMTIME between", value1, value2, "confirmtime");
            return (Criteria) this;
        }

        public Criteria andConfirmtimeNotBetween(Date value1, Date value2) {
            addCriterion("t.CONFIRMTIME not between", value1, value2, "confirmtime");
            return (Criteria) this;
        }

        public Criteria andIdLikeInsensitive(String value) {
            addCriterion("upper(t.ID) like", value.toUpperCase(), "id");
            return (Criteria) this;
        }

        public Criteria andNameLikeInsensitive(String value) {
            addCriterion("upper(t.NAME) like", value.toUpperCase(), "name");
            return (Criteria) this;
        }

        public Criteria andWorkerLikeInsensitive(String value) {
            addCriterion("upper(t.WORKER) like", value.toUpperCase(), "worker");
            return (Criteria) this;
        }

        public Criteria andDetailLikeInsensitive(String value) {
            addCriterion("upper(t.DETAIL) like", value.toUpperCase(), "detail");
            return (Criteria) this;
        }

        public Criteria andYearLikeInsensitive(String value) {
            addCriterion("upper(t.YEAR) like", value.toUpperCase(), "year");
            return (Criteria) this;
        }

        public Criteria andMonthLikeInsensitive(String value) {
            addCriterion("upper(t.MONTH) like", value.toUpperCase(), "month");
            return (Criteria) this;
        }

        public Criteria andPurposeLikeInsensitive(String value) {
            addCriterion("upper(t.PURPOSE) like", value.toUpperCase(), "purpose");
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