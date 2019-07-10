package com.spx.easyuiUtil;

import java.util.List;

/**
 * jQuery EasyUI DataGrid数据模型
 *
 * @author hongcy
 * @date 2013-3-30
 * @time 下午11:42:12
 * @param <E>
 *            行记录对象
 */
public class DataGridDataModel<E> {
    /**
     * 总记录条数
     */
    private Long total = 0L;
    /**
     * 每次显示的记录
     */
    private List<E> rows;

    public Long getTotal() {
        return total;
    }

    public void setTotal(Long total) {
        this.total = total;
    }

    public List<E> getRows() {
        return rows;
    }

    public void setRows(List<E> rows) {
        this.rows = rows;
    }
}
