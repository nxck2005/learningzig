const std = @import("std");
const read = std.Io.Reader;

pub fn main() !void {
    std.debug.print("Hi!\n", .{});

    var buf: [1024]u8 = undefined;
    var bins: u8 = 7;

    buf[1023] = 'k';
    bins = bins + 1;

    std.debug.print("Enter memory block number?\n", .{});
}
