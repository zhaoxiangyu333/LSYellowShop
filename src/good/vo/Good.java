package good.vo;

import java.util.Date;

public class Good {
	private int goodsId;
	private String goodsName;
	private double goodsWeight;
	private double goodsPrice;
	private int goodsNumber;
	private String prodId;
	private String goodsIntroduce;
	private String goodsImage;
	private Date createTime;

	public Good(int goodsId, String goodsName, double goodsPrice, String goodsImage) {
		this.goodsId = goodsId;
		this.goodsName = goodsName;
		this.goodsPrice = goodsPrice;
		this.goodsImage = goodsImage;
	}

	public Good(int goodsId, String goodsName, double goodsWeight, double goodsPrice, int goodsNumber, String prodId, String goodsIntroduce, String
			goodsImage, Date createTime) {
		this.goodsId = goodsId;
		this.goodsName = goodsName;
		this.goodsWeight = goodsWeight;
		this.goodsPrice = goodsPrice;
		this.goodsNumber = goodsNumber;
		this.prodId = prodId;
		this.goodsIntroduce = goodsIntroduce;
		this.goodsImage = goodsImage;
		this.createTime = createTime;
	}

	public Good(int goodsId, String goodsName, double goodsWeight, double goodsPrice, int goodsNumber, String prodId, String goodsIntroduce, String goodsImage) {
		this.goodsId = goodsId;
		this.goodsName = goodsName;
		this.goodsWeight = goodsWeight;
		this.goodsPrice = goodsPrice;
		this.goodsNumber = goodsNumber;
		this.prodId = prodId;
		this.goodsIntroduce = goodsIntroduce;
		this.goodsImage = goodsImage;
	}

	public Good(int id, String goods_name, double goods_weight, double goods_price, int goods_number, String prod_id, String goods_introduce) {
	}

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public double getGoodsWeight() {
		return goodsWeight;
	}

	public void setGoodsWeight(double goodsWeight) {
		this.goodsWeight = goodsWeight;
	}

	public double getGoodsPrice() {
		return goodsPrice;
	}

	public void setGoodsPrice(double goodsPrice) {
		this.goodsPrice = goodsPrice;
	}

	public int getGoodsNumber() {
		return goodsNumber;
	}

	public void setGoodsNumber(int goodsNumber) {
		this.goodsNumber = goodsNumber;
	}

	public String getProdId() {
		return prodId;
	}

	public void setProdId(String prodId) {
		this.prodId = prodId;
	}

	public String getGoodsIntroduce() {
		return goodsIntroduce;
	}

	public void setGoodsIntroduce(String goodsIntroduce) {
		this.goodsIntroduce = goodsIntroduce;
	}

	public String getGoodsImage() {
		return goodsImage;
	}

	public void setGoodsImage(String goodsImage) {
		this.goodsImage = goodsImage;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
}
