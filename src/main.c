#include "window.h"
#include <SDL2/SDL_events.h>
#include <SDL2/SDL_rect.h>
#include <SDL2/SDL_render.h>
#include <math.h>

#define WIDTH 1200
#define HEIGHT 800

const unsigned int LENGTH = 250;

SDL_FPoint createFpoint(double x, double y);

int main() {
    struct Window* window = createWindow("Test!", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, WIDTH, HEIGHT);
    unsigned int sides = 5;
    

    unsigned int startTime;
    unsigned int endTime;
    unsigned int delta;
    uint8_t running = 1;
    while (running) {
        startTime = SDL_GetTicks();
        delta = startTime - endTime;

        if (delta > 1000/60.0) {
            endTime = startTime;
            SDL_Event event;
            while (SDL_PollEvent(&event)) {
                switch (event.type) {
                    case SDL_QUIT:
                        running = 0;
                        break;
                    case SDL_KEYDOWN:
                        if (event.key.keysym.sym == SDLK_UP) {
                            sides++;
                        } else if (event.key.keysym.sym == SDLK_DOWN) {
                            if (sides != 2) {
                                sides--;
                            }
                        }
                }
            }

            SDL_FPoint points[sides];
            for (int index = 0; index < sides; index++) {
                const int x = (double)window->width/2 + LENGTH * cos(2*M_PI * index / sides);
                const int y = (double)window->height/2 + LENGTH * sin(2*M_PI * index / sides);
                points[index] = createFpoint(x, y);
            }



            SDL_SetRenderDrawColor(window->sdlRender, 255, 255, 255, 255);
            SDL_RenderClear(window->sdlRender);

            SDL_SetRenderDrawColor(window->sdlRender, 0, 0, 0, 255);
            for (int index = 0; index < sides; index++) {
                SDL_RenderDrawLineF(window->sdlRender,
                    points[index].x, points[index].y,
                    points[(index+1)%sides].x, points[(index+1)%sides].y);
            }
            SDL_RenderDrawLinesF(window->sdlRender, points, sides);


            SDL_RenderPresent(window->sdlRender);
        }
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