import BigInt

extension Rational: ExpressibleByIntegerLiteral {
	@inlinable
	public init(integerLiteral value: Int64) {
		self.init(autoSign: BigInt(integerLiteral: value), denominator: 1)
	}
}

extension Rational {
	/// Converts the given integer to a rational value.
	///
	/// Equivalent to creating a rational value with numerator
	/// equal to `value` and denominator `1
	@inlinable
	public init(big value: BigInt) {
		self.init(autoSign: value, denominator: 1)
	}

	/// Converts the given integer to a rational value.
	///
	/// Equivalent to creating a rational value with numerator
	/// equal to `value` and denominator `1`.
	@inlinable
	public init(big value: BigUInt, sign: Sign) {
		self.init(numerator: BigInt(value), denominator: 1, sign: sign)
	}
}
