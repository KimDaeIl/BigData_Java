package work.view;

import java.util.Date;

import work.model.dto.Member;

/**
 * 멤버 테스트 클래스
 * 
 * @author 기ㅏㅁ;ㅓㅇ리ㅏ
 * @since JDK 1.8.0
 * @version 1.0.0
 *
 */
public class MemberTest {

	/**
	 * 메인 메소드
	 * 
	 * @param args
	 */
	public static void main(String[] args) {
		// dto(Data Transfer Object): 모델 객체
		Member dto = new Member();
		
		dto.printInfo();

	}
}
