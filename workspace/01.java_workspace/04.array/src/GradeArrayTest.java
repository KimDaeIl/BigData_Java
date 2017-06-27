public class GradeArrayTest {
	// static int score = 79;
	static String resultStr = "### %s 조건문 ###\n점수: %d\n등급: %c";

	public static void main(String[] args) {

		// Scanner sc = new Scanner(System.in);
		// int grade = sc.nextInt();
		// sc.close();
		// sc = null;

		int scoreArray[] = { 95, 88, 75, 47, -47, 108 };
		int s[] = new int[] { 1, 2, 3 };
		int s2[] = new int[3];
		s2[0] = 1;
		s2[1] = 2;
		s2[2] = 3;

		for (int i = 0; i < scoreArray.length; i++)
			getGrade(scoreArray[i]);

	}

	public static void getGrade(int score) {
		char grade = '\0';

		if (score < 0 || 100 < score) {
			sysout("### 점수가 올바르지 않는 경우 오류처리");
			sysout("점수: " + score);
			sysout("Error: 점수는 0~100점 이내만 가능합니다.");
			sysout();
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
		sysout();
	}

	public static void sysout(Object obj) {
		System.out.println(obj);
	}

	public static void sysout() {
		System.out.println();
	}
}
