package com.xkit.easybuy.entity;

import java.util.List;

public class PageBean {
	    //��ǰҳ��
        private Integer pageIndex;
        //��ҳ��
        private Integer pageCount;
        //�ܼ�¼��
        private Integer count;
        //list����
        private List pageList;
		public Integer getPageIndex() {
			return pageIndex;
		}
		public void setPageIndex(Integer pageIndex) {
			this.pageIndex = pageIndex;
		}
		public Integer getPageCount() {
			return pageCount;
		}
		public void setPageCount(Integer pageCount) {
			this.pageCount = pageCount;
		}
		public Integer getCount() {
			return count;
		}
		public void setCount(Integer count) {
			this.count = count;
		}
		public List getPageList() {
			return pageList;
		}
		public void setPageList(List pageList) {
			this.pageList = pageList;
		}
		
}
