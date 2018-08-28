package admin.vo;

import java.util.List;

public class Page<T> {
	// 每页显示多少条记录
	private int pageSize;
	// 总的数据量
	private int totalSize;
	// 总共分多少页
	private int pageNum;
	// 当前显示第几页
	private int currentPage=1;
	// 存放数据泛型集合
	private List<T> list;

	public Page(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalSize() {
		return totalSize;
	}

	public void setTotalSize(int totalSize) {
		this.totalSize = totalSize;
		if (this.totalSize % this.pageSize == 0) {
			this.pageNum = this.totalSize / this.pageSize;
		} else {
			this.pageNum = this.totalSize / this.pageSize + 1;
		}
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		if (currentPage < 1) {
			this.currentPage = 1;
		} else if (currentPage > this.pageNum) {
			this.currentPage = this.pageNum;
		}else {
			this.currentPage = currentPage;
		}
	}

	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}
}
