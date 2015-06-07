Polymer
  is: 'component-app'
  ready:->
    console.log 'ready!'
  properties:
    works:
      type: Array
      notify: true
      value: [
        {
          name: "walks"
          description: "Hallow; images regarding the intangibility of memories, emotions, dreams and previous events in life. Memory alters, emotions change, places shift, and locations are never the same."
          path: "walks"
          thumbnail: "/asset/thumbnail/walks.jpg"
        }
        {
          name: "dreamwork"
          description: "Dreamwork; images regarding the intangibility of memories, emotions, dreams and previous events in life. Memory alters, emotions change, places shift, and locations are never the same."
          content:[]
          path: "dreamwork"
          thumbnail: "/asset/thumbnail/dreamwork.jpg"
          contentUrl: [
            "/asset/work/dreamwork-01.jpg"
            "/asset/work/dreamwork-02.jpg"
            "/asset/work/dreamwork-03.jpg"
          ]
        }
        {
          name: "rip apart"
          description: "Hallow; images regarding the intangibility of memories, emotions, dreams and previous events in life. Memory alters, emotions change, places shift, and locations are never the same."
          content:[]
          path: "rip-apart"
          thumbnail: "/asset/thumbnail/rip-apart.jpg"
        }
        {
          name: "spotless"
          description: "Hallow; images regarding the intangibility of memories, emotions, dreams and previous events in life. Memory alters, emotions change, places shift, and locations are never the same."
          content:[]
          path: "spotless"
          thumbnail: "/asset/thumbnail/spotless.jpg"
        }
        { 
          name: "the aura of home"
          description: "Hallow; images regarding the intangibility of memories, emotions, dreams and previous events in life. Memory alters, emotions change, places shift, and locations are never the same."
          content:[]
          path: "the-aura-of-home"
          thumbnail: "/asset/thumbnail/the-aura-of-home.jpg"
        }
        {
          name: "urban places"
          description: "Hallow; images regarding the intangibility of memories, emotions, dreams and previous events in life. Memory alters, emotions change, places shift, and locations are never the same."
          content:[]
          path: "urban-places"
          thumbnail: "/asset/thumbnail/urban-places.jpg"
        }
        {
          name: "light"
          description: "Hallow; images regarding the intangibility of memories, emotions, dreams and previous events in life. Memory alters, emotions change, places shift, and locations are never the same."
          content:[]
          path: "light"
          thumbnail: "/asset/thumbnail/light.jpg"
        }
        {
          name: "person"
          description: "Hallow; images regarding the intangibility of memories, emotions, dreams and previous events in life. Memory alters, emotions change, places shift, and locations are never the same."
          content:[]
          path: "person"
          thumbnail: "/asset/thumbnail/person.jpg"
        }
        {
          name: "imaginary objects"
          description: "Hallow; images regarding the intangibility of memories, emotions, dreams and previous events in life. Memory alters, emotions change, places shift, and locations are never the same."
          content:[]
          path: "imaginary-objects"
          thumbnail: "/asset/thumbnail/imaginary-objects.jpg"
        }
        {
          name: "faces"
          description: "Hallow; images regarding the intangibility of memories, emotions, dreams and previous events in life. Memory alters, emotions change, places shift, and locations are never the same."
          content:[]
          path: "faces"
          thumbnail: "/asset/thumbnail/faces.jpg"
        }
        {
          name: "imaginary landscapes"
          description: "Hallow; images regarding the intangibility of memories, emotions, dreams and previous events in life. Memory alters, emotions change, places shift, and locations are never the same."
          content:[]
          path: "imaginary-landscapes"
          thumbnail: "/asset/thumbnail/imaginary-landscapes.jpg"
        }
        {
          name: "hallow"
          description: "Hallow; images regarding the intangibility of memories, emotions, dreams and previous events in life. Memory alters, emotions change, places shift, and locations are never the same."
          content:[]
          path: "hallow"
          thumbnail: "/asset/thumbnail/hallow.jpg"
        }
        {
          name: "plantae"
          description: "Hallow; images regarding the intangibility of memories, emotions, dreams and previous events in life. Memory alters, emotions change, places shift, and locations are never the same."
          content:[]
          path: "plantae"
          thumbnail: "/asset/thumbnail/plantae.jpg"
        }
        {
          name: "tv date"
          description: "Hallow; images regarding the intangibility of memories, emotions, dreams and previous events in life. Memory alters, emotions change, places shift, and locations are never the same."
          content:[]
          path: "tv-date"
          thumbnail: "/asset/thumbnail/tv-date.jpg"
        }
        {
          name: "ink"
          description: "Hallow; images regarding the intangibility of memories, emotions, dreams and previous events in life. Memory alters, emotions change, places shift, and locations are never the same."
          content:[]
          path: "ink"
          thumbnail: "/asset/thumbnail/ink.jpg"
        }
      ]
    items:
      type: Array
      notify: true
      value: [
        {name: 'item1'}
        {name: 'item2'}
      ]   
    navigation:
      type: Array
      notify: true
      value: [
        {
          name : 'works'
          url: '/#gallery'
        }
        {
          name : 'about'
          url: '/who'
        }
        {
          name : 'contact'
          url: '/contact'
        }
        {
          name : 'journal'
          url: 'test'
        }
      ]
  
  