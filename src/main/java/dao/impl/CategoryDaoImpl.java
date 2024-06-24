package dao.impl;

import config.JdbcConfig;
import dao.CategoryDao;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import po.Category;

import java.sql.ResultSet;
import java.util.List;

/**
 * @author SaltedFish
 */
public class CategoryDaoImpl  implements CategoryDao {
    private final JdbcTemplate jdbcTemplate = JdbcConfig.jdbcTemplate();

    @Override
    public boolean addCategory(Category category) {
        String sql = "INSERT INTO category (avatar, category_name, description) VALUES (?, ?, ?)";
        try {
            int updateRowCount = jdbcTemplate.update(sql, category.getAvatar(), category.getCategoryName(), category.getDescription());
            return updateRowCount > 0;
        } catch (DataAccessException e) {
            throw new RuntimeException("Error adding category: " + e.getMessage(), e);
        }
    }

    @Override
    public boolean deleteCategoryById(int id) {
        String sql = "DELETE FROM category WHERE id = ?";
        try {
            int updateRowCount = jdbcTemplate.update(sql, id);
            return updateRowCount > 0;
        } catch (DataAccessException e) {
            throw new RuntimeException("Error deleting category: " + e.getMessage(), e);
        }
    }

    @Override
    public boolean updateCategory(Category category) {
        String sql = "UPDATE category SET avatar = ?, category_name = ?, description = ? WHERE id = ?";
        try {
            int updateRowCount = jdbcTemplate.update(sql, category.getAvatar(), category.getCategoryName(), category.getDescription(), category.getId());
            return updateRowCount > 0;
        } catch (DataAccessException e) {
            throw new RuntimeException("Error updating category: " + e.getMessage(), e);
        }
    }

    @Override
    public Category getCategoryById(int id) {
        String sql = "SELECT * FROM category WHERE id = ?";
        try {
            return jdbcTemplate.queryForObject(sql, new Object[]{id}, (ResultSet rs, int rowNum) -> {
                Category category = new Category();
                category.setId(rs.getInt("id"));
                category.setAvatar(rs.getString("avatar"));
                category.setCategoryName(rs.getString("category_name"));
                category.setDescription(rs.getString("description"));
                return category;
            });
        } catch (EmptyResultDataAccessException e) {
            return null;
        } catch (DataAccessException e) {
            throw new RuntimeException("Error getting category by id: " + e.getMessage(), e);
        }
    }

    @Override
    public List<Category> getAllCategories() {
        String sql = "SELECT * FROM category";
        try {
            return jdbcTemplate.query(sql, (ResultSet rs, int rowNum) -> {
                Category category = new Category();
                category.setId(rs.getInt("id"));
                category.setAvatar(rs.getString("avatar"));
                category.setCategoryName(rs.getString("category_name"));
                category.setDescription(rs.getString("description"));
                return category;
            });
        } catch (DataAccessException e) {
            throw new RuntimeException("Error getting all categories: " + e.getMessage(), e);
        }
    }
}
