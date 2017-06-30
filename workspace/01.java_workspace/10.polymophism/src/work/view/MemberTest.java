package work.view;

import work.model.dto.AdminMember;
import work.model.dto.GeneralMember;
import work.model.dto.Member;
import work.model.dto.SpecialMember;
import work.model.service.MemberService;

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
        MemberService ms = new MemberService();
        ms.addMember(new AdminMember());
        ms.addMember(new GeneralMember("user00001", "password001", "", "", ""));
        ms.addMember(new AdminMember());
        ms.addMember(new AdminMember());
        ms.addMember(new AdminMember());
        ms.addMember(new SpecialMember());
        ms.addMember(new AdminMember());
        ms.addMember(new AdminMember());
        ms.addMember(new AdminMember());
        ms.addMember(new AdminMember());

        System.out.println(ms.isFull() ? "unavailable" : "available");
        System.out.println(ms.getCount());
        System.out.println();

        Member user01 = ms.getMember("user00001");

        if (user01 == null) {
            System.out.println("user is not existing.");
            return;
        }

        System.out.println(user01);
        user01.setMemberName("name0101");
        System.out.println();

        if (ms.updateMember(user01)) {
            System.out.println(ms.getMember("user00001"));
        }
        System.out.println();


        if (ms.updateMemberPw("user00001", "password001", "newPassowrd001")) {
            System.out.println(user01);
        }
        System.out.println();

        ms.getAllMembers2();
        System.out.println();

        if (ms.updateMileage("user00001", 99999999)) {
            System.out.println(((GeneralMember) ms.getMember("user00001")).getMileage());
        }
        System.out.println();


        if (ms.deleteMember("user00001", "newPassowrd001")) {
            Member tempMember = ms.getMember("user00001");
            System.out.println(tempMember == null ? "없음" : tempMember);
            System.out.println();
        }
        System.out.println();

        ms.getAllMembers2();
        Member members[] = ms.getAllMembers();
        System.out.println();

        for(Member m:members){
            System.out.println(m);
        }


        //

    }
}