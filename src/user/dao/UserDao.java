package user.dao;

import good.vo.Good;
import init.vo.User;
import user.vo.UserOrderGoods;
import utility.DataSourceConnection;

import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.List;

public class UserDao {
    Connection conn = null;
    PreparedStatement stat = null;
    ResultSet set = null;

    /**
     * 获得到所有的评论
     *
     * @return
     */
    public Map<User, List<String>> getAllComment() {
        Map<User, List<String>> map = new HashMap<>();
        this.conn = DataSourceConnection.getConn();
        String sql = " SELECT * FROM usercomment";
        try {
            this.stat = this.conn.prepareStatement(sql);
            this.set = this.stat.executeQuery();
            while (this.set.next()) {
                String user = this.set.getString(2);
                String userImage = this.set.getString(3);
                String userComment = this.set.getString(4);

                if (map.size() == 0) {
                    List<String> list = new ArrayList<>();
                    list.add(userComment);
                    map.put(new User(user, userImage), list);
                }


                Set<Map.Entry<User, List<String>>> set = map.entrySet();
                Iterator<Map.Entry<User, List<String>>> it = set.iterator();
                while (it.hasNext()) {
                    Map.Entry<User, List<String>> lmap = it.next();
                    if (lmap.getKey().getUserName().equals(user)) {
                        lmap.getValue().add(userComment);
                    } else {
                        List<String> list = new ArrayList<>();
                        list.add(userComment);
                        map.put(new User(user, userImage), list);
                    }
                }
            }
            this.conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return map;
    }

    /**
     * 查询当前用户对应的购物车
     *
     * @param userName
     * @return
     */
    public List<UserOrderGoods> queryAllOrders(String userName) {
        List<UserOrderGoods> list = new ArrayList<>();
        this.conn = DataSourceConnection.getConn();
        String sql = "select g.goods_id,g.goods_name,g.goods_price,g.goods_image,o.* from goods as g,`order` as o where g.goods_id=o.goods_id and o.order_persion=? and o.order_status='未支付'";
        try {
            this.stat = this.conn.prepareStatement(sql);
            this.stat.setString(1, userName);
            this.set = this.stat.executeQuery();
            while (this.set.next()) {
                Good good = new Good(this.set.getInt(1),
                        this.set.getString(2),
                        this.set.getDouble(3),
                        this.set.getString(4));

                UserOrderGoods userOrderGoods = new UserOrderGoods(
                        this.set.getInt(5),
                        this.set.getString(6),
                        this.set.getString(7),
                        good,
                        this.set.getInt(11),
                        this.set.getDouble(12),
                        this.set.getString(13),
                        this.set.getString(14)
                );
                list.add(userOrderGoods);

            }
            this.conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    /**
     * 查询所有订单
     *
     * @param userName
     * @return
     */
    public List<UserOrderGoods> queryOrders(String userName) {
        List<UserOrderGoods> list = new ArrayList<>();
        this.conn = DataSourceConnection.getConn();
        String sql = "select g.goods_id,g.goods_name,g.goods_price,g.goods_image,o.* from goods as g,`order` as o where g.goods_id=o.goods_id and o" +
                ".order_persion=?";
        try {
            this.stat = this.conn.prepareStatement(sql);
            this.stat.setString(1, userName);
            this.set = this.stat.executeQuery();
            while (this.set.next()) {
                Good good = new Good(this.set.getInt(1),
                        this.set.getString(2),
                        this.set.getDouble(3),
                        this.set.getString(4));

                UserOrderGoods userOrderGoods = new UserOrderGoods(
                        this.set.getInt(5),
                        this.set.getString(6),
                        this.set.getString(7),
                        good,
                        this.set.getInt(11),
                        this.set.getDouble(12),
                        this.set.getString(13),
                        this.set.getString(14),
                        this.set.getDate(15)
                );
                list.add(userOrderGoods);

            }
            this.conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    /**
     * 用户自己信息更新
     *
     * @param userName
     * @param email
     * @param passwd
     */
    public void updataInfomation(String userName, String email, String passwd) {
        this.conn = DataSourceConnection.getConn();
        String sql = "UPDATE user SET userName=?, email=?, userPass=? WHERE userName=?";
        try {
            this.stat = this.conn.prepareStatement(sql);
            this.stat.setString(1, userName);
            this.stat.setString(2, email);
            this.stat.setString(3, passwd);
            this.stat.setString(4, userName);
            this.stat.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public void addCart(Good good, user.vo.User user) {
        this.conn = DataSourceConnection.getConn();
        String sql = "INSERT INTO `Shop`.`order` (`id`,`order_id`, `order_persion`, `goods_id`, `goods_name`, `goods_price`, `order_num`, `order_sum`, " +
                "`order_status`, `createTime`) VALUES (null ,?,?,?,?,?, 1, ?, '未支付',? )";
        try {
            this.stat = this.conn.prepareStatement(sql);

            // 生成随机订单号码
            Random random = new Random();
            String string = "0123456789abcdefghijklmnopqrstuvwxyz";
            StringBuffer stringBuffer = new StringBuffer();
            //选取随机字符
            for (int i = 0; i < 8; i++) {
                if (i == 4) {
                    stringBuffer.append("-");
                    continue;
                }
                char ch = string.charAt(random.nextInt(string.length()));
                String str = String.valueOf(ch);
                stringBuffer.append(str);
            }
            this.stat.setString(1, stringBuffer.toString());
            this.stat.setString(2, user.getUserName());
            this.stat.setInt(3, good.getGoodsId());
            this.stat.setString(4, good.getGoodsName());
            this.stat.setDouble(5, good.getGoodsPrice());
            this.stat.setDouble(6, good.getGoodsPrice());
            java.util.Date dateNow = new java.util.Date();
            Date date = new Date(dateNow.getTime());
            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
            format.format(date);
            this.stat.setDate(7, date);
            this.stat.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * 清空当前用户的购物车
     */
    public List<UserOrderGoods> clearCheckout(HttpServletRequest request, String billing_address_1) {
        List<UserOrderGoods> orderList = (List<UserOrderGoods>) request.getSession().getAttribute("orderList");
        List<UserOrderGoods> storeNeedInput = new ArrayList<>();
        this.conn = DataSourceConnection.getConn();
        for (UserOrderGoods orderGoods : orderList) {
            // 查询库存
            int num = 0;
            String sql = "select goods_number from goods where goods_id=?";
            try {
                this.stat = this.conn.prepareStatement(sql);
                this.stat.setInt(1, orderGoods.getGood().getGoodsId());
                this.set = this.stat.executeQuery();
                if (this.set.next()) {
                    num = this.set.getInt(1);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }

            if (num >= orderGoods.getOrderNum()) {
                // 数据库清空
                sql = "update `Shop`.`order` set order_status=?, order_address=? where id=?";
                try {
                    this.stat = this.conn.prepareStatement(sql);
                    this.stat.setString(1, "已支付");
                    this.stat.setString(2, billing_address_1);
                    this.stat.setInt(3, orderGoods.getId());
                    this.stat.executeUpdate();
                } catch (SQLException e) {
                    e.printStackTrace();
                }

                // 更新库存
                sql = "update `Shop`.`goods` set goods_number=? where goods_id=?";
                try {
                    this.stat = this.conn.prepareStatement(sql);
                    this.stat.setInt(1, num - orderGoods.getOrderNum());
                    this.stat.setInt(2, orderGoods.getGood().getGoodsId());
                    this.stat.executeUpdate();
                } catch (SQLException e) {
                    e.printStackTrace();
                }

                request.getSession().removeAttribute("orderList");
            } else {
                storeNeedInput.add(orderGoods);
            }
        }


        try {
            this.conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return storeNeedInput;
    }

    /**
     * 添加用户到数据库
     */
    public void addUser(user.vo.User user) {
        this.conn = DataSourceConnection.getConn();
        String sql = "insert into `Shop`.`user` (`id`,`userName`,`userPass`,`email`,`phone`) values(null,?,?,?,?);";
        try {
            this.stat = this.conn.prepareStatement(sql);
            this.stat.setString(1, user.getUserName());
            this.stat.setString(2, user.getUserPass());
            this.stat.setString(3, user.getEmail());
            this.stat.setString(4, user.getPhone());
            this.stat.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public boolean userIfExist(String userName) {
        boolean result = false;
        this.conn = DataSourceConnection.getConn();
        String sql = "select userName from `Shop`.`user` where userName=?";
        try {
            this.stat = this.conn.prepareStatement(sql);
            this.stat.setString(1, userName);
            this.set = this.stat.executeQuery();
            if (this.set.next()) {
                result = false;
            } else {
                result = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return result;
    }


    /**
     * 用户购物车更新数据
     *
     * @param id
     * @param newNum
     * @param newSum
     */
    public void updateOrder(int id, int newNum, double newSum) {
        String sql = "update `Shop`.`order` set order_num=?,order_sum=? where id=?";
        this.conn = DataSourceConnection.getConn();
        try {
            this.stat = this.conn.prepareStatement(sql);
            this.stat.setInt(1, newNum);
            this.stat.setDouble(2, newSum);
            this.stat.setInt(3, id);
            this.stat.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public List<Integer> getUserRecommendGoodsID(int userId) {
        List<Integer> list = new ArrayList<>();
        try {
            BufferedReader reader = new BufferedReader(new FileReader(new File("/root/data/recommendMR/Step5Output/part-r-00000")));
            String line = null;
            while ((line = reader.readLine()) != null) {
                String[] userAndItems = line.split("\t");
                if (userAndItems[0].equals(String.valueOf(0))) {
                    break;
                }

                if (userAndItems[0].equals(String.valueOf(userId))) {
                    String[] items = userAndItems[1].split(",");
                    for (int i = 0; i < items.length; i++) {
                        list.add(Integer.valueOf(items[i].split(":")[0]));

                    }
                    break;
                }
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return list;
    }


    public List<Good> getRecommendGoods(int userId) {
        List<Integer> itemIDs = getUserRecommendGoodsID(userId);

        this.conn = DataSourceConnection.getConn();

        List<Good> list = new ArrayList<>();
        for (Integer itemId : itemIDs) {
            String sql = "select * from goods where goods_id=?";
            try {
                this.stat = this.conn.prepareStatement(sql);
                this.stat.setInt(1, itemId.intValue());
                System.out.println(itemId.intValue());
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
        try {
            this.conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }
}
