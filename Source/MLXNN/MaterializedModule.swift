// Copyright © 2026 Apple Inc.

import MLX

open class MaterializedModule<LayerType: Module>: Module, @unchecked Sendable {

    let base: LayerType

    public init(_ base: consuming LayerType) throws {
        try base.materialize()
        self.base = base
    }

    @available(*, unavailable)
    @discardableResult
    open override func update(
        parameters: ModuleParameters, verify: VerifyUpdate, path: [String] = [],
        modulePath: [String] = []
    ) throws -> Self {
        fatalError("unavailable")
    }

    @available(*, unavailable)
    @discardableResult
    open override func apply(
        filter: (Module, String, ModuleItem) -> Bool = Module.filterValidParameters,
        map: @escaping (MLXArray) -> MLXArray
    ) -> Self {
        fatalError("unavailable")
    }

    @available(*, unavailable)
    @discardableResult
    open override func update(
        modules: ModuleChildren, verify: VerifyUpdate, path: [String] = [],
        modulePath: [String] = []
    ) throws -> Self {
        fatalError("unavailable")
    }

    @available(*, unavailable)
    open override func updateModule(key: String, _ value: Any) throws {
        fatalError("unavailable")
    }
}

extension MaterializedModule where LayerType: UnaryLayer {
    public func callAsFunction(_ x: MLXArray) -> MLXArray {
        base(x)
    }
}
