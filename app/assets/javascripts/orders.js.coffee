# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

  jQuery ->
    Morris.Bar
      element: "order_chart"
          data: [
                  {y: '2010', a: '12'}
                  {y: '2034', a: '78'}
                  {y: '2023', a: '90'}
                  {y: '2012', a: '23'}
                ]
          xkey: 'y'
          ykeys: ['a']
          labels: ['Series A']

