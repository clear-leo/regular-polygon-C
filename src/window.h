#include <SDL2/SDL.h>

struct Window {
    int width;
    int height;
    SDL_Window* sdlWindow;
    SDL_Renderer* sdlRender;
};
struct Window* createWindow(const char* title, int x, int y, unsigned int width, unsigned int height);

void resizedWindow(struct Window *window);
void destroyWindow(struct Window *window);

