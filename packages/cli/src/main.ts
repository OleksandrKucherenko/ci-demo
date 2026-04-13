#!/usr/bin/env node
import { greet } from "@ci-demo/core";

const name = process.argv[2] || "CI Excellence";
console.log(greet(name));
