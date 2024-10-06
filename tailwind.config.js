const defaultTheme = require("tailwindcss/defaultTheme");
const myTheme = require("./theme");
const myColors = require("./colors");

module.exports = require("tailwind-mode-aware-colors")({
  content: [
    "./app/views/**/*.html.erb",
    "./app/helpers/**/*.rb",
    "./app/assets/stylesheets/**/*.css",
    "./app/javascript/**/*.js",
    "./app/{components,views}/**/*.{erb,haml,html,slim,rb}",
  ],
  theme: {
    colors: myColors.colors,
    fontSize: myTheme.fontSize,
    extend: {
      fontFamily: myTheme.fontFamily,
    },
  },
  plugins: [
    require("@tailwindcss/forms"),
    require("@tailwindcss/typography"),
    require("@tailwindcss/container-queries"),
  ],
});
