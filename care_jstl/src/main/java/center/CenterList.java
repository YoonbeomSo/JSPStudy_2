package center;
//게시글 수에 따른 페이지번호 생성을 위한 class
public class CenterList {
	private int pageNumber;
	private int start;
	private int scroll;
	private int totalRecord;
	private int totalPage;
	
	public CenterList() {
		scroll = 3;
	}
	
	public void setPageNumber(int pageNumber) {
		if(pageNumber == 0)
			this.pageNumber = 1;
		else
			this.pageNumber = pageNumber;
		setStart();
	}
	
	public void setPageNumber(String pageNumber) {
		if(pageNumber == "" || pageNumber == null)
			this.pageNumber = 1;
		else
			this.pageNumber = Integer.parseInt(pageNumber);
		setStart();
	}
	private void setStart() {
		this.start = (pageNumber - 1) * scroll;
	}
	
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
		setTotalPage();
	}
	
	private void setTotalPage() {
		if(totalRecord > 0) {
			if(totalRecord % scroll == 0)
				totalPage = totalRecord / scroll;
			else
				totalPage = totalRecord / scroll + 1;
		}
	}
	public void setScroll(int scroll) {
		this.scroll = scroll;
	}
	public int getPageNumber() {
		return pageNumber;
	}

	public int getStart() {
		return start;
	}
	
	public int getScroll() {
		return scroll;
	}

	public int getTotalRecord() {
		return totalRecord;
	}

	public int getTotalPage() {
		return totalPage;
	}

	
}
