package good.servlet;

import admin.vo.Page;
import good.dao.GoodDao;
import good.vo.Good;
import pro.vo.Pro;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class GoodServlet {
    public List<Good> queryOntTypeGoods(String type) {
        return new GoodDao().queryOntTypeGoods(type);
    }

    public Good queryoneGood(String goodName) {
        return new GoodDao().queryoneGood(goodName);
    }

    public String queryTypeFormGoods(Good good) {
        return new GoodDao().queryTypeFormGoods(good);
    }

    public Good queryoneGoodByTitle(String queryinfo, String search_category) {
        List<Good> list = new GoodDao().queryoneGoodByTitle(queryinfo, search_category);

        Good good = null;
        if (list.size() == 0) {
            return null;
        } else {
            Random random = new Random();
            int randGoodIndex = random.nextInt(list.size());
            return list.get(randGoodIndex);
        }
    }

    public List<Pro> queryAllPro() {
        return new GoodDao().queryAllPro();
    }

    public void queryAllGoods(Page<Good> page, String typeCat) {
        GoodDao goodDao = new GoodDao();
        if (page.getPageNum() == 0) {
            int totalSize = goodDao.queryGoodsTableTotalSize();
            page.setTotalSize(totalSize);
        }
        goodDao.queryAllGoodsInit(page, typeCat);
    }

    public String queryGoodsByCat(String shopId) {
        List<Good> list = new GoodDao().queryGoodsByCat(shopId);
        StringBuffer line = new StringBuffer();
        for (int i = 0; i < list.size(); i++) {
            if (i==list.size()-1){
                line.append(list.get(i).getGoodsId() + "#"+
                        list.get(i).getGoodsName()+"#"+
                        list.get(i).getGoodsWeight()+"#"+
                        list.get(i).getGoodsPrice()+"#"+
                        list.get(i).getGoodsNumber()+"#"+
                        list.get(i).getProdId()+"#"+
                        list.get(i).getGoodsIntroduce()+"#"+
                        list.get(i).getGoodsImage()+"#"+
                        list.get(i).getCreateTime());
            } else {
                line.append(list.get(i).getGoodsId() + "#"+
                        list.get(i).getGoodsName()+"#"+
                        list.get(i).getGoodsWeight()+"#"+
                        list.get(i).getGoodsPrice()+"#"+
                        list.get(i).getGoodsNumber()+"#"+
                        list.get(i).getProdId()+"#"+
                        list.get(i).getGoodsIntroduce()+"#"+
                        list.get(i).getGoodsImage()+"#"+
                        list.get(i).getCreateTime()+"》");
            }
        }


        return line.toString();
    }
}
