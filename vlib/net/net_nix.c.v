module net

#include <unistd.h>
#include <sys/select.h>
// inet.h is needed for inet_ntop on macos
#include <arpa/inet.h>
#include <netdb.h>
#include <errno.h>
#include <fcntl.h>
#include <netinet/tcp.h>

#flag solaris -lsocket

const is_windows = false

pub fn error_code() int {
	return C.errno
}

fn init() {
}

pub const msg_nosignal = 0x4000

pub const error_ewouldblock = C.EWOULDBLOCK
pub const error_einprogress = C.EINPROGRESS

fn C.unlink(&char) int
