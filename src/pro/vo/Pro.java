package pro.vo;

public class Pro {
    private String proName;
    private String proId;

    public Pro(String proName, String proId) {
        this.proName = proName;
        this.proId = proId;
    }

    public String getProName() {
        return proName;
    }

    public void setProName(String proName) {
        this.proName = proName;
    }

    public String getProId() {
        return proId;
    }

    public void setProId(String proId) {
        this.proId = proId;
    }
}
