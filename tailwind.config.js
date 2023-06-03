module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
  theme: {
    colors: {
      'blue-talp': '#0b77b5',
      'pastel-blue-talp': '#87cff8',
      'red-talp': '#cf281f',
      'pastel-red-talp': '#f1a4a0',
      'white-talp': '#ffffff',
      'grey-talp': '#666666'
    },
    extend: {
      backgroundImage: {
        'fondo-talp': "url('http://osolehost.com/talpsa/imagenes/slider/FLTnFsa6pK3wVcm7UBBuSbRv0EphW7VByiCh8ln6.png')"
      }
    },
    fontFamily: {
      'helvetica': ['Helvetica', 'Arial', 'sans-serif']
    }
  }
}
