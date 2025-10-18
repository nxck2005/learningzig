const std = @import("std");

pub fn main() !void {
    // for C brain
    // std.fs.File -> File struct, .stdout() -> returns posix.STDOUT_FILENO
    // .writer() -> open up the writer on that fd
    var outbuf: [1024]u8 = undefined;
    // state of the writer.
    // needs to update counters like bytes written, hence in a var
    // we need it to be mutable and temp vars are immutable so..
    // also std.fs.File.stdout() also returns a std.fs.File, so we're only storing
    // a std.fs.File.writer().
    var w = std.fs.File.stdout().writer(&outbuf);
    // immutable pointer to the Io.Writer part of the writer tool
    var out = &w.interface;

    try out.print("hello, world\n", .{});
    try out.flush();
}
