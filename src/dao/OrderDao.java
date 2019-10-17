package dao;

import entity.Detail;
import utils.DBHelper;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class OrderDao {
    public OrderDao(){}

    public List<Detail> Search(String number) {
        try {
            String ma = number;
            String sql = null;

            sql = "select * from book_detail where book_number = \'"+ma+"\'";
            Connection connection = DBHelper.getInstance().getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            ResultSetMetaData rsmd = resultSet.getMetaData();
            List<Detail> list = new ArrayList<>();

            while (resultSet.next()) {

                 Detail detail=new Detail();
                detail.setBookNumber(resultSet.getString(1));
                detail.setCopyid(resultSet.getString(2));
                detail.setState(resultSet.getInt(3));
                list.add(detail);
            }

            return list;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

}
