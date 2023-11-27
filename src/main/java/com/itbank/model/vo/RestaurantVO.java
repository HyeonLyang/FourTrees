package com.itbank.model.vo;

/*
    idx             number          default res_seq.nextval,
    name            varchar2(100)   not null,
    address         clob            not null,
    res_phone       varchar2(30)    not null,
    category        varchar2(100)   not null,
    score           number          default 0,
    photo           clob,
    holiday         varchar2(30)    default 'x',
    op_hour         varchar2(30)    not null,
    park_area       number,
    view_count      number          default 0,
    price           varchar2(100),
    link            varchar2(200),    
		
*/
public class RestaurantVO {
	  	private int idx;                	
	    private String name;            
	    private String address;         
	    private String res_phone;       
	    private String category;    
	    private double score;       
	    private String photo;        
	    private String holiday;   		
	    private String op_hour;    
	    private int park_area;      
	    private int view_count;    
	    private String price;      
	    private String link;     

	    public int getIdx() {
	        return idx;
	    }

	    public void setIdx(int idx) {
	        this.idx = idx;
	    }

	    public String getName() {
	        return name;
	    }

	    public void setName(String name) {
	        this.name = name;
	    }

	    public String getAddress() {
	        return address;
	    }

	    public void setAddress(String address) {
	        this.address = address;
	    }

	    public String getCategory() {
	        return category;
	    }

	    public String getRes_phone() {
			return res_phone;
		}

		public void setRes_phone(String res_phone) {
			this.res_phone = res_phone;
		}

		public String getOp_hour() {
			return op_hour;
		}

		public void setOp_hour(String op_hour) {
			this.op_hour = op_hour;
		}

		public int getPark_area() {
			return park_area;
		}

		public void setPark_area(int park_area) {
			this.park_area = park_area;
		}

		public int getView_count() {
			return view_count;
		}

		public void setView_count(int view_count) {
			this.view_count = view_count;
		}

		public void setCategory(String category) {
	        this.category = category;
	    }

	    public double getScore() {
	        return score;
	    }

	    public void setScore(double score) {
	        this.score = score;
	    }

	    public String getPhoto() {
	        return photo;
	    }

	    public void setPhoto(String photo) {
	        this.photo = photo;
	    }

	    public String getHoliday() {
	        return holiday;
	    }

	    public void setHoliday(String holiday) {
	        this.holiday = holiday;
	    }

	    public String getOpHour() {
	        return op_hour;
	    }

	    public void setOpHour(String op_hour) {
	        this.op_hour = op_hour;
	    }

	    public int getParkArea() {
	        return park_area;
	    }

	    public void setParkArea(int park_area) {
	        this.park_area = park_area;
	    }

	    public int getViewCount() {
	        return view_count;
	    }

	    public void setViewCount(int view_count) {
	        this.view_count = view_count;
	    }

	    public String getPrice() {
	        return price;
	    }

	    public void setPrice(String price) {
	        this.price = price;
	    }

	    public String getLink() {
	        return link;
	    }

	    public void setLink(String link) {
	        this.link = link;
	    }
}
