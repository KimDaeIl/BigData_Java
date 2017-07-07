public class DataType {
	public static void main(String[] args) {
		System.out.println("<DataType>");
		System.out.println(Byte.MIN_VALUE);
		System.out.println(Byte.MAX_VALUE);

		byte a;
		a = 5;
		byte b = 10;
		byte result = (byte)(a+b);
		System.out.println();
		System.out.println("a = " + a);
		System.out.println("b = " + b);
		System.out.println("result = " + result);

		float c = 5.3f;
		double d = 5.3;
		int e = (int)d;
		System.out.println();
		System.out.println("c = " + c);
		System.out.println("d = " + d);
		System.out.println("e = " + e);
		
	}
}
