package dao;

import po.Category;
import po.User;

import java.util.List;

/**
 * @author SaltedFish
 */
public interface CategoryDao {
    boolean addCategory(Category category);
    boolean deleteCategoryById(int id);
    boolean updateCategory(Category category);
    Category getCategoryById(int id);
    List<Category> getAllCategories();
}
