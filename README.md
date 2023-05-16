<img align="left" style="padding-right: 10px" src="Assets/logo/256x256.png" width="256px">

Swift bindings for [raylib](http://www.raylib.com/), **a simple and easy-to-use library to enjoy videogames programming.**

> *NOTE for ADVENTURERS: raylib is a programming library to enjoy videogames programming; no fancy interface, no visual helpers, no debug button... just coding in the most pure spartan-programmers way.*
>
> ~[raysan5](https://github.com/raysan5/raylib)



<br>

# Swift Raylib

A swifty interface and app lifecycle to ease development with raylib!

## Features

- Swifty interface and compatibility with the latest features!
- Support for `@main` lifecycle
- Decent examples collection with [+16 code examples][examples]!

## Minimal Example

```swift
import Raylib

@main struct BasicWindow: Applet {
	
	init() {
		Window.create(800, by: 450, title: "Example - Core - Basic Window")
	}
	
	func draw() {
		Renderer2D.text(center: "Congrats! You created your first window!", color: Color.lightGray)
	}

}
```

![The minimal example window](Assets/Screenshots/minimal-dark.png#gh-dark-mode-only)![The minimal example window](Assets/Screenshots/minimal-light.png#gh-light-mode-only)



[examples]: Examples/README.md