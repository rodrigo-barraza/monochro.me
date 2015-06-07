Polymer
  is: 'component-test-gold'
  filter: (item) ->
    item.name == 'item1'
  properties:
    items:
      type: Array
      notify: true