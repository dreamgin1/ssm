package cn.demo.tools;

public class PageUtil {
	//ҳ����ʾ����
	private int pageSize=10;
	
	//��ǰҳ��
	private int totalPageNo=1;
	
	//��������
	private int totalCount;
	
	//��ҳ��
	private int totalPageCount;
	
	//��ʼλ��
	private int pageStart=1;

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		if(pageSize>0){
		this.pageSize = pageSize;
		}
	}

	public int getTotalPageNo() {
		return totalPageNo;
	}

	public void setTotalPageNo(int totalPageNo) {
		if(totalPageNo>0){
		this.totalPageNo = totalPageNo;
		pageStart=(totalPageNo-1)*pageSize;
		}
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		if(totalCount>0){
		this.totalCount = totalCount;
		totalPageCount=totalCount%pageSize==0?(totalCount/pageSize):(totalCount/pageSize+1);
		}
	}

	public int getTotalPageCount() {
		return totalPageCount;
	}

	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}

	public int getPageStart() {
		return pageStart;
	}

	public void setPageStart(int pageStart) {
		this.pageStart = pageStart;
	}
	
}
