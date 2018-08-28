package good.dao;

import admin.vo.Page;
import good.vo.Good;
import pro.vo.Pro;
import utility.DataSourceConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GoodDao {
    Connection conn = null;
    PreparedStatement stat = null;
    ResultSet set = null;

    /**
     * 查询所有商品
     *
     * @return
     */
    public List<Good> queryAllGoods() {
        List<Good> list = new ArrayList<>();

        this.conn = DataSourceConnection.getConn();
        String sql = "SELECT * FROM goods";
        try {
            this.stat = this.conn.prepareStatement(sql);
            this.set = this.stat.executeQuery();
            while (this.set.next()) {
                Good good = new Good(this.set.getInt(1),
                        this.set.getString(2),
                        this.set.getDouble(3),
                        this.set.getDouble(4),
                        this.set.getInt(5),
                        this.set.getString(6),
                        this.set.getString(7),
                        this.set.getString(8),
                        this.set.getDate(9)
                );
                list.add(good);
            }

            this.conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }


    /**
     * 查询不用类别的商品
     *
     * @return
     */
    public List<Good> queryOntTypeGoods(String type) {
        List<Good> list = new ArrayList<>();

        this.conn = DataSourceConnection.getConn();
        String sql = "select g.* from goods as g,prodcate as p where p.prodName=? and p.prodId=g.prod_id;";
        try {
            this.stat = this.conn.prepareStatement(sql);
            this.stat.setString(1, type);
            this.set = this.stat.executeQuery();
            while (this.set.next()) {
                Good good = new Good(this.set.getInt(1),
                        this.set.getString(2),
                        this.set.getDouble(3),
                        this.set.getDouble(4),
                        this.set.getInt(5),
                        this.set.getString(6),
                        this.set.getString(7),
                        this.set.getString(8),
                        this.set.getDate(9)
                );
                list.add(good);
            }
            this.conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }


    /**
     * 查询单个物品
     *
     * @param goodName
     * @return
     */
    public Good queryoneGood(String goodName) {
        Good good = null;
        this.conn = DataSourceConnection.getConn();
        String sql = "SELECT * FROM goods WHERE goods_name=?";
        try {
            this.stat = this.conn.prepareStatement(sql);
            this.stat.setString(1, goodName);
            this.set = this.stat.executeQuery();
            if (this.set.next()) {
                good = new Good(this.set.getInt(1),
                        this.set.getString(2),
                        this.set.getDouble(3),
                        this.set.getDouble(4),
                        this.set.getInt(5),
                        this.set.getString(6),
                        this.set.getString(7),
                        this.set.getString(8),
                        this.set.getDate(9)
                );
            }
            this.conn.close();
            return good;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 根据商品查询其所对应的商品类型
     *
     * @param good
     * @return
     */
    public String queryTypeFormGoods(Good good) {
        String type = null;
        this.conn = DataSourceConnection.getConn();
        String sql = "select p.prodName from Shop.goods as g,Shop.prodcate as p where g.goods_name=? and g.prod_id=p.prodId";
        try {
            this.stat = this.conn.prepareStatement(sql);
            this.stat.setString(1, good.getGoodsName());
            this.set = this.stat.executeQuery();
            if (this.set.next()) {
                type = this.set.getString(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return type;
    }

    /**
     * 顶部搜索栏搜索物品
     *
     * @param queryinfo
     * @param search_category
     * @return
     */
    public List<Good> queryoneGoodByTitle(String queryinfo, String search_category) {
        List<Good> list = new ArrayList<>();
        if (search_category != "") {
            String sql = "select * from goods where goods_name like '%" + queryinfo + "%' and prod_id=?";
            this.conn = DataSourceConnection.getConn();
            try {
                this.stat = this.conn.prepareStatement(sql);
                this.stat.setString(1, search_category);
                this.set = this.stat.executeQuery();
                while (this.set.next()) {
                    Good good = new Good(
                            this.set.getInt(1),
                            this.set.getString(2),
                            this.set.getDouble(3),
                            this.set.getDouble(4),
                            this.set.getInt(5),
                            this.set.getString(6),
                            this.set.getString(7),
                            this.set.getString(8),
                            this.set.getDate(9)
                    );
                    list.add(good);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } else {
            String sql = "select * from goods where goods_name like '%" + queryinfo + "%' ";
            this.conn = DataSourceConnection.getConn();
            try {
                this.stat = this.conn.prepareStatement(sql);
                this.set = this.stat.executeQuery();
                while (this.set.next()) {
                    Good good = new Good(
                            this.set.getInt(1),
                            this.set.getString(2),
                            this.set.getDouble(3),
                            this.set.getDouble(4),
                            this.set.getInt(5),
                            this.set.getString(6),
                            this.set.getString(7),
                            this.set.getString(8),
                            this.set.getDate(9)
                    );
                    list.add(good);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return list;
    }

    // 查询所有产品的类别
    public List<Pro> queryAllPro() {
        List<Pro> list = new ArrayList<>();
        String sql = "select * from prodcate ";
        this.conn = DataSourceConnection.getConn();
        try {
            this.stat = this.conn.prepareStatement(sql);
            this.set = this.stat.executeQuery();
            while (this.set.next()) {
                Pro pro = new Pro(
                        this.set.getString(1),
                        this.set.getString(2)
                );
                list.add(pro);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public void queryAllGoodsInit(Page<Good> page, String typeCat) {
        List<Good> list = new ArrayList<>();
        int beginIndex = (page.getCurrentPage() - 1) * page.getPageSize();
        this.conn = DataSourceConnection.getConn();
        if (typeCat != null) {
            String sql = "select * from goods where prod_id=? limit ?,?";
            try {
                this.stat = this.conn.prepareStatement(sql);
                this.stat.setString(1,typeCat);
                this.stat.setInt(2, beginIndex);
                this.stat.setInt(3, page.getPageSize());
                this.set = this.stat.executeQuery();
                while (this.set.next()) {
                    Good good = new Good(this.set.getInt(1),
                            this.set.getString(2),
                            this.set.getDouble(3),
                            this.set.getDouble(4),
                            this.set.getInt(5),
                            this.set.getString(6),
                            this.set.getString(7),
                            this.set.getString(8),
                            this.set.getDate(9));
                    list.add(good);
                }
                this.conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }

        } else {
            String sql = "select * from goods limit ?,?";
            try {
                this.stat = this.conn.prepareStatement(sql);
                this.stat.setInt(1, beginIndex);
                this.stat.setInt(2, page.getPageSize());
                this.set = this.stat.executeQuery();
                while (this.set.next()) {
                    Good good = new Good(this.set.getInt(1),
                            this.set.getString(2),
                            this.set.getDouble(3),
                            this.set.getDouble(4),
                            this.set.getInt(5),
                            this.set.getString(6),
                            this.set.getString(7),
                            this.set.getString(8),
                            this.set.getDate(9));
                    list.add(good);
                }
                this.conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }

        }

        page.setList(list);
    }

    public int queryGoodsTableTotalSize() {
        int num = 0;
        String sql = "select count(*) from goods";
        this.conn = DataSourceConnection.getConn();
        try {
            this.stat = this.conn.prepareStatement(sql);
            this.set = this.stat.executeQuery();
            if (this.set.next()) {
                num = this.set.getInt(1);
            }
            this.conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }


        return num;
    }


    /**
     * 根据类别查询商品
     *
     * @param shopId
     * @return
     */
    public List<Good> queryGoodsByCat(String shopId) {
        List<Good> list = new ArrayList<>();
        String sql = "select * from goods where prod_id=?";
        this.conn = DataSourceConnection.getConn();
        try {
            this.stat = this.conn.prepareStatement(sql);
            this.stat.setString(1, shopId);
            this.set = this.stat.executeQuery();
            while (this.set.next()) {
                Good good = new Good(
                        this.set.getInt(1),
                        this.set.getString(2),
                        this.set.getDouble(3),
                        this.set.getDouble(4),
                        this.set.getInt(5),
                        this.set.getString(6),
                        this.set.getString(7),
                        this.set.getString(8),
                        this.set.getDate(9)
                );
                list.add(good);
            }
            this.conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }
}
