Polymer
  is: 'component-gallery'   
  dreamworkfilter: (item) ->
    item.name == 'dreamwork'
  properties:
    works:
      type: Array
      notify: true