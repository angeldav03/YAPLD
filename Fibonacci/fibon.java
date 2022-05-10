import java.util.Scanner;
import java.time.Duration;
import java.time.Instant;


class fibon {

    public static long fib(long n){
        if(n == 0) return 0;
        if(n == 1) return 1;
        return fib(n - 1) + fib(n - 2);
    }

    public static void main(String[] args){
        // Main program is in this scope
        long inp, out;
        long start, stop;
        Scanner in = new Scanner(System.in);
        System.out.println("Java version: " + System.getProperty("java.version"));
        System.out.print("Please inser an integer: ");

        inp = in.nextInt();
        System.out.println("You entered integer " + inp);
        // Timer start in here
        start = System.currentTimeMillis();
        out = fib(inp);
        // Timer start in here
        stop = System.currentTimeMillis();
        System.out.println("The Fibonacci of the " + inp + "th element of the sequence is: " + out);
        System.out.println("The calculation took " + (stop - start) + " ms \n");
    }

}
