use fmt;
use math;

fn divs(n: int) int = {
	let count: int = 0;
	const limit = math::sqrtf64(n: f64);
	for (let i = 1; i < limit: int; i += 1) {
		if (n % i == 0) {
			count += 2;
		};
	};
	return count;
};

fn tris(n: int) int = {
	let num = 0;
	for (let i = 1; i < n; i += 1) {
		num += i;
		const ndivs = divs(num);
		if (ndivs > 500) {
			return num;
		};
	};
	return -1;
};

export fn main() void = {
	const highly_divisible_triangular_number = tris(1000000);
	if (highly_divisible_triangular_number > 0)
	{
		fmt::print("Answer is: ")!;
		fmt::println(highly_divisible_triangular_number)!;
	};
};
