
public class GugudanTest {

	public static void main(String[] args) {
		String loopForamt = "### %s 구구단 ###";
		String danFormat = "%d단\t";
		String format = "%d*%d=%d\t";

		int maxValue = 9;
		int dan = 2;
		int temp = 1;

		System.out.println(String.format(loopForamt, "for"));
		for (dan = 2; dan <= maxValue; dan ++) {
			System.out.print(String.format(danFormat, dan));
		}

		System.out.println();

		for (temp = 1; temp <= maxValue; temp++) {
			for (dan = 2; dan <= maxValue; dan ++) {
				System.out.print(String.format(format, dan, temp, dan * temp));
			}
			System.out.println();
		}

		System.out.println("===============================================================\n");

		dan = 1;
		System.out.println(String.format(loopForamt, "while"));
		while (++dan <= maxValue) {
			System.out.print(String.format(danFormat, dan));
		}

		System.out.println();

		temp = 0;
		while (++temp <= maxValue) {
			dan = 1;
			while (++dan <= maxValue) {
				System.out.print(String.format(format, dan, temp, dan * temp));
			}
			System.out.println();
		}

		System.out.println("===============================================================\n");

//		dan = 2;
//		do {
//			System.out.print(String.format(danFormat, dan));
//		} while (dan++ <= maxValue);
//
//		dan = 2;
//		do {
//
//		} while (temp <= maxValue);
	}

}
