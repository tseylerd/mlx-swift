// Copyright © 2024 Apple Inc.

import Foundation
import MLX
import MLXNN
import Testing

@Test
func testMaterialize() async {
    // a materialized array is Sendable
    let x = MLXArray(10) + 5
    let m = materialize(x)
    let t = Task {
        print(m + 3)
    }
    _ = await t.result
}

@Test
func testCompileMaterialized() async {
    // compile manipulates the input arrays (tracers)
    // make sure MaterializedArray doesn't run into problems here
    func f(_ a: MLXArray, _ b: MLXArray) -> MLXArray {
        square(a * b)
    }

    let c = compile(f)

    let i1 = MLXRandom.normal([20, 20]).materialized()
    let i2 = MLXRandom.normal([20, 20]).materialized()

    let t = Task {
        let s = sum(c(i1, i2))
        let s2 = sum(f(i1, i2))
        #expect(s.allClose(s2).item(Bool.self))
        print(s, s2)
    }
    _ = await t.result
}

@Test
func testMaterializedLinear() async throws {
    let l = Linear(10, 10)
    let lm = try MaterializedModule(l)

    // this will have been materialized in the call
    #expect(l.weight is MaterializedArray)

    let t = Task {
        let i = MLXRandom.normal([10, 10])
        let r = lm(i)
        print(sum(r))
        print(lm)
    }
    _ = await t.result

}
