/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package demoshop.dals;

import demoshop.models.Product;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Lrandom
 */
public class ProductDAL extends DBConnection{
    public static final String TABLE_NAME = "products";
    public ProductDAL() {
        super();
    }
    
    public ArrayList<Product> getList(){
        ArrayList<Product> products = new ArrayList<>();
        try {
              Statement stm = this.connection.createStatement();
              String sql = "SELECT * FROM "+TABLE_NAME;
              ResultSet rs = stm.executeQuery(sql);
              while(rs.next()){
                  Product product = new Product();
                  product.setId(rs.getLong("id"));
                  product.setName(rs.getString("name"));
                  product.setPrice(rs.getFloat("price"));
                  product.setContent(rs.getString("content"));
                  products.add(product);
              }

              return products;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        
    }
    
}
