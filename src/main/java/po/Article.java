package po;

import lombok.Data;

/**
 * @author 14158
 */
@Data
public class Article {



    private Integer id;
    /**
     * 标题
     */
    private String title;
    /**
     * 简介
     */
    private String summary;
    /**
     * 评论次数
     */
    private Integer commentCounts;
    /**
     * 浏览次数
     */
    private Integer viewCounts;

    /**
     * 作者id
     */
    private Integer authorId;
    /**
     * 内容id
     */
    private Integer bodyId;
    /**
     *类别id
     */
    private Integer categoryId;


    private Integer collection;
    /**
     * 创建时间
     */
    private Long createDate;

}
