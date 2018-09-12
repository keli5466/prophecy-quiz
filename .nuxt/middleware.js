
let files = require.context('@/middleware', false, /^\.\/(?!-)[^.]+\.(js|coffee)$/)
let filenames = files.keys()

function getModule (filename) {
  let file = files(filename)
  return file.default
    ? file.default
    : file
}
let middleware = {}

// Generate the middleware
for (let filename of filenames) {
  let name = filename.replace(/^\.\//, '').replace(/\.(js|coffee)$/, '')
  middleware[name] = getModule(filename)
}

export default middleware

