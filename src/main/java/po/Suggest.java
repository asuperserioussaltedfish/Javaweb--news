package po;


import lombok.Data;

/**
 * @author 14158
 */
@Data

public class Suggest {
    private Integer id;

    private String suggestion;
    /**
     * 创建时间
     */
    private Long createDate;
}
