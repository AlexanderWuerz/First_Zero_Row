/* Alexander Wuerz 
 * firstZeroRow.java 
 * 	Outputs the index of the first row in a 
 * rectangular array that contains all zeros. 
 */ 

public class firstZeroRow {

	static void getZeroRow(int[][] x) {
		int i=0, j=0; 
		int n = x.length; 
		reject:
		for (; i<n; i++) {
			for (; j<n; j++) 
				if (x[i][j] != 0)
					continue reject;
			System.out.println("First all-zero row is: "+i);
			break reject; 
		}
	}

	public static void main(String[] args) {

	int[][] test_arya = new int[][] {
		{0, 1, 0}, 
		{0, 0, 0},
		{0, 0, 0}
	}; 

	getZeroRow(test_arya); // should print "First all-zero row is: 1"
	}
}
