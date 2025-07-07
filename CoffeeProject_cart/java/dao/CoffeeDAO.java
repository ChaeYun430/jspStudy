package dao;

import dto.CoffeeDTO;

import java.sql.*;
import java.util.*;

public class CoffeeDAO extends DBconn{


	private static CoffeeDAO instance;
    public static CoffeeDAO getInstance() throws ClassNotFoundException, SQLException {
    	instance = new CoffeeDAO();
    	return instance; }
    private CoffeeDAO() throws ClassNotFoundException, SQLException {
	}

    public List<CoffeeDTO> getAllCoffees() {
        List<CoffeeDTO> list = new ArrayList<>();
        String sql = "SELECT * FROM COFFEE";
        try (
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
            while (rs.next()) {
                CoffeeDTO coffee = new CoffeeDTO();
                coffee.setId(rs.getString("ID"));
                coffee.setName(rs.getString("NAME"));
                coffee.setOrigin(rs.getString("ORIGIN"));
                coffee.setUnitPrice(rs.getInt("UNITPRICE"));
                coffee.setDescription(rs.getString("DESCRIPTION"));
                coffee.setFileName(rs.getString("FILENAME"));
                list.add(coffee);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public CoffeeDTO getCoffee(String id) {
        CoffeeDTO coffee = null;
        String sql = "SELECT * FROM COFFEE WHERE ID=?";
        try (
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, id);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    coffee = new CoffeeDTO();
                    coffee.setId(rs.getString("ID"));
                    coffee.setName(rs.getString("NAME"));
                    coffee.setOrigin(rs.getString("ORIGIN"));
                    coffee.setUnitPrice(rs.getInt("UNITPRICE"));
                    coffee.setDescription(rs.getString("DESCRIPTION"));
                    coffee.setFileName(rs.getString("FILENAME"));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return coffee;
    }

}
