package po;

import lombok.Data;

/**
 * @author 14158
 */
@Data
public class ArticleBody {

    private Integer id;
    private String content;
    private String contentHtml;
    private Integer articleId;
}