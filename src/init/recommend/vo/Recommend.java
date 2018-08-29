package init.recommend.vo;

import java.util.Date;

public class Recommend {
    private int goodsId;
    private int userId;
    private String action;

    public Recommend(int goodsId, int userId, String action) {
        this.goodsId = goodsId;
        this.userId = userId;
        this.action = action;
    }

    public int getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(int goodsId) {
        this.goodsId = goodsId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    @Override
    public String toString() {
        return goodsId + "," + userId + "," + action;
    }
}
