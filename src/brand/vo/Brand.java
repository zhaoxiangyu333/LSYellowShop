package brand.vo;

public class Brand {
	private String brandName;
	private String brandImage;

	public Brand(String brandName, String brandImage) {
		this.brandName = brandName;
		this.brandImage = brandImage;
	}

	public String getBrandName() {
		return brandName;
	}

	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}

	public String getBrandImage() {
		return brandImage;
	}

	public void setBrandImage(String brandImage) {
		this.brandImage = brandImage;
	}
}
