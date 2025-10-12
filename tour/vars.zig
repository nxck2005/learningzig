const std = @import("std");

pub fn main() !void {
    var i: i32 = 129;
    i = i + 1;

    var maxu8: u8 = 255;
    maxu8 -= 1;

    const MAX: u8 = 255;
    std.debug.print("{d}\n", .{MAX});
}
