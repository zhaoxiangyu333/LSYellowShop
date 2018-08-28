package user.vo;

import good.vo.Good;

import java.util.Date;

public class UserOrderGoods {
	private int id;
	private String orderId;
	private String orderPersion;
	private Good good;
	private int orderNum;
	private double sum;
	private String status;
	// 后期添加的订单地址
	private String orderAddress;
	private Date createTime;

	private int goodId;
	private String goodName;
	private double goodPrice;



	public UserOrderGoods(int id, String orderId, String orderPersion, Good good, int orderNum, double sum, String status, String orderAddress, Date createTime) {
		this.id = id;
		this.orderId = orderId;
		this.orderPersion = orderPersion;
		this.good = good;
		this.orderNum = orderNum;
		this.sum = sum;
		this.status = status;
		this.orderAddress = orderAddress;
		this.createTime = createTime;
	}

	public UserOrderGoods(int id, String orderId, String orderPersion, Good good, int orderNum, double sum, String status, String orderAddress) {
		this.id = id;
		this.orderId = orderId;
		this.orderPersion = orderPersion;
		this.good = good;
		this.orderNum = orderNum;
		this.sum = sum;
		this.status = status;
		this.orderAddress = orderAddress;
	}

	public UserOrderGoods(int id, String orderId, String orderPersion, Good good, int orderNum, double sum, String status) {
		this.id = id;
		this.orderId = orderId;
		this.orderPersion = orderPersion;
		this.good = good;
		this.orderNum = orderNum;
		this.sum = sum;
		this.status = status;
	}

	public UserOrderGoods(int id, String orderId, String orderPersion, Good good, int orderNum, double sum, String status, Date createTime) {
		this.id = id;
		this.orderId = orderId;
		this.orderPersion = orderPersion;
		this.good = good;
		this.orderNum = orderNum;
		this.sum = sum;
		this.status = status;
		this.createTime = createTime;
	}

	public UserOrderGoods(int id, String orderId, String orderPersion, int goodId, String goodName, double goodPrice, int orderNum, double sum, String status, Date createTime) {
		this.id = id;
		this.orderId = orderId;
		this.orderPersion = orderPersion;
		this.goodId = goodId;
		this.goodName = goodName;
		this.goodPrice = goodPrice;
		this.orderNum = orderNum;
		this.sum = sum;
		this.status = status;
		this.createTime = createTime;
	}

	public UserOrderGoods(int id, String orderId, String orderPersion, int goodId, String goodName, double goodPrice, int orderNum, double sum, String status, String orderAddress, Date createTime) {
		this.id = id;
		this.orderId = orderId;
		this.orderPersion = orderPersion;
		this.orderNum = orderNum;
		this.sum = sum;
		this.status = status;
		this.orderAddress = orderAddress;
		this.createTime = createTime;
		this.goodId = goodId;
		this.goodName = goodName;
		this.goodPrice = goodPrice;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public String getOrderPersion() {
		return orderPersion;
	}

	public void setOrderPersion(String orderPersion) {
		this.orderPersion = orderPersion;
	}

	public Good getGood() {
		return good;
	}

	public void setGood(Good good) {
		this.good = good;
	}

	public int getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}

	public double getSum() {
		return sum;
	}

	public void setSum(double sum) {
		this.sum = sum;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}


	public int getGoodId() {
		return goodId;
	}

	public void setGoodId(int goodId) {
		this.goodId = goodId;
	}

	public String getGoodName() {
		return goodName;
	}

	public void setGoodName(String goodName) {
		this.goodName = goodName;
	}

	public double getGoodPrice() {
		return goodPrice;
	}

	public void setGoodPrice(double goodPrice) {
		this.goodPrice = goodPrice;
	}

	public String getOrderAddress() {
		return orderAddress;
	}

	public void setOrderAddress(String orderAddress) {
		this.orderAddress = orderAddress;
	}
}
