package dao;

import po.Article;

import java.util.List;

/**
 * @author SaltedFish
 */
public interface ArticleDao {
    // 搜索文章
    List<Article> searchArticles(String keyword);
    // 获取文章列表
    List<Article> getArticles();
    List<Article> getArticlesByCategoryId(int categoryId);
}
