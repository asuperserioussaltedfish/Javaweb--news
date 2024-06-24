package dao.impl;

import config.JdbcConfig;
import dao.ArticleDao;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import po.Article;

import java.sql.ResultSet;
import java.util.List;

/**
 * @author SaltedFish
 */
public class ArticleDaoImpl implements ArticleDao {
    private final JdbcTemplate jdbcTemplate = JdbcConfig.jdbcTemplate();

    @Override
    public List<Article> searchArticles(String keyword) {
        String sql = "SELECT * FROM article WHERE title LIKE ? OR summary LIKE ?";
        try {
            return jdbcTemplate.query(sql, new Object[]{"%" + keyword + "%", "%" + keyword + "%"}, (ResultSet rs, int rowNum) -> {
                Article article = new Article();
                article.setId(rs.getInt("id"));
                article.setTitle(rs.getString("title"));
                article.setSummary(rs.getString("summary"));
                article.setCommentCounts(rs.getInt("comment_counts"));
                article.setViewCounts(rs.getInt("view_counts"));
                article.setAuthorId(rs.getInt("author_id"));
                article.setBodyId(rs.getInt("body_id"));
                article.setCategoryId(rs.getInt("category_id"));
                article.setCollection(rs.getInt("collection"));
                article.setCreateDate(rs.getLong("create_date"));
                return article;
            });
        } catch (DataAccessException e) {
            throw new RuntimeException("Error searching articles: " + e.getMessage(), e);
        }
    }

    @Override
    public List<Article> getArticles() {
        String sql = "SELECT * FROM article";
        try {
            return jdbcTemplate.query(sql, (ResultSet rs, int rowNum) -> {
                Article article = new Article();
                article.setId(rs.getInt("id"));
                article.setTitle(rs.getString("title"));
                article.setSummary(rs.getString("summary"));
                article.setCommentCounts(rs.getInt("comment_counts"));
                article.setViewCounts(rs.getInt("view_counts"));
                article.setAuthorId(rs.getInt("author_id"));
                article.setBodyId(rs.getInt("body_id"));
                article.setCategoryId(rs.getInt("category_id"));
                article.setCollection(rs.getInt("collection"));
                article.setCreateDate(rs.getLong("create_date"));
                return article;
            });
        } catch (DataAccessException e) {
            throw new RuntimeException("Error getting articles: " + e.getMessage(), e);
        }
    }
    @Override
    public List<Article> getArticlesByCategoryId(int categoryId) {
        String sql = "SELECT * FROM article WHERE category_id = ?";
        try {
            return jdbcTemplate.query(sql, new Object[]{categoryId}, (ResultSet rs, int rowNum) -> {
                Article article = new Article();
                article.setId(rs.getInt("id"));
                article.setTitle(rs.getString("title"));
                article.setSummary(rs.getString("summary"));
                article.setCommentCounts(rs.getInt("comment_counts"));
                article.setViewCounts(rs.getInt("view_counts"));
                article.setAuthorId(rs.getInt("author_id"));
                article.setBodyId(rs.getInt("body_id"));
                article.setCategoryId(rs.getInt("category_id"));
                article.setCollection(rs.getInt("collection"));
                article.setCreateDate(rs.getLong("create_date"));
                return article;
            });
        } catch (DataAccessException e) {
            throw new RuntimeException("Error getting articles by category id: " + e.getMessage(), e);
        }
    }
}
