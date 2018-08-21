
const fetch = require('node-fetch')
const fs = require("fs")
const util = require("util")
const readFile = util.promisify(fs.readFile)
const path = require("path")

async function read_C_source(path) {
  return await readFile(path)
}

function JSON_POST_req(data,options) {
  var dummy = {"source": data.toString(), "options":"{}"}
  return {method:"POST", body:JSON.stringify(dummy), headers:{"Content-Type":"application/json"}}
}

function compiler_explorer(path, options) {
  read_C_source(path).then(data=>
    JSON_POST_req(data, options)).then(post_arg=>
    fetch("https://godbolt.org/api/compiler/g82/compile", post_arg)).then(res=>
    res.text()).then(body=>
      console.log(body.split("\n").slice(1,body.split("\n").length).join("\n"))).catch(error=>
        compiler_explorer(path, options))
}

const config = JSON.parse(fs.readFileSync(path.resolve(__dirname) + "/ceconfig.json"))
if (process.argv.length < 3) {console.log("you didnt specify the path to source")}
else {compiler_explorer(process.argv[2], process.argv[3])}
