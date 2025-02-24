#include "window.h"
#include <SDL2/SDL_rect.h>
#include <SDL2/SDL_render.h>
#include <math.h>

#define WIDTH 1200
#define HEIGHT 800

#define SIDES 10
#define LENGTH 250

SDL_FPoint createFpoint(double x, double y);

int main() {
    struct Window* window = createWindow("Test!", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, WIDTH, HEIGHT);

    SDL_FPoint points[SIDES];
    for (int index = 0; index < SIDES; index++) {
        const int x = (double)window->width/2 + LENGTH * cos(2*M_PI * index / SIDES);
        const int y = (double)window->height/2 + LENGTH * sin(2*M_PI * index / SIDES);
        points[index] = createFpoint(x, y);
    }


    uint8_t running = 1;
    while (running) {
        SDL_Event event;
        while (SDL_PollEvent(&event)) {
            if (event.type == SDL_QUIT) {
                running = 0;
                break;
            }
        }
        SDL_SetRenderDrawColor(window->sdlRender, 255, 255, 255, 255);
        SDL_RenderClear(window->sdlRender);

        SDL_SetRenderDrawColor(window->sdlRender, 0, 0, 0, 255);
        for (int index = 0; index < SIDES; index++) {
            SDL_RenderDrawLineF(window->sdlRender,
                points[index].x, points[index].y,
                points[(index+1)%SIDES].x, points[(index+1)%SIDES].y);
        }
        SDL_RenderDrawLinesF(window->sdlRender, points, SIDES);


        SDL_RenderPresent(window->sdlRender);
    }
    
    destroyWindow(window);
    SDL_Delay(200);
    SDL_Quit();

    return 0;
}

SDL_FPoint createFpoint(double x, double y) {
    SDL_FPoint p = {x,y};
    return p;
}