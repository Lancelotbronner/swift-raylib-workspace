//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2022-01-12.
//

@usableFromInline var TARGET_IMAGE_DRAWING: Image?

#warning("TODO: Image renderer")
// To think about, do I make ImageRenderer a global thing and wrap it in image.render()? That would be more inline with everything else
// within the library

/*
 // Image drawing functions
 // NOTE: Image software-rendering functions (CPU)
 RLAPI void ImageClearBackground(Image *dst, Color color);                                                // Clear image background with given color
 RLAPI void ImageDrawPixel(Image *dst, int posX, int posY, Color color);                                  // Draw pixel within an image
 RLAPI void ImageDrawPixelV(Image *dst, Vector2 position, Color color);                                   // Draw pixel within an image (Vector version)
 RLAPI void ImageDrawLine(Image *dst, int startPosX, int startPosY, int endPosX, int endPosY, Color color); // Draw line within an image
 RLAPI void ImageDrawLineV(Image *dst, Vector2 start, Vector2 end, Color color);                          // Draw line within an image (Vector version)
 RLAPI void ImageDrawCircle(Image *dst, int centerX, int centerY, int radius, Color color);               // Draw circle within an image
 RLAPI void ImageDrawCircleV(Image *dst, Vector2 center, int radius, Color color);                        // Draw circle within an image (Vector version)
 RLAPI void ImageDrawRectangle(Image *dst, int posX, int posY, int width, int height, Color color);       // Draw rectangle within an image
 RLAPI void ImageDrawRectangleV(Image *dst, Vector2 position, Vector2 size, Color color);                 // Draw rectangle within an image (Vector version)
 RLAPI void ImageDrawRectangleRec(Image *dst, Rectangle rec, Color color);                                // Draw rectangle within an image
 RLAPI void ImageDrawRectangleLines(Image *dst, Rectangle rec, int thick, Color color);                   // Draw rectangle lines within an image
 RLAPI void ImageDraw(Image *dst, Image src, Rectangle srcRec, Rectangle dstRec, Color tint);             // Draw a source image within a destination image (tint applied to source)
 RLAPI void ImageDrawText(Image *dst, const char *text, int posX, int posY, int fontSize, Color color);   // Draw text (using default font) within an image (destination)
 RLAPI void ImageDrawTextEx(Image *dst, Font font, const char *text, Vector2 position, float fontSize, float spacing, Color tint); // Draw text (custom sprite font) within an image (destination)
 */
