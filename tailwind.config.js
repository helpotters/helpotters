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
                        bright: {
                                "primary": "#001858",
                                "secondary": "#F582AE",
                                "accent": "#172C66",
                                "neutral": "#001858",
                                "base-100": "#FEF6E4",
                                "info": "#7EC4CF",
                                "success": "#7EA172",
                                "warning": "#E7A977",
                                "error": "#D4AFB9",
                                "alt-base": "#33272a",
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
                './app/components/**/*.html.erb',
                './app/helpers/**/*.rb',
                './app/assets/stylesheets/**/*.css',
                './app/assets/images/*.svg',
                './app/javascript/**/*.js'
        ],
        plugins: [
                require('@tailwindcss/typography'),
                require("daisyui"),
                require('postcss-import'),
                require('tailwindcss'),
                require('autoprefixer')
        ],
}
