import crypto.rand

fn main() {
	random := rand.bytes(32) or {
		eprintln('Failed to generate secure random bytes: ${err}')
		return
	}.hex()
	println("Here's a random superkey for you:\n${random}")
}
