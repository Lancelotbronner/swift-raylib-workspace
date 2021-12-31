# Cheatsheet

**Updated for raylib v4.0**

This document presents a detailed overview of the raylib cheatsheet along with its corresponding Swift symbol(s).

This document currently has a 33% coverage, contributions are welcome!

> Note: This file is generated (and badly so), any improvement suggestions are welcome.

#### RAYLIB_VERSION

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define RAYLIB_VERSION;`
Swift | —

## Some basic Defines

### Some Basic Colors

```mm
#define LIGHTGRAY;
#define GRAY;
#define DARKGRAY;
#define YELLOW;
#define GOLD;
#define ORANGE;
#define PINK;
#define RED;
#define MAROON;
#define GREEN;
#define LIME;
#define DARKGREEN;
#define SKYBLUE;
#define BLUE;
#define DARKBLUE;
#define PURPLE;
#define VIOLET;
#define DARKPURPLE;
#define BEIGE;
#define BROWN;
#define DARKBROWN;
#define WHITE;
#define BLACK;
#define BLANK;
#define MAGENTA;
#define RAYWHITE;
```

> Note: Custom raylib color palette for amazing visuals on WHITE background

#### LIGHTGRAY

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define LIGHTGRAY;`
Swift | ``Color/lightGray``

#### GRAY

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define GRAY;`
Swift | ``Color/gray``

#### DARKGRAY

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define DARKGRAY;`
Swift | ``Color/darkGray``

#### YELLOW

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define YELLOW;`
Swift | ``Color/yellow``

#### GOLD

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define GOLD;`
Swift | ``Color/gold``

#### ORANGE

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define ORANGE;`
Swift | ``Color/orange``

#### PINK

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define PINK;`
Swift | ``Color/pink``

#### RED

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define RED;`
Swift | ``Color/red``

#### MAROON

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define MAROON;`
Swift | ``Color/maroon``

#### GREEN

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define GREEN;`
Swift | ``Color/green``

#### LIME

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define LIME;`
Swift | ``Color/lime``

#### DARKGREEN

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define DARKGREEN;`
Swift | ``Color/darkGreen``

#### SKYBLUE

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define SKYBLUE;`
Swift | ``Color/skyBlue``

#### BLUE

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define BLUE;`
Swift | ``Color/blue``

#### DARKBLUE

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define DARKBLUE;`
Swift | ``Color/darkBlue``

#### PURPLE

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define PURPLE;`
Swift | ``Color/purple``

#### VIOLET

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define VIOLET;`
Swift | ``Color/violet``

#### DARKPURPLE

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define DARKPURPLE;`
Swift | ``Color/darkPurple``

#### BEIGE

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define BEIGE;`
Swift | ``Color/beige``

#### BROWN

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define BROWN;`
Swift | ``Color/brown``

#### DARKBROWN

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define DARKBROWN;`
Swift | ``Color/darkBrown``

#### WHITE

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define WHITE;`
Swift | ``Color/white``

#### BLACK

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define BLACK;`
Swift | ``Color/black``

#### BLANK

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define BLANK;`
Swift | ``Color/blank``

#### MAGENTA

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define MAGENTA;`
Swift | ``Color/magenta``

#### RAYWHITE

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define RAYWHITE;`
Swift | ``Color/raywhite``

## Structures Definition

#### Vector2

Vector2, 2 components

Language | Symbol
--- | ---
C | `struct Vector2;`
Swift | ``Vector2f``

#### Vector3

Vector3, 3 components

Language | Symbol
--- | ---
C | `struct Vector3;`
Swift | ``Vector3f``

#### Vector4

Vector4, 4 components

Language | Symbol
--- | ---
C | `struct Vector4;`
Swift | ``Vector4f``

#### Quaternion

Quaternion, 4 components (Vector4 alias)

Language | Symbol
--- | ---
C | `typedef Vector4 Quaternion;`
Swift | ``Quaternion``

#### Matrix

Matrix, 4x4 components, column major, OpenGL style, right handed

Language | Symbol
--- | ---
C | `struct Matrix;`
Swift | —

#### Color

Color, 4 components, R8G8B8A8 (32bit)

Language | Symbol
--- | ---
C | `struct Color;`
Swift | ``Color``

#### Rectangle

Rectangle, 4 components

Language | Symbol
--- | ---
C | `struct Rectangle;`
Swift | ``Rectangle``

#### Image

Image, pixel data stored in CPU memory (RAM)

Language | Symbol
--- | ---
C | `struct Image;`
Swift | ``Texture``

#### Texture

Texture, tex data stored in GPU memory (VRAM)

Language | Symbol
--- | ---
C | `struct Texture;`
Swift | ``Texture``

#### Texture2D

Texture2D, same as Texture

Language | Symbol
--- | ---
C | `typedef Texture Texture2D;`
Swift | ``Texture``

#### TextureCubemap

TextureCubemap, same as Texture

Language | Symbol
--- | ---
C | `typedef Texture TextureCubemap;`
Swift | ``Cubemap``

#### RenderTexture

RenderTexture, fbo for texture rendering

Language | Symbol
--- | ---
C | `struct RenderTexture;`
Swift | ``RenderTexture``

#### RenderTexture2D

RenderTexture2D, same as RenderTexture

Language | Symbol
--- | ---
C | `typedef RenderTexture RenderTexture2D;`
Swift | ``RenderTexture``

#### NPatchInfo

NPatchInfo, n-patch layout info

Language | Symbol
--- | ---
C | `struct NPatchInfo;`
Swift | —

#### GlyphInfo

GlyphInfo, font characters glyphs info

Language | Symbol
--- | ---
C | `struct GlyphInfo;`
Swift | ``Glyph``

#### Font

Font, font texture and GlyphInfo array data

Language | Symbol
--- | ---
C | `struct Font;`
Swift | ``Font``

### Camera, defines position/orientation in 3d space

```mm
struct Camera3D;
typedef Camera3D Camera;
```

#### Camera3D

This symbol has no documentation

Language | Symbol
--- | ---
C | `struct Camera3D;`
Swift | ``Camera3D``

#### Camera

This symbol has no documentation

Language | Symbol
--- | ---
C | `typedef Camera3D Camera;`
Swift | ``Camera3D``

#### Camera2D

Camera2D, defines position/orientation in 2d space

Language | Symbol
--- | ---
C | `struct Camera2D;`
Swift | ``Camera2D``

#### Mesh

Mesh, vertex data and vao/vbo

Language | Symbol
--- | ---
C | `struct Mesh;`
Swift | ``Mesh``

#### Shader

Shader

Language | Symbol
--- | ---
C | `struct Shader;`
Swift | ``Shader``

#### MaterialMap

MaterialMap

Language | Symbol
--- | ---
C | `struct MaterialMap;`
Swift | ````

#### Material

Material, includes shader and maps

Language | Symbol
--- | ---
C | `struct Material;`
Swift | ``Material``

#### Transform

Transform, vectex transformation data

Language | Symbol
--- | ---
C | `struct Transform;`
Swift | ``Transform``

#### BoneInfo

Bone, skeletal animation bone

Language | Symbol
--- | ---
C | `struct BoneInfo;`
Swift | ``Bone``

#### Model

Model, meshes, materials and animation data

Language | Symbol
--- | ---
C | `struct Model;`
Swift | ``Model``

#### ModelAnimation

ModelAnimation

Language | Symbol
--- | ---
C | `struct ModelAnimation;`
Swift | ``ModelAnimation``

#### Ray

Ray, ray for raycasting

Language | Symbol
--- | ---
C | `struct Ray;`
Swift | ``Ray``

#### RayCollision

RayCollision, ray hit information

Language | Symbol
--- | ---
C | `struct RayCollision;`
Swift | ``Ray/Hit``

#### BoundingBox

BoundingBox

Language | Symbol
--- | ---
C | `struct BoundingBox;`
Swift | ``BoundingBox``

#### Wave

Wave, audio wave data

Language | Symbol
--- | ---
C | `struct Wave;`
Swift | ``Wave``

#### AudioStream

AudioStream, custom audio stream

Language | Symbol
--- | ---
C | `struct AudioStream;`
Swift | ``AudioStream``

#### Sound

Sound

Language | Symbol
--- | ---
C | `struct Sound;`
Swift | ``Sound``

#### Music

Music, audio stream, anything longer than ~10 seconds should be streamed

Language | Symbol
--- | ---
C | `struct Music;`
Swift | ``Music``

#### VrDeviceInfo

VrDeviceInfo, Head-Mounted-Display device parameters

Language | Symbol
--- | ---
C | `struct VrDeviceInfo;`
Swift | ``VirtualRealityDevice``

#### VrStereoConfig

VrStereoConfig, VR stereo rendering configuration for simulator

Language | Symbol
--- | ---
C | `struct VrStereoConfig;`
Swift | ``VirtualRealityDevice/Configuration``

## Enumerators Definition

### System/Window config flags

```mm
ConfigFlags FLAG_INTERLACED_HINT;    // Set to try enabling interlaced video format (for V3D)
ConfigFlags FLAG_MSAA_4X_HINT;       // Set to try enabling MSAA 4X
ConfigFlags FLAG_WINDOW_HIGHDPI;     // Set to support HighDPI
ConfigFlags FLAG_WINDOW_TRANSPARENT; // Set to allow transparent framebuffer
ConfigFlags FLAG_WINDOW_ALWAYS_RUN;  // Set to allow windows running while minimized
ConfigFlags FLAG_WINDOW_TOPMOST;     // Set to window always on top
ConfigFlags FLAG_WINDOW_UNFOCUSED;   // Set to window non focused
ConfigFlags FLAG_WINDOW_MAXIMIZED;   // Set to maximize window (expanded to monitor)
ConfigFlags FLAG_WINDOW_MINIMIZED;   // Set to minimize window (iconify)
ConfigFlags FLAG_WINDOW_HIDDEN;      // Set to hide window
ConfigFlags FLAG_WINDOW_UNDECORATED; // Set to disable window decoration (frame and buttons)
ConfigFlags FLAG_WINDOW_RESIZABLE;   // Set to allow resizable window
ConfigFlags FLAG_FULLSCREEN_MODE;    // Set to run program in fullscreen
ConfigFlags FLAG_VSYNC_HINT;         // Set to try enabling V-Sync on GPU
```

> Note: Every bit registers one state (use it with bit masks) default all flags are set to 0

#### FLAG_INTERLACED_HINT

Set to try enabling interlaced video format (for V3D)

Language | Symbol
--- | ---
C | `ConfigFlags FLAG_INTERLACED_HINT;`
Swift | ``WindowFlags/interlaced``

#### FLAG_MSAA_4X_HINT

Set to try enabling MSAA 4X

Language | Symbol
--- | ---
C | `ConfigFlags FLAG_MSAA_4X_HINT;`
Swift | ``WindowFlags/msaa4x``

#### FLAG_WINDOW_HIGHDPI

Set to support HighDPI

Language | Symbol
--- | ---
C | `ConfigFlags FLAG_WINDOW_HIGHDPI;`
Swift | ``WindowFlags/highDPI``

#### FLAG_WINDOW_TRANSPARENT

Set to allow transparent framebuffer

Language | Symbol
--- | ---
C | `ConfigFlags FLAG_WINDOW_TRANSPARENT;`
Swift | ``WindowFlags/transparent``

#### FLAG_WINDOW_ALWAYS_RUN

Set to allow windows running while minimized

Language | Symbol
--- | ---
C | `ConfigFlags FLAG_WINDOW_ALWAYS_RUN;`
Swift | ``WindowFlags/runInBackground``

#### FLAG_WINDOW_TOPMOST

Set to window always on top

Language | Symbol
--- | ---
C | `ConfigFlags FLAG_WINDOW_TOPMOST;`
Swift | ``WindowFlags/stayOnTop``

#### FLAG_WINDOW_UNFOCUSED

Set to window non focused

Language | Symbol
--- | ---
C | `ConfigFlags FLAG_WINDOW_UNFOCUSED;`
Swift | ``WindowFlags/unfocused``

#### FLAG_WINDOW_MAXIMIZED

Set to maximize window (expanded to monitor)

Language | Symbol
--- | ---
C | `ConfigFlags FLAG_WINDOW_MAXIMIZED;`
Swift | ``WindowFlags/maximized``, ``Window/isMaximized``, and ``Window/maximize()``

#### FLAG_WINDOW_MINIMIZED

Set to minimize window (iconify)

Language | Symbol
--- | ---
C | `ConfigFlags FLAG_WINDOW_MINIMIZED;`
Swift | ``WindowFlags/minimized``, ``Window/isMinimized``, and ``Window/minimize()``

#### FLAG_WINDOW_HIDDEN

Set to hide window

Language | Symbol
--- | ---
C | `ConfigFlags FLAG_WINDOW_HIDDEN;`
Swift | ``WindowFlags/hidden``

#### FLAG_WINDOW_UNDECORATED

Set to disable window decoration (frame and buttons)

Language | Symbol
--- | ---
C | `ConfigFlags FLAG_WINDOW_UNDECORATED;`
Swift | ``WindowFlags/undecorated``

#### FLAG_WINDOW_RESIZABLE

Set to allow resizable window

Language | Symbol
--- | ---
C | `ConfigFlags FLAG_WINDOW_RESIZABLE;`
Swift | ``WindowFlags/resizable``

#### FLAG_FULLSCREEN_MODE

Set to run program in fullscreen

Language | Symbol
--- | ---
C | `ConfigFlags FLAG_FULLSCREEN_MODE;`
Swift | ``WindowFlags/fullscreen``

#### FLAG_VSYNC_HINT

Set to try enabling V-Sync on GPU

Language | Symbol
--- | ---
C | `ConfigFlags FLAG_VSYNC_HINT;`
Swift | ``WindowFlags/vsync``

### Trace log level

```mm
TraceLogLevel LOG_NONE;    // Disable logging
TraceLogLevel LOG_FATAL;   // Fatal logging, used to abort program: exit(EXIT_FAILURE)
TraceLogLevel LOG_ERROR;   // Error logging, used on unrecoverable failures
TraceLogLevel LOG_WARNING; // Warning logging, used on recoverable failures
TraceLogLevel LOG_INFO;    // Info logging, used for program execution info
TraceLogLevel LOG_DEBUG;   // Debug logging, used for internal debugging, it should be disabled on release builds
TraceLogLevel LOG_TRACE;   // Trace logging, intended for internal use only
TraceLogLevel LOG_ALL;     // Display all logs
```

> Note: Organized by priority level

#### LOG_NONE

Disable logging

Language | Symbol
--- | ---
C | `TraceLogLevel LOG_NONE;`
Swift | ``TraceLevel/none``

#### LOG_FATAL

Fatal logging, used to abort program: exit(EXIT_FAILURE)

Language | Symbol
--- | ---
C | `TraceLogLevel LOG_FATAL;`
Swift | ``TraceLevel/fatal``

#### LOG_ERROR

Error logging, used on unrecoverable failures

Language | Symbol
--- | ---
C | `TraceLogLevel LOG_ERROR;`
Swift | ``TraceLevel/error``

#### LOG_WARNING

Warning logging, used on recoverable failures

Language | Symbol
--- | ---
C | `TraceLogLevel LOG_WARNING;`
Swift | ``TraceLevel/warning``

#### LOG_INFO

Info logging, used for program execution info

Language | Symbol
--- | ---
C | `TraceLogLevel LOG_INFO;`
Swift | ``TraceLevel/info``

#### LOG_DEBUG

Debug logging, used for internal debugging, it should be disabled on release builds

Language | Symbol
--- | ---
C | `TraceLogLevel LOG_DEBUG;`
Swift | ``TraceLevel/debug``

#### LOG_TRACE

Trace logging, intended for internal use only

Language | Symbol
--- | ---
C | `TraceLogLevel LOG_TRACE;`
Swift | ``TraceLevel/trace``

#### LOG_ALL

Display all logs

Language | Symbol
--- | ---
C | `TraceLogLevel LOG_ALL;`
Swift | ``TraceLevel/all``

### Keyboard keys (US keyboard layout)

```mm
KeyboardKey KEY_VOLUME_DOWN;   // Key: Android volume down button
KeyboardKey KEY_VOLUME_UP;     // Key: Android volume up button
KeyboardKey KEY_MENU;          // Key: Android menu button
KeyboardKey KEY_BACK;          // Key: Android back button
KeyboardKey KEY_KP_EQUAL;      // Key: Keypad =
KeyboardKey KEY_KP_ENTER;      // Key: Keypad Enter
KeyboardKey KEY_KP_ADD;        // Key: Keypad +
KeyboardKey KEY_KP_SUBTRACT;   // Key: Keypad -
KeyboardKey KEY_KP_MULTIPLY;   // Key: Keypad *
KeyboardKey KEY_KP_DIVIDE;     // Key: Keypad /
KeyboardKey KEY_KP_DECIMAL;    // Key: Keypad .
KeyboardKey KEY_KP_9;          // Key: Keypad 9
KeyboardKey KEY_KP_8;          // Key: Keypad 8
KeyboardKey KEY_KP_7;          // Key: Keypad 7
KeyboardKey KEY_KP_6;          // Key: Keypad 6
KeyboardKey KEY_KP_5;          // Key: Keypad 5
KeyboardKey KEY_KP_4;          // Key: Keypad 4
KeyboardKey KEY_KP_3;          // Key: Keypad 3
KeyboardKey KEY_KP_2;          // Key: Keypad 2
KeyboardKey KEY_KP_1;          // Key: Keypad 1
KeyboardKey KEY_KP_0;          // Key: Keypad 0
KeyboardKey KEY_KB_MENU;       // Key: KB menu
KeyboardKey KEY_RIGHT_SUPER;   // Key: Super right
KeyboardKey KEY_RIGHT_ALT;     // Key: Alt right
KeyboardKey KEY_RIGHT_CONTROL; // Key: Control right
KeyboardKey KEY_RIGHT_SHIFT;   // Key: Shift right
KeyboardKey KEY_LEFT_SUPER;    // Key: Super left
KeyboardKey KEY_LEFT_ALT;      // Key: Alt left
KeyboardKey KEY_LEFT_CONTROL;  // Key: Control left
KeyboardKey KEY_LEFT_SHIFT;    // Key: Shift left
KeyboardKey KEY_F12;           // Key: F12
KeyboardKey KEY_F11;           // Key: F11
KeyboardKey KEY_F10;           // Key: F10
KeyboardKey KEY_F9;            // Key: F9
KeyboardKey KEY_F8;            // Key: F8
KeyboardKey KEY_F7;            // Key: F7
KeyboardKey KEY_F6;            // Key: F6
KeyboardKey KEY_F5;            // Key: F5
KeyboardKey KEY_F4;            // Key: F4
KeyboardKey KEY_F3;            // Key: F3
KeyboardKey KEY_F2;            // Key: F2
KeyboardKey KEY_F1;            // Key: F1
KeyboardKey KEY_PAUSE;         // Key: Pause
KeyboardKey KEY_PRINT_SCREEN;  // Key: Print screen
KeyboardKey KEY_NUM_LOCK;      // Key: Num lock
KeyboardKey KEY_SCROLL_LOCK;   // Key: Scroll down
KeyboardKey KEY_CAPS_LOCK;     // Key: Caps lock
KeyboardKey KEY_END;           // Key: End
KeyboardKey KEY_HOME;          // Key: Home
KeyboardKey KEY_PAGE_DOWN;     // Key: Page down
KeyboardKey KEY_PAGE_UP;       // Key: Page up
KeyboardKey KEY_UP;            // Key: Cursor up
KeyboardKey KEY_DOWN;          // Key: Cursor down
KeyboardKey KEY_LEFT;          // Key: Cursor left
KeyboardKey KEY_RIGHT;         // Key: Cursor right
KeyboardKey KEY_DELETE;        // Key: Del
KeyboardKey KEY_INSERT;        // Key: Ins
KeyboardKey KEY_BACKSPACE;     // Key: Backspace
KeyboardKey KEY_TAB;           // Key: Tab
KeyboardKey KEY_ENTER;         // Key: Enter
KeyboardKey KEY_ESCAPE;        // Key: Esc
KeyboardKey KEY_SPACE;         // Key: Space
KeyboardKey KEY_GRAVE;         // Key: `
KeyboardKey KEY_RIGHT_BRACKET; // Key: ]
KeyboardKey KEY_BACKSLASH;     // Key: '\'
KeyboardKey KEY_LEFT_BRACKET;  // Key: [
KeyboardKey KEY_Z;             // Key: Z | z
KeyboardKey KEY_Y;             // Key: Y | y
KeyboardKey KEY_X;             // Key: X | x
KeyboardKey KEY_W;             // Key: W | w
KeyboardKey KEY_V;             // Key: V | v
KeyboardKey KEY_U;             // Key: U | u
KeyboardKey KEY_T;             // Key: T | t
KeyboardKey KEY_S;             // Key: S | s
KeyboardKey KEY_R;             // Key: R | r
KeyboardKey KEY_Q;             // Key: Q | q
KeyboardKey KEY_P;             // Key: P | p
KeyboardKey KEY_O;             // Key: O | o
KeyboardKey KEY_N;             // Key: N | n
KeyboardKey KEY_M;             // Key: M | m
KeyboardKey KEY_L;             // Key: L | l
KeyboardKey KEY_K;             // Key: K | k
KeyboardKey KEY_J;             // Key: J | j
KeyboardKey KEY_I;             // Key: I | i
KeyboardKey KEY_H;             // Key: H | h
KeyboardKey KEY_G;             // Key: G | g
KeyboardKey KEY_F;             // Key: F | f
KeyboardKey KEY_E;             // Key: E | e
KeyboardKey KEY_D;             // Key: D | d
KeyboardKey KEY_C;             // Key: C | c
KeyboardKey KEY_B;             // Key: B | b
KeyboardKey KEY_A;             // Key: A | a
KeyboardKey KEY_EQUAL;         // Key: =
KeyboardKey KEY_SEMICOLON;     // Key: ;
KeyboardKey KEY_NINE;          // Key: 9
KeyboardKey KEY_EIGHT;         // Key: 8
KeyboardKey KEY_SEVEN;         // Key: 7
KeyboardKey KEY_SIX;           // Key: 6
KeyboardKey KEY_FIVE;          // Key: 5
KeyboardKey KEY_FOUR;          // Key: 4
KeyboardKey KEY_THREE;         // Key: 3
KeyboardKey KEY_TWO;           // Key: 2
KeyboardKey KEY_ONE;           // Key: 1
KeyboardKey KEY_ZERO;          // Key: 0
KeyboardKey KEY_SLASH;         // Key: /
KeyboardKey KEY_PERIOD;        // Key: .
KeyboardKey KEY_MINUS;         // Key: -
KeyboardKey KEY_COMMA;         // Key: ,
KeyboardKey KEY_APOSTROPHE;    // Key: '
KeyboardKey KEY_NULL;          // Key: NULL, used for no key pressed
```

> Note: Use GetKeyPressed() to allow redefining keys for alternative layouts

#### KEY_VOLUME_DOWN

Key: Android volume down button

Language | Symbol
--- | ---
C | `KeyboardKey KEY_VOLUME_DOWN;`
Swift | ``Keyboard/volumeDown``

#### KEY_VOLUME_UP

Key: Android volume up button

Language | Symbol
--- | ---
C | `KeyboardKey KEY_VOLUME_UP;`
Swift | ``Keyboard/volumeUp``

#### KEY_MENU

Key: Android menu button

Language | Symbol
--- | ---
C | `KeyboardKey KEY_MENU;`
Swift | ``Keyboard/menu``

#### KEY_BACK

Key: Android back button

Language | Symbol
--- | ---
C | `KeyboardKey KEY_BACK;`
Swift | ``Keyboard/back``

#### KEY_KP_EQUAL

Key: Keypad =

Language | Symbol
--- | ---
C | `KeyboardKey KEY_KP_EQUAL;`
Swift | ``Keyboard/keypadEqual``

#### KEY_KP_ENTER

Key: Keypad Enter

Language | Symbol
--- | ---
C | `KeyboardKey KEY_KP_ENTER;`
Swift | ``Keyboard/keypadEnter``

#### KEY_KP_ADD

Key: Keypad +

Language | Symbol
--- | ---
C | `KeyboardKey KEY_KP_ADD;`
Swift | ``Keyboard/keypadAdd``

#### KEY_KP_SUBTRACT

Key: Keypad -

Language | Symbol
--- | ---
C | `KeyboardKey KEY_KP_SUBTRACT;`
Swift | ``Keyboard/keypadSubstract``

#### KEY_KP_MULTIPLY

Key: Keypad *

Language | Symbol
--- | ---
C | `KeyboardKey KEY_KP_MULTIPLY;`
Swift | ``Keyboard/keypadMultiply``

#### KEY_KP_DIVIDE

Key: Keypad /

Language | Symbol
--- | ---
C | `KeyboardKey KEY_KP_DIVIDE;`
Swift | ``Keyboard/keypadDivide``

#### KEY_KP_DECIMAL

Key: Keypad .

Language | Symbol
--- | ---
C | `KeyboardKey KEY_KP_DECIMAL;`
Swift | ``Keyboard/keypadDecimal``

#### KEY_KP_9

Key: Keypad 9

Language | Symbol
--- | ---
C | `KeyboardKey KEY_KP_9;`
Swift | ``Keyboard/keypadNine``

#### KEY_KP_8

Key: Keypad 8

Language | Symbol
--- | ---
C | `KeyboardKey KEY_KP_8;`
Swift | ``Keyboard/keypadEight``

#### KEY_KP_7

Key: Keypad 7

Language | Symbol
--- | ---
C | `KeyboardKey KEY_KP_7;`
Swift | ``Keyboard/keypadSeven``

#### KEY_KP_6

Key: Keypad 6

Language | Symbol
--- | ---
C | `KeyboardKey KEY_KP_6;`
Swift | ``Keyboard/keypadSix``

#### KEY_KP_5

Key: Keypad 5

Language | Symbol
--- | ---
C | `KeyboardKey KEY_KP_5;`
Swift | ``Keyboard/keypadFive``

#### KEY_KP_4

Key: Keypad 4

Language | Symbol
--- | ---
C | `KeyboardKey KEY_KP_4;`
Swift | ``Keyboard/keypadFour``

#### KEY_KP_3

Key: Keypad 3

Language | Symbol
--- | ---
C | `KeyboardKey KEY_KP_3;`
Swift | ``Keyboard/keypadThree``

#### KEY_KP_2

Key: Keypad 2

Language | Symbol
--- | ---
C | `KeyboardKey KEY_KP_2;`
Swift | ``Keyboard/keypadTwo``

#### KEY_KP_1

Key: Keypad 1

Language | Symbol
--- | ---
C | `KeyboardKey KEY_KP_1;`
Swift | ``Keyboard/keypadOne``

#### KEY_KP_0

Key: Keypad 0

Language | Symbol
--- | ---
C | `KeyboardKey KEY_KP_0;`
Swift | ``Keyboard/keypadZero``

#### KEY_KB_MENU

Key: KB menu

Language | Symbol
--- | ---
C | `KeyboardKey KEY_KB_MENU;`
Swift | ``Keyboard/menu``

#### KEY_RIGHT_SUPER

Key: Super right

Language | Symbol
--- | ---
C | `KeyboardKey KEY_RIGHT_SUPER;`
Swift | ``Keyboard/super/right``

#### KEY_RIGHT_ALT

Key: Alt right

Language | Symbol
--- | ---
C | `KeyboardKey KEY_RIGHT_ALT;`
Swift | ``Keyboard/alt/right``

#### KEY_RIGHT_CONTROL

Key: Control right

Language | Symbol
--- | ---
C | `KeyboardKey KEY_RIGHT_CONTROL;`
Swift | ``Keyboard/control/right``

#### KEY_RIGHT_SHIFT

Key: Shift right

Language | Symbol
--- | ---
C | `KeyboardKey KEY_RIGHT_SHIFT;`
Swift | ``Keyboard/shift/right``

#### KEY_LEFT_SUPER

Key: Super left

Language | Symbol
--- | ---
C | `KeyboardKey KEY_LEFT_SUPER;`
Swift | ``Keyboard/super/left``

#### KEY_LEFT_ALT

Key: Alt left

Language | Symbol
--- | ---
C | `KeyboardKey KEY_LEFT_ALT;`
Swift | ``Keyboard/alt/left``

#### KEY_LEFT_CONTROL

Key: Control left

Language | Symbol
--- | ---
C | `KeyboardKey KEY_LEFT_CONTROL;`
Swift | ``Keyboard/control/left``

#### KEY_LEFT_SHIFT

Key: Shift left

Language | Symbol
--- | ---
C | `KeyboardKey KEY_LEFT_SHIFT;`
Swift | ``Keyboard/shift/left``

#### KEY_F12

Key: F12

Language | Symbol
--- | ---
C | `KeyboardKey KEY_F12;`
Swift | ``Keyboard/f12``

#### KEY_F11

Key: F11

Language | Symbol
--- | ---
C | `KeyboardKey KEY_F11;`
Swift | ``Keyboard/f11``

#### KEY_F10

Key: F10

Language | Symbol
--- | ---
C | `KeyboardKey KEY_F10;`
Swift | ``Keyboard/f10``

#### KEY_F9

Key: F9

Language | Symbol
--- | ---
C | `KeyboardKey KEY_F9;`
Swift | ``Keyboard/f9``

#### KEY_F8

Key: F8

Language | Symbol
--- | ---
C | `KeyboardKey KEY_F8;`
Swift | ``Keyboard/f8``

#### KEY_F7

Key: F7

Language | Symbol
--- | ---
C | `KeyboardKey KEY_F7;`
Swift | ``Keyboard/f7``

#### KEY_F6

Key: F6

Language | Symbol
--- | ---
C | `KeyboardKey KEY_F6;`
Swift | ``Keyboard/f6``

#### KEY_F5

Key: F5

Language | Symbol
--- | ---
C | `KeyboardKey KEY_F5;`
Swift | ``Keyboard/f5``

#### KEY_F4

Key: F4

Language | Symbol
--- | ---
C | `KeyboardKey KEY_F4;`
Swift | ``Keyboard/f4``

#### KEY_F3

Key: F3

Language | Symbol
--- | ---
C | `KeyboardKey KEY_F3;`
Swift | ``Keyboard/f3``

#### KEY_F2

Key: F2

Language | Symbol
--- | ---
C | `KeyboardKey KEY_F2;`
Swift | ``Keyboard/f2``

#### KEY_F1

Key: F1

Language | Symbol
--- | ---
C | `KeyboardKey KEY_F1;`
Swift | ``Keyboard/f1``

#### KEY_PAUSE

Key: Pause

Language | Symbol
--- | ---
C | `KeyboardKey KEY_PAUSE;`
Swift | ``Keyboard/pause``

#### KEY_PRINT_SCREEN

Key: Print screen

Language | Symbol
--- | ---
C | `KeyboardKey KEY_PRINT_SCREEN;`
Swift | ``Keyboard/printScreen``

#### KEY_NUM_LOCK

Key: Num lock

Language | Symbol
--- | ---
C | `KeyboardKey KEY_NUM_LOCK;`
Swift | ``Keyboard/numLock``

#### KEY_SCROLL_LOCK

Key: Scroll down

Language | Symbol
--- | ---
C | `KeyboardKey KEY_SCROLL_LOCK;`
Swift | ``Keyboard/scrollLock``

#### KEY_CAPS_LOCK

Key: Caps lock

Language | Symbol
--- | ---
C | `KeyboardKey KEY_CAPS_LOCK;`
Swift | ``Keyboard/capsLock``

#### KEY_END

Key: End

Language | Symbol
--- | ---
C | `KeyboardKey KEY_END;`
Swift | ``Keyboard/end``

#### KEY_HOME

Key: Home

Language | Symbol
--- | ---
C | `KeyboardKey KEY_HOME;`
Swift | ``Keyboard/home``

#### KEY_PAGE_DOWN

Key: Page down

Language | Symbol
--- | ---
C | `KeyboardKey KEY_PAGE_DOWN;`
Swift | ``Keyboard/pageDown``

#### KEY_PAGE_UP

Key: Page up

Language | Symbol
--- | ---
C | `KeyboardKey KEY_PAGE_UP;`
Swift | ``Keyboard/pageUp``

#### KEY_UP

Key: Cursor up

Language | Symbol
--- | ---
C | `KeyboardKey KEY_UP;`
Swift | ``Keyboard/up``

#### KEY_DOWN

Key: Cursor down

Language | Symbol
--- | ---
C | `KeyboardKey KEY_DOWN;`
Swift | ``Keyboard/down``

#### KEY_LEFT

Key: Cursor left

Language | Symbol
--- | ---
C | `KeyboardKey KEY_LEFT;`
Swift | ``Keyboard/left``

#### KEY_RIGHT

Key: Cursor right

Language | Symbol
--- | ---
C | `KeyboardKey KEY_RIGHT;`
Swift | ``Keyboard/right``

#### KEY_DELETE

Key: Del

Language | Symbol
--- | ---
C | `KeyboardKey KEY_DELETE;`
Swift | ``Keyboard/delete``

#### KEY_INSERT

Key: Ins

Language | Symbol
--- | ---
C | `KeyboardKey KEY_INSERT;`
Swift | ``Keyboard/insert``

#### KEY_BACKSPACE

Key: Backspace

Language | Symbol
--- | ---
C | `KeyboardKey KEY_BACKSPACE;`
Swift | ``Keyboard/backspace``

#### KEY_TAB

Key: Tab

Language | Symbol
--- | ---
C | `KeyboardKey KEY_TAB;`
Swift | ``Keyboard/tab``

#### KEY_ENTER

Key: Enter

Language | Symbol
--- | ---
C | `KeyboardKey KEY_ENTER;`
Swift | ``Keyboard/enter``

#### KEY_ESCAPE

Key: Esc

Language | Symbol
--- | ---
C | `KeyboardKey KEY_ESCAPE;`
Swift | ``Keyboard/escape``

#### KEY_SPACE

Key: Space

Language | Symbol
--- | ---
C | `KeyboardKey KEY_SPACE;`
Swift | ``Keyboard/space``

#### KEY_GRAVE

Key: `

Language | Symbol
--- | ---
C | `KeyboardKey KEY_GRAVE;`
Swift | ``Keyboard/grave``

#### KEY_RIGHT_BRACKET

Key: ]

Language | Symbol
--- | ---
C | `KeyboardKey KEY_RIGHT_BRACKET;`
Swift | ``Keyboard/rbracket``

#### KEY_BACKSLASH

Key: '\'

Language | Symbol
--- | ---
C | `KeyboardKey KEY_BACKSLASH;`
Swift | ``Keyboard/backslash``

#### KEY_LEFT_BRACKET

Key: [

Language | Symbol
--- | ---
C | `KeyboardKey KEY_LEFT_BRACKET;`
Swift | ``Keyboard/lbracket``

#### KEY_Z

Key: Z | z

Language | Symbol
--- | ---
C | `KeyboardKey KEY_Z;`
Swift | ``Keyboard/z``

#### KEY_Y

Key: Y | y

Language | Symbol
--- | ---
C | `KeyboardKey KEY_Y;`
Swift | ``Keyboard/y``

#### KEY_X

Key: X | x

Language | Symbol
--- | ---
C | `KeyboardKey KEY_X;`
Swift | ``Keyboard/x``

#### KEY_W

Key: W | w

Language | Symbol
--- | ---
C | `KeyboardKey KEY_W;`
Swift | ``Keyboard/w``

#### KEY_V

Key: V | v

Language | Symbol
--- | ---
C | `KeyboardKey KEY_V;`
Swift | ``Keyboard/v``

#### KEY_U

Key: U | u

Language | Symbol
--- | ---
C | `KeyboardKey KEY_U;`
Swift | ``Keyboard/u``

#### KEY_T

Key: T | t

Language | Symbol
--- | ---
C | `KeyboardKey KEY_T;`
Swift | ``Keyboard/t``

#### KEY_S

Key: S | s

Language | Symbol
--- | ---
C | `KeyboardKey KEY_S;`
Swift | ``Keyboard/s``

#### KEY_R

Key: R | r

Language | Symbol
--- | ---
C | `KeyboardKey KEY_R;`
Swift | ``Keyboard/r``

#### KEY_Q

Key: Q | q

Language | Symbol
--- | ---
C | `KeyboardKey KEY_Q;`
Swift | ``Keyboard/q``

#### KEY_P

Key: P | p

Language | Symbol
--- | ---
C | `KeyboardKey KEY_P;`
Swift | ``Keyboard/p``

#### KEY_O

Key: O | o

Language | Symbol
--- | ---
C | `KeyboardKey KEY_O;`
Swift | ``Keyboard/o``

#### KEY_N

Key: N | n

Language | Symbol
--- | ---
C | `KeyboardKey KEY_N;`
Swift | ``Keyboard/n``

#### KEY_M

Key: M | m

Language | Symbol
--- | ---
C | `KeyboardKey KEY_M;`
Swift | ``Keyboard/m``

#### KEY_L

Key: L | l

Language | Symbol
--- | ---
C | `KeyboardKey KEY_L;`
Swift | ``Keyboard/l``

#### KEY_K

Key: K | k

Language | Symbol
--- | ---
C | `KeyboardKey KEY_K;`
Swift | ``Keyboard/k``

#### KEY_J

Key: J | j

Language | Symbol
--- | ---
C | `KeyboardKey KEY_J;`
Swift | ``Keyboard/j``

#### KEY_I

Key: I | i

Language | Symbol
--- | ---
C | `KeyboardKey KEY_I;`
Swift | ``Keyboard/i``

#### KEY_H

Key: H | h

Language | Symbol
--- | ---
C | `KeyboardKey KEY_H;`
Swift | ``Keyboard/h``

#### KEY_G

Key: G | g

Language | Symbol
--- | ---
C | `KeyboardKey KEY_G;`
Swift | ``Keyboard/g``

#### KEY_F

Key: F | f

Language | Symbol
--- | ---
C | `KeyboardKey KEY_F;`
Swift | ``Keyboard/f``

#### KEY_E

Key: E | e

Language | Symbol
--- | ---
C | `KeyboardKey KEY_E;`
Swift | ``Keyboard/e``

#### KEY_D

Key: D | d

Language | Symbol
--- | ---
C | `KeyboardKey KEY_D;`
Swift | ``Keyboard/d``

#### KEY_C

Key: C | c

Language | Symbol
--- | ---
C | `KeyboardKey KEY_C;`
Swift | ``Keyboard/c``

#### KEY_B

Key: B | b

Language | Symbol
--- | ---
C | `KeyboardKey KEY_B;`
Swift | ``Keyboard/b``

#### KEY_A

Key: A | a

Language | Symbol
--- | ---
C | `KeyboardKey KEY_A;`
Swift | ``Keyboard/a``

#### KEY_EQUAL

Key: =

Language | Symbol
--- | ---
C | `KeyboardKey KEY_EQUAL;`
Swift | ``Keyboard/equal``

#### KEY_SEMICOLON

Key: ;

Language | Symbol
--- | ---
C | `KeyboardKey KEY_SEMICOLON;`
Swift | ``Keyboard/semicolon``

#### KEY_NINE

Key: 9

Language | Symbol
--- | ---
C | `KeyboardKey KEY_NINE;`
Swift | ``Keyboard/none``

#### KEY_EIGHT

Key: 8

Language | Symbol
--- | ---
C | `KeyboardKey KEY_EIGHT;`
Swift | ``Keyboard/eight``

#### KEY_SEVEN

Key: 7

Language | Symbol
--- | ---
C | `KeyboardKey KEY_SEVEN;`
Swift | ``Keyboard/seven``

#### KEY_SIX

Key: 6

Language | Symbol
--- | ---
C | `KeyboardKey KEY_SIX;`
Swift | ``Keyboard/six``

#### KEY_FIVE

Key: 5

Language | Symbol
--- | ---
C | `KeyboardKey KEY_FIVE;`
Swift | ``Keyboard/five``

#### KEY_FOUR

Key: 4

Language | Symbol
--- | ---
C | `KeyboardKey KEY_FOUR;`
Swift | ``Keyboard/four``

#### KEY_THREE

Key: 3

Language | Symbol
--- | ---
C | `KeyboardKey KEY_THREE;`
Swift | ``Keyboard/three``

#### KEY_TWO

Key: 2

Language | Symbol
--- | ---
C | `KeyboardKey KEY_TWO;`
Swift | ``Keyboard/two``

#### KEY_ONE

Key: 1

Language | Symbol
--- | ---
C | `KeyboardKey KEY_ONE;`
Swift | ``Keyboard/one``

#### KEY_ZERO

Key: 0

Language | Symbol
--- | ---
C | `KeyboardKey KEY_ZERO;`
Swift | ``Keyboard/zero``

#### KEY_SLASH

Key: /

Language | Symbol
--- | ---
C | `KeyboardKey KEY_SLASH;`
Swift | ``Keyboard/slash``

#### KEY_PERIOD

Key: .

Language | Symbol
--- | ---
C | `KeyboardKey KEY_PERIOD;`
Swift | ``Keyboard/period``

#### KEY_MINUS

Key: -

Language | Symbol
--- | ---
C | `KeyboardKey KEY_MINUS;`
Swift | ``Keyboard/minus``

#### KEY_COMMA

Key: ,

Language | Symbol
--- | ---
C | `KeyboardKey KEY_COMMA;`
Swift | ``Keyboard/comma``

#### KEY_APOSTROPHE

Key: '

Language | Symbol
--- | ---
C | `KeyboardKey KEY_APOSTROPHE;`
Swift | ``Keyboard/apostrophe``

#### KEY_NULL

Key: NULL, used for no key pressed

Language | Symbol
--- | ---
C | `KeyboardKey KEY_NULL;`
Swift | ``KeyboardButton/null``

### Add backwards compatibility support for deprecated names

```mm
#define MOUSE_LEFT_BUTTON;
#define MOUSE_RIGHT_BUTTON;
#define MOUSE_MIDDLE_BUTTON;
```

#### MOUSE_LEFT_BUTTON

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define MOUSE_LEFT_BUTTON;`
Swift | ``Mouse/left``

#### MOUSE_RIGHT_BUTTON

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define MOUSE_RIGHT_BUTTON;`
Swift | ``Mouse/right``

#### MOUSE_MIDDLE_BUTTON

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define MOUSE_MIDDLE_BUTTON;`
Swift | ``Mouse/middle``

### Mouse buttons

```mm
MouseButton MOUSE_BUTTON_BACK;    // Mouse button back (advanced mouse device)
MouseButton MOUSE_BUTTON_FORWARD; // Mouse button fordward (advanced mouse device)
MouseButton MOUSE_BUTTON_EXTRA;   // Mouse button extra (advanced mouse device)
MouseButton MOUSE_BUTTON_SIDE;    // Mouse button side (advanced mouse device)
MouseButton MOUSE_BUTTON_MIDDLE;  // Mouse button middle (pressed wheel)
MouseButton MOUSE_BUTTON_RIGHT;   // Mouse button right
MouseButton MOUSE_BUTTON_LEFT;    // Mouse button left
```

#### MOUSE_BUTTON_BACK

Mouse button back (advanced mouse device)

Language | Symbol
--- | ---
C | `MouseButton MOUSE_BUTTON_BACK;`
Swift | ``Mouse/back``

#### MOUSE_BUTTON_FORWARD

Mouse button fordward (advanced mouse device)

Language | Symbol
--- | ---
C | `MouseButton MOUSE_BUTTON_FORWARD;`
Swift | ``Mouse/forward``

#### MOUSE_BUTTON_EXTRA

Mouse button extra (advanced mouse device)

Language | Symbol
--- | ---
C | `MouseButton MOUSE_BUTTON_EXTRA;`
Swift | ``Mouse/extra``

#### MOUSE_BUTTON_SIDE

Mouse button side (advanced mouse device)

Language | Symbol
--- | ---
C | `MouseButton MOUSE_BUTTON_SIDE;`
Swift | ``Mouse/side``

#### MOUSE_BUTTON_MIDDLE

Mouse button middle (pressed wheel)

Language | Symbol
--- | ---
C | `MouseButton MOUSE_BUTTON_MIDDLE;`
Swift | ``Mouse/middle``

#### MOUSE_BUTTON_RIGHT

Mouse button right

Language | Symbol
--- | ---
C | `MouseButton MOUSE_BUTTON_RIGHT;`
Swift | ``Mouse/right``

#### MOUSE_BUTTON_LEFT

Mouse button left

Language | Symbol
--- | ---
C | `MouseButton MOUSE_BUTTON_LEFT;`
Swift | ``Mouse/left``

### Mouse cursor

```mm
MouseCursor MOUSE_CURSOR_NOT_ALLOWED;   // The operation-not-allowed shape
MouseCursor MOUSE_CURSOR_RESIZE_ALL;    // The omni-directional resize/move cursor shape
MouseCursor MOUSE_CURSOR_RESIZE_NESW;   // The top-right to bottom-left diagonal resize/move arrow shape
MouseCursor MOUSE_CURSOR_RESIZE_NWSE;   // Top-left to bottom-right diagonal resize/move arrow shape
MouseCursor MOUSE_CURSOR_RESIZE_NS;     // Vertical resize/move arrow shape
MouseCursor MOUSE_CURSOR_RESIZE_EW;     // Horizontal resize/move arrow shape
MouseCursor MOUSE_CURSOR_POINTING_HAND; // Pointing hand cursor
MouseCursor MOUSE_CURSOR_CROSSHAIR;     // Cross shape
MouseCursor MOUSE_CURSOR_IBEAM;         // Text writing cursor shape
MouseCursor MOUSE_CURSOR_ARROW;         // Arrow shape
MouseCursor MOUSE_CURSOR_DEFAULT;       // Default pointer shape
```

#### MOUSE_CURSOR_NOT_ALLOWED

The operation-not-allowed shape

Language | Symbol
--- | ---
C | `MouseCursor MOUSE_CURSOR_NOT_ALLOWED;`
Swift | ``MouseCursor/forbidden``

#### MOUSE_CURSOR_RESIZE_ALL

The omni-directional resize/move cursor shape

Language | Symbol
--- | ---
C | `MouseCursor MOUSE_CURSOR_RESIZE_ALL;`
Swift | ``MouseCursor/resize``

#### MOUSE_CURSOR_RESIZE_NESW

The top-right to bottom-left diagonal resize/move arrow shape

Language | Symbol
--- | ---
C | `MouseCursor MOUSE_CURSOR_RESIZE_NESW;`
Swift | ``MouseCursor/resizeNESW``

#### MOUSE_CURSOR_RESIZE_NWSE

Top-left to bottom-right diagonal resize/move arrow shape

Language | Symbol
--- | ---
C | `MouseCursor MOUSE_CURSOR_RESIZE_NWSE;`
Swift | ``MouseCursor/resizeNWSE``

#### MOUSE_CURSOR_RESIZE_NS

Vertical resize/move arrow shape

Language | Symbol
--- | ---
C | `MouseCursor MOUSE_CURSOR_RESIZE_NS;`
Swift | ``MouseCursor/resizeNS``

#### MOUSE_CURSOR_RESIZE_EW

Horizontal resize/move arrow shape

Language | Symbol
--- | ---
C | `MouseCursor MOUSE_CURSOR_RESIZE_EW;`
Swift | ``MouseCursor/resizeEW``

#### MOUSE_CURSOR_POINTING_HAND

Pointing hand cursor

Language | Symbol
--- | ---
C | `MouseCursor MOUSE_CURSOR_POINTING_HAND;`
Swift | ``MouseCursor/pointingHand``

#### MOUSE_CURSOR_CROSSHAIR

Cross shape

Language | Symbol
--- | ---
C | `MouseCursor MOUSE_CURSOR_CROSSHAIR;`
Swift | ``MouseCursor/crosshair``

#### MOUSE_CURSOR_IBEAM

Text writing cursor shape

Language | Symbol
--- | ---
C | `MouseCursor MOUSE_CURSOR_IBEAM;`
Swift | ``MouseCursor/text``

#### MOUSE_CURSOR_ARROW

Arrow shape

Language | Symbol
--- | ---
C | `MouseCursor MOUSE_CURSOR_ARROW;`
Swift | ``MouseCursor/arrow``

#### MOUSE_CURSOR_DEFAULT

Default pointer shape

Language | Symbol
--- | ---
C | `MouseCursor MOUSE_CURSOR_DEFAULT;`
Swift | ``MouseCursor/default``

### Gamepad buttons

```mm
GamepadButton GAMEPAD_BUTTON_RIGHT_THUMB;      // Gamepad joystick pressed button right
GamepadButton GAMEPAD_BUTTON_LEFT_THUMB;       // Gamepad joystick pressed button left
GamepadButton GAMEPAD_BUTTON_MIDDLE_RIGHT;     // Gamepad center buttons, right one (i.e. PS3: Start)
GamepadButton GAMEPAD_BUTTON_MIDDLE;           // Gamepad center buttons, middle one (i.e. PS3: PS, Xbox: XBOX)
GamepadButton GAMEPAD_BUTTON_MIDDLE_LEFT;      // Gamepad center buttons, left one (i.e. PS3: Select)
GamepadButton GAMEPAD_BUTTON_RIGHT_TRIGGER_2;  // Gamepad top/back trigger right (second), it could be a trailing button
GamepadButton GAMEPAD_BUTTON_RIGHT_TRIGGER_1;  // Gamepad top/back trigger right (one), it could be a trailing button
GamepadButton GAMEPAD_BUTTON_LEFT_TRIGGER_2;   // Gamepad top/back trigger left (second), it could be a trailing button
GamepadButton GAMEPAD_BUTTON_LEFT_TRIGGER_1;   // Gamepad top/back trigger left (first), it could be a trailing button
GamepadButton GAMEPAD_BUTTON_RIGHT_FACE_LEFT;  // Gamepad right button left (i.e. PS3: Circle, Xbox: B)
GamepadButton GAMEPAD_BUTTON_RIGHT_FACE_DOWN;  // Gamepad right button down (i.e. PS3: Cross, Xbox: A)
GamepadButton GAMEPAD_BUTTON_RIGHT_FACE_RIGHT; // Gamepad right button right (i.e. PS3: Square, Xbox: X)
GamepadButton GAMEPAD_BUTTON_RIGHT_FACE_UP;    // Gamepad right button up (i.e. PS3: Triangle, Xbox: Y)
GamepadButton GAMEPAD_BUTTON_LEFT_FACE_LEFT;   // Gamepad left DPAD left button
GamepadButton GAMEPAD_BUTTON_LEFT_FACE_DOWN;   // Gamepad left DPAD down button
GamepadButton GAMEPAD_BUTTON_LEFT_FACE_RIGHT;  // Gamepad left DPAD right button
GamepadButton GAMEPAD_BUTTON_LEFT_FACE_UP;     // Gamepad left DPAD up button
GamepadButton GAMEPAD_BUTTON_UNKNOWN;          // Unknown button, just for error checking
```

#### GAMEPAD_BUTTON_RIGHT_THUMB

Gamepad joystick pressed button right

Language | Symbol
--- | ---
C | `GamepadButton GAMEPAD_BUTTON_RIGHT_THUMB;`
Swift | —

#### GAMEPAD_BUTTON_LEFT_THUMB

Gamepad joystick pressed button left

Language | Symbol
--- | ---
C | `GamepadButton GAMEPAD_BUTTON_LEFT_THUMB;`
Swift | —

#### GAMEPAD_BUTTON_MIDDLE_RIGHT

Gamepad center buttons, right one (i.e. PS3: Start)

Language | Symbol
--- | ---
C | `GamepadButton GAMEPAD_BUTTON_MIDDLE_RIGHT;`
Swift | —

#### GAMEPAD_BUTTON_MIDDLE

Gamepad center buttons, middle one (i.e. PS3: PS, Xbox: XBOX)

Language | Symbol
--- | ---
C | `GamepadButton GAMEPAD_BUTTON_MIDDLE;`
Swift | —

#### GAMEPAD_BUTTON_MIDDLE_LEFT

Gamepad center buttons, left one (i.e. PS3: Select)

Language | Symbol
--- | ---
C | `GamepadButton GAMEPAD_BUTTON_MIDDLE_LEFT;`
Swift | —

#### GAMEPAD_BUTTON_RIGHT_TRIGGER_2

Gamepad top/back trigger right (second), it could be a trailing button

Language | Symbol
--- | ---
C | `GamepadButton GAMEPAD_BUTTON_RIGHT_TRIGGER_2;`
Swift | —

#### GAMEPAD_BUTTON_RIGHT_TRIGGER_1

Gamepad top/back trigger right (one), it could be a trailing button

Language | Symbol
--- | ---
C | `GamepadButton GAMEPAD_BUTTON_RIGHT_TRIGGER_1;`
Swift | —

#### GAMEPAD_BUTTON_LEFT_TRIGGER_2

Gamepad top/back trigger left (second), it could be a trailing button

Language | Symbol
--- | ---
C | `GamepadButton GAMEPAD_BUTTON_LEFT_TRIGGER_2;`
Swift | —

#### GAMEPAD_BUTTON_LEFT_TRIGGER_1

Gamepad top/back trigger left (first), it could be a trailing button

Language | Symbol
--- | ---
C | `GamepadButton GAMEPAD_BUTTON_LEFT_TRIGGER_1;`
Swift | —

#### GAMEPAD_BUTTON_RIGHT_FACE_LEFT

Gamepad right button left (i.e. PS3: Circle, Xbox: B)

Language | Symbol
--- | ---
C | `GamepadButton GAMEPAD_BUTTON_RIGHT_FACE_LEFT;`
Swift | —

#### GAMEPAD_BUTTON_RIGHT_FACE_DOWN

Gamepad right button down (i.e. PS3: Cross, Xbox: A)

Language | Symbol
--- | ---
C | `GamepadButton GAMEPAD_BUTTON_RIGHT_FACE_DOWN;`
Swift | —

#### GAMEPAD_BUTTON_RIGHT_FACE_RIGHT

Gamepad right button right (i.e. PS3: Square, Xbox: X)

Language | Symbol
--- | ---
C | `GamepadButton GAMEPAD_BUTTON_RIGHT_FACE_RIGHT;`
Swift | —

#### GAMEPAD_BUTTON_RIGHT_FACE_UP

Gamepad right button up (i.e. PS3: Triangle, Xbox: Y)

Language | Symbol
--- | ---
C | `GamepadButton GAMEPAD_BUTTON_RIGHT_FACE_UP;`
Swift | —

#### GAMEPAD_BUTTON_LEFT_FACE_LEFT

Gamepad left DPAD left button

Language | Symbol
--- | ---
C | `GamepadButton GAMEPAD_BUTTON_LEFT_FACE_LEFT;`
Swift | —

#### GAMEPAD_BUTTON_LEFT_FACE_DOWN

Gamepad left DPAD down button

Language | Symbol
--- | ---
C | `GamepadButton GAMEPAD_BUTTON_LEFT_FACE_DOWN;`
Swift | —

#### GAMEPAD_BUTTON_LEFT_FACE_RIGHT

Gamepad left DPAD right button

Language | Symbol
--- | ---
C | `GamepadButton GAMEPAD_BUTTON_LEFT_FACE_RIGHT;`
Swift | —

#### GAMEPAD_BUTTON_LEFT_FACE_UP

Gamepad left DPAD up button

Language | Symbol
--- | ---
C | `GamepadButton GAMEPAD_BUTTON_LEFT_FACE_UP;`
Swift | —

#### GAMEPAD_BUTTON_UNKNOWN

Unknown button, just for error checking

Language | Symbol
--- | ---
C | `GamepadButton GAMEPAD_BUTTON_UNKNOWN;`
Swift | —

### Gamepad axis

```mm
GamepadAxis GAMEPAD_AXIS_RIGHT_TRIGGER; // Gamepad back trigger right, pressure level: [1..-1]
GamepadAxis GAMEPAD_AXIS_LEFT_TRIGGER;  // Gamepad back trigger left, pressure level: [1..-1]
GamepadAxis GAMEPAD_AXIS_RIGHT_Y;       // Gamepad right stick Y axis
GamepadAxis GAMEPAD_AXIS_RIGHT_X;       // Gamepad right stick X axis
GamepadAxis GAMEPAD_AXIS_LEFT_Y;        // Gamepad left stick Y axis
GamepadAxis GAMEPAD_AXIS_LEFT_X;        // Gamepad left stick X axis
```

#### GAMEPAD_AXIS_RIGHT_TRIGGER

Gamepad back trigger right, pressure level: [1..-1]

Language | Symbol
--- | ---
C | `GamepadAxis GAMEPAD_AXIS_RIGHT_TRIGGER;`
Swift | —

#### GAMEPAD_AXIS_LEFT_TRIGGER

Gamepad back trigger left, pressure level: [1..-1]

Language | Symbol
--- | ---
C | `GamepadAxis GAMEPAD_AXIS_LEFT_TRIGGER;`
Swift | —

#### GAMEPAD_AXIS_RIGHT_Y

Gamepad right stick Y axis

Language | Symbol
--- | ---
C | `GamepadAxis GAMEPAD_AXIS_RIGHT_Y;`
Swift | —

#### GAMEPAD_AXIS_RIGHT_X

Gamepad right stick X axis

Language | Symbol
--- | ---
C | `GamepadAxis GAMEPAD_AXIS_RIGHT_X;`
Swift | —

#### GAMEPAD_AXIS_LEFT_Y

Gamepad left stick Y axis

Language | Symbol
--- | ---
C | `GamepadAxis GAMEPAD_AXIS_LEFT_Y;`
Swift | —

#### GAMEPAD_AXIS_LEFT_X

Gamepad left stick X axis

Language | Symbol
--- | ---
C | `GamepadAxis GAMEPAD_AXIS_LEFT_X;`
Swift | —

### Material map index

```mm
MaterialMapIndex MATERIAL_MAP_BRDF;       // Brdf material
MaterialMapIndex MATERIAL_MAP_PREFILTER;  // Prefilter material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
MaterialMapIndex MATERIAL_MAP_IRRADIANCE; // Irradiance material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
MaterialMapIndex MATERIAL_MAP_CUBEMAP;    // Cubemap material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
MaterialMapIndex MATERIAL_MAP_HEIGHT;     // Heightmap material
MaterialMapIndex MATERIAL_MAP_EMISSION;   // Emission material
MaterialMapIndex MATERIAL_MAP_OCCLUSION;  // Ambient occlusion material
MaterialMapIndex MATERIAL_MAP_ROUGHNESS;  // Roughness material
MaterialMapIndex MATERIAL_MAP_NORMAL;     // Normal material
MaterialMapIndex MATERIAL_MAP_METALNESS;  // Metalness material (same as: MATERIAL_MAP_SPECULAR)
MaterialMapIndex MATERIAL_MAP_ALBEDO;     // Albedo material (same as: MATERIAL_MAP_DIFFUSE)
#define MATERIAL_MAP_DIFFUSE;
#define MATERIAL_MAP_SPECULAR;
```

#### MATERIAL_MAP_BRDF

Brdf material

Language | Symbol
--- | ---
C | `MaterialMapIndex MATERIAL_MAP_BRDF;`
Swift | —

#### MATERIAL_MAP_PREFILTER

Prefilter material (NOTE: Uses GL_TEXTURE_CUBE_MAP)

Language | Symbol
--- | ---
C | `MaterialMapIndex MATERIAL_MAP_PREFILTER;`
Swift | —

#### MATERIAL_MAP_IRRADIANCE

Irradiance material (NOTE: Uses GL_TEXTURE_CUBE_MAP)

Language | Symbol
--- | ---
C | `MaterialMapIndex MATERIAL_MAP_IRRADIANCE;`
Swift | —

#### MATERIAL_MAP_CUBEMAP

Cubemap material (NOTE: Uses GL_TEXTURE_CUBE_MAP)

Language | Symbol
--- | ---
C | `MaterialMapIndex MATERIAL_MAP_CUBEMAP;`
Swift | —

#### MATERIAL_MAP_HEIGHT

Heightmap material

Language | Symbol
--- | ---
C | `MaterialMapIndex MATERIAL_MAP_HEIGHT;`
Swift | —

#### MATERIAL_MAP_EMISSION

Emission material

Language | Symbol
--- | ---
C | `MaterialMapIndex MATERIAL_MAP_EMISSION;`
Swift | —

#### MATERIAL_MAP_OCCLUSION

Ambient occlusion material

Language | Symbol
--- | ---
C | `MaterialMapIndex MATERIAL_MAP_OCCLUSION;`
Swift | —

#### MATERIAL_MAP_ROUGHNESS

Roughness material

Language | Symbol
--- | ---
C | `MaterialMapIndex MATERIAL_MAP_ROUGHNESS;`
Swift | —

#### MATERIAL_MAP_NORMAL

Normal material

Language | Symbol
--- | ---
C | `MaterialMapIndex MATERIAL_MAP_NORMAL;`
Swift | —

#### MATERIAL_MAP_METALNESS

Metalness material (same as: MATERIAL_MAP_SPECULAR)

Language | Symbol
--- | ---
C | `MaterialMapIndex MATERIAL_MAP_METALNESS;`
Swift | —

#### MATERIAL_MAP_ALBEDO

Albedo material (same as: MATERIAL_MAP_DIFFUSE)

Language | Symbol
--- | ---
C | `MaterialMapIndex MATERIAL_MAP_ALBEDO;`
Swift | —

#### MATERIAL_MAP_DIFFUSE

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define MATERIAL_MAP_DIFFUSE;`
Swift | —

#### MATERIAL_MAP_SPECULAR

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define MATERIAL_MAP_SPECULAR;`
Swift | —

### Shader location index

```mm
ShaderLocationIndex SHADER_LOC_MAP_BRDF;          // Shader location: sampler2d texture: brdf
ShaderLocationIndex SHADER_LOC_MAP_PREFILTER;     // Shader location: samplerCube texture: prefilter
ShaderLocationIndex SHADER_LOC_MAP_IRRADIANCE;    // Shader location: samplerCube texture: irradiance
ShaderLocationIndex SHADER_LOC_MAP_CUBEMAP;       // Shader location: samplerCube texture: cubemap
ShaderLocationIndex SHADER_LOC_MAP_HEIGHT;        // Shader location: sampler2d texture: height
ShaderLocationIndex SHADER_LOC_MAP_EMISSION;      // Shader location: sampler2d texture: emission
ShaderLocationIndex SHADER_LOC_MAP_OCCLUSION;     // Shader location: sampler2d texture: occlusion
ShaderLocationIndex SHADER_LOC_MAP_ROUGHNESS;     // Shader location: sampler2d texture: roughness
ShaderLocationIndex SHADER_LOC_MAP_NORMAL;        // Shader location: sampler2d texture: normal
ShaderLocationIndex SHADER_LOC_MAP_METALNESS;     // Shader location: sampler2d texture: metalness (same as: SHADER_LOC_MAP_SPECULAR)
ShaderLocationIndex SHADER_LOC_MAP_ALBEDO;        // Shader location: sampler2d texture: albedo (same as: SHADER_LOC_MAP_DIFFUSE)
ShaderLocationIndex SHADER_LOC_COLOR_AMBIENT;     // Shader location: vector uniform: ambient color
ShaderLocationIndex SHADER_LOC_COLOR_SPECULAR;    // Shader location: vector uniform: specular color
ShaderLocationIndex SHADER_LOC_COLOR_DIFFUSE;     // Shader location: vector uniform: diffuse color
ShaderLocationIndex SHADER_LOC_VECTOR_VIEW;       // Shader location: vector uniform: view
ShaderLocationIndex SHADER_LOC_MATRIX_NORMAL;     // Shader location: matrix uniform: normal
ShaderLocationIndex SHADER_LOC_MATRIX_MODEL;      // Shader location: matrix uniform: model (transform)
ShaderLocationIndex SHADER_LOC_MATRIX_PROJECTION; // Shader location: matrix uniform: projection
ShaderLocationIndex SHADER_LOC_MATRIX_VIEW;       // Shader location: matrix uniform: view (camera transform)
ShaderLocationIndex SHADER_LOC_MATRIX_MVP;        // Shader location: matrix uniform: model-view-projection
ShaderLocationIndex SHADER_LOC_VERTEX_COLOR;      // Shader location: vertex attribute: color
ShaderLocationIndex SHADER_LOC_VERTEX_TANGENT;    // Shader location: vertex attribute: tangent
ShaderLocationIndex SHADER_LOC_VERTEX_NORMAL;     // Shader location: vertex attribute: normal
ShaderLocationIndex SHADER_LOC_VERTEX_TEXCOORD02; // Shader location: vertex attribute: texcoord02
ShaderLocationIndex SHADER_LOC_VERTEX_TEXCOORD01; // Shader location: vertex attribute: texcoord01
ShaderLocationIndex SHADER_LOC_VERTEX_POSITION;   // Shader location: vertex attribute: position
#define SHADER_LOC_MAP_DIFFUSE;
#define SHADER_LOC_MAP_SPECULAR;
```

#### SHADER_LOC_MAP_BRDF

Shader location: sampler2d texture: brdf

Language | Symbol
--- | ---
C | `ShaderLocationIndex SHADER_LOC_MAP_BRDF;`
Swift | —

#### SHADER_LOC_MAP_PREFILTER

Shader location: samplerCube texture: prefilter

Language | Symbol
--- | ---
C | `ShaderLocationIndex SHADER_LOC_MAP_PREFILTER;`
Swift | —

#### SHADER_LOC_MAP_IRRADIANCE

Shader location: samplerCube texture: irradiance

Language | Symbol
--- | ---
C | `ShaderLocationIndex SHADER_LOC_MAP_IRRADIANCE;`
Swift | —

#### SHADER_LOC_MAP_CUBEMAP

Shader location: samplerCube texture: cubemap

Language | Symbol
--- | ---
C | `ShaderLocationIndex SHADER_LOC_MAP_CUBEMAP;`
Swift | —

#### SHADER_LOC_MAP_HEIGHT

Shader location: sampler2d texture: height

Language | Symbol
--- | ---
C | `ShaderLocationIndex SHADER_LOC_MAP_HEIGHT;`
Swift | —

#### SHADER_LOC_MAP_EMISSION

Shader location: sampler2d texture: emission

Language | Symbol
--- | ---
C | `ShaderLocationIndex SHADER_LOC_MAP_EMISSION;`
Swift | —

#### SHADER_LOC_MAP_OCCLUSION

Shader location: sampler2d texture: occlusion

Language | Symbol
--- | ---
C | `ShaderLocationIndex SHADER_LOC_MAP_OCCLUSION;`
Swift | —

#### SHADER_LOC_MAP_ROUGHNESS

Shader location: sampler2d texture: roughness

Language | Symbol
--- | ---
C | `ShaderLocationIndex SHADER_LOC_MAP_ROUGHNESS;`
Swift | —

#### SHADER_LOC_MAP_NORMAL

Shader location: sampler2d texture: normal

Language | Symbol
--- | ---
C | `ShaderLocationIndex SHADER_LOC_MAP_NORMAL;`
Swift | —

#### SHADER_LOC_MAP_METALNESS

Shader location: sampler2d texture: metalness (same as: SHADER_LOC_MAP_SPECULAR)

Language | Symbol
--- | ---
C | `ShaderLocationIndex SHADER_LOC_MAP_METALNESS;`
Swift | —

#### SHADER_LOC_MAP_ALBEDO

Shader location: sampler2d texture: albedo (same as: SHADER_LOC_MAP_DIFFUSE)

Language | Symbol
--- | ---
C | `ShaderLocationIndex SHADER_LOC_MAP_ALBEDO;`
Swift | —

#### SHADER_LOC_COLOR_AMBIENT

Shader location: vector uniform: ambient color

Language | Symbol
--- | ---
C | `ShaderLocationIndex SHADER_LOC_COLOR_AMBIENT;`
Swift | —

#### SHADER_LOC_COLOR_SPECULAR

Shader location: vector uniform: specular color

Language | Symbol
--- | ---
C | `ShaderLocationIndex SHADER_LOC_COLOR_SPECULAR;`
Swift | —

#### SHADER_LOC_COLOR_DIFFUSE

Shader location: vector uniform: diffuse color

Language | Symbol
--- | ---
C | `ShaderLocationIndex SHADER_LOC_COLOR_DIFFUSE;`
Swift | —

#### SHADER_LOC_VECTOR_VIEW

Shader location: vector uniform: view

Language | Symbol
--- | ---
C | `ShaderLocationIndex SHADER_LOC_VECTOR_VIEW;`
Swift | —

#### SHADER_LOC_MATRIX_NORMAL

Shader location: matrix uniform: normal

Language | Symbol
--- | ---
C | `ShaderLocationIndex SHADER_LOC_MATRIX_NORMAL;`
Swift | —

#### SHADER_LOC_MATRIX_MODEL

Shader location: matrix uniform: model (transform)

Language | Symbol
--- | ---
C | `ShaderLocationIndex SHADER_LOC_MATRIX_MODEL;`
Swift | —

#### SHADER_LOC_MATRIX_PROJECTION

Shader location: matrix uniform: projection

Language | Symbol
--- | ---
C | `ShaderLocationIndex SHADER_LOC_MATRIX_PROJECTION;`
Swift | —

#### SHADER_LOC_MATRIX_VIEW

Shader location: matrix uniform: view (camera transform)

Language | Symbol
--- | ---
C | `ShaderLocationIndex SHADER_LOC_MATRIX_VIEW;`
Swift | —

#### SHADER_LOC_MATRIX_MVP

Shader location: matrix uniform: model-view-projection

Language | Symbol
--- | ---
C | `ShaderLocationIndex SHADER_LOC_MATRIX_MVP;`
Swift | —

#### SHADER_LOC_VERTEX_COLOR

Shader location: vertex attribute: color

Language | Symbol
--- | ---
C | `ShaderLocationIndex SHADER_LOC_VERTEX_COLOR;`
Swift | —

#### SHADER_LOC_VERTEX_TANGENT

Shader location: vertex attribute: tangent

Language | Symbol
--- | ---
C | `ShaderLocationIndex SHADER_LOC_VERTEX_TANGENT;`
Swift | —

#### SHADER_LOC_VERTEX_NORMAL

Shader location: vertex attribute: normal

Language | Symbol
--- | ---
C | `ShaderLocationIndex SHADER_LOC_VERTEX_NORMAL;`
Swift | —

#### SHADER_LOC_VERTEX_TEXCOORD02

Shader location: vertex attribute: texcoord02

Language | Symbol
--- | ---
C | `ShaderLocationIndex SHADER_LOC_VERTEX_TEXCOORD02;`
Swift | —

#### SHADER_LOC_VERTEX_TEXCOORD01

Shader location: vertex attribute: texcoord01

Language | Symbol
--- | ---
C | `ShaderLocationIndex SHADER_LOC_VERTEX_TEXCOORD01;`
Swift | —

#### SHADER_LOC_VERTEX_POSITION

Shader location: vertex attribute: position

Language | Symbol
--- | ---
C | `ShaderLocationIndex SHADER_LOC_VERTEX_POSITION;`
Swift | —

#### SHADER_LOC_MAP_DIFFUSE

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define SHADER_LOC_MAP_DIFFUSE;`
Swift | —

#### SHADER_LOC_MAP_SPECULAR

This symbol has no documentation

Language | Symbol
--- | ---
C | `#define SHADER_LOC_MAP_SPECULAR;`
Swift | —

### Shader uniform data type

```mm
ShaderUniformDataType SHADER_UNIFORM_SAMPLER2D; // Shader uniform type: sampler2d
ShaderUniformDataType SHADER_UNIFORM_IVEC4;     // Shader uniform type: ivec4 (4 int)
ShaderUniformDataType SHADER_UNIFORM_IVEC3;     // Shader uniform type: ivec3 (3 int)
ShaderUniformDataType SHADER_UNIFORM_IVEC2;     // Shader uniform type: ivec2 (2 int)
ShaderUniformDataType SHADER_UNIFORM_INT;       // Shader uniform type: int
ShaderUniformDataType SHADER_UNIFORM_VEC4;      // Shader uniform type: vec4 (4 float)
ShaderUniformDataType SHADER_UNIFORM_VEC3;      // Shader uniform type: vec3 (3 float)
ShaderUniformDataType SHADER_UNIFORM_VEC2;      // Shader uniform type: vec2 (2 float)
ShaderUniformDataType SHADER_UNIFORM_FLOAT;     // Shader uniform type: float
```

#### SHADER_UNIFORM_SAMPLER2D

Shader uniform type: sampler2d

Language | Symbol
--- | ---
C | `ShaderUniformDataType SHADER_UNIFORM_SAMPLER2D;`
Swift | —

#### SHADER_UNIFORM_IVEC4

Shader uniform type: ivec4 (4 int)

Language | Symbol
--- | ---
C | `ShaderUniformDataType SHADER_UNIFORM_IVEC4;`
Swift | —

#### SHADER_UNIFORM_IVEC3

Shader uniform type: ivec3 (3 int)

Language | Symbol
--- | ---
C | `ShaderUniformDataType SHADER_UNIFORM_IVEC3;`
Swift | —

#### SHADER_UNIFORM_IVEC2

Shader uniform type: ivec2 (2 int)

Language | Symbol
--- | ---
C | `ShaderUniformDataType SHADER_UNIFORM_IVEC2;`
Swift | —

#### SHADER_UNIFORM_INT

Shader uniform type: int

Language | Symbol
--- | ---
C | `ShaderUniformDataType SHADER_UNIFORM_INT;`
Swift | —

#### SHADER_UNIFORM_VEC4

Shader uniform type: vec4 (4 float)

Language | Symbol
--- | ---
C | `ShaderUniformDataType SHADER_UNIFORM_VEC4;`
Swift | —

#### SHADER_UNIFORM_VEC3

Shader uniform type: vec3 (3 float)

Language | Symbol
--- | ---
C | `ShaderUniformDataType SHADER_UNIFORM_VEC3;`
Swift | —

#### SHADER_UNIFORM_VEC2

Shader uniform type: vec2 (2 float)

Language | Symbol
--- | ---
C | `ShaderUniformDataType SHADER_UNIFORM_VEC2;`
Swift | —

#### SHADER_UNIFORM_FLOAT

Shader uniform type: float

Language | Symbol
--- | ---
C | `ShaderUniformDataType SHADER_UNIFORM_FLOAT;`
Swift | —

### Shader attribute data types

```mm
ShaderAttributeDataType SHADER_ATTRIB_VEC4;  // Shader attribute type: vec4 (4 float)
ShaderAttributeDataType SHADER_ATTRIB_VEC3;  // Shader attribute type: vec3 (3 float)
ShaderAttributeDataType SHADER_ATTRIB_VEC2;  // Shader attribute type: vec2 (2 float)
ShaderAttributeDataType SHADER_ATTRIB_FLOAT; // Shader attribute type: float
```

#### SHADER_ATTRIB_VEC4

Shader attribute type: vec4 (4 float)

Language | Symbol
--- | ---
C | `ShaderAttributeDataType SHADER_ATTRIB_VEC4;`
Swift | —

#### SHADER_ATTRIB_VEC3

Shader attribute type: vec3 (3 float)

Language | Symbol
--- | ---
C | `ShaderAttributeDataType SHADER_ATTRIB_VEC3;`
Swift | —

#### SHADER_ATTRIB_VEC2

Shader attribute type: vec2 (2 float)

Language | Symbol
--- | ---
C | `ShaderAttributeDataType SHADER_ATTRIB_VEC2;`
Swift | —

#### SHADER_ATTRIB_FLOAT

Shader attribute type: float

Language | Symbol
--- | ---
C | `ShaderAttributeDataType SHADER_ATTRIB_FLOAT;`
Swift | —

### Pixel formats

```mm
PixelFormat PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA;  // 2 bpp
PixelFormat PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA;  // 8 bpp
PixelFormat PIXELFORMAT_COMPRESSED_PVRT_RGBA;      // 4 bpp
PixelFormat PIXELFORMAT_COMPRESSED_PVRT_RGB;       // 4 bpp
PixelFormat PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA;  // 8 bpp
PixelFormat PIXELFORMAT_COMPRESSED_ETC2_RGB;       // 4 bpp
PixelFormat PIXELFORMAT_COMPRESSED_ETC1_RGB;       // 4 bpp
PixelFormat PIXELFORMAT_COMPRESSED_DXT5_RGBA;      // 8 bpp
PixelFormat PIXELFORMAT_COMPRESSED_DXT3_RGBA;      // 8 bpp
PixelFormat PIXELFORMAT_COMPRESSED_DXT1_RGBA;      // 4 bpp (1 bit alpha)
PixelFormat PIXELFORMAT_COMPRESSED_DXT1_RGB;       // 4 bpp (no alpha)
PixelFormat PIXELFORMAT_UNCOMPRESSED_R32G32B32A32; // 32*4 bpp (4 channels - float)
PixelFormat PIXELFORMAT_UNCOMPRESSED_R32G32B32;    // 32*3 bpp (3 channels - float)
PixelFormat PIXELFORMAT_UNCOMPRESSED_R32;          // 32 bpp (1 channel - float)
PixelFormat PIXELFORMAT_UNCOMPRESSED_R8G8B8A8;     // 32 bpp
PixelFormat PIXELFORMAT_UNCOMPRESSED_R4G4B4A4;     // 16 bpp (4 bit alpha)
PixelFormat PIXELFORMAT_UNCOMPRESSED_R5G5B5A1;     // 16 bpp (1 bit alpha)
PixelFormat PIXELFORMAT_UNCOMPRESSED_R8G8B8;       // 24 bpp
PixelFormat PIXELFORMAT_UNCOMPRESSED_R5G6B5;       // 16 bpp
PixelFormat PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA;   // 8*2 bpp (2 channels)
PixelFormat PIXELFORMAT_UNCOMPRESSED_GRAYSCALE;    // 8 bit per pixel (no alpha)
```

> Note: Support depends on OpenGL version and platform

#### PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA

2 bpp

Language | Symbol
--- | ---
C | `PixelFormat PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA;`
Swift | ``PixelFormat/astc8``

#### PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA

8 bpp

Language | Symbol
--- | ---
C | `PixelFormat PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA;`
Swift | ``PixelFormat/astc4``

#### PIXELFORMAT_COMPRESSED_PVRT_RGBA

4 bpp

Language | Symbol
--- | ---
C | `PixelFormat PIXELFORMAT_COMPRESSED_PVRT_RGBA;`
Swift | ``PixelFormat/rgba``

#### PIXELFORMAT_COMPRESSED_PVRT_RGB

4 bpp

Language | Symbol
--- | ---
C | `PixelFormat PIXELFORMAT_COMPRESSED_PVRT_RGB;`
Swift | ``PixelFormat/rgb``

#### PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA

8 bpp

Language | Symbol
--- | ---
C | `PixelFormat PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA;`
Swift | ``PixelFormat/etc2WithAlpha``

#### PIXELFORMAT_COMPRESSED_ETC2_RGB

4 bpp

Language | Symbol
--- | ---
C | `PixelFormat PIXELFORMAT_COMPRESSED_ETC2_RGB;`
Swift | ``PixelFormat/etc2``

#### PIXELFORMAT_COMPRESSED_ETC1_RGB

4 bpp

Language | Symbol
--- | ---
C | `PixelFormat PIXELFORMAT_COMPRESSED_ETC1_RGB;`
Swift | ``PixelFormat/etc1``

#### PIXELFORMAT_COMPRESSED_DXT5_RGBA

8 bpp

Language | Symbol
--- | ---
C | `PixelFormat PIXELFORMAT_COMPRESSED_DXT5_RGBA;`
Swift | ``PixelFormat/dxt5WithAlpha``

#### PIXELFORMAT_COMPRESSED_DXT3_RGBA

8 bpp

Language | Symbol
--- | ---
C | `PixelFormat PIXELFORMAT_COMPRESSED_DXT3_RGBA;`
Swift | ``PixelFormat/dxt3WithAlpha``

#### PIXELFORMAT_COMPRESSED_DXT1_RGBA

4 bpp (1 bit alpha)

Language | Symbol
--- | ---
C | `PixelFormat PIXELFORMAT_COMPRESSED_DXT1_RGBA;`
Swift | ``PixelFormat/dxt1WithAlpha``

#### PIXELFORMAT_COMPRESSED_DXT1_RGB

4 bpp (no alpha)

Language | Symbol
--- | ---
C | `PixelFormat PIXELFORMAT_COMPRESSED_DXT1_RGB;`
Swift | —

#### PIXELFORMAT_UNCOMPRESSED_R32G32B32A32

32*4 bpp (4 channels - float)

Language | Symbol
--- | ---
C | `PixelFormat PIXELFORMAT_UNCOMPRESSED_R32G32B32A32;`
Swift | ``PixelFormat/rgba32f``

#### PIXELFORMAT_UNCOMPRESSED_R32G32B32

32*3 bpp (3 channels - float)

Language | Symbol
--- | ---
C | `PixelFormat PIXELFORMAT_UNCOMPRESSED_R32G32B32;`
Swift | ``PixelFormat/rgb32f``

#### PIXELFORMAT_UNCOMPRESSED_R32

32 bpp (1 channel - float)

Language | Symbol
--- | ---
C | `PixelFormat PIXELFORMAT_UNCOMPRESSED_R32;`
Swift | ``PixelFormat/r32f``

#### PIXELFORMAT_UNCOMPRESSED_R8G8B8A8

32 bpp

Language | Symbol
--- | ---
C | `PixelFormat PIXELFORMAT_UNCOMPRESSED_R8G8B8A8;`
Swift | ``PixelFormat/rgba8``

#### PIXELFORMAT_UNCOMPRESSED_R4G4B4A4

16 bpp (4 bit alpha)

Language | Symbol
--- | ---
C | `PixelFormat PIXELFORMAT_UNCOMPRESSED_R4G4B4A4;`
Swift | ``PixelFormat/rgba4``

#### PIXELFORMAT_UNCOMPRESSED_R5G5B5A1

16 bpp (1 bit alpha)

Language | Symbol
--- | ---
C | `PixelFormat PIXELFORMAT_UNCOMPRESSED_R5G5B5A1;`
Swift | ``PixelFormat/rgb5a1``

#### PIXELFORMAT_UNCOMPRESSED_R8G8B8

24 bpp

Language | Symbol
--- | ---
C | `PixelFormat PIXELFORMAT_UNCOMPRESSED_R8G8B8;`
Swift | ``PixelFormat/rgb8``

#### PIXELFORMAT_UNCOMPRESSED_R5G6B5

16 bpp

Language | Symbol
--- | ---
C | `PixelFormat PIXELFORMAT_UNCOMPRESSED_R5G6B5;`
Swift | ``PixelFormat/r5g6b5``

#### PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA

8*2 bpp (2 channels)

Language | Symbol
--- | ---
C | `PixelFormat PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA;`
Swift | ``PixelFormat/wa8``

#### PIXELFORMAT_UNCOMPRESSED_GRAYSCALE

8 bit per pixel (no alpha)

Language | Symbol
--- | ---
C | `PixelFormat PIXELFORMAT_UNCOMPRESSED_GRAYSCALE;`
Swift | ``PixelFormat/w8``

### Texture parameters: filter mode

```mm
TextureFilter TEXTURE_FILTER_ANISOTROPIC_16X; // Anisotropic filtering 16x
TextureFilter TEXTURE_FILTER_ANISOTROPIC_8X;  // Anisotropic filtering 8x
TextureFilter TEXTURE_FILTER_ANISOTROPIC_4X;  // Anisotropic filtering 4x
TextureFilter TEXTURE_FILTER_TRILINEAR;       // Trilinear filtering (linear with mipmaps)
TextureFilter TEXTURE_FILTER_BILINEAR;        // Linear filtering
TextureFilter TEXTURE_FILTER_POINT;           // No filter, just pixel aproximation
```

> Note: Filtering considers mipmaps if available in the texture

> Note: Filter is accordingly set for minification and magnification

#### TEXTURE_FILTER_ANISOTROPIC_16X

Anisotropic filtering 16x

Language | Symbol
--- | ---
C | `TextureFilter TEXTURE_FILTER_ANISOTROPIC_16X;`
Swift | ``TextureFilter/anisotropic16x``

#### TEXTURE_FILTER_ANISOTROPIC_8X

Anisotropic filtering 8x

Language | Symbol
--- | ---
C | `TextureFilter TEXTURE_FILTER_ANISOTROPIC_8X;`
Swift | ``TextureFilter/anisotropic8x``

#### TEXTURE_FILTER_ANISOTROPIC_4X

Anisotropic filtering 4x

Language | Symbol
--- | ---
C | `TextureFilter TEXTURE_FILTER_ANISOTROPIC_4X;`
Swift | —

#### TEXTURE_FILTER_TRILINEAR

Trilinear filtering (linear with mipmaps)

Language | Symbol
--- | ---
C | `TextureFilter TEXTURE_FILTER_TRILINEAR;`
Swift | ``TextureFilter/trilinear``

#### TEXTURE_FILTER_BILINEAR

Linear filtering

Language | Symbol
--- | ---
C | `TextureFilter TEXTURE_FILTER_BILINEAR;`
Swift | ``TextureFilter/bilinear``

#### TEXTURE_FILTER_POINT

No filter, just pixel aproximation

Language | Symbol
--- | ---
C | `TextureFilter TEXTURE_FILTER_POINT;`
Swift | ``TextureFilter/point``

### Texture parameters: wrap mode

```mm
TextureWrap TEXTURE_WRAP_MIRROR_CLAMP;  // Mirrors and clamps to border the texture in tiled mode
TextureWrap TEXTURE_WRAP_MIRROR_REPEAT; // Mirrors and repeats the texture in tiled mode
TextureWrap TEXTURE_WRAP_CLAMP;         // Clamps texture to edge pixel in tiled mode
TextureWrap TEXTURE_WRAP_REPEAT;        // Repeats texture in tiled mode
```

#### TEXTURE_WRAP_MIRROR_CLAMP

Mirrors and clamps to border the texture in tiled mode

Language | Symbol
--- | ---
C | `TextureWrap TEXTURE_WRAP_MIRROR_CLAMP;`
Swift | ``TextureWrap/clamp``

#### TEXTURE_WRAP_MIRROR_REPEAT

Mirrors and repeats the texture in tiled mode

Language | Symbol
--- | ---
C | `TextureWrap TEXTURE_WRAP_MIRROR_REPEAT;`
Swift | ``TextureWrap/mirroredRepeat``

#### TEXTURE_WRAP_CLAMP

Clamps texture to edge pixel in tiled mode

Language | Symbol
--- | ---
C | `TextureWrap TEXTURE_WRAP_CLAMP;`
Swift | —

#### TEXTURE_WRAP_REPEAT

Repeats texture in tiled mode

Language | Symbol
--- | ---
C | `TextureWrap TEXTURE_WRAP_REPEAT;`
Swift | ``TextureWrap/repeat``

### Cubemap layouts

```mm
CubemapLayout CUBEMAP_LAYOUT_PANORAMA;            // Layout is defined by a panorama image (equirectangular map)
CubemapLayout CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE; // Layout is defined by a 4x3 cross with cubemap faces
CubemapLayout CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR; // Layout is defined by a 3x4 cross with cubemap faces
CubemapLayout CUBEMAP_LAYOUT_LINE_HORIZONTAL;     // Layout is defined by an horizontal line with faces
CubemapLayout CUBEMAP_LAYOUT_LINE_VERTICAL;       // Layout is defined by a vertical line with faces
CubemapLayout CUBEMAP_LAYOUT_AUTO_DETECT;         // Automatically detect layout type
```

#### CUBEMAP_LAYOUT_PANORAMA

Layout is defined by a panorama image (equirectangular map)

Language | Symbol
--- | ---
C | `CubemapLayout CUBEMAP_LAYOUT_PANORAMA;`
Swift | —

#### CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE

Layout is defined by a 4x3 cross with cubemap faces

Language | Symbol
--- | ---
C | `CubemapLayout CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE;`
Swift | —

#### CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR

Layout is defined by a 3x4 cross with cubemap faces

Language | Symbol
--- | ---
C | `CubemapLayout CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR;`
Swift | —

#### CUBEMAP_LAYOUT_LINE_HORIZONTAL

Layout is defined by an horizontal line with faces

Language | Symbol
--- | ---
C | `CubemapLayout CUBEMAP_LAYOUT_LINE_HORIZONTAL;`
Swift | —

#### CUBEMAP_LAYOUT_LINE_VERTICAL

Layout is defined by a vertical line with faces

Language | Symbol
--- | ---
C | `CubemapLayout CUBEMAP_LAYOUT_LINE_VERTICAL;`
Swift | —

#### CUBEMAP_LAYOUT_AUTO_DETECT

Automatically detect layout type

Language | Symbol
--- | ---
C | `CubemapLayout CUBEMAP_LAYOUT_AUTO_DETECT;`
Swift | —

### Font type, defines generation method

```mm
FontType FONT_SDF;     // SDF font generation, requires external shader
FontType FONT_BITMAP;  // Bitmap font generation, no anti-aliasing
FontType FONT_DEFAULT; // Default font generation, anti-aliased
```

#### FONT_SDF

SDF font generation, requires external shader

Language | Symbol
--- | ---
C | `FontType FONT_SDF;`
Swift | —

#### FONT_BITMAP

Bitmap font generation, no anti-aliasing

Language | Symbol
--- | ---
C | `FontType FONT_BITMAP;`
Swift | —

#### FONT_DEFAULT

Default font generation, anti-aliased

Language | Symbol
--- | ---
C | `FontType FONT_DEFAULT;`
Swift | —

### Color blending modes (pre-defined)

```mm
BlendMode BLEND_CUSTOM;          // Belnd textures using custom src/dst factors (use rlSetBlendMode())
BlendMode BLEND_SUBTRACT_COLORS; // Blend textures subtracting colors (alternative)
BlendMode BLEND_ADD_COLORS;      // Blend textures adding colors (alternative)
BlendMode BLEND_MULTIPLIED;      // Blend textures multiplying colors
BlendMode BLEND_ADDITIVE;        // Blend textures adding colors
BlendMode BLEND_ALPHA;           // Blend textures considering alpha (default)
```

#### BLEND_CUSTOM

Belnd textures using custom src/dst factors (use rlSetBlendMode())

Language | Symbol
--- | ---
C | `BlendMode BLEND_CUSTOM;`
Swift | ``Blend/custom``

#### BLEND_SUBTRACT_COLORS

Blend textures subtracting colors (alternative)

Language | Symbol
--- | ---
C | `BlendMode BLEND_SUBTRACT_COLORS;`
Swift | ``Blend/subtract``

#### BLEND_ADD_COLORS

Blend textures adding colors (alternative)

Language | Symbol
--- | ---
C | `BlendMode BLEND_ADD_COLORS;`
Swift | ``Blend/add``

#### BLEND_MULTIPLIED

Blend textures multiplying colors

Language | Symbol
--- | ---
C | `BlendMode BLEND_MULTIPLIED;`
Swift | ``Blend/multiplied``

#### BLEND_ADDITIVE

Blend textures adding colors

Language | Symbol
--- | ---
C | `BlendMode BLEND_ADDITIVE;`
Swift | ``Blend/additive``

#### BLEND_ALPHA

Blend textures considering alpha (default)

Language | Symbol
--- | ---
C | `BlendMode BLEND_ALPHA;`
Swift | ``Blend/alpha``

### Gesture

```mm
Gesture GESTURE_PINCH_OUT;   // Pinch out gesture
Gesture GESTURE_PINCH_IN;    // Pinch in gesture
Gesture GESTURE_SWIPE_DOWN;  // Swipe down gesture
Gesture GESTURE_SWIPE_UP;    // Swipe up gesture
Gesture GESTURE_SWIPE_LEFT;  // Swipe left gesture
Gesture GESTURE_SWIPE_RIGHT; // Swipe right gesture
Gesture GESTURE_DRAG;        // Drag gesture
Gesture GESTURE_HOLD;        // Hold gesture
Gesture GESTURE_DOUBLETAP;   // Double tap gesture
Gesture GESTURE_TAP;         // Tap gesture
Gesture GESTURE_NONE;        // No gesture
```

> Note: It could be used as flags to enable only some gestures

#### GESTURE_PINCH_OUT

Pinch out gesture

Language | Symbol
--- | ---
C | `Gesture GESTURE_PINCH_OUT;`
Swift | —

#### GESTURE_PINCH_IN

Pinch in gesture

Language | Symbol
--- | ---
C | `Gesture GESTURE_PINCH_IN;`
Swift | —

#### GESTURE_SWIPE_DOWN

Swipe down gesture

Language | Symbol
--- | ---
C | `Gesture GESTURE_SWIPE_DOWN;`
Swift | —

#### GESTURE_SWIPE_UP

Swipe up gesture

Language | Symbol
--- | ---
C | `Gesture GESTURE_SWIPE_UP;`
Swift | —

#### GESTURE_SWIPE_LEFT

Swipe left gesture

Language | Symbol
--- | ---
C | `Gesture GESTURE_SWIPE_LEFT;`
Swift | —

#### GESTURE_SWIPE_RIGHT

Swipe right gesture

Language | Symbol
--- | ---
C | `Gesture GESTURE_SWIPE_RIGHT;`
Swift | —

#### GESTURE_DRAG

Drag gesture

Language | Symbol
--- | ---
C | `Gesture GESTURE_DRAG;`
Swift | —

#### GESTURE_HOLD

Hold gesture

Language | Symbol
--- | ---
C | `Gesture GESTURE_HOLD;`
Swift | —

#### GESTURE_DOUBLETAP

Double tap gesture

Language | Symbol
--- | ---
C | `Gesture GESTURE_DOUBLETAP;`
Swift | —

#### GESTURE_TAP

Tap gesture

Language | Symbol
--- | ---
C | `Gesture GESTURE_TAP;`
Swift | —

#### GESTURE_NONE

No gesture

Language | Symbol
--- | ---
C | `Gesture GESTURE_NONE;`
Swift | —

### Camera system modes

```mm
CameraMode CAMERA_THIRD_PERSON; // Third person camera
CameraMode CAMERA_FIRST_PERSON; // First person camera
CameraMode CAMERA_ORBITAL;      // Orbital camera
CameraMode CAMERA_FREE;         // Free camera
CameraMode CAMERA_CUSTOM;       // Custom camera
```

#### CAMERA_THIRD_PERSON

Third person camera

Language | Symbol
--- | ---
C | `CameraMode CAMERA_THIRD_PERSON;`
Swift | —

#### CAMERA_FIRST_PERSON

First person camera

Language | Symbol
--- | ---
C | `CameraMode CAMERA_FIRST_PERSON;`
Swift | —

#### CAMERA_ORBITAL

Orbital camera

Language | Symbol
--- | ---
C | `CameraMode CAMERA_ORBITAL;`
Swift | —

#### CAMERA_FREE

Free camera

Language | Symbol
--- | ---
C | `CameraMode CAMERA_FREE;`
Swift | —

#### CAMERA_CUSTOM

Custom camera

Language | Symbol
--- | ---
C | `CameraMode CAMERA_CUSTOM;`
Swift | —

### Camera projection

```mm
CameraProjection CAMERA_ORTHOGRAPHIC; // Orthographic projection
CameraProjection CAMERA_PERSPECTIVE;  // Perspective projection
```

#### CAMERA_ORTHOGRAPHIC

Orthographic projection

Language | Symbol
--- | ---
C | `CameraProjection CAMERA_ORTHOGRAPHIC;`
Swift | —

#### CAMERA_PERSPECTIVE

Perspective projection

Language | Symbol
--- | ---
C | `CameraProjection CAMERA_PERSPECTIVE;`
Swift | —

### N-patch layout

```mm
NPatchLayout NPATCH_THREE_PATCH_HORIZONTAL; // Npatch layout: 3x1 tiles
NPatchLayout NPATCH_THREE_PATCH_VERTICAL;   // Npatch layout: 1x3 tiles
NPatchLayout NPATCH_NINE_PATCH;             // Npatch layout: 3x3 tiles
```

#### NPATCH_THREE_PATCH_HORIZONTAL

Npatch layout: 3x1 tiles

Language | Symbol
--- | ---
C | `NPatchLayout NPATCH_THREE_PATCH_HORIZONTAL;`
Swift | —

#### NPATCH_THREE_PATCH_VERTICAL

Npatch layout: 1x3 tiles

Language | Symbol
--- | ---
C | `NPatchLayout NPATCH_THREE_PATCH_VERTICAL;`
Swift | —

#### NPATCH_NINE_PATCH

Npatch layout: 3x3 tiles

Language | Symbol
--- | ---
C | `NPatchLayout NPATCH_NINE_PATCH;`
Swift | —

## Window and Graphics Device Functions (Module: core)

### Window-related functions

```mm
void InitWindow(int width, int height, const char *title); // Initialize window and OpenGL context
bool WindowShouldClose(void);                              // Check if KEY_ESCAPE pressed or Close icon pressed
void CloseWindow(void);                                    // Close window and unload OpenGL context
bool IsWindowReady(void);                                  // Check if window has been initialized successfully
bool IsWindowFullscreen(void);                             // Check if window is currently fullscreen
bool IsWindowHidden(void);                                 // Check if window is currently hidden Note: Only available on desktop
bool IsWindowMinimized(void);                              // Check if window is currently minimized Note: Only available on desktop
bool IsWindowMaximized(void);                              // Check if window is currently maximized Note: Only available on desktop
bool IsWindowFocused(void);                                // Check if window is currently focused Note: Only available on desktop
bool IsWindowResized(void);                                // Check if window has been resized last frame
bool IsWindowState(unsigned int flag);                     // Check if one specific window flag is enabled
void SetWindowState(unsigned int flags);                   // Set window configuration state using flags
void ClearWindowState(unsigned int flags);                 // Clear window configuration state flags
void ToggleFullscreen(void);                               // Toggle window state: fullscreen/windowed Note: Only available on desktop
void MaximizeWindow(void);                                 // Set window state: maximized, if resizable Note: Only available on desktop
void MinimizeWindow(void);                                 // Set window state: minimized, if resizable Note: Only available on desktop
void RestoreWindow(void);                                  // Set window state: not minimized/maximized Note: Only available on desktop
void SetWindowIcon(Image image);                           // Set icon for window Note: Only available on desktop
void SetWindowTitle(const char *title);                    // Set title for window Note: Only available on desktop
void SetWindowPosition(int x, int y);                      // Set window position on screen Note: Only available on desktop
void SetWindowMonitor(int monitor);                        // Set monitor for the current window (fullscreen mode)
void SetWindowMinSize(int width, int height);              // Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)
void SetWindowSize(int width, int height);                 // Set window dimensions
void *GetWindowHandle(void);                               // Get native window handle
int GetScreenWidth(void);                                  // Get current screen width
int GetScreenHeight(void);                                 // Get current screen height
int GetMonitorCount(void);                                 // Get number of connected monitors
int GetCurrentMonitor(void);                               // Get current connected monitor
Vector2 GetMonitorPosition(int monitor);                   // Get specified monitor position
int GetMonitorWidth(int monitor);                          // Get specified monitor width (max available by monitor)
int GetMonitorHeight(int monitor);                         // Get specified monitor height (max available by monitor)
int GetMonitorPhysicalWidth(int monitor);                  // Get specified monitor physical width in millimetres
int GetMonitorPhysicalHeight(int monitor);                 // Get specified monitor physical height in millimetres
int GetMonitorRefreshRate(int monitor);                    // Get specified monitor refresh rate
Vector2 GetWindowPosition(void);                           // Get window position XY on monitor
Vector2 GetWindowScaleDPI(void);                           // Get window scale DPI factor
const char *GetMonitorName(int monitor);                   // Get the human-readable, UTF-8 encoded name of the primary monitor
void SetClipboardText(const char *text);                   // Set clipboard text content
const char *GetClipboardText(void);                        // Get clipboard text content
```

#### InitWindow

Initialize window and OpenGL context

Language | Symbol
--- | ---
C | `void InitWindow(int width, int height, const char *title);`
Swift | ``Window/create(_:by:title:)``

#### WindowShouldClose

Check if KEY_ESCAPE pressed or Close icon pressed

Language | Symbol
--- | ---
C | `bool WindowShouldClose(void);`
Swift | ``Window/shouldClose``

#### CloseWindow

Close window and unload OpenGL context

Language | Symbol
--- | ---
C | `void CloseWindow(void);`
Swift | ``Window/close()``

#### IsWindowReady

Check if window has been initialized successfully

Language | Symbol
--- | ---
C | `bool IsWindowReady(void);`
Swift | ``Window/isReady``

#### IsWindowFullscreen

Check if window is currently fullscreen

Language | Symbol
--- | ---
C | `bool IsWindowFullscreen(void);`
Swift | ``Window/isFullscreen``

#### IsWindowHidden

Check if window is currently hidden Note: Only available on desktop

Language | Symbol
--- | ---
C | `bool IsWindowHidden(void);`
Swift | ``Window/isHidden``

#### IsWindowMinimized

Check if window is currently minimized Note: Only available on desktop

Language | Symbol
--- | ---
C | `bool IsWindowMinimized(void);`
Swift | ``Window/isMinimized``

#### IsWindowMaximized

Check if window is currently maximized Note: Only available on desktop

Language | Symbol
--- | ---
C | `bool IsWindowMaximized(void);`
Swift | ``Window/isMaximized``

#### IsWindowFocused

Check if window is currently focused Note: Only available on desktop

Language | Symbol
--- | ---
C | `bool IsWindowFocused(void);`
Swift | ``Window/isFocused``

#### IsWindowResized

Check if window has been resized last frame

Language | Symbol
--- | ---
C | `bool IsWindowResized(void);`
Swift | ``Window/wasResized``

#### IsWindowState

Check if one specific window flag is enabled

Language | Symbol
--- | ---
C | `bool IsWindowState(unsigned int flag);`
Swift | ``WindowFlags/isEnabled``

#### SetWindowState

Set window configuration state using flags

Language | Symbol
--- | ---
C | `void SetWindowState(unsigned int flags);`
Swift | ``Window/enable(_:)``, ``WindowFlag/isEnabled``, and ``WindowFlag/enable()``

#### ClearWindowState

Clear window configuration state flags

Language | Symbol
--- | ---
C | `void ClearWindowState(unsigned int flags);`
Swift | ``Window/disable(_:)``, ``WindowFlag/isEnabled``, and ``WindowFlag/disable()``

#### ToggleFullscreen

Toggle window state: fullscreen/windowed Note: Only available on desktop

Language | Symbol
--- | ---
C | `void ToggleFullscreen(void);`
Swift | ``Window/isFullscreen``

#### MaximizeWindow

Set window state: maximized, if resizable Note: Only available on desktop

Language | Symbol
--- | ---
C | `void MaximizeWindow(void);`
Swift | ``Window/maximize()``

#### MinimizeWindow

Set window state: minimized, if resizable Note: Only available on desktop

Language | Symbol
--- | ---
C | `void MinimizeWindow(void);`
Swift | ``Window/minimize()``

#### RestoreWindow

Set window state: not minimized/maximized Note: Only available on desktop

Language | Symbol
--- | ---
C | `void RestoreWindow(void);`
Swift | ``Window/restore()``

#### SetWindowIcon

Set icon for window Note: Only available on desktop

Language | Symbol
--- | ---
C | `void SetWindowIcon(Image image);`
Swift | ``Window/set(icon:)``

#### SetWindowTitle

Set title for window Note: Only available on desktop

Language | Symbol
--- | ---
C | `void SetWindowTitle(const char *title);`
Swift | ``Window/rename(to:)``

#### SetWindowPosition

Set window position on screen Note: Only available on desktop

Language | Symbol
--- | ---
C | `void SetWindowPosition(int x, int y);`
Swift | ``Window/place(at:_:)``

#### SetWindowMonitor

Set monitor for the current window (fullscreen mode)

Language | Symbol
--- | ---
C | `void SetWindowMonitor(int monitor);`
Swift | —

#### SetWindowMinSize

Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)

Language | Symbol
--- | ---
C | `void SetWindowMinSize(int width, int height);`
Swift | ``Window/resize(minimum:by:)``

#### SetWindowSize

Set window dimensions

Language | Symbol
--- | ---
C | `void SetWindowSize(int width, int height);`
Swift | ``Window/resize(to:by:)``

#### GetWindowHandle

Get native window handle

Language | Symbol
--- | ---
C | `void *GetWindowHandle(void);`
Swift | ``Window/native``

#### GetScreenWidth

Get current screen width

Language | Symbol
--- | ---
C | `int GetScreenWidth(void);`
Swift | ``Window/width`` and ``Window/size``

#### GetScreenHeight

Get current screen height

Language | Symbol
--- | ---
C | `int GetScreenHeight(void);`
Swift | ``Window/height`` and ``Window/size``

#### GetMonitorCount

Get number of connected monitors

Language | Symbol
--- | ---
C | `int GetMonitorCount(void);`
Swift | ``Monitor/count`` and ``Monitor/all``

#### GetCurrentMonitor

Get current connected monitor

Language | Symbol
--- | ---
C | `int GetCurrentMonitor(void);`
Swift | ``Monitor/current``

#### GetMonitorPosition

Get specified monitor position

Language | Symbol
--- | ---
C | `Vector2 GetMonitorPosition(int monitor);`
Swift | ``Monitor/position``

#### GetMonitorWidth

Get specified monitor width (max available by monitor)

Language | Symbol
--- | ---
C | `int GetMonitorWidth(int monitor);`
Swift | ``Monitor/width``

#### GetMonitorHeight

Get specified monitor height (max available by monitor)

Language | Symbol
--- | ---
C | `int GetMonitorHeight(int monitor);`
Swift | ``Monitor/height``

#### GetMonitorPhysicalWidth

Get specified monitor physical width in millimetres

Language | Symbol
--- | ---
C | `int GetMonitorPhysicalWidth(int monitor);`
Swift | ``Monitor/physicalWidth``

#### GetMonitorPhysicalHeight

Get specified monitor physical height in millimetres

Language | Symbol
--- | ---
C | `int GetMonitorPhysicalHeight(int monitor);`
Swift | ``Monitor/physicalHeight``

#### GetMonitorRefreshRate

Get specified monitor refresh rate

Language | Symbol
--- | ---
C | `int GetMonitorRefreshRate(int monitor);`
Swift | ``Monitor/refreshRate``

#### GetWindowPosition

Get window position XY on monitor

Language | Symbol
--- | ---
C | `Vector2 GetWindowPosition(void);`
Swift | ``Window/position``

#### GetWindowScaleDPI

Get window scale DPI factor

Language | Symbol
--- | ---
C | `Vector2 GetWindowScaleDPI(void);`
Swift | ``Window/scaleDPI``

#### GetMonitorName

Get the human-readable, UTF-8 encoded name of the primary monitor

Language | Symbol
--- | ---
C | `const char *GetMonitorName(int monitor);`
Swift | ``Monitor/name``

#### SetClipboardText

Set clipboard text content

Language | Symbol
--- | ---
C | `void SetClipboardText(const char *text);`
Swift | ``Clipboard/text``

#### GetClipboardText

Get clipboard text content

Language | Symbol
--- | ---
C | `const char *GetClipboardText(void);`
Swift | ``Clipboard/text``

### Custom frame control functions

```mm
void SwapScreenBuffer(void); // Swap back buffer with front buffer (screen drawing)
void PollInputEvents(void);  // Register all input events
void WaitTime(float ms);     // Wait for some milliseconds (halt program execution)
```

> Note: Those functions are intended for advance users that want full control over the frame processing default EndDrawing() does this job: draws everything + SwapScreenBuffer() + manage frame timming + PollInputEvents() avoid that behaviour and control frame processes manually, enable in config.h: SUPPORT_CUSTOM_FRAME_CONTROL

#### SwapScreenBuffer

Swap back buffer with front buffer (screen drawing)

Language | Symbol
--- | ---
C | `void SwapScreenBuffer(void);`
Swift | —

#### PollInputEvents

Register all input events

Language | Symbol
--- | ---
C | `void PollInputEvents(void);`
Swift | —

#### WaitTime

Wait for some milliseconds (halt program execution)

Language | Symbol
--- | ---
C | `void WaitTime(float ms);`
Swift | —

### Cursor-related functions

```mm
void ShowCursor(void);       // Shows cursor
void HideCursor(void);       // Hides cursor
bool IsCursorHidden(void);   // Check if cursor is not visible
void EnableCursor(void);     // Enables cursor (unlock cursor)
void DisableCursor(void);    // Disables cursor (lock cursor)
bool IsCursorOnScreen(void); // Check if cursor is on the screen
```

#### ShowCursor

Shows cursor

Language | Symbol
--- | ---
C | `void ShowCursor(void);`
Swift | —

#### HideCursor

Hides cursor

Language | Symbol
--- | ---
C | `void HideCursor(void);`
Swift | —

#### IsCursorHidden

Check if cursor is not visible

Language | Symbol
--- | ---
C | `bool IsCursorHidden(void);`
Swift | —

#### EnableCursor

Enables cursor (unlock cursor)

Language | Symbol
--- | ---
C | `void EnableCursor(void);`
Swift | —

#### DisableCursor

Disables cursor (lock cursor)

Language | Symbol
--- | ---
C | `void DisableCursor(void);`
Swift | —

#### IsCursorOnScreen

Check if cursor is on the screen

Language | Symbol
--- | ---
C | `bool IsCursorOnScreen(void);`
Swift | —

### Drawing-related functions

```mm
void ClearBackground(Color color);                          // Set background color (framebuffer clear color)
void BeginDrawing(void);                                    // Setup canvas (framebuffer) to start drawing
void EndDrawing(void);                                      // End canvas drawing and swap buffers (double buffering)
void BeginMode2D(Camera2D camera);                          // Begin 2D mode with custom camera (2D)
void EndMode2D(void);                                       // Ends 2D mode with custom camera
void BeginMode3D(Camera3D camera);                          // Begin 3D mode with custom camera (3D)
void EndMode3D(void);                                       // Ends 3D mode and returns to default 2D orthographic mode
void BeginTextureMode(RenderTexture2D target);              // Begin drawing to render texture
void EndTextureMode(void);                                  // Ends drawing to render texture
void BeginShaderMode(Shader shader);                        // Begin custom shader drawing
void EndShaderMode(void);                                   // End custom shader drawing (use default shader)
void BeginBlendMode(int mode);                              // Begin blending mode (alpha, additive, multiplied, subtract, custom)
void EndBlendMode(void);                                    // End blending mode (reset to default: alpha blending)
void BeginScissorMode(int x, int y, int width, int height); // Begin scissor mode (define screen area for following drawing)
void EndScissorMode(void);                                  // End scissor mode
void BeginVrStereoMode(VrStereoConfig config);              // Begin stereo rendering (requires VR simulator)
void EndVrStereoMode(void);                                 // End stereo rendering (requires VR simulator)
```

#### ClearBackground

Set background color (framebuffer clear color)

Language | Symbol
--- | ---
C | `void ClearBackground(Color color);`
Swift | —

#### BeginDrawing

Setup canvas (framebuffer) to start drawing

Language | Symbol
--- | ---
C | `void BeginDrawing(void);`
Swift | —

#### EndDrawing

End canvas drawing and swap buffers (double buffering)

Language | Symbol
--- | ---
C | `void EndDrawing(void);`
Swift | —

#### BeginMode2D

Begin 2D mode with custom camera (2D)

Language | Symbol
--- | ---
C | `void BeginMode2D(Camera2D camera);`
Swift | —

#### EndMode2D

Ends 2D mode with custom camera

Language | Symbol
--- | ---
C | `void EndMode2D(void);`
Swift | —

#### BeginMode3D

Begin 3D mode with custom camera (3D)

Language | Symbol
--- | ---
C | `void BeginMode3D(Camera3D camera);`
Swift | —

#### EndMode3D

Ends 3D mode and returns to default 2D orthographic mode

Language | Symbol
--- | ---
C | `void EndMode3D(void);`
Swift | —

#### BeginTextureMode

Begin drawing to render texture

Language | Symbol
--- | ---
C | `void BeginTextureMode(RenderTexture2D target);`
Swift | —

#### EndTextureMode

Ends drawing to render texture

Language | Symbol
--- | ---
C | `void EndTextureMode(void);`
Swift | —

#### BeginShaderMode

Begin custom shader drawing

Language | Symbol
--- | ---
C | `void BeginShaderMode(Shader shader);`
Swift | —

#### EndShaderMode

End custom shader drawing (use default shader)

Language | Symbol
--- | ---
C | `void EndShaderMode(void);`
Swift | —

#### BeginBlendMode

Begin blending mode (alpha, additive, multiplied, subtract, custom)

Language | Symbol
--- | ---
C | `void BeginBlendMode(int mode);`
Swift | —

#### EndBlendMode

End blending mode (reset to default: alpha blending)

Language | Symbol
--- | ---
C | `void EndBlendMode(void);`
Swift | —

#### BeginScissorMode

Begin scissor mode (define screen area for following drawing)

Language | Symbol
--- | ---
C | `void BeginScissorMode(int x, int y, int width, int height);`
Swift | —

#### EndScissorMode

End scissor mode

Language | Symbol
--- | ---
C | `void EndScissorMode(void);`
Swift | —

#### BeginVrStereoMode

Begin stereo rendering (requires VR simulator)

Language | Symbol
--- | ---
C | `void BeginVrStereoMode(VrStereoConfig config);`
Swift | —

#### EndVrStereoMode

End stereo rendering (requires VR simulator)

Language | Symbol
--- | ---
C | `void EndVrStereoMode(void);`
Swift | —

### VR stereo config functions for VR simulator

```mm
VrStereoConfig LoadVrStereoConfig(VrDeviceInfo device); // Load VR stereo config for VR simulator device parameters
void UnloadVrStereoConfig(VrStereoConfig config);       // Unload VR stereo config
```

#### LoadVrStereoConfig

Load VR stereo config for VR simulator device parameters

Language | Symbol
--- | ---
C | `VrStereoConfig LoadVrStereoConfig(VrDeviceInfo device);`
Swift | —

#### UnloadVrStereoConfig

Unload VR stereo config

Language | Symbol
--- | ---
C | `void UnloadVrStereoConfig(VrStereoConfig config);`
Swift | —

### Shader management functions

```mm
Shader LoadShader(const char *vsFileName, const char *fsFileName);                                // Load shader from files and bind default locations
Shader LoadShaderFromMemory(const char *vsCode, const char *fsCode);                              // Load shader from code strings and bind default locations
int GetShaderLocation(Shader shader, const char *uniformName);                                    // Get shader uniform location
int GetShaderLocationAttrib(Shader shader, const char *attribName);                               // Get shader attribute location
void SetShaderValue(Shader shader, int locIndex, const void *value, int uniformType);             // Set shader uniform value
void SetShaderValueV(Shader shader, int locIndex, const void *value, int uniformType, int count); // Set shader uniform value vector
void SetShaderValueMatrix(Shader shader, int locIndex, Matrix mat);                               // Set shader uniform value (matrix 4x4)
void SetShaderValueTexture(Shader shader, int locIndex, Texture2D texture);                       // Set shader uniform value for texture (sampler2d)
void UnloadShader(Shader shader);                                                                 // Unload shader from GPU memory (VRAM)
```

> Note: Shader functionality is not available on OpenGL 1.1

#### LoadShader

Load shader from files and bind default locations

Language | Symbol
--- | ---
C | `Shader LoadShader(const char *vsFileName, const char *fsFileName);`
Swift | —

#### LoadShaderFromMemory

Load shader from code strings and bind default locations

Language | Symbol
--- | ---
C | `Shader LoadShaderFromMemory(const char *vsCode, const char *fsCode);`
Swift | —

#### GetShaderLocation

Get shader uniform location

Language | Symbol
--- | ---
C | `int GetShaderLocation(Shader shader, const char *uniformName);`
Swift | —

#### GetShaderLocationAttrib

Get shader attribute location

Language | Symbol
--- | ---
C | `int GetShaderLocationAttrib(Shader shader, const char *attribName);`
Swift | —

#### SetShaderValue

Set shader uniform value

Language | Symbol
--- | ---
C | `void SetShaderValue(Shader shader, int locIndex, const void *value, int uniformType);`
Swift | —

#### SetShaderValueV

Set shader uniform value vector

Language | Symbol
--- | ---
C | `void SetShaderValueV(Shader shader, int locIndex, const void *value, int uniformType, int count);`
Swift | —

#### SetShaderValueMatrix

Set shader uniform value (matrix 4x4)

Language | Symbol
--- | ---
C | `void SetShaderValueMatrix(Shader shader, int locIndex, Matrix mat);`
Swift | —

#### SetShaderValueTexture

Set shader uniform value for texture (sampler2d)

Language | Symbol
--- | ---
C | `void SetShaderValueTexture(Shader shader, int locIndex, Texture2D texture);`
Swift | —

#### UnloadShader

Unload shader from GPU memory (VRAM)

Language | Symbol
--- | ---
C | `void UnloadShader(Shader shader);`
Swift | —

### Screen-space-related functions

```mm
Ray GetMouseRay(Vector2 mousePosition, Camera camera);                              // Get a ray trace from mouse position
Matrix GetCameraMatrix(Camera camera);                                              // Get camera transform matrix (view matrix)
Matrix GetCameraMatrix2D(Camera2D camera);                                          // Get camera 2d transform matrix
Vector2 GetWorldToScreen(Vector3 position, Camera camera);                          // Get the screen space position for a 3d world space position
Vector2 GetWorldToScreenEx(Vector3 position, Camera camera, int width, int height); // Get size position for a 3d world space position
Vector2 GetWorldToScreen2D(Vector2 position, Camera2D camera);                      // Get the screen space position for a 2d camera world space position
Vector2 GetScreenToWorld2D(Vector2 position, Camera2D camera);                      // Get the world space position for a 2d camera screen space position
```

#### GetMouseRay

Get a ray trace from mouse position

Language | Symbol
--- | ---
C | `Ray GetMouseRay(Vector2 mousePosition, Camera camera);`
Swift | —

#### GetCameraMatrix

Get camera transform matrix (view matrix)

Language | Symbol
--- | ---
C | `Matrix GetCameraMatrix(Camera camera);`
Swift | —

#### GetCameraMatrix2D

Get camera 2d transform matrix

Language | Symbol
--- | ---
C | `Matrix GetCameraMatrix2D(Camera2D camera);`
Swift | —

#### GetWorldToScreen

Get the screen space position for a 3d world space position

Language | Symbol
--- | ---
C | `Vector2 GetWorldToScreen(Vector3 position, Camera camera);`
Swift | —

#### GetWorldToScreenEx

Get size position for a 3d world space position

Language | Symbol
--- | ---
C | `Vector2 GetWorldToScreenEx(Vector3 position, Camera camera, int width, int height);`
Swift | —

#### GetWorldToScreen2D

Get the screen space position for a 2d camera world space position

Language | Symbol
--- | ---
C | `Vector2 GetWorldToScreen2D(Vector2 position, Camera2D camera);`
Swift | —

#### GetScreenToWorld2D

Get the world space position for a 2d camera screen space position

Language | Symbol
--- | ---
C | `Vector2 GetScreenToWorld2D(Vector2 position, Camera2D camera);`
Swift | —

### Timing-related functions

```mm
void SetTargetFPS(int fps); // Set target FPS (maximum)
int GetFPS(void);           // Get current FPS
float GetFrameTime(void);   // Get time in seconds for last frame drawn (delta time)
double GetTime(void);       // Get elapsed time in seconds since InitWindow()
```

#### SetTargetFPS

Set target FPS (maximum)

Language | Symbol
--- | ---
C | `void SetTargetFPS(int fps);`
Swift | —

#### GetFPS

Get current FPS

Language | Symbol
--- | ---
C | `int GetFPS(void);`
Swift | —

#### GetFrameTime

Get time in seconds for last frame drawn (delta time)

Language | Symbol
--- | ---
C | `float GetFrameTime(void);`
Swift | —

#### GetTime

Get elapsed time in seconds since InitWindow()

Language | Symbol
--- | ---
C | `double GetTime(void);`
Swift | —

### Misc. functions

```mm
int GetRandomValue(int min, int max);               // Get a random value between min and max (both included)
void SetRandomSeed(unsigned int seed);              // Set the seed for the random number generator
void TakeScreenshot(const char *fileName);          // Takes a screenshot of current screen (filename extension defines format)
void SetConfigFlags(unsigned int flags);            // Setup init configuration flags (view FLAGS)
void TraceLog(int logLevel, const char *text, ...); // Show trace log messages (LOG_DEBUG, LOG_INFO, LOG_WARNING, LOG_ERROR...)
void SetTraceLogLevel(int logLevel);                // Set the current threshold (minimum) log level
void *MemAlloc(int size);                           // Internal memory allocator
void *MemRealloc(void *ptr, int size);              // Internal memory reallocator
void MemFree(void *ptr);                            // Internal memory free
```

#### GetRandomValue

Get a random value between min and max (both included)

Language | Symbol
--- | ---
C | `int GetRandomValue(int min, int max);`
Swift | —

#### SetRandomSeed

Set the seed for the random number generator

Language | Symbol
--- | ---
C | `void SetRandomSeed(unsigned int seed);`
Swift | —

#### TakeScreenshot

Takes a screenshot of current screen (filename extension defines format)

Language | Symbol
--- | ---
C | `void TakeScreenshot(const char *fileName);`
Swift | —

#### SetConfigFlags

Setup init configuration flags (view FLAGS)

Language | Symbol
--- | ---
C | `void SetConfigFlags(unsigned int flags);`
Swift | —

#### TraceLog

Show trace log messages (LOG_DEBUG, LOG_INFO, LOG_WARNING, LOG_ERROR...)

Language | Symbol
--- | ---
C | `void TraceLog(int logLevel, const char *text, ...);`
Swift | —

#### SetTraceLogLevel

Set the current threshold (minimum) log level

Language | Symbol
--- | ---
C | `void SetTraceLogLevel(int logLevel);`
Swift | —

#### MemAlloc

Internal memory allocator

Language | Symbol
--- | ---
C | `void *MemAlloc(int size);`
Swift | —

#### MemRealloc

Internal memory reallocator

Language | Symbol
--- | ---
C | `void *MemRealloc(void *ptr, int size);`
Swift | —

#### MemFree

Internal memory free

Language | Symbol
--- | ---
C | `void MemFree(void *ptr);`
Swift | —

### Set custom callbacks

```mm
void SetTraceLogCallback(TraceLogCallback callback);         // Set custom trace log
void SetLoadFileDataCallback(LoadFileDataCallback callback); // Set custom file binary data loader
void SetSaveFileDataCallback(SaveFileDataCallback callback); // Set custom file binary data saver
void SetLoadFileTextCallback(LoadFileTextCallback callback); // Set custom file text data loader
void SetSaveFileTextCallback(SaveFileTextCallback callback); // Set custom file text data saver
```

> Warning: Callbacks setup is intended for advance users

#### SetTraceLogCallback

Set custom trace log

Language | Symbol
--- | ---
C | `void SetTraceLogCallback(TraceLogCallback callback);`
Swift | —

#### SetLoadFileDataCallback

Set custom file binary data loader

Language | Symbol
--- | ---
C | `void SetLoadFileDataCallback(LoadFileDataCallback callback);`
Swift | —

#### SetSaveFileDataCallback

Set custom file binary data saver

Language | Symbol
--- | ---
C | `void SetSaveFileDataCallback(SaveFileDataCallback callback);`
Swift | —

#### SetLoadFileTextCallback

Set custom file text data loader

Language | Symbol
--- | ---
C | `void SetLoadFileTextCallback(LoadFileTextCallback callback);`
Swift | —

#### SetSaveFileTextCallback

Set custom file text data saver

Language | Symbol
--- | ---
C | `void SetSaveFileTextCallback(SaveFileTextCallback callback);`
Swift | —

### Files management functions

```mm
unsigned char *LoadFileData(const char *fileName, unsigned int *bytesRead);     // Load file data as byte array (read)
void UnloadFileData(unsigned char *data);                                       // Unload file data allocated by LoadFileData()
bool SaveFileData(const char *fileName, void *data, unsigned int bytesToWrite); // Save data to file from byte array (write), returns true on success
char *LoadFileText(const char *fileName);                                       // Load text data from file (read), returns a '\0' terminated string
void UnloadFileText(char *text);                                                // Unload file text data allocated by LoadFileText()
bool SaveFileText(const char *fileName, char *text);                            // Save text data to file (write), string must be '\0' terminated, returns true on success
bool FileExists(const char *fileName);                                          // Check if file exists
bool DirectoryExists(const char *dirPath);                                      // Check if a directory path exists
bool IsFileExtension(const char *fileName, const char                           // Check file extension (including point: .png, .wav)
const char *GetFileExtension(const char *fileName);                             // Get pointer to extension for a filename string (includes dot: '.png')
const char *GetFileName(const char *filePath);                                  // Get pointer to filename for a path string
const char *GetFileNameWithoutExt(const char *filePath);                        // Get filename string without extension (uses static string)
const char *GetDirectoryPath(const char *filePath);                             // Get full path for a given fileName with path (uses static string)
const char *GetPrevDirectoryPath(const char *dirPath);                          // Get previous directory path for a given path (uses static string)
const char *GetWorkingDirectory(void);                                          // Get current working directory (uses static string)
char **GetDirectoryFiles(const char *dirPath, int *count);                      // Get filenames in a directory path (memory should be freed)
void ClearDirectoryFiles(void);                                                 // Clear directory files paths buffers (free memory)
bool ChangeDirectory(const char *dir);                                          // Change working directory, return true on success
bool IsFileDropped(void);                                                       // Check if a file has been dropped into window
char **GetDroppedFiles(int *count);                                             // Get dropped files names (memory should be freed)
void ClearDroppedFiles(void);                                                   // Clear dropped files paths buffer (free memory)
long GetFileModTime(const char *fileName);                                      // Get file modification time (last write time)
```

#### LoadFileData

Load file data as byte array (read)

Language | Symbol
--- | ---
C | `unsigned char *LoadFileData(const char *fileName, unsigned int *bytesRead);`
Swift | —

#### UnloadFileData

Unload file data allocated by LoadFileData()

Language | Symbol
--- | ---
C | `void UnloadFileData(unsigned char *data);`
Swift | —

#### SaveFileData

Save data to file from byte array (write), returns true on success

Language | Symbol
--- | ---
C | `bool SaveFileData(const char *fileName, void *data, unsigned int bytesToWrite);`
Swift | —

#### LoadFileText

Load text data from file (read), returns a '\0' terminated string

Language | Symbol
--- | ---
C | `char *LoadFileText(const char *fileName);`
Swift | —

#### UnloadFileText

Unload file text data allocated by LoadFileText()

Language | Symbol
--- | ---
C | `void UnloadFileText(char *text);`
Swift | —

#### SaveFileText

Save text data to file (write), string must be '\0' terminated, returns true on success

Language | Symbol
--- | ---
C | `bool SaveFileText(const char *fileName, char *text);`
Swift | —

#### FileExists

Check if file exists

Language | Symbol
--- | ---
C | `bool FileExists(const char *fileName);`
Swift | —

#### DirectoryExists

Check if a directory path exists

Language | Symbol
--- | ---
C | `bool DirectoryExists(const char *dirPath);`
Swift | —

#### IsFileExtension

Check file extension (including point: .png, .wav)

Language | Symbol
--- | ---
C | `bool IsFileExtension(const char *fileName, const char`
Swift | —

#### GetFileExtension

Get pointer to extension for a filename string (includes dot: '.png')

Language | Symbol
--- | ---
C | `const char *GetFileExtension(const char *fileName);`
Swift | —

#### GetFileName

Get pointer to filename for a path string

Language | Symbol
--- | ---
C | `const char *GetFileName(const char *filePath);`
Swift | —

#### GetFileNameWithoutExt

Get filename string without extension (uses static string)

Language | Symbol
--- | ---
C | `const char *GetFileNameWithoutExt(const char *filePath);`
Swift | —

#### GetDirectoryPath

Get full path for a given fileName with path (uses static string)

Language | Symbol
--- | ---
C | `const char *GetDirectoryPath(const char *filePath);`
Swift | —

#### GetPrevDirectoryPath

Get previous directory path for a given path (uses static string)

Language | Symbol
--- | ---
C | `const char *GetPrevDirectoryPath(const char *dirPath);`
Swift | —

#### GetWorkingDirectory

Get current working directory (uses static string)

Language | Symbol
--- | ---
C | `const char *GetWorkingDirectory(void);`
Swift | —

#### GetDirectoryFiles

Get filenames in a directory path (memory should be freed)

Language | Symbol
--- | ---
C | `char **GetDirectoryFiles(const char *dirPath, int *count);`
Swift | —

#### ClearDirectoryFiles

Clear directory files paths buffers (free memory)

Language | Symbol
--- | ---
C | `void ClearDirectoryFiles(void);`
Swift | —

#### ChangeDirectory

Change working directory, return true on success

Language | Symbol
--- | ---
C | `bool ChangeDirectory(const char *dir);`
Swift | —

#### IsFileDropped

Check if a file has been dropped into window

Language | Symbol
--- | ---
C | `bool IsFileDropped(void);`
Swift | —

#### GetDroppedFiles

Get dropped files names (memory should be freed)

Language | Symbol
--- | ---
C | `char **GetDroppedFiles(int *count);`
Swift | —

#### ClearDroppedFiles

Clear dropped files paths buffer (free memory)

Language | Symbol
--- | ---
C | `void ClearDroppedFiles(void);`
Swift | —

#### GetFileModTime

Get file modification time (last write time)

Language | Symbol
--- | ---
C | `long GetFileModTime(const char *fileName);`
Swift | —

### Compression/Encoding functionality

```mm
unsigned char *CompressData(unsigned char *data, int dataLength, int *compDataLength);       // Compress data (DEFLATE algorithm)
unsigned char *DecompressData(unsigned char *compData, int compDataLength, int *dataLength); // Decompress data (DEFLATE algorithm)
char *EncodeDataBase64(const unsigned char *data, int dataLength, int *outputLength);        // Encode data to Base64 string
unsigned char *DecodeDataBase64(unsigned char *data, int *outputLength);                     // Decode Base64 string data
```

#### CompressData

Compress data (DEFLATE algorithm)

Language | Symbol
--- | ---
C | `unsigned char *CompressData(unsigned char *data, int dataLength, int *compDataLength);`
Swift | —

#### DecompressData

Decompress data (DEFLATE algorithm)

Language | Symbol
--- | ---
C | `unsigned char *DecompressData(unsigned char *compData, int compDataLength, int *dataLength);`
Swift | —

#### EncodeDataBase64

Encode data to Base64 string

Language | Symbol
--- | ---
C | `char *EncodeDataBase64(const unsigned char *data, int dataLength, int *outputLength);`
Swift | —

#### DecodeDataBase64

Decode Base64 string data

Language | Symbol
--- | ---
C | `unsigned char *DecodeDataBase64(unsigned char *data, int *outputLength);`
Swift | —

### Persistent storage management

```mm
bool SaveStorageValue(unsigned int position, int value); // Save integer value to storage file (to defined position), returns true on success
int LoadStorageValue(unsigned int position);             // Load integer value from storage file (from defined position)
void OpenURL(const char *url);                           // Open URL with default system browser (if available)
```

#### SaveStorageValue

Save integer value to storage file (to defined position), returns true on success

Language | Symbol
--- | ---
C | `bool SaveStorageValue(unsigned int position, int value);`
Swift | —

#### LoadStorageValue

Load integer value from storage file (from defined position)

Language | Symbol
--- | ---
C | `int LoadStorageValue(unsigned int position);`
Swift | —

#### OpenURL

Open URL with default system browser (if available)

Language | Symbol
--- | ---
C | `void OpenURL(const char *url);`
Swift | —

## Input Handling Functions (Module: core)

### Input-related functions: keyboard

```mm
bool IsKeyPressed(int key);  // Check if a key has been pressed once
bool IsKeyDown(int key);     // Check if a key is being pressed
bool IsKeyReleased(int key); // Check if a key has been released once
bool IsKeyUp(int key);       // Check if a key is NOT being pressed
void SetExitKey(int key);    // Set a custom key to exit program (default is ESC)
int GetKeyPressed(void);     // Get key pressed (keycode), call it multiple times for keys queued, returns 0 when the queue is empty
int GetCharPressed(void);    // Get char pressed (unicode), call it multiple times for chars queued, returns 0 when the queue is empty
```

#### IsKeyPressed

Check if a key has been pressed once

Language | Symbol
--- | ---
C | `bool IsKeyPressed(int key);`
Swift | —

#### IsKeyDown

Check if a key is being pressed

Language | Symbol
--- | ---
C | `bool IsKeyDown(int key);`
Swift | —

#### IsKeyReleased

Check if a key has been released once

Language | Symbol
--- | ---
C | `bool IsKeyReleased(int key);`
Swift | —

#### IsKeyUp

Check if a key is NOT being pressed

Language | Symbol
--- | ---
C | `bool IsKeyUp(int key);`
Swift | —

#### SetExitKey

Set a custom key to exit program (default is ESC)

Language | Symbol
--- | ---
C | `void SetExitKey(int key);`
Swift | —

#### GetKeyPressed

Get key pressed (keycode), call it multiple times for keys queued, returns 0 when the queue is empty

Language | Symbol
--- | ---
C | `int GetKeyPressed(void);`
Swift | —

#### GetCharPressed

Get char pressed (unicode), call it multiple times for chars queued, returns 0 when the queue is empty

Language | Symbol
--- | ---
C | `int GetCharPressed(void);`
Swift | —

### Input-related functions: gamepads

```mm
bool IsGamepadAvailable(int gamepad);                  // Check if a gamepad is available
const char *GetGamepadName(int gamepad);               // Get gamepad internal name id
bool IsGamepadButtonPressed(int gamepad, int button);  // Check if a gamepad button has been pressed once
bool IsGamepadButtonDown(int gamepad, int button);     // Check if a gamepad button is being pressed
bool IsGamepadButtonReleased(int gamepad, int button); // Check if a gamepad button has been released once
bool IsGamepadButtonUp(int gamepad, int button);       // Check if a gamepad button is NOT being pressed
int GetGamepadButtonPressed(void);                     // Get the last gamepad button pressed
int GetGamepadAxisCount(int gamepad);                  // Get gamepad axis count for a gamepad
float GetGamepadAxisMovement(int gamepad, int axis);   // Get axis movement value for a gamepad axis
int SetGamepadMappings(const char *mappings);          // Set internal gamepad mappings (SDL_GameControllerDB)
```

#### IsGamepadAvailable

Check if a gamepad is available

Language | Symbol
--- | ---
C | `bool IsGamepadAvailable(int gamepad);`
Swift | —

#### GetGamepadName

Get gamepad internal name id

Language | Symbol
--- | ---
C | `const char *GetGamepadName(int gamepad);`
Swift | —

#### IsGamepadButtonPressed

Check if a gamepad button has been pressed once

Language | Symbol
--- | ---
C | `bool IsGamepadButtonPressed(int gamepad, int button);`
Swift | —

#### IsGamepadButtonDown

Check if a gamepad button is being pressed

Language | Symbol
--- | ---
C | `bool IsGamepadButtonDown(int gamepad, int button);`
Swift | —

#### IsGamepadButtonReleased

Check if a gamepad button has been released once

Language | Symbol
--- | ---
C | `bool IsGamepadButtonReleased(int gamepad, int button);`
Swift | —

#### IsGamepadButtonUp

Check if a gamepad button is NOT being pressed

Language | Symbol
--- | ---
C | `bool IsGamepadButtonUp(int gamepad, int button);`
Swift | —

#### GetGamepadButtonPressed

Get the last gamepad button pressed

Language | Symbol
--- | ---
C | `int GetGamepadButtonPressed(void);`
Swift | —

#### GetGamepadAxisCount

Get gamepad axis count for a gamepad

Language | Symbol
--- | ---
C | `int GetGamepadAxisCount(int gamepad);`
Swift | —

#### GetGamepadAxisMovement

Get axis movement value for a gamepad axis

Language | Symbol
--- | ---
C | `float GetGamepadAxisMovement(int gamepad, int axis);`
Swift | —

#### SetGamepadMappings

Set internal gamepad mappings (SDL_GameControllerDB)

Language | Symbol
--- | ---
C | `int SetGamepadMappings(const char *mappings);`
Swift | —

### Input-related functions: mouse

```mm
bool IsMouseButtonPressed(int button);          // Check if a mouse button has been pressed once
bool IsMouseButtonDown(int button);             // Check if a mouse button is being pressed
bool IsMouseButtonReleased(int button);         // Check if a mouse button has been released once
bool IsMouseButtonUp(int button);               // Check if a mouse button is NOT being pressed
int GetMouseX(void);                            // Get mouse position X
int GetMouseY(void);                            // Get mouse position Y
Vector2 GetMousePosition(void);                 // Get mouse position XY
Vector2 GetMouseDelta(void);                    // Get mouse delta between frames
void SetMousePosition(int x, int y);            // Set mouse position XY
void SetMouseOffset(int offsetX, int offsetY);  // Set mouse offset
void SetMouseScale(float scaleX, float scaleY); // Set mouse scaling
float GetMouseWheelMove(void);                  // Get mouse wheel movement Y
void SetMouseCursor(int cursor);                // Set mouse cursor
```

#### IsMouseButtonPressed

Check if a mouse button has been pressed once

Language | Symbol
--- | ---
C | `bool IsMouseButtonPressed(int button);`
Swift | —

#### IsMouseButtonDown

Check if a mouse button is being pressed

Language | Symbol
--- | ---
C | `bool IsMouseButtonDown(int button);`
Swift | —

#### IsMouseButtonReleased

Check if a mouse button has been released once

Language | Symbol
--- | ---
C | `bool IsMouseButtonReleased(int button);`
Swift | —

#### IsMouseButtonUp

Check if a mouse button is NOT being pressed

Language | Symbol
--- | ---
C | `bool IsMouseButtonUp(int button);`
Swift | —

#### GetMouseX

Get mouse position X

Language | Symbol
--- | ---
C | `int GetMouseX(void);`
Swift | —

#### GetMouseY

Get mouse position Y

Language | Symbol
--- | ---
C | `int GetMouseY(void);`
Swift | —

#### GetMousePosition

Get mouse position XY

Language | Symbol
--- | ---
C | `Vector2 GetMousePosition(void);`
Swift | —

#### GetMouseDelta

Get mouse delta between frames

Language | Symbol
--- | ---
C | `Vector2 GetMouseDelta(void);`
Swift | —

#### SetMousePosition

Set mouse position XY

Language | Symbol
--- | ---
C | `void SetMousePosition(int x, int y);`
Swift | —

#### SetMouseOffset

Set mouse offset

Language | Symbol
--- | ---
C | `void SetMouseOffset(int offsetX, int offsetY);`
Swift | —

#### SetMouseScale

Set mouse scaling

Language | Symbol
--- | ---
C | `void SetMouseScale(float scaleX, float scaleY);`
Swift | —

#### GetMouseWheelMove

Get mouse wheel movement Y

Language | Symbol
--- | ---
C | `float GetMouseWheelMove(void);`
Swift | —

#### SetMouseCursor

Set mouse cursor

Language | Symbol
--- | ---
C | `void SetMouseCursor(int cursor);`
Swift | —

### Input-related functions: touch

```mm
int GetTouchX(void);                                                                                      // Get touch position X for touch point 0 (relative to screen size)
int GetTouchY(void);                                                                                      // Get touch position Y for touch point 0 (relative to screen size)
Vector2 GetTouchPosition(int index);                                                                      // Get touch position XY for a touch point index (relative to screen size)
int GetTouchPointId(int index);                                                                           // Get touch point identifier for given index
int GetTouchPointCount(void);                                                                             // Get number of touch points
void SetGesturesEnabled(unsigned int flags);                                                              // Enable a set of gestures using flags
bool IsGestureDetected(int gesture);                                                                      // Check if a gesture have been detected
int GetGestureDetected(void);                                                                             // Get latest detected gesture
float GetGestureHoldDuration(void);                                                                       // Get gesture hold time in milliseconds
Vector2 GetGestureDragVector(void);                                                                       // Get gesture drag vector
float GetGestureDragAngle(void);                                                                          // Get gesture drag angle
Vector2 GetGesturePinchVector(void);                                                                      // Get gesture pinch delta
float GetGesturePinchAngle(void);                                                                         // Get gesture pinch angle
void SetCameraMode(Camera camera, int mode);                                                              // Set camera mode (multiple camera modes available)
void UpdateCamera(Camera *camera);                                                                        // Update camera position for selected mode
void SetCameraPanControl(int keyPan);                                                                     // Set camera pan key to combine with mouse movement (free camera)
void SetCameraAltControl(int keyAlt);                                                                     // Set camera alt key to combine with mouse movement (free camera)
void SetCameraSmoothZoomControl(int keySmoothZoom);                                                       // Set camera smooth zoom key to combine with mouse (free camera)
void SetCameraMoveControls(int keyFront, int keyBack, int keyRight, int keyLeft, int keyUp, int keyDown); // Set camera move controls (1st person and 3rd person cameras)
```

#### GetTouchX

Get touch position X for touch point 0 (relative to screen size)

Language | Symbol
--- | ---
C | `int GetTouchX(void);`
Swift | —

#### GetTouchY

Get touch position Y for touch point 0 (relative to screen size)

Language | Symbol
--- | ---
C | `int GetTouchY(void);`
Swift | —

#### GetTouchPosition

Get touch position XY for a touch point index (relative to screen size)

Language | Symbol
--- | ---
C | `Vector2 GetTouchPosition(int index);`
Swift | —

#### GetTouchPointId

Get touch point identifier for given index

Language | Symbol
--- | ---
C | `int GetTouchPointId(int index);`
Swift | —

#### GetTouchPointCount

Get number of touch points

Language | Symbol
--- | ---
C | `int GetTouchPointCount(void);`
Swift | —

## Gestures and Touch Handling Functions (Module: rgestures)

#### SetGesturesEnabled

Enable a set of gestures using flags

Language | Symbol
--- | ---
C | `void SetGesturesEnabled(unsigned int flags);`
Swift | —

#### IsGestureDetected

Check if a gesture have been detected

Language | Symbol
--- | ---
C | `bool IsGestureDetected(int gesture);`
Swift | —

#### GetGestureDetected

Get latest detected gesture

Language | Symbol
--- | ---
C | `int GetGestureDetected(void);`
Swift | —

#### GetGestureHoldDuration

Get gesture hold time in milliseconds

Language | Symbol
--- | ---
C | `float GetGestureHoldDuration(void);`
Swift | —

#### GetGestureDragVector

Get gesture drag vector

Language | Symbol
--- | ---
C | `Vector2 GetGestureDragVector(void);`
Swift | —

#### GetGestureDragAngle

Get gesture drag angle

Language | Symbol
--- | ---
C | `float GetGestureDragAngle(void);`
Swift | —

#### GetGesturePinchVector

Get gesture pinch delta

Language | Symbol
--- | ---
C | `Vector2 GetGesturePinchVector(void);`
Swift | —

#### GetGesturePinchAngle

Get gesture pinch angle

Language | Symbol
--- | ---
C | `float GetGesturePinchAngle(void);`
Swift | —

## Camera System Functions (Module: rcamera)

#### SetCameraMode

Set camera mode (multiple camera modes available)

Language | Symbol
--- | ---
C | `void SetCameraMode(Camera camera, int mode);`
Swift | —

#### UpdateCamera

Update camera position for selected mode

Language | Symbol
--- | ---
C | `void UpdateCamera(Camera *camera);`
Swift | —

#### SetCameraPanControl

Set camera pan key to combine with mouse movement (free camera)

Language | Symbol
--- | ---
C | `void SetCameraPanControl(int keyPan);`
Swift | —

#### SetCameraAltControl

Set camera alt key to combine with mouse movement (free camera)

Language | Symbol
--- | ---
C | `void SetCameraAltControl(int keyAlt);`
Swift | —

#### SetCameraSmoothZoomControl

Set camera smooth zoom key to combine with mouse (free camera)

Language | Symbol
--- | ---
C | `void SetCameraSmoothZoomControl(int keySmoothZoom);`
Swift | —

#### SetCameraMoveControls

Set camera move controls (1st person and 3rd person cameras)

Language | Symbol
--- | ---
C | `void SetCameraMoveControls(int keyFront, int keyBack, int keyRight, int keyLeft, int keyUp, int keyDown);`
Swift | —

## Basic Shapes Drawing Functions (Module: shapes)

> Note: It can be useful when using basic shapes and one single font, a font char white rectangle would allow drawing everything in a single draw call

#### SetShapesTexture

Set texture and rectangle to be used on shapes drawing

Language | Symbol
--- | ---
C | `void SetShapesTexture(Texture2D texture, Rectangle source);`
Swift | —

### Basic shapes drawing functions

```mm
void DrawPixel(int posX, int posY, Color color);                                                                                       // Draw a pixel
void DrawPixelV(Vector2 position, Color color);                                                                                        // Draw a pixel 
void DrawLine(int startPosX, int startPosY, int endPosX, int endPosY, Color color);                                                    // Draw a line
void DrawLineV(Vector2 startPos, Vector2 endPos, Color color);                                                                         // Draw a line 
void DrawLineEx(Vector2 startPos, Vector2 endPos, float thick, Color color);                                                           // Draw a line defining thickness
void DrawLineBezier(Vector2 startPos, Vector2 endPos, float thick, Color color);                                                       // Draw a line using cubic-bezier curves in-out
void DrawLineBezierQuad(Vector2 startPos, Vector2 endPos, Vector2 controlPos, float thick, Color color);                               // Draw line using quadratic bezier curves with a control point
void DrawLineBezierCubic(Vector2 startPos, Vector2 endPos, Vector2 startControlPos, Vector2 endControlPos, float thick, Color color);  // Draw line using cubic bezier curves with 2 control points
void DrawLineStrip(Vector2 *points, int pointCount, Color color);                                                                      // Draw lines sequence
void DrawCircle(int centerX, int centerY, float radius, Color color);                                                                  // Draw a color-filled circle
void DrawCircleSector(Vector2 center, float radius, float startAngle, float endAngle, int segments, Color color);                      // Draw a piece of a circle
void DrawCircleSectorLines(Vector2 center, float radius, float startAngle, float endAngle, int segments, Color color);                 // Draw circle sector outline
void DrawCircleGradient(int centerX, int centerY, float radius, Color color1, Color color2);                                           // Draw a gradient-filled circle
void DrawCircleV(Vector2 center, float radius, Color color);                                                                           // Draw a color-filled circle 
void DrawCircleLines(int centerX, int centerY, float radius, Color color);                                                             // Draw circle outline
void DrawEllipse(int centerX, int centerY, float radiusH, float radiusV, Color color);                                                 // Draw ellipse
void DrawEllipseLines(int centerX, int centerY, float radiusH, float radiusV, Color color);                                            // Draw ellipse outline
void DrawRing(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color color);      // Draw ring
void DrawRingLines(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color color); // Draw ring outline
void DrawRectangle(int posX, int posY, int width, int height, Color color);                                                            // Draw a color-filled rectangle
void DrawRectangleV(Vector2 position, Vector2 size, Color color);                                                                      // Draw a color-filled rectangle 
void DrawRectangleRec(Rectangle rec, Color color);                                                                                     // Draw a color-filled rectangle
void DrawRectanglePro(Rectangle rec, Vector2 origin, float rotation, Color color);                                                     // Draw a color-filled rectangle with pro parameters
void DrawRectangleGradientV(int posX, int posY, int width, int height, Color color1, Color                                             // Draw a vertical-gradient-filled rectangle
void DrawRectangleGradientH(int posX, int posY, int width, int height, Color color1, Color                                             // Draw a horizontal-gradient-filled rectangle
void DrawRectangleGradientEx(Rectangle rec, Color col1, Color col2, Color col3, Color col4);                                           // Draw a gradient-filled rectangle with custom vertex colors
void DrawRectangleLines(int posX, int posY, int width, int height, Color color);                                                       // Draw rectangle outline
void DrawRectangleLinesEx(Rectangle rec, float lineThick, Color color);                                                                // Draw rectangle outline with extended parameters
void DrawRectangleRounded(Rectangle rec, float roundness, int segments, Color color);                                                  // Draw rectangle with rounded edges
void DrawRectangleRoundedLines(Rectangle rec, float roundness, int segments, float lineThick, Color color);                            // Draw rectangle with rounded edges outline
void DrawTriangle(Vector2 v1, Vector2 v2, Vector2 v3, Color color);                                                                    // Draw a color-filled triangle (vertex in counter-clockwise order!)
void DrawTriangleLines(Vector2 v1, Vector2 v2, Vector2 v3, Color color);                                                               // Draw triangle outline (vertex in counter-clockwise order!)
void DrawTriangleFan(Vector2 *points, int pointCount, Color color);                                                                    // Draw a triangle fan defined by points (first vertex is the center)
void DrawTriangleStrip(Vector2 *points, int pointCount, Color color);                                                                  // Draw a triangle strip defined by points
void DrawPoly(Vector2 center, int sides, float radius, float rotation, Color color);                                                   // Draw a regular polygon 
void DrawPolyLines(Vector2 center, int sides, float radius, float rotation, Color color);                                              // Draw a polygon outline of n sides
void DrawPolyLinesEx(Vector2 center, int sides, float radius, float rotation, float lineThick, Color color);                           // Draw a polygon outline of n sides with extended parameters
```

#### DrawPixel

Draw a pixel

Language | Symbol
--- | ---
C | `void DrawPixel(int posX, int posY, Color color);`
Swift | —

#### DrawPixelV

Draw a pixel 

Language | Symbol
--- | ---
C | `void DrawPixelV(Vector2 position, Color color);`
Swift | —

#### DrawLine

Draw a line

Language | Symbol
--- | ---
C | `void DrawLine(int startPosX, int startPosY, int endPosX, int endPosY, Color color);`
Swift | —

#### DrawLineV

Draw a line 

Language | Symbol
--- | ---
C | `void DrawLineV(Vector2 startPos, Vector2 endPos, Color color);`
Swift | —

#### DrawLineEx

Draw a line defining thickness

Language | Symbol
--- | ---
C | `void DrawLineEx(Vector2 startPos, Vector2 endPos, float thick, Color color);`
Swift | —

#### DrawLineBezier

Draw a line using cubic-bezier curves in-out

Language | Symbol
--- | ---
C | `void DrawLineBezier(Vector2 startPos, Vector2 endPos, float thick, Color color);`
Swift | —

#### DrawLineBezierQuad

Draw line using quadratic bezier curves with a control point

Language | Symbol
--- | ---
C | `void DrawLineBezierQuad(Vector2 startPos, Vector2 endPos, Vector2 controlPos, float thick, Color color);`
Swift | —

#### DrawLineBezierCubic

Draw line using cubic bezier curves with 2 control points

Language | Symbol
--- | ---
C | `void DrawLineBezierCubic(Vector2 startPos, Vector2 endPos, Vector2 startControlPos, Vector2 endControlPos, float thick, Color color);`
Swift | —

#### DrawLineStrip

Draw lines sequence

Language | Symbol
--- | ---
C | `void DrawLineStrip(Vector2 *points, int pointCount, Color color);`
Swift | —

#### DrawCircle

Draw a color-filled circle

Language | Symbol
--- | ---
C | `void DrawCircle(int centerX, int centerY, float radius, Color color);`
Swift | —

#### DrawCircleSector

Draw a piece of a circle

Language | Symbol
--- | ---
C | `void DrawCircleSector(Vector2 center, float radius, float startAngle, float endAngle, int segments, Color color);`
Swift | —

#### DrawCircleSectorLines

Draw circle sector outline

Language | Symbol
--- | ---
C | `void DrawCircleSectorLines(Vector2 center, float radius, float startAngle, float endAngle, int segments, Color color);`
Swift | —

#### DrawCircleGradient

Draw a gradient-filled circle

Language | Symbol
--- | ---
C | `void DrawCircleGradient(int centerX, int centerY, float radius, Color color1, Color color2);`
Swift | —

#### DrawCircleV

Draw a color-filled circle 

Language | Symbol
--- | ---
C | `void DrawCircleV(Vector2 center, float radius, Color color);`
Swift | —

#### DrawCircleLines

Draw circle outline

Language | Symbol
--- | ---
C | `void DrawCircleLines(int centerX, int centerY, float radius, Color color);`
Swift | —

#### DrawEllipse

Draw ellipse

Language | Symbol
--- | ---
C | `void DrawEllipse(int centerX, int centerY, float radiusH, float radiusV, Color color);`
Swift | —

#### DrawEllipseLines

Draw ellipse outline

Language | Symbol
--- | ---
C | `void DrawEllipseLines(int centerX, int centerY, float radiusH, float radiusV, Color color);`
Swift | —

#### DrawRing

Draw ring

Language | Symbol
--- | ---
C | `void DrawRing(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color color);`
Swift | —

#### DrawRingLines

Draw ring outline

Language | Symbol
--- | ---
C | `void DrawRingLines(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color color);`
Swift | —

#### DrawRectangle

Draw a color-filled rectangle

Language | Symbol
--- | ---
C | `void DrawRectangle(int posX, int posY, int width, int height, Color color);`
Swift | —

#### DrawRectangleV

Draw a color-filled rectangle 

Language | Symbol
--- | ---
C | `void DrawRectangleV(Vector2 position, Vector2 size, Color color);`
Swift | —

#### DrawRectangleRec

Draw a color-filled rectangle

Language | Symbol
--- | ---
C | `void DrawRectangleRec(Rectangle rec, Color color);`
Swift | —

#### DrawRectanglePro

Draw a color-filled rectangle with pro parameters

Language | Symbol
--- | ---
C | `void DrawRectanglePro(Rectangle rec, Vector2 origin, float rotation, Color color);`
Swift | —

#### DrawRectangleGradientV

Draw a vertical-gradient-filled rectangle

Language | Symbol
--- | ---
C | `void DrawRectangleGradientV(int posX, int posY, int width, int height, Color color1, Color`
Swift | —

#### DrawRectangleGradientH

Draw a horizontal-gradient-filled rectangle

Language | Symbol
--- | ---
C | `void DrawRectangleGradientH(int posX, int posY, int width, int height, Color color1, Color`
Swift | —

#### DrawRectangleGradientEx

Draw a gradient-filled rectangle with custom vertex colors

Language | Symbol
--- | ---
C | `void DrawRectangleGradientEx(Rectangle rec, Color col1, Color col2, Color col3, Color col4);`
Swift | —

#### DrawRectangleLines

Draw rectangle outline

Language | Symbol
--- | ---
C | `void DrawRectangleLines(int posX, int posY, int width, int height, Color color);`
Swift | —

#### DrawRectangleLinesEx

Draw rectangle outline with extended parameters

Language | Symbol
--- | ---
C | `void DrawRectangleLinesEx(Rectangle rec, float lineThick, Color color);`
Swift | —

#### DrawRectangleRounded

Draw rectangle with rounded edges

Language | Symbol
--- | ---
C | `void DrawRectangleRounded(Rectangle rec, float roundness, int segments, Color color);`
Swift | —

#### DrawRectangleRoundedLines

Draw rectangle with rounded edges outline

Language | Symbol
--- | ---
C | `void DrawRectangleRoundedLines(Rectangle rec, float roundness, int segments, float lineThick, Color color);`
Swift | —

#### DrawTriangle

Draw a color-filled triangle (vertex in counter-clockwise order!)

Language | Symbol
--- | ---
C | `void DrawTriangle(Vector2 v1, Vector2 v2, Vector2 v3, Color color);`
Swift | —

#### DrawTriangleLines

Draw triangle outline (vertex in counter-clockwise order!)

Language | Symbol
--- | ---
C | `void DrawTriangleLines(Vector2 v1, Vector2 v2, Vector2 v3, Color color);`
Swift | —

#### DrawTriangleFan

Draw a triangle fan defined by points (first vertex is the center)

Language | Symbol
--- | ---
C | `void DrawTriangleFan(Vector2 *points, int pointCount, Color color);`
Swift | —

#### DrawTriangleStrip

Draw a triangle strip defined by points

Language | Symbol
--- | ---
C | `void DrawTriangleStrip(Vector2 *points, int pointCount, Color color);`
Swift | —

#### DrawPoly

Draw a regular polygon 

Language | Symbol
--- | ---
C | `void DrawPoly(Vector2 center, int sides, float radius, float rotation, Color color);`
Swift | —

#### DrawPolyLines

Draw a polygon outline of n sides

Language | Symbol
--- | ---
C | `void DrawPolyLines(Vector2 center, int sides, float radius, float rotation, Color color);`
Swift | —

#### DrawPolyLinesEx

Draw a polygon outline of n sides with extended parameters

Language | Symbol
--- | ---
C | `void DrawPolyLinesEx(Vector2 center, int sides, float radius, float rotation, float lineThick, Color color);`
Swift | —

### Basic shapes collision detection functions

```mm
bool CheckCollisionRecs(Rectangle rec1, Rectangle rec2);                                                                   // Check collision between two rectangles
bool CheckCollisionCircles(Vector2 center1, float radius1, Vector2 center2, float radius2);                                // Check collision between two circles
bool CheckCollisionCircleRec(Vector2 center, float radius, Rectangle rec);                                                 // Check collision between circle and rectangle
bool CheckCollisionPointRec(Vector2 point, Rectangle rec);                                                                 // Check if point is inside rectangle
bool CheckCollisionPointCircle(Vector2 point, Vector2 center, float radius);                                               // Check if point is inside circle
bool CheckCollisionPointTriangle(Vector2 point, Vector2 p1, Vector2 p2, Vector2 p3);                                       // Check if point is inside a triangle
bool CheckCollisionLines(Vector2 startPos1, Vector2 endPos1, Vector2 startPos2, Vector2 endPos2, Vector2 *collisionPoint); // Check the collision between two lines defined by two points each, returns collision point by reference
bool CheckCollisionPointLine(Vector2 point, Vector2 p1, Vector2 p2, int threshold);                                        // Check if point belongs to line created between two points [p1] and [p2] with defined margin in pixels [threshold]
Rectangle GetCollisionRec(Rectangle rec1, Rectangle rec2);                                                                 // Get collision rectangle for two rectangles collision
```

#### CheckCollisionRecs

Check collision between two rectangles

Language | Symbol
--- | ---
C | `bool CheckCollisionRecs(Rectangle rec1, Rectangle rec2);`
Swift | —

#### CheckCollisionCircles

Check collision between two circles

Language | Symbol
--- | ---
C | `bool CheckCollisionCircles(Vector2 center1, float radius1, Vector2 center2, float radius2);`
Swift | —

#### CheckCollisionCircleRec

Check collision between circle and rectangle

Language | Symbol
--- | ---
C | `bool CheckCollisionCircleRec(Vector2 center, float radius, Rectangle rec);`
Swift | —

#### CheckCollisionPointRec

Check if point is inside rectangle

Language | Symbol
--- | ---
C | `bool CheckCollisionPointRec(Vector2 point, Rectangle rec);`
Swift | —

#### CheckCollisionPointCircle

Check if point is inside circle

Language | Symbol
--- | ---
C | `bool CheckCollisionPointCircle(Vector2 point, Vector2 center, float radius);`
Swift | —

#### CheckCollisionPointTriangle

Check if point is inside a triangle

Language | Symbol
--- | ---
C | `bool CheckCollisionPointTriangle(Vector2 point, Vector2 p1, Vector2 p2, Vector2 p3);`
Swift | —

#### CheckCollisionLines

Check the collision between two lines defined by two points each, returns collision point by reference

Language | Symbol
--- | ---
C | `bool CheckCollisionLines(Vector2 startPos1, Vector2 endPos1, Vector2 startPos2, Vector2 endPos2, Vector2 *collisionPoint);`
Swift | —

#### CheckCollisionPointLine

Check if point belongs to line created between two points [p1] and [p2] with defined margin in pixels [threshold]

Language | Symbol
--- | ---
C | `bool CheckCollisionPointLine(Vector2 point, Vector2 p1, Vector2 p2, int threshold);`
Swift | —

#### GetCollisionRec

Get collision rectangle for two rectangles collision

Language | Symbol
--- | ---
C | `Rectangle GetCollisionRec(Rectangle rec1, Rectangle rec2);`
Swift | —

## Texture Loading and Drawing Functions (Module: textures)

### Image loading functions

```mm
Image LoadImage(const char *fileName);                                                        // Load image from file into CPU memory (RAM)
Image LoadImageRaw(const char *fileName, int width, int height, int format, int headerSize);  // Load image from RAW file data
Image LoadImageAnim(const char *fileName, int *frames);                                       // Load image sequence from file (frames appended to image.data)
Image LoadImageFromMemory(const char *fileType, const unsigned char *fileData, int dataSize); // Load image from memory buffer, fileType refers to extension: i.e. '.png'
Image LoadImageFromTexture(Texture2D texture);                                                // Load image from GPU texture data
Image LoadImageFromScreen(void);                                                              // Load image from screen buffer and (screenshot)
void UnloadImage(Image image);                                                                // Unload image from CPU memory (RAM)
bool ExportImage(Image image, const char *fileName);                                          // Export image data to file, returns true on success
bool ExportImageAsCode(Image image, const char *fileName);                                    // Export image as code file defining an array of bytes, returns true on success
```

> Note: This functions do not require GPU access

#### LoadImage

Load image from file into CPU memory (RAM)

Language | Symbol
--- | ---
C | `Image LoadImage(const char *fileName);`
Swift | —

#### LoadImageRaw

Load image from RAW file data

Language | Symbol
--- | ---
C | `Image LoadImageRaw(const char *fileName, int width, int height, int format, int headerSize);`
Swift | —

#### LoadImageAnim

Load image sequence from file (frames appended to image.data)

Language | Symbol
--- | ---
C | `Image LoadImageAnim(const char *fileName, int *frames);`
Swift | —

#### LoadImageFromMemory

Load image from memory buffer, fileType refers to extension: i.e. '.png'

Language | Symbol
--- | ---
C | `Image LoadImageFromMemory(const char *fileType, const unsigned char *fileData, int dataSize);`
Swift | —

#### LoadImageFromTexture

Load image from GPU texture data

Language | Symbol
--- | ---
C | `Image LoadImageFromTexture(Texture2D texture);`
Swift | —

#### LoadImageFromScreen

Load image from screen buffer and (screenshot)

Language | Symbol
--- | ---
C | `Image LoadImageFromScreen(void);`
Swift | —

#### UnloadImage

Unload image from CPU memory (RAM)

Language | Symbol
--- | ---
C | `void UnloadImage(Image image);`
Swift | —

#### ExportImage

Export image data to file, returns true on success

Language | Symbol
--- | ---
C | `bool ExportImage(Image image, const char *fileName);`
Swift | —

#### ExportImageAsCode

Export image as code file defining an array of bytes, returns true on success

Language | Symbol
--- | ---
C | `bool ExportImageAsCode(Image image, const char *fileName);`
Swift | —

### Image generation functions

```mm
Image GenImageColor(int width, int height, Color color);                                        // Generate image: plain color
Image GenImageGradientV(int width, int height, Color top, Color bottom);                        // Generate image: vertical gradient
Image GenImageGradientH(int width, int height, Color left, Color right);                        // Generate image: horizontal gradient
Image GenImageGradientRadial(int width, int height, float density, Color inner, Color outer);   // Generate image: radial gradient
Image GenImageChecked(int width, int height, int checksX, int checksY, Color col1, Color col2); // Generate image: checked
Image GenImageWhiteNoise(int width, int height, float factor);                                  // Generate image: white noise
Image GenImageCellular(int width, int height, int tileSize);                                    // Generate image: cellular algorithm, bigger tileSize means bigger cells
```

#### GenImageColor

Generate image: plain color

Language | Symbol
--- | ---
C | `Image GenImageColor(int width, int height, Color color);`
Swift | —

#### GenImageGradientV

Generate image: vertical gradient

Language | Symbol
--- | ---
C | `Image GenImageGradientV(int width, int height, Color top, Color bottom);`
Swift | —

#### GenImageGradientH

Generate image: horizontal gradient

Language | Symbol
--- | ---
C | `Image GenImageGradientH(int width, int height, Color left, Color right);`
Swift | —

#### GenImageGradientRadial

Generate image: radial gradient

Language | Symbol
--- | ---
C | `Image GenImageGradientRadial(int width, int height, float density, Color inner, Color outer);`
Swift | —

#### GenImageChecked

Generate image: checked

Language | Symbol
--- | ---
C | `Image GenImageChecked(int width, int height, int checksX, int checksY, Color col1, Color col2);`
Swift | —

#### GenImageWhiteNoise

Generate image: white noise

Language | Symbol
--- | ---
C | `Image GenImageWhiteNoise(int width, int height, float factor);`
Swift | —

#### GenImageCellular

Generate image: cellular algorithm, bigger tileSize means bigger cells

Language | Symbol
--- | ---
C | `Image GenImageCellular(int width, int height, int tileSize);`
Swift | —

### Image manipulation functions

```mm
Image ImageCopy(Image image);                                                                            // Create an image duplicate (useful for transformations)
Image ImageFromImage(Image image, Rectangle rec);                                                        // Create an image from another image piece
Image ImageText(const char *text, int fontSize, Color color);                                            // Create an image from text (default font)
Image ImageTextEx(Font font, const char *text, float fontSize, float spacing, Color tint);               // Create an image from text (custom sprite font)
void ImageFormat(Image *image, int newFormat);                                                           // Convert image data to desired format
void ImageToPOT(Image *image, Color fill);                                                               // Convert image to POT (power-of-two)
void ImageCrop(Image *image, Rectangle crop);                                                            // Crop an image to a defined rectangle
void ImageAlphaCrop(Image *image, float threshold);                                                      // Crop image depending on alpha value
void ImageAlphaClear(Image *image, Color color, float threshold);                                        // Clear alpha channel to desired color
void ImageAlphaMask(Image *image, Image alphaMask);                                                      // Apply alpha mask to image
void ImageAlphaPremultiply(Image *image);                                                                // Premultiply alpha channel
void ImageResize(Image *image, int newWidth, int newHeight);                                             // Resize image (Bicubic scaling algorithm)
void ImageResizeNN(Image *image, int newWidth,int newHeight);                                            // Resize image (Nearest-Neighbor scaling algorithm)
void ImageResizeCanvas(Image *image, int newWidth, int newHeight, int offsetX, int offsetY, Color fill); // Resize canvas and fill with color
void ImageMipmaps(Image *image);                                                                         // Compute all mipmap levels for a provided image
void ImageDither(Image *image, int rBpp, int gBpp, int bBpp, int aBpp);                                  // Dither image data to 16bpp or lower (Floyd-Steinberg dithering)
void ImageFlipVertical(Image *image);                                                                    // Flip image vertically
void ImageFlipHorizontal(Image *image);                                                                  // Flip image horizontally
void ImageRotateCW(Image *image);                                                                        // Rotate image clockwise 90deg
void ImageRotateCCW(Image *image);                                                                       // Rotate image counter-clockwise 90deg
void ImageColorTint(Image *image, Color color);                                                          // Modify image color: tint
void ImageColorInvert(Image *image);                                                                     // Modify image color: invert
void ImageColorGrayscale(Image *image);                                                                  // Modify image color: grayscale
void ImageColorContrast(Image *image, float contrast);                                                   // Modify image color: contrast (-100 to 100)
void ImageColorBrightness(Image *image, int brightness);                                                 // Modify image color: brightness (-255 to 255)
void ImageColorReplace(Image *image, Color color, Color replace);                                        // Modify image color: replace color
Color *LoadImageColors(Image image);                                                                     // Load color data from image as a Color array (RGBA - 32bit)
Color *LoadImagePalette(Image image, int maxPaletteSize, int *colorCount);                               // Load colors palette from image as a Color array (RGBA - 32bit)
void UnloadImageColors(Color *colors);                                                                   // Unload color data loaded with LoadImageColors()
void UnloadImagePalette(Color *colors);                                                                  // Unload colors palette loaded with LoadImagePalette()
Rectangle GetImageAlphaBorder(Image image, float threshold);                                             // Get image alpha border rectangle
Color GetImageColor(Image image, int x, int y);                                                          // Get image pixel color at (x, y) position
```

#### ImageCopy

Create an image duplicate (useful for transformations)

Language | Symbol
--- | ---
C | `Image ImageCopy(Image image);`
Swift | —

#### ImageFromImage

Create an image from another image piece

Language | Symbol
--- | ---
C | `Image ImageFromImage(Image image, Rectangle rec);`
Swift | —

#### ImageText

Create an image from text (default font)

Language | Symbol
--- | ---
C | `Image ImageText(const char *text, int fontSize, Color color);`
Swift | —

#### ImageTextEx

Create an image from text (custom sprite font)

Language | Symbol
--- | ---
C | `Image ImageTextEx(Font font, const char *text, float fontSize, float spacing, Color tint);`
Swift | —

#### ImageFormat

Convert image data to desired format

Language | Symbol
--- | ---
C | `void ImageFormat(Image *image, int newFormat);`
Swift | —

#### ImageToPOT

Convert image to POT (power-of-two)

Language | Symbol
--- | ---
C | `void ImageToPOT(Image *image, Color fill);`
Swift | —

#### ImageCrop

Crop an image to a defined rectangle

Language | Symbol
--- | ---
C | `void ImageCrop(Image *image, Rectangle crop);`
Swift | —

#### ImageAlphaCrop

Crop image depending on alpha value

Language | Symbol
--- | ---
C | `void ImageAlphaCrop(Image *image, float threshold);`
Swift | —

#### ImageAlphaClear

Clear alpha channel to desired color

Language | Symbol
--- | ---
C | `void ImageAlphaClear(Image *image, Color color, float threshold);`
Swift | —

#### ImageAlphaMask

Apply alpha mask to image

Language | Symbol
--- | ---
C | `void ImageAlphaMask(Image *image, Image alphaMask);`
Swift | —

#### ImageAlphaPremultiply

Premultiply alpha channel

Language | Symbol
--- | ---
C | `void ImageAlphaPremultiply(Image *image);`
Swift | —

#### ImageResize

Resize image (Bicubic scaling algorithm)

Language | Symbol
--- | ---
C | `void ImageResize(Image *image, int newWidth, int newHeight);`
Swift | —

#### ImageResizeNN

Resize image (Nearest-Neighbor scaling algorithm)

Language | Symbol
--- | ---
C | `void ImageResizeNN(Image *image, int newWidth,int newHeight);`
Swift | —

#### ImageResizeCanvas

Resize canvas and fill with color

Language | Symbol
--- | ---
C | `void ImageResizeCanvas(Image *image, int newWidth, int newHeight, int offsetX, int offsetY, Color fill);`
Swift | —

#### ImageMipmaps

Compute all mipmap levels for a provided image

Language | Symbol
--- | ---
C | `void ImageMipmaps(Image *image);`
Swift | —

#### ImageDither

Dither image data to 16bpp or lower (Floyd-Steinberg dithering)

Language | Symbol
--- | ---
C | `void ImageDither(Image *image, int rBpp, int gBpp, int bBpp, int aBpp);`
Swift | —

#### ImageFlipVertical

Flip image vertically

Language | Symbol
--- | ---
C | `void ImageFlipVertical(Image *image);`
Swift | —

#### ImageFlipHorizontal

Flip image horizontally

Language | Symbol
--- | ---
C | `void ImageFlipHorizontal(Image *image);`
Swift | —

#### ImageRotateCW

Rotate image clockwise 90deg

Language | Symbol
--- | ---
C | `void ImageRotateCW(Image *image);`
Swift | —

#### ImageRotateCCW

Rotate image counter-clockwise 90deg

Language | Symbol
--- | ---
C | `void ImageRotateCCW(Image *image);`
Swift | —

#### ImageColorTint

Modify image color: tint

Language | Symbol
--- | ---
C | `void ImageColorTint(Image *image, Color color);`
Swift | —

#### ImageColorInvert

Modify image color: invert

Language | Symbol
--- | ---
C | `void ImageColorInvert(Image *image);`
Swift | —

#### ImageColorGrayscale

Modify image color: grayscale

Language | Symbol
--- | ---
C | `void ImageColorGrayscale(Image *image);`
Swift | —

#### ImageColorContrast

Modify image color: contrast (-100 to 100)

Language | Symbol
--- | ---
C | `void ImageColorContrast(Image *image, float contrast);`
Swift | —

#### ImageColorBrightness

Modify image color: brightness (-255 to 255)

Language | Symbol
--- | ---
C | `void ImageColorBrightness(Image *image, int brightness);`
Swift | —

#### ImageColorReplace

Modify image color: replace color

Language | Symbol
--- | ---
C | `void ImageColorReplace(Image *image, Color color, Color replace);`
Swift | —

#### LoadImageColors

Load color data from image as a Color array (RGBA - 32bit)

Language | Symbol
--- | ---
C | `Color *LoadImageColors(Image image);`
Swift | —

#### LoadImagePalette

Load colors palette from image as a Color array (RGBA - 32bit)

Language | Symbol
--- | ---
C | `Color *LoadImagePalette(Image image, int maxPaletteSize, int *colorCount);`
Swift | —

#### UnloadImageColors

Unload color data loaded with LoadImageColors()

Language | Symbol
--- | ---
C | `void UnloadImageColors(Color *colors);`
Swift | —

#### UnloadImagePalette

Unload colors palette loaded with LoadImagePalette()

Language | Symbol
--- | ---
C | `void UnloadImagePalette(Color *colors);`
Swift | —

#### GetImageAlphaBorder

Get image alpha border rectangle

Language | Symbol
--- | ---
C | `Rectangle GetImageAlphaBorder(Image image, float threshold);`
Swift | —

#### GetImageColor

Get image pixel color at (x, y) position

Language | Symbol
--- | ---
C | `Color GetImageColor(Image image, int x, int y);`
Swift | —

### Image drawing functions

```mm
void ImageClearBackground(Image *dst, Color color);                                                                         // Clear image background with given color
void ImageDrawPixel(Image *dst, int posX, int posY, Color color);                                                           // Draw pixel within an image
void ImageDrawPixelV(Image *dst, Vector2 position, Color color);                                                            // Draw pixel within an image 
void ImageDrawLine(Image *dst, int startPosX, int startPosY, int endPosX, int endPosY, Color color);                        // Draw line within an image
void ImageDrawLineV(Image *dst, Vector2 start, Vector2 end, Color color);                                                   // Draw line within an image 
void ImageDrawCircle(Image *dst, int centerX, int centerY, int radius, Color color);                                        // Draw circle within an image
void ImageDrawCircleV(Image *dst, Vector2 center, int radius, Color color);                                                 // Draw circle within an image 
void ImageDrawRectangle(Image *dst, int posX, int posY, int width, int height, Color color);                                // Draw rectangle within an image
void ImageDrawRectangleV(Image *dst, Vector2 position, Vector2 size, Color color);                                          // Draw rectangle within an image 
void ImageDrawRectangleRec(Image *dst, Rectangle rec, Color color);                                                         // Draw rectangle within an image
void ImageDrawRectangleLines(Image *dst, Rectangle rec, int thick, Color color);                                            // Draw rectangle lines within an image
void ImageDraw(Image *dst, Image src, Rectangle srcRec, Rectangle dstRec, Color tint);                                      // Draw a source image within a destination image (tint applied to source)
void ImageDrawText(Image *dst, const char *text, int posX, int posY, int fontSize, Color color);                            // Draw text (using default font) within an image (destination)
void ImageDrawTextEx(Image *dst, Font font, const char *text, Vector2 position, float fontSize, float spacing, Color tint); // Draw text (custom sprite font) within an image (destination)
```

> Note: Image software-rendering functions (CPU)

#### ImageClearBackground

Clear image background with given color

Language | Symbol
--- | ---
C | `void ImageClearBackground(Image *dst, Color color);`
Swift | —

#### ImageDrawPixel

Draw pixel within an image

Language | Symbol
--- | ---
C | `void ImageDrawPixel(Image *dst, int posX, int posY, Color color);`
Swift | —

#### ImageDrawPixelV

Draw pixel within an image 

Language | Symbol
--- | ---
C | `void ImageDrawPixelV(Image *dst, Vector2 position, Color color);`
Swift | —

#### ImageDrawLine

Draw line within an image

Language | Symbol
--- | ---
C | `void ImageDrawLine(Image *dst, int startPosX, int startPosY, int endPosX, int endPosY, Color color);`
Swift | —

#### ImageDrawLineV

Draw line within an image 

Language | Symbol
--- | ---
C | `void ImageDrawLineV(Image *dst, Vector2 start, Vector2 end, Color color);`
Swift | —

#### ImageDrawCircle

Draw circle within an image

Language | Symbol
--- | ---
C | `void ImageDrawCircle(Image *dst, int centerX, int centerY, int radius, Color color);`
Swift | —

#### ImageDrawCircleV

Draw circle within an image 

Language | Symbol
--- | ---
C | `void ImageDrawCircleV(Image *dst, Vector2 center, int radius, Color color);`
Swift | —

#### ImageDrawRectangle

Draw rectangle within an image

Language | Symbol
--- | ---
C | `void ImageDrawRectangle(Image *dst, int posX, int posY, int width, int height, Color color);`
Swift | —

#### ImageDrawRectangleV

Draw rectangle within an image 

Language | Symbol
--- | ---
C | `void ImageDrawRectangleV(Image *dst, Vector2 position, Vector2 size, Color color);`
Swift | —

#### ImageDrawRectangleRec

Draw rectangle within an image

Language | Symbol
--- | ---
C | `void ImageDrawRectangleRec(Image *dst, Rectangle rec, Color color);`
Swift | —

#### ImageDrawRectangleLines

Draw rectangle lines within an image

Language | Symbol
--- | ---
C | `void ImageDrawRectangleLines(Image *dst, Rectangle rec, int thick, Color color);`
Swift | —

#### ImageDraw

Draw a source image within a destination image (tint applied to source)

Language | Symbol
--- | ---
C | `void ImageDraw(Image *dst, Image src, Rectangle srcRec, Rectangle dstRec, Color tint);`
Swift | —

#### ImageDrawText

Draw text (using default font) within an image (destination)

Language | Symbol
--- | ---
C | `void ImageDrawText(Image *dst, const char *text, int posX, int posY, int fontSize, Color color);`
Swift | —

#### ImageDrawTextEx

Draw text (custom sprite font) within an image (destination)

Language | Symbol
--- | ---
C | `void ImageDrawTextEx(Image *dst, Font font, const char *text, Vector2 position, float fontSize, float spacing, Color tint);`
Swift | —

### Texture loading functions

```mm
Texture2D LoadTexture(const char *fileName);                                 // Load texture from file into GPU memory (VRAM)
Texture2D LoadTextureFromImage(Image image);                                 // Load texture from image data
TextureCubemap LoadTextureCubemap(Image image, int layout);                  // Load cubemap from image, multiple image cubemap layouts supported
RenderTexture2D LoadRenderTexture(int width, int height);                    // Load texture for rendering (framebuffer)
void UnloadTexture(Texture2D texture);                                       // Unload texture from GPU memory (VRAM)
void UnloadRenderTexture(RenderTexture2D target);                            // Unload render texture from GPU memory (VRAM)
void UpdateTexture(Texture2D texture, const void *pixels);                   // Update GPU texture with new data
void UpdateTextureRec(Texture2D texture, Rectangle rec, const void *pixels); // Update GPU texture rectangle with new data
```

> Note: These functions require GPU access

#### LoadTexture

Load texture from file into GPU memory (VRAM)

Language | Symbol
--- | ---
C | `Texture2D LoadTexture(const char *fileName);`
Swift | —

#### LoadTextureFromImage

Load texture from image data

Language | Symbol
--- | ---
C | `Texture2D LoadTextureFromImage(Image image);`
Swift | —

#### LoadTextureCubemap

Load cubemap from image, multiple image cubemap layouts supported

Language | Symbol
--- | ---
C | `TextureCubemap LoadTextureCubemap(Image image, int layout);`
Swift | —

#### LoadRenderTexture

Load texture for rendering (framebuffer)

Language | Symbol
--- | ---
C | `RenderTexture2D LoadRenderTexture(int width, int height);`
Swift | —

#### UnloadTexture

Unload texture from GPU memory (VRAM)

Language | Symbol
--- | ---
C | `void UnloadTexture(Texture2D texture);`
Swift | —

#### UnloadRenderTexture

Unload render texture from GPU memory (VRAM)

Language | Symbol
--- | ---
C | `void UnloadRenderTexture(RenderTexture2D target);`
Swift | —

#### UpdateTexture

Update GPU texture with new data

Language | Symbol
--- | ---
C | `void UpdateTexture(Texture2D texture, const void *pixels);`
Swift | —

#### UpdateTextureRec

Update GPU texture rectangle with new data

Language | Symbol
--- | ---
C | `void UpdateTextureRec(Texture2D texture, Rectangle rec, const void *pixels);`
Swift | —

### Texture configuration functions

```mm
void GenTextureMipmaps(Texture2D *texture);           // Generate GPU mipmaps for a texture
void SetTextureFilter(Texture2D texture, int filter); // Set texture scaling filter mode
void SetTextureWrap(Texture2D texture, int wrap);     // Set texture wrapping mode
```

#### GenTextureMipmaps

Generate GPU mipmaps for a texture

Language | Symbol
--- | ---
C | `void GenTextureMipmaps(Texture2D *texture);`
Swift | —

#### SetTextureFilter

Set texture scaling filter mode

Language | Symbol
--- | ---
C | `void SetTextureFilter(Texture2D texture, int filter);`
Swift | —

#### SetTextureWrap

Set texture wrapping mode

Language | Symbol
--- | ---
C | `void SetTextureWrap(Texture2D texture, int wrap);`
Swift | —

### Texture drawing functions

```mm
void DrawTexture(Texture2D texture, int posX, int posY, Color tint);                                                                 // Draw a Texture2D
void DrawTextureV(Texture2D texture, Vector2 position, Color tint);                                                                  // Draw a Texture2D with position defined as Vector2
void DrawTextureEx(Texture2D texture, Vector2 position, float rotation, float scale, Color tint);                                    // Draw a Texture2D with extended parameters
void DrawTextureRec(Texture2D texture, Rectangle source, Vector2 position, Color tint);                                              // Draw a part of a texture defined by a rectangle
void DrawTextureQuad(Texture2D texture, Vector2 tiling, Vector2 offset, Rectangle quad, Color tint);                                 // Draw texture quad with tiling and offset parameters
void DrawTextureTiled(Texture2D texture, Rectangle source, Rectangle dest, Vector2 origin, float rotation, float scale, Color tint); // Draw part of a texture (defined by a rectangle) with rotation and scale tiled into dest.
void DrawTexturePro(Texture2D texture, Rectangle source, Rectangle dest, Vector2 origin, float rotation, Color tint);                // Draw a part of a texture defined by a rectangle with 'pro' parameters
void DrawTextureNPatch(Texture2D texture, NPatchInfo nPatchInfo, Rectangle dest, Vector2 origin, float rotation, Color tint);        // Draws a texture (or part of it) that stretches or shrinks nicely
void DrawTexturePoly(Texture2D texture, Vector2 center, Vector2 *points, Vector2 *texcoords, int pointCount, Color tint);            // Draw a textured polygon
```

#### DrawTexture

Draw a Texture2D

Language | Symbol
--- | ---
C | `void DrawTexture(Texture2D texture, int posX, int posY, Color tint);`
Swift | —

#### DrawTextureV

Draw a Texture2D with position defined as Vector2

Language | Symbol
--- | ---
C | `void DrawTextureV(Texture2D texture, Vector2 position, Color tint);`
Swift | —

#### DrawTextureEx

Draw a Texture2D with extended parameters

Language | Symbol
--- | ---
C | `void DrawTextureEx(Texture2D texture, Vector2 position, float rotation, float scale, Color tint);`
Swift | —

#### DrawTextureRec

Draw a part of a texture defined by a rectangle

Language | Symbol
--- | ---
C | `void DrawTextureRec(Texture2D texture, Rectangle source, Vector2 position, Color tint);`
Swift | —

#### DrawTextureQuad

Draw texture quad with tiling and offset parameters

Language | Symbol
--- | ---
C | `void DrawTextureQuad(Texture2D texture, Vector2 tiling, Vector2 offset, Rectangle quad, Color tint);`
Swift | —

#### DrawTextureTiled

Draw part of a texture (defined by a rectangle) with rotation and scale tiled into dest.

Language | Symbol
--- | ---
C | `void DrawTextureTiled(Texture2D texture, Rectangle source, Rectangle dest, Vector2 origin, float rotation, float scale, Color tint);`
Swift | —

#### DrawTexturePro

Draw a part of a texture defined by a rectangle with 'pro' parameters

Language | Symbol
--- | ---
C | `void DrawTexturePro(Texture2D texture, Rectangle source, Rectangle dest, Vector2 origin, float rotation, Color tint);`
Swift | —

#### DrawTextureNPatch

Draws a texture (or part of it) that stretches or shrinks nicely

Language | Symbol
--- | ---
C | `void DrawTextureNPatch(Texture2D texture, NPatchInfo nPatchInfo, Rectangle dest, Vector2 origin, float rotation, Color tint);`
Swift | —

#### DrawTexturePoly

Draw a textured polygon

Language | Symbol
--- | ---
C | `void DrawTexturePoly(Texture2D texture, Vector2 center, Vector2 *points, Vector2 *texcoords, int pointCount, Color tint);`
Swift | —

### Color/pixel related functions

```mm
Color Fade(Color color, float alpha);                         // Get color with alpha applied, alpha goes from 0.0f to 1.0f
int ColorToInt(Color color);                                  // Get hexadecimal value for a Color
Vector4 ColorNormalize(Color color);                          // Get Color normalized as float [0..1]
Color ColorFromNormalized(Vector4 normalized);                // Get Color from normalized values [0..1]
Vector3 ColorToHSV(Color color);                              // Get HSV values for a Color, hue [0..360], saturation/value [0..1]
Color ColorFromHSV(float hue, float saturation, float value); // Get a Color from HSV values, hue [0..360], saturation/value [0..1]
Color ColorAlpha(Color color, float alpha);                   // Get color with alpha applied, alpha goes from 0.0f to 1.0f
Color ColorAlphaBlend(Color dst, Color src, Color tint);      // Get src alpha-blended into dst color with tint
Color GetColor(unsigned int hexValue);                        // Get Color structure from hexadecimal value
Color GetPixelColor(void *srcPtr, int format);                // Get Color from a source pixel pointer of certain format
void SetPixelColor(void *dstPtr, Color color, int format);    // Set color formatted into destination pixel pointer
int GetPixelDataSize(int width, int height, int format);      // Get pixel data size in bytes for certain format
```

#### Fade

Get color with alpha applied, alpha goes from 0.0f to 1.0f

Language | Symbol
--- | ---
C | `Color Fade(Color color, float alpha);`
Swift | —

#### ColorToInt

Get hexadecimal value for a Color

Language | Symbol
--- | ---
C | `int ColorToInt(Color color);`
Swift | —

#### ColorNormalize

Get Color normalized as float [0..1]

Language | Symbol
--- | ---
C | `Vector4 ColorNormalize(Color color);`
Swift | —

#### ColorFromNormalized

Get Color from normalized values [0..1]

Language | Symbol
--- | ---
C | `Color ColorFromNormalized(Vector4 normalized);`
Swift | —

#### ColorToHSV

Get HSV values for a Color, hue [0..360], saturation/value [0..1]

Language | Symbol
--- | ---
C | `Vector3 ColorToHSV(Color color);`
Swift | —

#### ColorFromHSV

Get a Color from HSV values, hue [0..360], saturation/value [0..1]

Language | Symbol
--- | ---
C | `Color ColorFromHSV(float hue, float saturation, float value);`
Swift | —

#### ColorAlpha

Get color with alpha applied, alpha goes from 0.0f to 1.0f

Language | Symbol
--- | ---
C | `Color ColorAlpha(Color color, float alpha);`
Swift | —

#### ColorAlphaBlend

Get src alpha-blended into dst color with tint

Language | Symbol
--- | ---
C | `Color ColorAlphaBlend(Color dst, Color src, Color tint);`
Swift | —

#### GetColor

Get Color structure from hexadecimal value

Language | Symbol
--- | ---
C | `Color GetColor(unsigned int hexValue);`
Swift | —

#### GetPixelColor

Get Color from a source pixel pointer of certain format

Language | Symbol
--- | ---
C | `Color GetPixelColor(void *srcPtr, int format);`
Swift | —

#### SetPixelColor

Set color formatted into destination pixel pointer

Language | Symbol
--- | ---
C | `void SetPixelColor(void *dstPtr, Color color, int format);`
Swift | —

#### GetPixelDataSize

Get pixel data size in bytes for certain format

Language | Symbol
--- | ---
C | `int GetPixelDataSize(int width, int height, int format);`
Swift | —

## Font Loading and Text Drawing Functions (Module: text)

### Font loading/unloading functions

```mm
Font GetFontDefault(void);                                                                                                                // Get the default Font
Font LoadFont(const char *fileName);                                                                                                      // Load font from file into GPU memory (VRAM)
Font LoadFontEx(const char *fileName, int fontSize, int *fontChars, int glyphCount);                                                      // Load font from file with extended parameters
Font LoadFontFromImage(Image image, Color key, int firstChar);                                                                            // Load font from Image (XNA style)
Font LoadFontFromMemory(const char *fileType, const unsigned char *fileData, int dataSize, int fontSize, int *fontChars, int glyphCount); // Load font from memory buffer, fileType refers to extension: i.e. '.ttf'
GlyphInfo *LoadFontData(const unsigned char *fileData, int dataSize, int fontSize, int *fontChars, int glyphCount, int type);             // Load font data for further use
Image GenImageFontAtlas(const GlyphInfo *chars, Rectangle **recs, int glyphCount, int fontSize, int padding, int packMethod);             // Generate image font atlas using chars info
void UnloadFontData(GlyphInfo *chars, int glyphCount);                                                                                    // Unload font chars info data (RAM)
void UnloadFont(Font font);                                                                                                               // Unload Font from GPU memory (VRAM)
```

#### GetFontDefault

Get the default Font

Language | Symbol
--- | ---
C | `Font GetFontDefault(void);`
Swift | —

#### LoadFont

Load font from file into GPU memory (VRAM)

Language | Symbol
--- | ---
C | `Font LoadFont(const char *fileName);`
Swift | —

#### LoadFontEx

Load font from file with extended parameters

Language | Symbol
--- | ---
C | `Font LoadFontEx(const char *fileName, int fontSize, int *fontChars, int glyphCount);`
Swift | —

#### LoadFontFromImage

Load font from Image (XNA style)

Language | Symbol
--- | ---
C | `Font LoadFontFromImage(Image image, Color key, int firstChar);`
Swift | —

#### LoadFontFromMemory

Load font from memory buffer, fileType refers to extension: i.e. '.ttf'

Language | Symbol
--- | ---
C | `Font LoadFontFromMemory(const char *fileType, const unsigned char *fileData, int dataSize, int fontSize, int *fontChars, int glyphCount);`
Swift | —

#### LoadFontData

Load font data for further use

Language | Symbol
--- | ---
C | `GlyphInfo *LoadFontData(const unsigned char *fileData, int dataSize, int fontSize, int *fontChars, int glyphCount, int type);`
Swift | —

#### GenImageFontAtlas

Generate image font atlas using chars info

Language | Symbol
--- | ---
C | `Image GenImageFontAtlas(const GlyphInfo *chars, Rectangle **recs, int glyphCount, int fontSize, int padding, int packMethod);`
Swift | —

#### UnloadFontData

Unload font chars info data (RAM)

Language | Symbol
--- | ---
C | `void UnloadFontData(GlyphInfo *chars, int glyphCount);`
Swift | —

#### UnloadFont

Unload Font from GPU memory (VRAM)

Language | Symbol
--- | ---
C | `void UnloadFont(Font font);`
Swift | —

### Text drawing functions

```mm
void DrawFPS(int posX, int posY);                                                                                                           // Draw current FPS
void DrawText(const char *text, int posX, int posY, int fontSize, Color color);                                                             // Draw text (using default font)
void DrawTextEx(Font font, const char *text, Vector2 position, float fontSize, float spacing, Color tint);                                  // Draw text using font and additional parameters
void DrawTextPro(Font font, const char *text, Vector2 position, Vector2 origin, float rotation, float fontSize, float spacing, Color tint); // Draw text using Font and pro parameters (rotation)
void DrawTextCodepoint(Font font, int codepoint, Vector2 position, float fontSize, Color tint);                                             // Draw one character (codepoint)
```

#### DrawFPS

Draw current FPS

Language | Symbol
--- | ---
C | `void DrawFPS(int posX, int posY);`
Swift | —

#### DrawText

Draw text (using default font)

Language | Symbol
--- | ---
C | `void DrawText(const char *text, int posX, int posY, int fontSize, Color color);`
Swift | —

#### DrawTextEx

Draw text using font and additional parameters

Language | Symbol
--- | ---
C | `void DrawTextEx(Font font, const char *text, Vector2 position, float fontSize, float spacing, Color tint);`
Swift | —

#### DrawTextPro

Draw text using Font and pro parameters (rotation)

Language | Symbol
--- | ---
C | `void DrawTextPro(Font font, const char *text, Vector2 position, Vector2 origin, float rotation, float fontSize, float spacing, Color tint);`
Swift | —

#### DrawTextCodepoint

Draw one character (codepoint)

Language | Symbol
--- | ---
C | `void DrawTextCodepoint(Font font, int codepoint, Vector2 position, float fontSize, Color tint);`
Swift | —

### Text font info functions

```mm
int MeasureText(const char *text, int fontSize);                                   // Measure string width for default font
Vector2 MeasureTextEx(Font font, const char *text, float fontSize, float spacing); // Measure string size for Font
int GetGlyphIndex(Font font, int codepoint);                                       // Get glyph index position in font for a codepoint (unicode character), fallback to '?' if not found
GlyphInfo GetGlyphInfo(Font font, int codepoint);                                  // Get glyph font info data for a codepoint (unicode character), fallback to '?' if not found
Rectangle GetGlyphAtlasRec(Font font, int codepoint);                              // Get glyph rectangle in font atlas for a codepoint (unicode character), fallback to '?' if not found
```

#### MeasureText

Measure string width for default font

Language | Symbol
--- | ---
C | `int MeasureText(const char *text, int fontSize);`
Swift | —

#### MeasureTextEx

Measure string size for Font

Language | Symbol
--- | ---
C | `Vector2 MeasureTextEx(Font font, const char *text, float fontSize, float spacing);`
Swift | —

#### GetGlyphIndex

Get glyph index position in font for a codepoint (unicode character), fallback to '?' if not found

Language | Symbol
--- | ---
C | `int GetGlyphIndex(Font font, int codepoint);`
Swift | —

#### GetGlyphInfo

Get glyph font info data for a codepoint (unicode character), fallback to '?' if not found

Language | Symbol
--- | ---
C | `GlyphInfo GetGlyphInfo(Font font, int codepoint);`
Swift | —

#### GetGlyphAtlasRec

Get glyph rectangle in font atlas for a codepoint (unicode character), fallback to '?' if not found

Language | Symbol
--- | ---
C | `Rectangle GetGlyphAtlasRec(Font font, int codepoint);`
Swift | —

### Text codepoints management functions (unicode characters)

```mm
int *LoadCodepoints(const char *text, int *count);         // Load all codepoints from a UTF-8 text string, codepoints count returned by parameter
void UnloadCodepoints(int *codepoints);                    // Unload codepoints data from memory
int GetCodepointCount(const char *text);                   // Get total number of codepoints in a UTF-8 encoded string
int GetCodepoint(const char *text, int *bytesProcessed);   // Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
const char *CodepointToUTF8(int codepoint, int *byteSize); // Encode one codepoint into UTF-8 byte array (array length returned as parameter)
char *TextCodepointsToUTF8(int *codepoints, int length);   // Encode text as codepoints array into UTF-8 text string (WARNING: memory must be freed!)
```

#### LoadCodepoints

Load all codepoints from a UTF-8 text string, codepoints count returned by parameter

Language | Symbol
--- | ---
C | `int *LoadCodepoints(const char *text, int *count);`
Swift | —

#### UnloadCodepoints

Unload codepoints data from memory

Language | Symbol
--- | ---
C | `void UnloadCodepoints(int *codepoints);`
Swift | —

#### GetCodepointCount

Get total number of codepoints in a UTF-8 encoded string

Language | Symbol
--- | ---
C | `int GetCodepointCount(const char *text);`
Swift | —

#### GetCodepoint

Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure

Language | Symbol
--- | ---
C | `int GetCodepoint(const char *text, int *bytesProcessed);`
Swift | —

#### CodepointToUTF8

Encode one codepoint into UTF-8 byte array (array length returned as parameter)

Language | Symbol
--- | ---
C | `const char *CodepointToUTF8(int codepoint, int *byteSize);`
Swift | —

#### TextCodepointsToUTF8

Encode text as codepoints array into UTF-8 text string (WARNING: memory must be freed!)

Language | Symbol
--- | ---
C | `char *TextCodepointsToUTF8(int *codepoints, int length);`
Swift | —

### Text strings management functions (no UTF-8 strings, only byte chars)

```mm
int TextCopy(char *dst, const char *src);                                      // Copy one string to another, returns bytes copied
bool TextIsEqual(const char *text1, const char *text2);                        // Check if two text string are equal
unsigned int TextLength(const char *text);                                     // Get text length, checks for '\0' ending
const char *TextFormat(const char *text, ...);                                 // Text formatting with variables (sprintf() style)
const char *TextSubtext(const char *text, int position, int length);           // Get a piece of a text string
char *TextReplace(char *text, const char *replace, const char *by);            // Replace text string (WARNING: memory must be freed!)
char *TextInsert(const char *text, const char *insert, int position);          // Insert text in a position (WARNING: memory must be freed!)
const char *TextJoin(const char **textList, int count, const char *delimiter); // Join text strings with delimiter
const char **TextSplit(const char *text, char delimiter, int *count);          // Split text into multiple strings
void TextAppend(char *text, const char *append, int *position);                // Append text at specific position and move cursor!
int TextFindIndex(const char *text, const char *find);                         // Find first text occurrence within a string
const char *TextToUpper(const char *text);                                     // Get upper case version of provided string
const char *TextToLower(const char *text);                                     // Get lower case version of provided string
const char *TextToPascal(const char *text);                                    // Get Pascal case notation version of provided string
int TextToInteger(const char *text);                                           // Get integer value from text (negative values not supported)
```

> Note: Some strings allocate memory internally for returned strings, just be careful!

#### TextCopy

Copy one string to another, returns bytes copied

Language | Symbol
--- | ---
C | `int TextCopy(char *dst, const char *src);`
Swift | —

#### TextIsEqual

Check if two text string are equal

Language | Symbol
--- | ---
C | `bool TextIsEqual(const char *text1, const char *text2);`
Swift | —

#### TextLength

Get text length, checks for '\0' ending

Language | Symbol
--- | ---
C | `unsigned int TextLength(const char *text);`
Swift | —

#### TextFormat

Text formatting with variables (sprintf() style)

Language | Symbol
--- | ---
C | `const char *TextFormat(const char *text, ...);`
Swift | —

#### TextSubtext

Get a piece of a text string

Language | Symbol
--- | ---
C | `const char *TextSubtext(const char *text, int position, int length);`
Swift | —

#### TextReplace

Replace text string (WARNING: memory must be freed!)

Language | Symbol
--- | ---
C | `char *TextReplace(char *text, const char *replace, const char *by);`
Swift | —

#### TextInsert

Insert text in a position (WARNING: memory must be freed!)

Language | Symbol
--- | ---
C | `char *TextInsert(const char *text, const char *insert, int position);`
Swift | —

#### TextJoin

Join text strings with delimiter

Language | Symbol
--- | ---
C | `const char *TextJoin(const char **textList, int count, const char *delimiter);`
Swift | —

#### TextSplit

Split text into multiple strings

Language | Symbol
--- | ---
C | `const char **TextSplit(const char *text, char delimiter, int *count);`
Swift | —

#### TextAppend

Append text at specific position and move cursor!

Language | Symbol
--- | ---
C | `void TextAppend(char *text, const char *append, int *position);`
Swift | —

#### TextFindIndex

Find first text occurrence within a string

Language | Symbol
--- | ---
C | `int TextFindIndex(const char *text, const char *find);`
Swift | —

#### TextToUpper

Get upper case version of provided string

Language | Symbol
--- | ---
C | `const char *TextToUpper(const char *text);`
Swift | —

#### TextToLower

Get lower case version of provided string

Language | Symbol
--- | ---
C | `const char *TextToLower(const char *text);`
Swift | —

#### TextToPascal

Get Pascal case notation version of provided string

Language | Symbol
--- | ---
C | `const char *TextToPascal(const char *text);`
Swift | —

#### TextToInteger

Get integer value from text (negative values not supported)

Language | Symbol
--- | ---
C | `int TextToInteger(const char *text);`
Swift | —

## Basic 3d Shapes Drawing Functions (Module: models)

### Basic geometric 3D shapes drawing functions

```mm
void DrawLine3D(Vector3 startPos, Vector3 endPos, Color color);                                                                       // Draw a line in 3D world space
void DrawPoint3D(Vector3 position, Color color);                                                                                      // Draw a point in 3D space, actually a small line
void DrawCircle3D(Vector3 center, float radius, Vector3 rotationAxis, float rotationAngle, Color color);                              // Draw a circle in 3D world space
void DrawTriangle3D(Vector3 v1, Vector3 v2, Vector3 v3, Color color);                                                                 // Draw a color-filled triangle (vertex in counter-clockwise order!)
void DrawTriangleStrip3D(Vector3 *points, int pointCount, Color color);                                                               // Draw a triangle strip defined by points
void DrawCube(Vector3 position, float width, float height, float length, Color color);                                                // Draw cube
void DrawCubeV(Vector3 position, Vector3 size, Color color);                                                                          // Draw cube 
void DrawCubeWires(Vector3 position, float width, float height, float length, Color color);                                           // Draw cube wires
void DrawCubeWiresV(Vector3 position, Vector3 size, Color color);                                                                     // Draw cube wires 
void DrawCubeTexture(Texture2D texture, Vector3 position, float width, float height, float length, Color color);                      // Draw cube textured
void DrawCubeTextureRec(Texture2D texture, Rectangle source, Vector3 position, float width, float height, float length, Color color); // Draw cube with a region of a texture
void DrawSphere(Vector3 centerPos, float radius, Color color);                                                                        // Draw sphere
void DrawSphereEx(Vector3 centerPos, float radius, int rings, int slices, Color color);                                               // Draw sphere with extended parameters
void DrawSphereWires(Vector3 centerPos, float radius, int rings, int slices, Color color);                                            // Draw sphere wires
void DrawCylinder(Vector3 position, float radiusTop, float radiusBottom, float height, int slices, Color color);                      // Draw a cylinder/cone
void DrawCylinderEx(Vector3 startPos, Vector3 endPos, float startRadius, float endRadius, int sides, Color color);                    // Draw a cylinder with base at startPos and top at endPos
void DrawCylinderWires(Vector3 position, float radiusTop, float radiusBottom, float height, int slices, Color color);                 // Draw a cylinder/cone wires
void DrawCylinderWiresEx(Vector3 startPos, Vector3 endPos, float startRadius, float endRadius, int sides, Color color);               // Draw a cylinder wires with base at startPos and top at endPos
void DrawPlane(Vector3 centerPos, Vector2 size, Color color);                                                                         // Draw a plane XZ
void DrawRay(Ray ray, Color color);                                                                                                   // Draw a ray line
void DrawGrid(int slices, float spacing);                                                                                             // Draw a grid (centered at (0, 0, 0))
```

#### DrawLine3D

Draw a line in 3D world space

Language | Symbol
--- | ---
C | `void DrawLine3D(Vector3 startPos, Vector3 endPos, Color color);`
Swift | —

#### DrawPoint3D

Draw a point in 3D space, actually a small line

Language | Symbol
--- | ---
C | `void DrawPoint3D(Vector3 position, Color color);`
Swift | —

#### DrawCircle3D

Draw a circle in 3D world space

Language | Symbol
--- | ---
C | `void DrawCircle3D(Vector3 center, float radius, Vector3 rotationAxis, float rotationAngle, Color color);`
Swift | —

#### DrawTriangle3D

Draw a color-filled triangle (vertex in counter-clockwise order!)

Language | Symbol
--- | ---
C | `void DrawTriangle3D(Vector3 v1, Vector3 v2, Vector3 v3, Color color);`
Swift | —

#### DrawTriangleStrip3D

Draw a triangle strip defined by points

Language | Symbol
--- | ---
C | `void DrawTriangleStrip3D(Vector3 *points, int pointCount, Color color);`
Swift | —

#### DrawCube

Draw cube

Language | Symbol
--- | ---
C | `void DrawCube(Vector3 position, float width, float height, float length, Color color);`
Swift | —

#### DrawCubeV

Draw cube 

Language | Symbol
--- | ---
C | `void DrawCubeV(Vector3 position, Vector3 size, Color color);`
Swift | —

#### DrawCubeWires

Draw cube wires

Language | Symbol
--- | ---
C | `void DrawCubeWires(Vector3 position, float width, float height, float length, Color color);`
Swift | —

#### DrawCubeWiresV

Draw cube wires 

Language | Symbol
--- | ---
C | `void DrawCubeWiresV(Vector3 position, Vector3 size, Color color);`
Swift | —

#### DrawCubeTexture

Draw cube textured

Language | Symbol
--- | ---
C | `void DrawCubeTexture(Texture2D texture, Vector3 position, float width, float height, float length, Color color);`
Swift | —

#### DrawCubeTextureRec

Draw cube with a region of a texture

Language | Symbol
--- | ---
C | `void DrawCubeTextureRec(Texture2D texture, Rectangle source, Vector3 position, float width, float height, float length, Color color);`
Swift | —

#### DrawSphere

Draw sphere

Language | Symbol
--- | ---
C | `void DrawSphere(Vector3 centerPos, float radius, Color color);`
Swift | —

#### DrawSphereEx

Draw sphere with extended parameters

Language | Symbol
--- | ---
C | `void DrawSphereEx(Vector3 centerPos, float radius, int rings, int slices, Color color);`
Swift | —

#### DrawSphereWires

Draw sphere wires

Language | Symbol
--- | ---
C | `void DrawSphereWires(Vector3 centerPos, float radius, int rings, int slices, Color color);`
Swift | —

#### DrawCylinder

Draw a cylinder/cone

Language | Symbol
--- | ---
C | `void DrawCylinder(Vector3 position, float radiusTop, float radiusBottom, float height, int slices, Color color);`
Swift | —

#### DrawCylinderEx

Draw a cylinder with base at startPos and top at endPos

Language | Symbol
--- | ---
C | `void DrawCylinderEx(Vector3 startPos, Vector3 endPos, float startRadius, float endRadius, int sides, Color color);`
Swift | —

#### DrawCylinderWires

Draw a cylinder/cone wires

Language | Symbol
--- | ---
C | `void DrawCylinderWires(Vector3 position, float radiusTop, float radiusBottom, float height, int slices, Color color);`
Swift | —

#### DrawCylinderWiresEx

Draw a cylinder wires with base at startPos and top at endPos

Language | Symbol
--- | ---
C | `void DrawCylinderWiresEx(Vector3 startPos, Vector3 endPos, float startRadius, float endRadius, int sides, Color color);`
Swift | —

#### DrawPlane

Draw a plane XZ

Language | Symbol
--- | ---
C | `void DrawPlane(Vector3 centerPos, Vector2 size, Color color);`
Swift | —

#### DrawRay

Draw a ray line

Language | Symbol
--- | ---
C | `void DrawRay(Ray ray, Color color);`
Swift | —

#### DrawGrid

Draw a grid (centered at (0, 0, 0))

Language | Symbol
--- | ---
C | `void DrawGrid(int slices, float spacing);`
Swift | —

## Model 3d Loading and Drawing Functions (Module: models)

### Model management functions

```mm
Model LoadModel(const char *fileName);        // Load model from files (meshes and materials)
Model LoadModelFromMesh(Mesh mesh);           // Load model from generated mesh (default material)
void UnloadModel(Model model);                // Unload model (including meshes) from memory (RAM and/or VRAM)
void UnloadModelKeepMeshes(Model model);      // Unload model (but not meshes) from memory (RAM and/or VRAM)
BoundingBox GetModelBoundingBox(Model model); // Compute model bounding box limits (considers all meshes)
```

#### LoadModel

Load model from files (meshes and materials)

Language | Symbol
--- | ---
C | `Model LoadModel(const char *fileName);`
Swift | —

#### LoadModelFromMesh

Load model from generated mesh (default material)

Language | Symbol
--- | ---
C | `Model LoadModelFromMesh(Mesh mesh);`
Swift | —

#### UnloadModel

Unload model (including meshes) from memory (RAM and/or VRAM)

Language | Symbol
--- | ---
C | `void UnloadModel(Model model);`
Swift | —

#### UnloadModelKeepMeshes

Unload model (but not meshes) from memory (RAM and/or VRAM)

Language | Symbol
--- | ---
C | `void UnloadModelKeepMeshes(Model model);`
Swift | —

#### GetModelBoundingBox

Compute model bounding box limits (considers all meshes)

Language | Symbol
--- | ---
C | `BoundingBox GetModelBoundingBox(Model model);`
Swift | —

### Model drawing functions

```mm
void DrawModel(Model model, Vector3 position, float scale, Color tint);                                                                                            // Draw a model (with texture if set)
void DrawModelEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint);                                             // Draw a model with extended parameters
void DrawModelWires(Model model, Vector3 position, float scale, Color tint);                                                                                       // Draw a model wires (with texture if set)
void DrawModelWiresEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint);                                        // Draw a model wires (with texture if set) with extended parameters
void DrawBoundingBox(BoundingBox box, Color color);                                                                                                                // Draw bounding box (wires)
void DrawBillboard(Camera camera, Texture2D texture, Vector3 position, float size, Color tint);                                                                    // Draw a billboard texture
void DrawBillboardRec(Camera camera, Texture2D texture, Rectangle source, Vector3 position, Vector2 size, Color tint);                                             // Draw a billboard texture defined by source
void DrawBillboardPro(Camera camera, Texture2D texture, Rectangle source, Vector3 position, Vector3 up, Vector2 size, Vector2 origin, float rotation, Color tint); // Draw a billboard texture defined by source and rotation
```

#### DrawModel

Draw a model (with texture if set)

Language | Symbol
--- | ---
C | `void DrawModel(Model model, Vector3 position, float scale, Color tint);`
Swift | —

#### DrawModelEx

Draw a model with extended parameters

Language | Symbol
--- | ---
C | `void DrawModelEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint);`
Swift | —

#### DrawModelWires

Draw a model wires (with texture if set)

Language | Symbol
--- | ---
C | `void DrawModelWires(Model model, Vector3 position, float scale, Color tint);`
Swift | —

#### DrawModelWiresEx

Draw a model wires (with texture if set) with extended parameters

Language | Symbol
--- | ---
C | `void DrawModelWiresEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint);`
Swift | —

#### DrawBoundingBox

Draw bounding box (wires)

Language | Symbol
--- | ---
C | `void DrawBoundingBox(BoundingBox box, Color color);`
Swift | —

#### DrawBillboard

Draw a billboard texture

Language | Symbol
--- | ---
C | `void DrawBillboard(Camera camera, Texture2D texture, Vector3 position, float size, Color tint);`
Swift | —

#### DrawBillboardRec

Draw a billboard texture defined by source

Language | Symbol
--- | ---
C | `void DrawBillboardRec(Camera camera, Texture2D texture, Rectangle source, Vector3 position, Vector2 size, Color tint);`
Swift | —

#### DrawBillboardPro

Draw a billboard texture defined by source and rotation

Language | Symbol
--- | ---
C | `void DrawBillboardPro(Camera camera, Texture2D texture, Rectangle source, Vector3 position, Vector3 up, Vector2 size, Vector2 origin, float rotation, Color tint);`
Swift | —

### Mesh management functions

```mm
void UploadMesh(Mesh *mesh, bool dynamic);                                               // Upload mesh vertex data in GPU and provide VAO/VBO ids
void UpdateMeshBuffer(Mesh mesh, int index, void *data, int dataSize, int offset);       // Update mesh vertex data in GPU for a specific buffer index
void UnloadMesh(Mesh mesh);                                                              // Unload mesh data from CPU and GPU
void DrawMesh(Mesh mesh, Material material, Matrix transform);                           // Draw a 3d mesh with material and transform
void DrawMeshInstanced(Mesh mesh, Material material, Matrix *transforms, int instances); // Draw multiple mesh instances with material and different transforms
bool ExportMesh(Mesh mesh, const char *fileName);                                        // Export mesh data to file, returns true on success
BoundingBox GetMeshBoundingBox(Mesh mesh);                                               // Compute mesh bounding box limits
void GenMeshTangents(Mesh *mesh);                                                        // Compute mesh tangents
void GenMeshBinormals(Mesh *mesh);                                                       // Compute mesh binormals
```

#### UploadMesh

Upload mesh vertex data in GPU and provide VAO/VBO ids

Language | Symbol
--- | ---
C | `void UploadMesh(Mesh *mesh, bool dynamic);`
Swift | —

#### UpdateMeshBuffer

Update mesh vertex data in GPU for a specific buffer index

Language | Symbol
--- | ---
C | `void UpdateMeshBuffer(Mesh mesh, int index, void *data, int dataSize, int offset);`
Swift | —

#### UnloadMesh

Unload mesh data from CPU and GPU

Language | Symbol
--- | ---
C | `void UnloadMesh(Mesh mesh);`
Swift | —

#### DrawMesh

Draw a 3d mesh with material and transform

Language | Symbol
--- | ---
C | `void DrawMesh(Mesh mesh, Material material, Matrix transform);`
Swift | —

#### DrawMeshInstanced

Draw multiple mesh instances with material and different transforms

Language | Symbol
--- | ---
C | `void DrawMeshInstanced(Mesh mesh, Material material, Matrix *transforms, int instances);`
Swift | —

#### ExportMesh

Export mesh data to file, returns true on success

Language | Symbol
--- | ---
C | `bool ExportMesh(Mesh mesh, const char *fileName);`
Swift | —

#### GetMeshBoundingBox

Compute mesh bounding box limits

Language | Symbol
--- | ---
C | `BoundingBox GetMeshBoundingBox(Mesh mesh);`
Swift | —

#### GenMeshTangents

Compute mesh tangents

Language | Symbol
--- | ---
C | `void GenMeshTangents(Mesh *mesh);`
Swift | —

#### GenMeshBinormals

Compute mesh binormals

Language | Symbol
--- | ---
C | `void GenMeshBinormals(Mesh *mesh);`
Swift | —

### Mesh generation functions

```mm
Mesh GenMeshPoly(int sides, float radius);                          // Generate polygonal mesh
Mesh GenMeshPlane(float width, float length, int resX, int resZ);   // Generate plane mesh (with subdivisions)
Mesh GenMeshCube(float width, float height, float length);          // Generate cuboid mesh
Mesh GenMeshSphere(float radius, int rings, int slices);            // Generate sphere mesh (standard sphere)
Mesh GenMeshHemiSphere(float radius, int rings, int slices);        // Generate half-sphere mesh (no bottom cap)
Mesh GenMeshCylinder(float radius, float height, int slices);       // Generate cylinder mesh
Mesh GenMeshCone(float radius, float height, int slices);           // Generate cone/pyramid mesh
Mesh GenMeshTorus(float radius, float size, int radSeg, int sides); // Generate torus mesh
Mesh GenMeshKnot(float radius, float size, int radSeg, int sides);  // Generate trefoil knot mesh
Mesh GenMeshHeightmap(Image heightmap, Vector3 size);               // Generate heightmap mesh from image data
Mesh GenMeshCubicmap(Image cubicmap, Vector3 cubeSize);             // Generate cubes-based map mesh from image data
```

#### GenMeshPoly

Generate polygonal mesh

Language | Symbol
--- | ---
C | `Mesh GenMeshPoly(int sides, float radius);`
Swift | —

#### GenMeshPlane

Generate plane mesh (with subdivisions)

Language | Symbol
--- | ---
C | `Mesh GenMeshPlane(float width, float length, int resX, int resZ);`
Swift | —

#### GenMeshCube

Generate cuboid mesh

Language | Symbol
--- | ---
C | `Mesh GenMeshCube(float width, float height, float length);`
Swift | —

#### GenMeshSphere

Generate sphere mesh (standard sphere)

Language | Symbol
--- | ---
C | `Mesh GenMeshSphere(float radius, int rings, int slices);`
Swift | —

#### GenMeshHemiSphere

Generate half-sphere mesh (no bottom cap)

Language | Symbol
--- | ---
C | `Mesh GenMeshHemiSphere(float radius, int rings, int slices);`
Swift | —

#### GenMeshCylinder

Generate cylinder mesh

Language | Symbol
--- | ---
C | `Mesh GenMeshCylinder(float radius, float height, int slices);`
Swift | —

#### GenMeshCone

Generate cone/pyramid mesh

Language | Symbol
--- | ---
C | `Mesh GenMeshCone(float radius, float height, int slices);`
Swift | —

#### GenMeshTorus

Generate torus mesh

Language | Symbol
--- | ---
C | `Mesh GenMeshTorus(float radius, float size, int radSeg, int sides);`
Swift | —

#### GenMeshKnot

Generate trefoil knot mesh

Language | Symbol
--- | ---
C | `Mesh GenMeshKnot(float radius, float size, int radSeg, int sides);`
Swift | —

#### GenMeshHeightmap

Generate heightmap mesh from image data

Language | Symbol
--- | ---
C | `Mesh GenMeshHeightmap(Image heightmap, Vector3 size);`
Swift | —

#### GenMeshCubicmap

Generate cubes-based map mesh from image data

Language | Symbol
--- | ---
C | `Mesh GenMeshCubicmap(Image cubicmap, Vector3 cubeSize);`
Swift | —

### Material loading/unloading functions

```mm
Material *LoadMaterials(const char *fileName, int *materialCount);           // Load materials from model file
Material LoadMaterialDefault(void);                                          // Load default material (Supports: DIFFUSE, SPECULAR, NORMAL maps)
void UnloadMaterial(Material material);                                      // Unload material from GPU memory (VRAM)
void SetMaterialTexture(Material *material, int mapType, Texture2D texture); // Set texture for a material map type (MATERIAL_MAP_DIFFUSE, MATERIAL_MAP_SPECULAR...)
void SetModelMeshMaterial(Model *model, int meshId, int materialId);         // Set material for a mesh
```

#### LoadMaterials

Load materials from model file

Language | Symbol
--- | ---
C | `Material *LoadMaterials(const char *fileName, int *materialCount);`
Swift | —

#### LoadMaterialDefault

Load default material (Supports: DIFFUSE, SPECULAR, NORMAL maps)

Language | Symbol
--- | ---
C | `Material LoadMaterialDefault(void);`
Swift | —

#### UnloadMaterial

Unload material from GPU memory (VRAM)

Language | Symbol
--- | ---
C | `void UnloadMaterial(Material material);`
Swift | —

#### SetMaterialTexture

Set texture for a material map type (MATERIAL_MAP_DIFFUSE, MATERIAL_MAP_SPECULAR...)

Language | Symbol
--- | ---
C | `void SetMaterialTexture(Material *material, int mapType, Texture2D texture);`
Swift | —

#### SetModelMeshMaterial

Set material for a mesh

Language | Symbol
--- | ---
C | `void SetModelMeshMaterial(Model *model, int meshId, int materialId);`
Swift | —

### Model animations loading/unloading functions

```mm
ModelAnimation *LoadModelAnimations(const char *fileName, unsigned int *animCount); // Load model animations from file
void UpdateModelAnimation(Model model, ModelAnimation anim, int frame);             // Update model animation pose
void UnloadModelAnimation(ModelAnimation anim);                                     // Unload animation data
void UnloadModelAnimations(ModelAnimation* animations, unsigned int count);         // Unload animation array data
bool IsModelAnimationValid(Model model, ModelAnimation anim);                       // Check model animation skeleton match
```

#### LoadModelAnimations

Load model animations from file

Language | Symbol
--- | ---
C | `ModelAnimation *LoadModelAnimations(const char *fileName, unsigned int *animCount);`
Swift | —

#### UpdateModelAnimation

Update model animation pose

Language | Symbol
--- | ---
C | `void UpdateModelAnimation(Model model, ModelAnimation anim, int frame);`
Swift | —

#### UnloadModelAnimation

Unload animation data

Language | Symbol
--- | ---
C | `void UnloadModelAnimation(ModelAnimation anim);`
Swift | —

#### UnloadModelAnimations

Unload animation array data

Language | Symbol
--- | ---
C | `void UnloadModelAnimations(ModelAnimation* animations, unsigned int count);`
Swift | —

#### IsModelAnimationValid

Check model animation skeleton match

Language | Symbol
--- | ---
C | `bool IsModelAnimationValid(Model model, ModelAnimation anim);`
Swift | —

### Collision detection functions

```mm
bool CheckCollisionSpheres(Vector3 center1, float radius1, Vector3 center2, float radius2); // Check collision between two spheres
bool CheckCollisionBoxes(BoundingBox box1, BoundingBox box2);                               // Check collision between two bounding boxes
bool CheckCollisionBoxSphere(BoundingBox box, Vector3 center, float radius);                // Check collision between box and sphere
RayCollision GetRayCollisionSphere(Ray ray, Vector3 center, float radius);                  // Get collision info between ray and sphere
RayCollision GetRayCollisionBox(Ray ray, BoundingBox box);                                  // Get collision info between ray and box
RayCollision GetRayCollisionModel(Ray ray, Model model);                                    // Get collision info between ray and model
RayCollision GetRayCollisionMesh(Ray ray, Mesh mesh, Matrix transform);                     // Get collision info between ray and mesh
RayCollision GetRayCollisionTriangle(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3);          // Get collision info between ray and triangle
RayCollision GetRayCollisionQuad(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3, Vector3 p4);  // Get collision info between ray and quad
```

#### CheckCollisionSpheres

Check collision between two spheres

Language | Symbol
--- | ---
C | `bool CheckCollisionSpheres(Vector3 center1, float radius1, Vector3 center2, float radius2);`
Swift | —

#### CheckCollisionBoxes

Check collision between two bounding boxes

Language | Symbol
--- | ---
C | `bool CheckCollisionBoxes(BoundingBox box1, BoundingBox box2);`
Swift | —

#### CheckCollisionBoxSphere

Check collision between box and sphere

Language | Symbol
--- | ---
C | `bool CheckCollisionBoxSphere(BoundingBox box, Vector3 center, float radius);`
Swift | —

#### GetRayCollisionSphere

Get collision info between ray and sphere

Language | Symbol
--- | ---
C | `RayCollision GetRayCollisionSphere(Ray ray, Vector3 center, float radius);`
Swift | —

#### GetRayCollisionBox

Get collision info between ray and box

Language | Symbol
--- | ---
C | `RayCollision GetRayCollisionBox(Ray ray, BoundingBox box);`
Swift | —

#### GetRayCollisionModel

Get collision info between ray and model

Language | Symbol
--- | ---
C | `RayCollision GetRayCollisionModel(Ray ray, Model model);`
Swift | —

#### GetRayCollisionMesh

Get collision info between ray and mesh

Language | Symbol
--- | ---
C | `RayCollision GetRayCollisionMesh(Ray ray, Mesh mesh, Matrix transform);`
Swift | —

#### GetRayCollisionTriangle

Get collision info between ray and triangle

Language | Symbol
--- | ---
C | `RayCollision GetRayCollisionTriangle(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3);`
Swift | —

#### GetRayCollisionQuad

Get collision info between ray and quad

Language | Symbol
--- | ---
C | `RayCollision GetRayCollisionQuad(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3, Vector3 p4);`
Swift | —

## Audio Loading and Playing Functions (Module: audio)

### Audio device management functions

```mm
void InitAudioDevice(void);         // Initialize audio device and context
void CloseAudioDevice(void);        // Close the audio device and context
bool IsAudioDeviceReady(void);      // Check if audio device has been initialized successfully
void SetMasterVolume(float volume); // Set master volume (listener)
```

#### InitAudioDevice

Initialize audio device and context

Language | Symbol
--- | ---
C | `void InitAudioDevice(void);`
Swift | —

#### CloseAudioDevice

Close the audio device and context

Language | Symbol
--- | ---
C | `void CloseAudioDevice(void);`
Swift | —

#### IsAudioDeviceReady

Check if audio device has been initialized successfully

Language | Symbol
--- | ---
C | `bool IsAudioDeviceReady(void);`
Swift | —

#### SetMasterVolume

Set master volume (listener)

Language | Symbol
--- | ---
C | `void SetMasterVolume(float volume);`
Swift | —

### Wave/Sound loading/unloading functions

```mm
Wave LoadWave(const char *fileName);                                                        // Load wave data from file
Wave LoadWaveFromMemory(const char *fileType, const unsigned char *fileData, int dataSize); // Load wave from memory buffer, fileType refers to extension: i.e. '.wav'
Sound LoadSound(const char *fileName);                                                      // Load sound from file
Sound LoadSoundFromWave(Wave wave);                                                         // Load sound from wave data
void UpdateSound(Sound sound, const void *data, int sampleCount);                           // Update sound buffer with new data
void UnloadWave(Wave wave);                                                                 // Unload wave data
void UnloadSound(Sound sound);                                                              // Unload sound
bool ExportWave(Wave wave, const char *fileName);                                           // Export wave data to file, returns true on success
bool ExportWaveAsCode(Wave wave, const char *fileName);                                     // Export wave sample data to code (.h), returns true on success
```

#### LoadWave

Load wave data from file

Language | Symbol
--- | ---
C | `Wave LoadWave(const char *fileName);`
Swift | —

#### LoadWaveFromMemory

Load wave from memory buffer, fileType refers to extension: i.e. '.wav'

Language | Symbol
--- | ---
C | `Wave LoadWaveFromMemory(const char *fileType, const unsigned char *fileData, int dataSize);`
Swift | —

#### LoadSound

Load sound from file

Language | Symbol
--- | ---
C | `Sound LoadSound(const char *fileName);`
Swift | —

#### LoadSoundFromWave

Load sound from wave data

Language | Symbol
--- | ---
C | `Sound LoadSoundFromWave(Wave wave);`
Swift | —

#### UpdateSound

Update sound buffer with new data

Language | Symbol
--- | ---
C | `void UpdateSound(Sound sound, const void *data, int sampleCount);`
Swift | —

#### UnloadWave

Unload wave data

Language | Symbol
--- | ---
C | `void UnloadWave(Wave wave);`
Swift | —

#### UnloadSound

Unload sound

Language | Symbol
--- | ---
C | `void UnloadSound(Sound sound);`
Swift | —

#### ExportWave

Export wave data to file, returns true on success

Language | Symbol
--- | ---
C | `bool ExportWave(Wave wave, const char *fileName);`
Swift | —

#### ExportWaveAsCode

Export wave sample data to code (.h), returns true on success

Language | Symbol
--- | ---
C | `bool ExportWaveAsCode(Wave wave, const char *fileName);`
Swift | —

### Wave/Sound management functions

```mm
void PlaySound(Sound sound);                                               // Play a sound
void StopSound(Sound sound);                                               // Stop playing a sound
void PauseSound(Sound sound);                                              // Pause a sound
void ResumeSound(Sound sound);                                             // Resume a paused sound
void PlaySoundMulti(Sound sound);                                          // Play a sound (using multichannel buffer pool)
void StopSoundMulti(void);                                                 // Stop any sound playing (using multichannel buffer pool)
int GetSoundsPlaying(void);                                                // Get number of sounds playing in the multichannel
bool IsSoundPlaying(Sound sound);                                          // Check if a sound is currently playing
void SetSoundVolume(Sound sound, float volume);                            // Set volume for a sound (1.0 is max level)
void SetSoundPitch(Sound sound, float pitch);                              // Set pitch for a sound (1.0 is base level)
void WaveFormat(Wave *wave, int sampleRate, int sampleSize, int channels); // Convert wave data to desired format
Wave WaveCopy(Wave wave);                                                  // Copy a wave to a new wave
void WaveCrop(Wave *wave, int initSample, int finalSample);                // Crop a wave to defined samples range
float *LoadWaveSamples(Wave wave);                                         // Load samples data from wave as a floats array
void UnloadWaveSamples(float *samples);                                    // Unload samples data loaded with LoadWaveSamples()
```

#### PlaySound

Play a sound

Language | Symbol
--- | ---
C | `void PlaySound(Sound sound);`
Swift | —

#### StopSound

Stop playing a sound

Language | Symbol
--- | ---
C | `void StopSound(Sound sound);`
Swift | —

#### PauseSound

Pause a sound

Language | Symbol
--- | ---
C | `void PauseSound(Sound sound);`
Swift | —

#### ResumeSound

Resume a paused sound

Language | Symbol
--- | ---
C | `void ResumeSound(Sound sound);`
Swift | —

#### PlaySoundMulti

Play a sound (using multichannel buffer pool)

Language | Symbol
--- | ---
C | `void PlaySoundMulti(Sound sound);`
Swift | —

#### StopSoundMulti

Stop any sound playing (using multichannel buffer pool)

Language | Symbol
--- | ---
C | `void StopSoundMulti(void);`
Swift | —

#### GetSoundsPlaying

Get number of sounds playing in the multichannel

Language | Symbol
--- | ---
C | `int GetSoundsPlaying(void);`
Swift | —

#### IsSoundPlaying

Check if a sound is currently playing

Language | Symbol
--- | ---
C | `bool IsSoundPlaying(Sound sound);`
Swift | —

#### SetSoundVolume

Set volume for a sound (1.0 is max level)

Language | Symbol
--- | ---
C | `void SetSoundVolume(Sound sound, float volume);`
Swift | —

#### SetSoundPitch

Set pitch for a sound (1.0 is base level)

Language | Symbol
--- | ---
C | `void SetSoundPitch(Sound sound, float pitch);`
Swift | —

#### WaveFormat

Convert wave data to desired format

Language | Symbol
--- | ---
C | `void WaveFormat(Wave *wave, int sampleRate, int sampleSize, int channels);`
Swift | —

#### WaveCopy

Copy a wave to a new wave

Language | Symbol
--- | ---
C | `Wave WaveCopy(Wave wave);`
Swift | —

#### WaveCrop

Crop a wave to defined samples range

Language | Symbol
--- | ---
C | `void WaveCrop(Wave *wave, int initSample, int finalSample);`
Swift | —

#### LoadWaveSamples

Load samples data from wave as a floats array

Language | Symbol
--- | ---
C | `float *LoadWaveSamples(Wave wave);`
Swift | —

#### UnloadWaveSamples

Unload samples data loaded with LoadWaveSamples()

Language | Symbol
--- | ---
C | `void UnloadWaveSamples(float *samples);`
Swift | —

### Music management functions

```mm
Music LoadMusicStream(const char *fileName);                                              // Load music stream from file
Music LoadMusicStreamFromMemory(const char *fileType, unsigned char *data, int dataSize); // Load music stream from data
void UnloadMusicStream(Music music);                                                      // Unload music stream
void PlayMusicStream(Music music);                                                        // Start music playing
bool IsMusicStreamPlaying(Music music);                                                   // Check if music is playing
void UpdateMusicStream(Music music);                                                      // Updates buffers for music streaming
void StopMusicStream(Music music);                                                        // Stop music playing
void PauseMusicStream(Music music);                                                       // Pause music playing
void ResumeMusicStream(Music music);                                                      // Resume playing paused music
void SeekMusicStream(Music music, float position);                                        // Seek music to a position (in seconds)
void SetMusicVolume(Music music, float volume);                                           // Set volume for music (1.0 is max level)
void SetMusicPitch(Music music, float pitch);                                             // Set pitch for a music (1.0 is base level)
float GetMusicTimeLength(Music music);                                                    // Get music time length (in seconds)
float GetMusicTimePlayed(Music music);                                                    // Get current music time played (in seconds)
```

#### LoadMusicStream

Load music stream from file

Language | Symbol
--- | ---
C | `Music LoadMusicStream(const char *fileName);`
Swift | —

#### LoadMusicStreamFromMemory

Load music stream from data

Language | Symbol
--- | ---
C | `Music LoadMusicStreamFromMemory(const char *fileType, unsigned char *data, int dataSize);`
Swift | —

#### UnloadMusicStream

Unload music stream

Language | Symbol
--- | ---
C | `void UnloadMusicStream(Music music);`
Swift | —

#### PlayMusicStream

Start music playing

Language | Symbol
--- | ---
C | `void PlayMusicStream(Music music);`
Swift | —

#### IsMusicStreamPlaying

Check if music is playing

Language | Symbol
--- | ---
C | `bool IsMusicStreamPlaying(Music music);`
Swift | —

#### UpdateMusicStream

Updates buffers for music streaming

Language | Symbol
--- | ---
C | `void UpdateMusicStream(Music music);`
Swift | —

#### StopMusicStream

Stop music playing

Language | Symbol
--- | ---
C | `void StopMusicStream(Music music);`
Swift | —

#### PauseMusicStream

Pause music playing

Language | Symbol
--- | ---
C | `void PauseMusicStream(Music music);`
Swift | —

#### ResumeMusicStream

Resume playing paused music

Language | Symbol
--- | ---
C | `void ResumeMusicStream(Music music);`
Swift | —

#### SeekMusicStream

Seek music to a position (in seconds)

Language | Symbol
--- | ---
C | `void SeekMusicStream(Music music, float position);`
Swift | —

#### SetMusicVolume

Set volume for music (1.0 is max level)

Language | Symbol
--- | ---
C | `void SetMusicVolume(Music music, float volume);`
Swift | —

#### SetMusicPitch

Set pitch for a music (1.0 is base level)

Language | Symbol
--- | ---
C | `void SetMusicPitch(Music music, float pitch);`
Swift | —

#### GetMusicTimeLength

Get music time length (in seconds)

Language | Symbol
--- | ---
C | `float GetMusicTimeLength(Music music);`
Swift | —

#### GetMusicTimePlayed

Get current music time played (in seconds)

Language | Symbol
--- | ---
C | `float GetMusicTimePlayed(Music music);`
Swift | —

### AudioStream management functions

```mm
AudioStream LoadAudioStream(unsigned int sampleRate, unsigned int sampleSize, unsigned int channels); // Load audio stream (to stream raw audio pcm data)
void UnloadAudioStream(AudioStream stream);                                                           // Unload audio stream and free memory
void UpdateAudioStream(AudioStream stream, const void *data, int frameCount);                         // Update audio stream buffers with data
bool IsAudioStreamProcessed(AudioStream stream);                                                      // Check if any audio stream buffers requires refill
void PlayAudioStream(AudioStream stream);                                                             // Play audio stream
void PauseAudioStream(AudioStream stream);                                                            // Pause audio stream
void ResumeAudioStream(AudioStream stream);                                                           // Resume audio stream
bool IsAudioStreamPlaying(AudioStream stream);                                                        // Check if audio stream is playing
void StopAudioStream(AudioStream stream);                                                             // Stop audio stream
void SetAudioStreamVolume(AudioStream stream, float volume);                                          // Set volume for audio stream (1.0 is max level)
void SetAudioStreamPitch(AudioStream stream, float pitch);                                            // Set pitch for audio stream (1.0 is base level)
void SetAudioStreamBufferSizeDefault(int size);                                                       // Default size for new audio streams
```

#### LoadAudioStream

Load audio stream (to stream raw audio pcm data)

Language | Symbol
--- | ---
C | `AudioStream LoadAudioStream(unsigned int sampleRate, unsigned int sampleSize, unsigned int channels);`
Swift | —

#### UnloadAudioStream

Unload audio stream and free memory

Language | Symbol
--- | ---
C | `void UnloadAudioStream(AudioStream stream);`
Swift | —

#### UpdateAudioStream

Update audio stream buffers with data

Language | Symbol
--- | ---
C | `void UpdateAudioStream(AudioStream stream, const void *data, int frameCount);`
Swift | —

#### IsAudioStreamProcessed

Check if any audio stream buffers requires refill

Language | Symbol
--- | ---
C | `bool IsAudioStreamProcessed(AudioStream stream);`
Swift | —

#### PlayAudioStream

Play audio stream

Language | Symbol
--- | ---
C | `void PlayAudioStream(AudioStream stream);`
Swift | —

#### PauseAudioStream

Pause audio stream

Language | Symbol
--- | ---
C | `void PauseAudioStream(AudioStream stream);`
Swift | —

#### ResumeAudioStream

Resume audio stream

Language | Symbol
--- | ---
C | `void ResumeAudioStream(AudioStream stream);`
Swift | —

#### IsAudioStreamPlaying

Check if audio stream is playing

Language | Symbol
--- | ---
C | `bool IsAudioStreamPlaying(AudioStream stream);`
Swift | —

#### StopAudioStream

Stop audio stream

Language | Symbol
--- | ---
C | `void StopAudioStream(AudioStream stream);`
Swift | —

#### SetAudioStreamVolume

Set volume for audio stream (1.0 is max level)

Language | Symbol
--- | ---
C | `void SetAudioStreamVolume(AudioStream stream, float volume);`
Swift | —

#### SetAudioStreamPitch

Set pitch for audio stream (1.0 is base level)

Language | Symbol
--- | ---
C | `void SetAudioStreamPitch(AudioStream stream, float pitch);`
Swift | —

#### SetAudioStreamBufferSizeDefault

Default size for new audio streams

Language | Symbol
--- | ---
C | `void SetAudioStreamBufferSizeDefault(int size);`
Swift | —

