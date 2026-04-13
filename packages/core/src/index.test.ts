import { describe, it } from "node:test";
import assert from "node:assert/strict";
import { greet, add } from "./index.js";

describe("greet", () => {
  it("returns greeting with name", () => {
    assert.equal(greet("World"), "Hello, World!");
  });
});

describe("add", () => {
  it("adds two numbers", () => {
    assert.equal(add(2, 3), 5);
  });
  it("handles negatives", () => {
    assert.equal(add(-1, 1), 0);
  });
});
