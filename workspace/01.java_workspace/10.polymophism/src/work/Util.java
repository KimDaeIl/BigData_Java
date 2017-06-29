package work;

/**
 * Created by KimDaeil on 2017. 6. 29..
 */
public class Util {

    public static boolean isNull(Object obj) {
        return obj == null;
    }

    public static boolean isValidString(String str, int minLen, int maxLen) {

        if (!isNull(str)) {
            if (minLen <= str.length() && str.length() <= maxLen) {
                return true;
            }
        }
        return false;
    }

    public static boolean isValidString(String str, int length){
        return isValidString(str, 1, length);
    }

    public static boolean isValidStaticString(String str, int length) {
        return isValidString(str, length, length);
    }



}
