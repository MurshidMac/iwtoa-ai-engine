const path = require("path");
const HtmlWebPackPlugin = require("html-webpack-plugin");
var webpackAutoInjectVersion = require("webpack-auto-inject-version");
const MiniCssExtractPlugin = require("mini-css-extract-plugin");
const CopyPlugin = require("copy-webpack-plugin");
var env = require ('./env.json');

const versionPlugin = new webpackAutoInjectVersion({
  PACKAGE_JSON_PATH: "./package.json",
  // options
  // example:
  components: {
    AutoIncreaseVersion: false,
    InjectAsComment: true
  },
  componentsOptions: {
    InjectAsComment: {
      tag: "Build version: {version} - {date}", // default
      dateFormat: "dddd, mmmm dS, yyyy, h:MM:ss TT", // default
      multiLineCommentType: false // default
    }
  }
});

const CopyPluginDetails = new CopyPlugin([
  {
    from: "./public/keycloak.json",
    to: "./"
  }
]);

const htmlWebPlugin = new HtmlWebPackPlugin({
  template: "./public/index.html",
  filename: "./index.html"
});

const cssMini = new MiniCssExtractPlugin({
  filename: "style.css"
});


module.exports = {
  devServer: {
    hot: true,
    inline: true,
    historyApiFallback: true,
    port: 3000,
    proxy: {
      "/process-api": env.dpa_server_process,
      "/find": env.find_address
    }
  },
  entry: "./src/index.js",
  output: {
    path: path.join(__dirname, "/dist"),
    filename: "index.js"
  },
  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        use: {
          loader: "babel-loader"
        }
      },
      {
        test: /\.css$/,
        use: ["style-loader", "css-loader"]
      },
      {
        test: /\.scss$/,
        use: ['style-loader', 'css-loader', 'sass-loader']
      },
      {
        test: /\.(eot|woff|woff2|svg|ttf)([\?]?.*)$/,
        use: [
          {
          loader: "file-loader"
          },
        ]
      },
      {
        test: /\.(pdf|jpg|png|gif|svg|ico)$/,
        use: [
            {
                loader: 'url-loader'
            },
        ]
      }
    ]
  },
  plugins: [
    htmlWebPlugin,
    CopyPluginDetails,
    versionPlugin,
    cssMini
  ]
};
