use std::io;
use std::time::{Instant};

fn fibon_rc(n: u64) -> u64 {
    match n {
        0 => 0,
        1 => 1,
        _ => fibon_rc(n-1) + fibon_rc(n-2)
    }
}

fn main(){
    let mut _res: u64;
    println!("Imput the number to test with Fib function: ");
    let mut inpnm = String::new();
    io::stdin().read_line(&mut inpnm).expect("failed to read from stdin");

    // let trimm = inpnm.trim();
    // match trimm.parse::<u64>() {
    //     Ok(i) => println!("your integer input: {}", i),
    //     Err(..) => println!("this was not an integer: {}", trimm),
    // };
    let num: u64 = inpnm.trim().parse().expect("Wanted an unsigned integer!");
    let start = Instant::now();
    _res = fibon_rc(num);
    let end = Instant::now();
    println!("Fibonacci value of : {}th member of the sequence is: {}", num, _res);
    println!("Duration of the whole process: {:?} ", end.duration_since(start));

}