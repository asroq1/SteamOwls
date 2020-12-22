package shop.steamowls.steam.admin.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import shop.steamowls.steam.admin.admin.vo.AdminVo;

import static shop.steamowls.common.JdbcUtil.close;

public class AdminDao {
	private Connection con;

	public AdminDao() {

	}

	private static class LazyHolder {
		private static final AdminDao INSTANCE = new AdminDao();
	}

	public static AdminDao getInstance() {
		return LazyHolder.INSTANCE;
	}

	public void setConnection(Connection con) {
		this.con = con;
	}

	
	public AdminVo adminLogIn(AdminVo adminVo) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		AdminVo vo = null;

		try {
			pstmt = con.prepareStatement("select sq, id, pw from owls_mber_tb where id = ? and del_fl = 0 and admin_fl = 1");
			pstmt.setString(1, adminVo.getId());

			rs = pstmt.executeQuery();
			while (rs.next()) {
				vo = new AdminVo();
				vo.setSq(rs.getInt("sq"));
				vo.setId(rs.getString("id"));
				vo.setPw(rs.getString("pw"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		return vo;
	}

	

}