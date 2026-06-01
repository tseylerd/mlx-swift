// Copyright © 2026 Apple Inc.

import Cmlx
import Foundation
import Numerics

public final class MaterializedArray: MLXArray, @unchecked Sendable {

    init(materialized ctx: consuming mlx_array) {
        super.init(ctx)
    }

    // MARK: - Update sealing

    @available(*, unavailable)
    override public func _updateInternal(_ array: MLXArray) {
        // Note that this might be called via:
        //
        // a[1] = b
        // a += b
        fatalError("unavailable")
    }

    // MARK: - Initializer sealing

    @available(*, unavailable)
    override public init(_ ctx: consuming mlx_array) {
        fatalError("unavailable")
    }

    @available(*, unavailable)
    required public convenience init(arrayLiteral elements: Int32...) {
        fatalError("unavailable")
    }

    @available(*, unavailable)
    public convenience init(
        rawPointer: UnsafeMutableRawPointer,
        _ shape: (some Collection<Int>)? = [Int]?.none, dtype: DType,
        finalizer: @escaping () -> Void
    ) {
        fatalError("unavailable")
    }

    @available(*, unavailable)
    public convenience init(_ value: Int32) {
        fatalError("unavailable")
    }

    @available(*, unavailable)
    public convenience init(_ value: Int) {
        fatalError("unavailable")
    }

    @available(*, unavailable)
    public convenience init(int64 value: Int) {
        fatalError("unavailable")
    }

    @available(*, unavailable)
    public convenience init(_ value: Bool) {
        fatalError("unavailable")
    }

    @available(*, unavailable)
    public convenience init(_ value: Float) {
        fatalError("unavailable")
    }

    @available(*, unavailable)
    public convenience init(float64 value: Double) {
        fatalError("unavailable")
    }

    @available(*, unavailable)
    public convenience init<T: HasDType>(_ value: T) {
        fatalError("unavailable")
    }

    @available(*, unavailable)
    public convenience init(bfloat16 value: Float32) {
        fatalError("unavailable")
    }

    @available(*, unavailable)
    public convenience init<T: HasDType>(_ value: T, dtype: DType) {
        fatalError("unavailable")
    }

    @available(*, unavailable)
    public convenience init<T: HasDType>(
        _ value: [T], _ shape: (some Collection<Int>)? = [Int]?.none
    ) {
        fatalError("unavailable")
    }

    @available(*, unavailable)
    public convenience init(_ value: [Int], _ shape: (some Collection<Int>)? = [Int]?.none) {
        fatalError("unavailable")
    }

    @available(*, unavailable)
    public convenience init(int64 value: [Int], _ shape: (some Collection<Int>)? = [Int]?.none) {
        fatalError("unavailable")
    }

    @available(*, unavailable)
    public convenience init(
        converting value: [Double], _ shape: (some Collection<Int>)? = [Int]?.none
    ) {
        fatalError("unavailable")
    }

    @available(*, unavailable)
    public convenience init(_ value: [Double], _ shape: (some Collection<Int>)? = [Int]?.none) {
        fatalError("unavailable")
    }

    @available(*, unavailable)
    public convenience init<S: Sequence>(
        _ sequence: S, _ shape: (some Collection<Int>)? = [Int]?.none
    )
    where S.Element: HasDType {
        fatalError("unavailable")
    }

    @available(*, unavailable)
    public convenience init(
        int64 sequence: some Sequence<Int>, _ shape: (some Collection<Int>)? = [Int]?.none
    ) {
        fatalError("unavailable")
    }

    @available(*, unavailable)
    public convenience init<T: HasDType>(
        _ ptr: UnsafeBufferPointer<T>, _ shape: (some Collection<Int>)? = [Int]?.none
    ) {
        fatalError("unavailable")
    }

    @available(*, unavailable)
    public convenience init(
        _ ptr: UnsafeRawBufferPointer, _ shape: (some Collection<Int>)? = [Int]?.none,
        type: (some HasDType).Type
    ) {
        fatalError("unavailable")
    }

    @available(*, unavailable)
    public convenience init(
        _ data: Data, _ shape: (some Collection<Int>)? = [Int]?.none, type: (some HasDType).Type
    ) {
        fatalError("unavailable")
    }

    @available(*, unavailable)
    public convenience init(
        _ data: Data, _ shape: (some Collection<Int>)? = [Int]?.none, dtype: DType
    ) {
        fatalError("unavailable")
    }

    @available(*, unavailable)
    public convenience init(data: MLXArrayData) {
        fatalError("unavailable")
    }

    @available(*, unavailable)
    public convenience init(real: Float, imaginary: Float) {
        fatalError("unavailable")
    }

    @available(*, unavailable)
    public convenience init(_ value: Complex<Float>) {
        fatalError("unavailable")
    }

}
