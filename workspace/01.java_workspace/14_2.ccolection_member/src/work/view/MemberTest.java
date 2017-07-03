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
 * ��� �׽�Ʈ Ŭ����
 *
 * @author �⤿��;�ä�����
 * @version 1.0.0
 * @since JDK 1.8.0
 */
public class MemberTest {

    /**
     * ���� �޼ҵ�
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
//        System.out.println("<< 삭제 >>");
//        if (ms.deleteMember("user00001", "newPassowrd001")) {
//            System.out.println("user00001>> 삭제");
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

        Util.print("1. 암호 등의 보안문자정보 출력시 2자리만 보여주고\n" +
                "\t남은 문자는 *(기호)로 대체 출력위한 메서드");
        Util.print(Util.convertSecureString(null));
        Util.print(Util.convertSecureString(""));
        Util.print(Util.convertSecureString("1"));
        Util.print(Util.convertSecureString("12"));
        Util.print(Util.convertSecureString("123"));
        Util.print(Util.convertSecureString("1234"));
        Util.print(Util.convertSecureString("12345"));
        Util.print();

        Util.print("2. 암호 분실시 임시암호 등 임의의 보안문자열 반환 메서드");
        Util.print(Util.getSecureString(4));
        Util.print();

        Util.print("3. 현재 날짜를 기본형식의 문자열로 반환하는 메서드");
        Util.print(Util.getCurrentDay(null));
        Util.print();


    }


    //

}