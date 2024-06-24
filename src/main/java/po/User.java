package po;

import lombok.Data;

/**
 * @author SaltedFish
 */
@Data
public class User {
    private Integer id;
    private String account;
    private String password;
    private String salt;
    public User(String account, String password) {
        this.account = account;
        this.password = password;
    }

    public User() {
    }
}
