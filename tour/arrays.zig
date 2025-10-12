const std = @import("std");

pub fn main() !void {
    // Arrays are denoted by [N]T, where N is the number of elements in the array and T is the type of those elements,
    // (i.e., the array's child type).
    // For array literals, N may be replaced by _ to infer the size of the array.
    // For length, access arr.len field.
    // replace N with _ to infer size
    const arr = [5]u8{ 1, 2, 3, 4, 5 };
    const len = arr.len;
    std.debug.print("{d}\n", .{len});
}
