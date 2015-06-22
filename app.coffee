'use strict'

monochromeApp = angular.module 'monochromeApp'

monochromeApp.service 'Message', [
  '$rootScope'
  ($rootScope) ->
    service = 
      messages: [
        {
          say: 'Hello World'
          by: 'Mister Cat'
        }
        {
          say: 'Hola Mundo'
          by: 'Señor Gato'
        }
      ]
      addMessage: (message) ->
        service.messages.push message
        $rootScope.$broadcast 'books.update'
        return
    service
]

monochromeApp.controller 'messages', [
  '$scope'
  'Message'
  (scope, Message) ->
    scope.$on 'books.update', ->
      scope.messages = Message.messages
    scope.messages = Message.messages
    return
]

monochromeApp.directive 'addMessageButton', [
  'Messge'
  (Message) ->
    restrict: 'A'
    link: (scope, element, attrs) ->
      element.bind 'click', ->
        Message.addMessage
          say: "Konnichiwa Watashi-wa Meporu"
          by: "Meporu"
        return
      return
]