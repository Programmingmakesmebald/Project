package edu.heuet.Pojo;

import java.util.List;

public class PageInfo<T> extends com.github.pagehelper.PageInfo {

    private int currentPage;//当前页数
    private int pageSize;//每页显示数量
    private int totalCount;//总数
    private int totalPage;//总页数
    private List<T> lists;//每页显示的数据

    public PageInfo() {

    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
    public int getTotalCount() {
        return totalCount;
    }
    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public List<T> getLists() {
        return lists;
    }
    public void setLists(List<T> lists) {
        this.lists = lists;
    }


}
