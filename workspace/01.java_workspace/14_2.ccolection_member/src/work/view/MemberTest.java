package work.view;

import java.util.ArrayList;

import work.model.dto.AdminMember;
import work.model.dto.GeneralMember;
import work.model.dto.Member;
import work.model.dto.SpecialMember;
import work.model.service.MemberService_list;
import work.model.service.MemberService_map;

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
      MemberService_list ms = new MemberService_list();
        ms.addMember(new AdminMember());
        ms.addMember(new GeneralMember("user00001", "password001", "", "", ""));
        ms.addMember(new AdminMember());
        ms.addMember(new AdminMember());
        ms.addMember(new AdminMember());
        ms.addMember(new AdminMember());
        ms.addMember(new AdminMember());
        ms.addMember(new AdminMember());
        ms.addMember(new AdminMember());

//        System.out.println(ms.isFull() ? "unavailable" : "available");
//        System.out.println(ms.getCount());
//        System.out.println();

        System.out.println("=========");
        Member user01 = ms.getMember("user00001");

        if (user01 == null) {
            System.out.println("user is not existing.");
            System.out.println();
            return;
        }
        
        System.out.println();

        user01.setMemberName("name0101");
        System.out.println(user01);
        System.out.println();

        if (ms.updateMember(user01)) {
            System.out.println(ms.getMember("user00001"));
            System.out.println();
        }


        if (ms.updateMemberPw("user00001", "password001", "newPassowrd001")) {
            System.out.println(user01);
            System.out.println();
        }

        ms.printAllMembers();
        
        if (ms.updateMileage("user00001", 99999999)) {
            System.out.println(((GeneralMember) ms.getMember("user00001")).getMileage());
        }
        System.out.println();


        System.out.println("<< 삭제 >>");
        if (ms.deleteMember("user00001", "newPassowrd001")) {
            System.out.println("user00001>> 삭제");
            System.out.println();
        }

        ms.printAllMembers();
        
        ArrayList<Member> members = ms.getAllMembers();
        for(Member m:members){
            System.out.println(m);
        }
        System.out.println();



        //

    }
}