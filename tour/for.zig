const std = @import("std");
const expect = @import("std").testing.expect;

pub fn main() !void {
    const s = [_]u8{ 'h', 'e', 'l', 'l', 'o' };

    for (s, 0..) |character, index| {
        std.debug.print("{c} {d}\n", .{ character, index });
    }

    for (s) |character| {
        std.debug.print("{c}\n", .{character});
    }

    for (s, 0..) |_, index| {
        std.debug.print("{d}\n", .{index});
    }
}
