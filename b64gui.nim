import os, base64, nigui

## Setup GUI ##
app.init()

var window = newWindow("b64 Encoder/Decoder")
window.height = 600
window.width = 600

var container = newLayoutContainer(Layout_Vertical)
var topContainer = newLayoutContainer(Layout_Horizontal)
var middleContainer = newLayoutContainer(Layout_Horizontal)
var bottomContainer = newLayoutContainer(Layout_Horizontal)

window.add(container)
container.add(topContainer)
container.add(middleContainer)
container.add(bottomContainer)

var inputTextArea = newTextArea("Input")
var outputTextArea = newTextArea("Output")

inputTextArea.fontFamily = "Courier New"
outputTextArea.fontFamily = "Courier New"

inputTextArea.editable = true
outputTextArea.editable = false

var encodeButton = newButton("Encode")
var decodeButton = newButton("Decode")

encodeButton.widthMode = WidthMode_Expand
decodeButton.widthMode = WidthMode_Expand

topContainer.add(inputTextArea)
middleContainer.add(encodeButton)
middleContainer.add(decodeButton)
bottomContainer.add(outputTextArea)

## Events ##
encodeButton.onClick = proc(event: ClickEvent) =
  outputTextArea.text = encode(inputTextArea.text)

decodeButton.onClick = proc(event: ClickEvent) =
  outputTextArea.text = decode(inputTextArea.text)

when isMainModule:
  window.show()
  app.run()
