
const fetch = require('node-fetch')
const fs = require("fs")
const util = require("util")
const readFile = util.promisify(fs.readFile)

async function read_C_source(path) {
  return await readFile(path)
}

function JSON_POST_req(data) {
  var dummy = {"source": data.toString(), "options":"{}"}
  return {method:"POST", body:JSON.stringify(dummy), headers:{"Content-Type":"application/json"}}
}

function compiler_explorer(path) {
  read_C_source(path).then(data=>
    JSON_POST_req(data)).then(post_arg=>
    fetch("https://godbolt.org/api/compiler/g63/compile", post_arg)).then(res=>
    res.text()).then(body=>
      console.log(body)).catch(error=>
        console.log(error))
}

compiler_explorer("./autowasm.c")
