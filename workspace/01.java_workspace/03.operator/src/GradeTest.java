public class GradeTest {

	public static void main(String[] args) {

		char grade = '\0';
		int score = 79;
		String resultStr = "### %s ���ǹ� ###\n����: %d\n���: %c";

		// Scanner sc = new Scanner(System.in);
		// int grade = sc.nextInt();
		// sc.close();
		// sc = null;

		if (score < 0 || 100 < score) {
			sysout("### ������ �ùٸ��� �ʴ� ��� ����ó��");
			sysout("����: " + score);
			sysout("Error: ������ 0~100�� �̳��� �����մϴ�.");
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
