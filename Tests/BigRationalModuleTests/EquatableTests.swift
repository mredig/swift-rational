import Foundation
import Testing
import BigRationalModule

struct EquatableTests {
	@Test func test_basic_equatable() throws {
		let a = Rational("1/2")
		let b = Rational(1, 2)

		#expect(a == b)
	}

	@Test func test_unreduced_equatable() throws {
		let a = Rational("1/2")
		let b = Rational(2, 4)

		#expect(a == b)
	}

	@Test func test_negative_equatable() throws {
		let a = Rational("-1/2")
		let b = Rational(1, -2)

		#expect(a == b)
	}

	@Test func test_unreduced_negative2_equatable() throws {
		let a = Rational("-1/2")
		let b = Rational(2, -4)

		#expect(a == b)
	}

	@Test func test_not_equal() throws {
		let a = Rational("1/2")
		let b = Rational(3, 4)

		#expect(a != b)
	}

	@Test func nanEqual() throws {
		let a = Rational.nan
		let b = Rational.nan
		let c = Rational(5, 0, sign: .positive)

		#expect(a == b)
		#expect(a == c)
		#expect(b == c)
		#expect(b == a)
		#expect(c == a)
		#expect(c == b)
	}
}
