// inefficient fibonacci function using zig

const std = @import("std");

fn fibon(inpt: u64) u64 {
    if(inpt == 0) return 0;
    if(inpt == 1) {
        return 1;
    } else {
        return fibon((inpt -1)) + fibon((inpt -2));    
    }
    
}

pub fn main() !void {

    var num: u64 = 42;
    var buff: [128]u8 = undefined;
    var start_t: i64 = 0;
    var final_t: i64 = 0;
    const utime = std.time;
    const stdout = std.io.getStdOut().writer();
    const stdin = std.io.getStdIn().reader();
    try stdout.print("(ZIG) Please insert the number of your choice: {}? \n", .{num});
    if(try stdin.readUntilDelimiterOrEof(buff[0..], '\n')) |usr_inp| {
        try stdout.print("Selection: {s}\n", .{usr_inp});
    }
    try stdout.print("Buffer length: {}\n", .{buff.len});
    num = try std.fmt.parseInt(u64, buff[0..3], 10);


    start_t = utime.milliTimestamp(); 
    var res: u64 = fibon(num);
    final_t = utime.milliTimestamp() - start_t;

    try stdout.print("The resulting {}th member of the fibonacci sequnce is: {} \n", .{num, res});
    try stdout.print("The calculation took {} ms\n", .{final_t});
}
