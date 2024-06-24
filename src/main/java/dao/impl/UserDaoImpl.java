package dao.impl;

import config.JdbcConfig;
import dao.UserDao;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.crypto.bcrypt.BCrypt;
import po.User;

import java.sql.ResultSet;


/**
 * @author SaltedFish
 */
public class UserDaoImpl implements UserDao {
    private final JdbcTemplate jdbcTemplate = JdbcConfig.jdbcTemplate();

    @Override
    public boolean hasMatchUser(String account, String password) {
        String sql = "SELECT salt, password FROM user WHERE account=?";
        try {
            return Boolean.TRUE.equals(jdbcTemplate.queryForObject(sql, new Object[]{account}, (ResultSet rs, int rowNum) -> {
                String salt = rs.getString("salt");
                String storedHashedPassword = rs.getString("password");
                return BCrypt.checkpw(salt + password, storedHashedPassword);
            }));
        } catch (EmptyResultDataAccessException e) {
            return false;
        } catch (DataAccessException e) {
            throw new RuntimeException("find error:" + e.getMessage(), e);
        }
    }
    @Override
    public boolean findUserByAccount(String account) {
        String sql = "SELECT COUNT(*) FROM user WHERE account = ?";
        try {
            Integer count = jdbcTemplate.queryForObject(sql, new Object[]{account}, Integer.class);
            return count != null && count > 0;
        } catch (EmptyResultDataAccessException e) {
            return false;
        } catch (DataAccessException e) {
            throw new RuntimeException("find error:" + e.getMessage(), e);
        }
    }

    @Override
    public User registerUser(String account, String password) {
        // 查询是否已有相同的账户
        String checkSql = "SELECT COUNT(*) FROM user WHERE account = ?";
        Integer count = jdbcTemplate.queryForObject(checkSql, new Object[]{account}, Integer.class);
        if (count != null && count > 0) {
            // 账户已存在，注册失败
            return null;
        }

        // 生成随机盐
        String salt = BCrypt.gensalt();
        // 加盐并加密密码
        String hashedPassword = BCrypt.hashpw(salt + password, salt);

        // 插入新用户
        String insertSql = "INSERT INTO user (account, salt, password) VALUES (?, ?, ?)";
        int updateRowCount = jdbcTemplate.update(insertSql, account, salt, hashedPassword);

        if (updateRowCount > 0) {
            // 保存成功
            return new User(account, hashedPassword);
        } else {
            // 保存失败
            return null;
        }
    }
    public User getUserByAccount(String account) {
        String sql = "SELECT * FROM user WHERE account = ?";
        try {
            return jdbcTemplate.queryForObject(sql, new Object[]{account}, (ResultSet rs, int rowNum) -> {
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setAccount(rs.getString("account"));
                user.setPassword(rs.getString("password"));
                user.setSalt(rs.getString("salt"));
                return user;
            });
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }
}
