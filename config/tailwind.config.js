const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  daisyui: {
    themes: [
      {
        sedshubtheme: {
        
            "primary": "#0bbfff",
                    
            "secondary": "#ff5f5f",
                    
            "accent": "#bae6fd",
                    
            "neutral": "#9ca3af",
                    
            "base-100": "#FFFFFF",
                    
            "info": "#7DB8D8",
                    
            "success": "#118D75",
                    
            "warning": "#F4B006",
                    
            "error": "#F76E7E",
        },
      },
    ],
  },
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [
    require("daisyui"),
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
  ]
}
