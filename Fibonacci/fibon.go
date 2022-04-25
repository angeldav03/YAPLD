package main

import (
	"fmt"
	"time"
)

func fib(n uint64) uint64 {
	if n <= 1 {
		return n
	}
	return fib(n-1) + fib(n-2)
}

func main() {
	var inp uint64
	fmt.Println("(golang) Please enter a number:")
	fmt.Scanf("%d", &inp)
	start := time.Now()
	out := fib(inp)
	elapsed := time.Since(start)
	fmt.Printf("The %vth number of the Fibonacci sequence is %v \n", inp, out)
	fmt.Println("The calculation took: ", elapsed)

}
