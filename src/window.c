#include "window.h"
#include <stdio.h>

#define handleSdlError() {fprintf(stderr, "SDL failed to initialize: %s\n", SDL_GetError()); return NULL;}

struct Window* createWindow(const char* title, int x, int y, unsigned int width, unsigned int height) {
    struct Window *window = (struct Window*)malloc(sizeof(struct Window));
    window->width = width;
    window->height = height;

    if (SDL_Init(SDL_INIT_VIDEO) != 0) handleSdlError()
    
    window->sdlWindow = SDL_CreateWindow(title, x, y, width, height, 0);
    if (window->sdlWindow == NULL) handleSdlError();

    window->sdlRender = SDL_CreateRenderer(window->sdlWindow, -1, SDL_RENDERER_SOFTWARE);
    if (window->sdlRender == NULL) handleSdlError();
    
    return window;
}

void resizedWindow(struct Window *window) {
    SDL_Surface* windowSurface = SDL_GetWindowSurface(window->sdlWindow);
    window->width = windowSurface->w;
    window->height = windowSurface->h;
}

void destroyWindow(struct Window *window) {
    SDL_DestroyRenderer(window->sdlRender);
    SDL_DestroyWindow(window->sdlWindow);
    free(window);
}