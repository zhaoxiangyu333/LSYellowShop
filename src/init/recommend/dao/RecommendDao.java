package init.recommend.dao;

import init.recommend.vo.Recommend;
import utility.DataSourceConnection;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * ssssss
 */
public class RecommendDao {
    Connection conn = null;
    PreparedStatement stat = null;
    ResultSet set = null;

    public void updataRecommend() {
        List<Recommend> list = new ArrayList<>();
        String sql = "select u.id,o.goods_id ,o.order_status from `Shop`.`order` as o,`Shop`.`user` as u where o.order_persion=u.userName;";
        String sql2 = "insert into `Shop`.`recommend` values(?,?,?)";
        String sql3 = "delete from `Shop`.`recommend`";

        this.conn = DataSourceConnection.getConn();
        try {
            this.stat = this.conn.prepareStatement(sql);
            this.set = this.stat.executeQuery();
            while (this.set.next()) {
                String status = this.set.getString(3);
                if (status.equals("未支付")) {
                    status = "cart";
                } else if (status.equals("已支付")) {
                    status = "buy";
                }

                Recommend recommend = new Recommend(
                        this.set.getInt(1),
                        this.set.getInt(2),
                        status
                );
                list.add(recommend);
            }


            this.stat = this.conn.prepareStatement(sql3);
            this.stat.execute();

            this.stat = this.conn.prepareStatement(sql2);
            for (Recommend recommend : list) {
                this.stat.setInt(1, recommend.getGoodsId());
                this.stat.setInt(2, recommend.getUserId());
                this.stat.setString(3, recommend.getAction());
                this.stat.execute();
            }
            this.conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void initRecommendFromMysql() {
        updataRecommend();
        String sql = "select * from recommend";
        this.conn = DataSourceConnection.getConn();
        try {
            this.stat = this.conn.prepareStatement(sql);
            this.set = this.stat.executeQuery();

            // FIXME:设置文件写入流
            File file = new File("/root/data/recommendIn.txt");
            if (file.exists()) {
                file.delete();
            }
            BufferedWriter writer = new BufferedWriter(new FileWriter(file, true));

            while (this.set.next()) {
                Recommend recommend = new Recommend(
                        this.set.getInt(1),
                        this.set.getInt(2),
                        this.set.getString(3)
                );

                writer.write(recommend.toString());
                writer.newLine();
                writer.flush();
            }
            writer.close();
            this.conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
