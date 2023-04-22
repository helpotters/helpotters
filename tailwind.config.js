module.exports = {
  plugins: [
    require('taos/plugin')
  ],
 safelist: [
    '!duration-[0ms]',
    '!delay-[0ms]',
    'html.js :where([class*="taos:"]:not(.taos-init))'
  ],
  content: {
    transform: (content) => content.replace(/taos:/g, ''),
  },
  theme: {
    extend: {
      fontFamily: {
        inter: "Inter",
        rubik: "Rubik"
      }
    }
  },
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ]
}
