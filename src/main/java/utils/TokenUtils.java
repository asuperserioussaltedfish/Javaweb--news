package utils;



import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTCreator;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.interfaces.DecodedJWT;

import java.util.Calendar;
import java.util.Map;

public class TokenUtils {

    private static String secret = "BigSaltedFish_1415";  // salt
    private static long expiration = 604800; // token过期时间

    /**
     * 生成token
     * @param map Map集合对象的签名信息
     * @return token
     */
    public static String generateToken(Map<String,String> map) {
        Calendar instance = Calendar.getInstance();
        instance.add(Calendar.SECOND, (int)expiration);
        JWTCreator.Builder builder = JWT.create();
        map.forEach(builder::withClaim);
        return builder.withExpiresAt(instance.getTime())
                .sign(Algorithm.HMAC256(secret));
    }

    /**
     * 验证token合法性
     * @param token 传入待验证token
     */
    public static void verifyToken(String token) {
        // 截去Bearer
        token = (token != null && token.startsWith("Bearer ")) ? token.substring(7) : token;
        if (token != null) {
            JWT.require(Algorithm.HMAC256(secret)).build().verify(token); // 使用HMAC256()进行解密
        }
    }

    /**
     * 获取token内容
     * @param token
     * @return
     */
    public static DecodedJWT DecodeToken(String token) {
        return JWT.require(Algorithm.HMAC256(secret)).build().verify(token);
    }
}
