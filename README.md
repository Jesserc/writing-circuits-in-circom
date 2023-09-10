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
