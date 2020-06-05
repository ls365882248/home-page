const utils = require("./utils")

module.exports = {
  // 入口
  entry: {
    app: "./src/index",
    spider: "./src/spider"
  },
  // 出口
  output: {
    path: utils.resolve("../dist"),
    filename: "js/[name].js",
    publicPath: "/" // 打包后的资源的访问路径前缀
  },
  resolve: {
    extensions: ['.ts', '.js'],
  },
  // 模块
  module: {
    rules: [
      {
        test: /\.tsx?$/,
        loader: 'ts-loader'
      }
    ]
  },
}