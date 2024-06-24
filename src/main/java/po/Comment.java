package po;

import lombok.Data;

/**
 * @author 14158
 */
@Data
public class Comment {

    private Integer id;

    private String content;

    private Long createDate;

    private Integer articleId;

    private Integer authorId;

    private Integer parentId;

    private Integer toUid;

    private Integer level;
}
