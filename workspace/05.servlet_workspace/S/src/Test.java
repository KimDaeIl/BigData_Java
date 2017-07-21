import java.io.FileOutputStream;
import java.io.IOException;

public class Test {
	public static void main(String[] args) {
//		String s = "update toilets set SUM_REVIEW=(select sum(score) from reviews where toilet_id=%d), COUNT_REVIEW=(select count(*) from reviews where toilet_id=%d) where id=%d;";
//		FileOutputStream output = null;
//		try {
//			output = new FileOutputStream("C:\\Users\\cse\\Desktop\\update.txt");
//			for (int i = 1; i <= 960; i++) {
//				output.write(String.format(s, i, i, i).getBytes());
//				output.write("\n".getBytes());
//			}
//		} catch (IOException e) {
//			e.printStackTrace();
//		} finally {
//			if (output != null) {
//				try {
//					output.close();
//				} catch (IOException ee) {
//					ee.printStackTrace();
//				}
//			}
//		}
		
		for(int i=41;i<=1040;i++){
			System.out.print(String.format("%d,",i));
		}
	}
}
