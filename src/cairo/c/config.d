/**
 * This module contains information on what optional features are
 * available with the used cairo library.
 */
module cairo.c.config;

///PNG functions are available
enum bool CAIRO_HAS_PNG_FUNCTIONS = true;

version(D_Ddoc)
{
    ///Win32 surface support
    enum bool CAIRO_HAS_WIN32_SURFACE = false;
    ///Win32 font support
    enum bool CAIRO_HAS_WIN32_FONT = false;
}
else version(Windows)
{
    enum bool CAIRO_HAS_WIN32_SURFACE = true;
    enum bool CAIRO_HAS_WIN32_FONT = true;
}
else
{
    enum bool CAIRO_HAS_WIN32_SURFACE = false;
    enum bool CAIRO_HAS_WIN32_FONT = false;
}

version(linux)
{
	///XLIB surface support
	enum bool CAIRO_HAS_XLIB_SURFACE = true;
}
else
{
	///XLIB surface support
	enum bool CAIRO_HAS_XLIB_SURFACE = false;
}

///Postscript surface support
enum bool CAIRO_HAS_PS_SURFACE = false;
///PDF surface support
enum bool CAIRO_HAS_PDF_SURFACE = false;
///SVG surface support
enum bool CAIRO_HAS_SVG_SURFACE = false;
///Freetype font support
enum bool CAIRO_HAS_FT_FONT = false;
///XCB surface support
enum bool CAIRO_HAS_XCB_SURFACE = false;
///DirectFB surface support
enum bool CAIRO_HAS_DIRECTFB_SURFACE = false;


