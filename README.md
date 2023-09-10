# Writing circuits in circom.

## Install circom and snarkjs globally:

```bash
npm install -g circom snarkjs
```

## Calculate witness:

```bash
snarkjs wtns calculate circuit.wasm input.json witness.wtns
```

## Save witness as json file:

```bash
snarkjs wtns export json witness.wtns witness.json

```

## To debug if there was an error:

```bash
snarkjs wtns debug circuit.wasm input.json witness.wtns circuit.sym

```

## Explaining the witness output:

```
[
 "1", // one is constant and reps all operation
 "47", // this is the output
 "2", // this is x, the public input
 "3", // this is y, public input
 "4", // this is the intermediate witness value
 "9", // another intermediate witness value
 "18" // last intermediate witness value, these witnesses represent the number of constraints in our circuit minus 1 (usually the last constraint)
]
```
