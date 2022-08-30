package domain;

public class ProductVO {
	private int pno;  //자동
	private String pname;
	private int price;
	private String reg_date;  //자동
	private String made_by;
	
	//기본생성자
	public ProductVO() {}
	
	//상품등록
	public ProductVO(String pname, int price, String made_by) {
		this.pname = pname;
		this.price = price;
		this.made_by = made_by;
	}
	//상품리스트
	public ProductVO(int pno, String pname, String reg_date) {
		this.pno = pno;
		this.pname = pname;
		this.reg_date = reg_date;
	}
	
	//상품수정
	public ProductVO(int pno, String pname, int price, String made_by) {
		this(pname, price, made_by);
		this.pno = pno;
	}
	//상품detail
	public ProductVO(int pno, String pname, int price, String reg_date,
			String made_by) {
		this(pno, pname, price, made_by);
		this.reg_date = reg_date;
	}
	//getter/setter

	public int getPno() {
		return pno;
	}

	public void setPno(int pno) {
		this.pno = pno;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}

	public String getMade_by() {
		return made_by;
	}

	public void setMade_by(String made_by) {
		this.made_by = made_by;
	}
	

}
