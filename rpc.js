const fs = require("fs");
let auth;

if (process.env.RPCCOOKIE) {
  try {
    auth = fs.readFileSync(process.env.RPCCOOKIE);
  } catch (e) {
    console.log(e);
  }
}

if (process.env.RPCAUTH) {
  auth = process.env.RPCAUTH;
}

if (!auth) {
  console.log(`RPCAUTH or RPCCOOKIE must be specified`);
}
if (!process.env.RPCUSER) {
  console.log(`RPCUSER is deprecated)`);
} else {
  console.log(process.env.RPCUSER);
}
if (!process.env.RPCPASSWORD) {
  console.log(`PASSWORD is deprecated)`);
} else {
  console.log(process.env.RPCPASSWORD);
}

if (!process.env.RPC) {
  console.log(`RPC is deprecated)`);
} else {
  console.log(process.env.RPC);
}

if (!process.env.RPCBATCHSIZE) {
  console.log(`RPCBATCHSIZE is deprecated)`);
} else {
  console.log(process.env.RPCBATCHSIZE);
}

if (!process.env.RPCCONCURRENT) {
  console.log(`RPCCONCURRENT is deprecated)`);
} else {
  console.log(process.env.RPCCONCURRENT);
}

module.exports = require("yajrpc/qup")({
  url: process.env.RPC || "http://localhost:18443",
  auth: auth,
  batch: process.env.RPCBATCHSIZE || 500,
  concurrent: process.env.RPCCONCURRENT || 16,
});
