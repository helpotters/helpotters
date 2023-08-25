module.exports = {
        daisyui: {
                themes: [{
                        cozy: {
                                "primary": "#FFFFFE",
                                "secondary": "#EEBBC3",
                                "accent": "#1DCDBC",
                                "neutral": "#B8C1EC",
                                "base-100": "#232946",
                                "info": "#7EC4CF",
                                "success": "#7EA172",
                                "warning": "#E7A977",
                                "error": "#D4AFB9",
                        },
                },],
        },
        theme: {
                extend: {
                        fontFamily: {
                                juana: ["Juana", "serif"],
                                inter: ["Inter", "sans-serif"],
                                rubik: ["Rubik", "sans-serif"],
                        },
                },
        },
        content: [
                './app/views/**/*.html.erb',
                './app/helpers/**/*.rb',
                './app/assets/stylesheets/**/*.css',
                './app/javascript/**/*.js'
        ],
        plugins: [
                require("daisyui"),
                require('postcss-import'),
                require('tailwindcss'),
                require('autoprefixer')
        ],
}
