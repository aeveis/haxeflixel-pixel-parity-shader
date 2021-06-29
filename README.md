# haxeflixel-pixel-parity-shader

![Objects rotating at consistent pixel parity](https://github.com/aeveis/haxeflixel-pixel-parity-shader/blob/main/pixelParityRotate.gif?raw=true)

Keep pixel parity regardless of scale. Mainly used for when rotating sprites.

## Instructions
- Set filter of camera to shader:
  - `FlxG.camera.setFilters([new ShaderFilter(new PixelParityShader(FlxG.width, FlxG.height))]);`

## Demo
Press Space to rotate next sprite

### Implementation Details
Knowing the width and height, the UVs in the camera are ceiling-ed to next pixel color.

### Notes
- May not work as well when scale is 1. 
- Does not currently work with resizing windows, as the UVs do not update with a window resize.
