package work;


import java.text.DateFormat;
import java.text.FieldPosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

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

    public static boolean isValidString(String str, int length) {
        return isValidString(str, 1, length);
    }

    public static boolean isValidStaticString(String str, int length) {
        return isValidString(str, length, length);
    }

    public static void print(Object obj) {
        System.out.println(obj);
    }

    public static void print() {
        System.out.println();
    }

    /*
    1.	암호 등의 보안문자정보 출력시 2자리만 보여주고
	남은 문자는 *(기호)로 대체 출력위한 메서드

	메서드명 : convertSecureString
	아규먼트 : String
	반환타입 : String

	참고 : String, StringBuffer, StringBuilder
     */

    public static String convertSecureString(String data) {

        if (isNull(data) || data.isEmpty()) {
            return data;
        }

        StringBuilder resultStringBuilder = new StringBuilder(data.substring(0, data.length() > 2 ? 2 : data.length()));
        for (int i = 0; i < data.length() - 2; i++) {
            resultStringBuilder.append("*");
        }


        return resultStringBuilder.toString();
    }

    /*
    2. 암호 분실시 임시암호 등 임의의 보안문자열 반환 메서드
	-- 임시 보안문자열 길이는 기본은 4자리
	-- 아규먼트로 길이 입력한 길이만큼
	-- 메서드 중복 정의

	메서드명 : getSecureString
	아규먼트 : int
	반환타입 : String

	참고 :
	String, StringBuffer, StringBuilder,
	Math#random(), java.util.Random, java.lang.System.currentTimeMillis()
     */

    public static String getSecureString(int lengthOfNum) {
        if (lengthOfNum < 4) {
            lengthOfNum = 4;
        }

        StringBuilder resultStringBuilder = new StringBuilder();
        Random random = new Random();
        for (int i = 0; i < lengthOfNum; i++) {
            resultStringBuilder.append(random.nextInt(10));
        }

        return resultStringBuilder.toString();
    }

    /*
     3. 현재 날짜를 기본형식의 문자열로 반환하는 메서드
	-- 기본형식 : 년도4자리/월2자리/일2자리
	-- 날짜의 형식을 아규먼트로 전달받아 해당형식의 문자열 반환
	-- 중복정의

    메서드명 : getCurrentDay
	아규먼트 : String
	반환타입 : String

	참고 :
	String, StringBuffer, StringBuilder,
	java.util.Date, java.text.SimpleDateFormat
     */

    public static String getCurrentDay(String dateFormatString) {
        if (dateFormatString == null) {
            dateFormatString = "yyyy/MM/dd";
        }

        StringBuffer resultStringBuffer = new StringBuffer();

        SimpleDateFormat dateFormat = new SimpleDateFormat(dateFormatString);
        dateFormat.format(new Date(), resultStringBuffer, new FieldPosition(DateFormat.DEFAULT));


        return resultStringBuffer.toString();
    }


}
