package work.view;

import java.util.ArrayList;
import java.util.Date;
import java.util.Random;

import work.Util;
import work.model.dto.AdminMember;
import work.model.dto.GeneralMember;
import work.model.dto.Member;
import work.model.dto.SpecialMember;
import work.model.service.MemberService_list;
import work.model.service.MemberService_map;

import static work.Util.isNull;

/**
 * 占쏙옙占?占쌓쏙옙트 클占쏙옙占쏙옙
 *
 * @author 占썩ㅏ占쏙옙;占시ㅿ옙占쏙옙占쏙옙
 * @version 1.0.0
 * @since JDK 1.8.0
 */
public class MemberTest {

    /**
     * 占쏙옙占쏙옙 占쌨소듸옙
     *
     * @param args
     */
    public static void main(String[] args) {
//      MemberService_list ms = new MemberService_list();
//        MemberService_list ms = new MemberService_list();
//        ms.addMember(new AdminMember());
//        ms.addMember(new GeneralMember("user00001", "password001", "", "", ""));
//        ms.addMember(new AdminMember());
//        ms.addMember(new AdminMember());
//        ms.addMember(new AdminMember());
//        ms.addMember(new AdminMember());
//        ms.addMember(new AdminMember());
//        ms.addMember(new AdminMember());
//        ms.addMember(new AdminMember());
//
////        System.out.println(ms.isFull() ? "unavailable" : "available");
////        System.out.println(ms.getCount());
////        System.out.println();
//
//        System.out.println("=========");
//        Member user01 = ms.getMember("user00001");
//
//        if (user01 == null) {
//            System.out.println("user is not existing.");
//            System.out.println();
//            return;
//        }
//
//        System.out.println();
//
//        user01.setMemberName("name0101");
//        System.out.println(user01);
//        System.out.println();
//
//        if (ms.updateMember(user01)) {
//            System.out.println(ms.getMember("user00001"));
//            System.out.println();
//        }
//
//
//        if (ms.updateMemberPw("user00001", "password001", "newPassowrd001")) {
//            System.out.println(user01);
//            System.out.println();
//        }
//
//        ms.printAllMembers();
//
//        if (ms.updateMileage("user00001", 99999999)) {
//            System.out.println(((GeneralMember) ms.getMember("user00001")).getMileage());
//        }
//        System.out.println();
//
//
//        System.out.println("<< ??젣 >>");
//        if (ms.deleteMember("user00001", "newPassowrd001")) {
//            System.out.println("user00001>> ??젣");
//            System.out.println();
//        }
//
//        ms.printAllMembers();
//
//        ArrayList<Member> members = ms.getAllMembers();
//        for (Member m : members) {
//            System.out.println(m);
//        }
//        System.out.println();

        Util.print("1. ?뷀샇 ?깆쓽 蹂댁븞臾몄옄?뺣낫 異쒕젰??2?먮━留?蹂댁뿬二쇨퀬\n" +
                "\t?⑥? 臾몄옄??*(湲고샇)濡??泥?異쒕젰?꾪븳 硫붿꽌??);
        Util.print(Util.convertSecureString(null));
        Util.print(Util.convertSecureString(""));
        Util.print(Util.convertSecureString("1"));
        Util.print(Util.convertSecureString("12"));
        Util.print(Util.convertSecureString("123"));
        Util.print(Util.convertSecureString("1234"));
        Util.print(Util.convertSecureString("12345"));
        Util.print();

        Util.print("2. ?뷀샇 遺꾩떎???꾩떆?뷀샇 ???꾩쓽??蹂댁븞臾몄옄??諛섑솚 硫붿꽌??);
        Util.print(Util.getSecureString(4));
        Util.print();

        Util.print("3. ?꾩옱 ?좎쭨瑜?湲곕낯?뺤떇??臾몄옄?대줈 諛섑솚?섎뒗 硫붿꽌??);
        Util.print(Util.getCurrentDay(null));
        Util.print();




    }


    //

}
