public class GradeTest {

	public static void main(String[] args) {

		char grade = '\0';
		int score = 79;
		String resultStr = "### %s 조건문 ###\n점수: %d\n등급: %c";

		// Scanner sc = new Scanner(System.in);
		// int grade = sc.nextInt();
		// sc.close();
		// sc = null;

		if (score < 0 || 100 < score) {
			sysout("### 점수가 올바르지 않는 경우 오류처리");
			sysout("점수: " + score);
			sysout("Error: 점수는 0~100점 이내만 가능합니다.");
			return;
		}

		if (/* 100 >= score && */ score >= 90) {
			grade = 'A';

		} else if (/* 89 >= score && */ score >= 80) {
			grade = 'B';

		} else if (/* 79 >= score && */ score >= 70) {
			grade = 'C';

		} else {
			grade = 'F';

		}

		sysout(String.format(resultStr, "if", score, grade));
		sysout();

		switch (score / 10) {
		case 10:
		case 9:
			grade = 'a';
			break;

		case 8:
			grade = 'b';
			break;

		case 7:
			grade = 'c';
			break;

		default:
			grade = 'f';

		}

		sysout(String.format(resultStr, "switch", score, grade));
	}

	public static void sysout(Object obj) {
		System.out.println(obj);
	}

	public static void sysout() {
		System.out.println();
	}
}
