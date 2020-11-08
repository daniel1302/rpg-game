#include "SDL.h"
#include <cstdio>


int main() 
{ 
  
    // retutns zero on success else non-zero 
    if (SDL_Init(SDL_INIT_EVERYTHING) != 0) { 
        std::printf("error initializing SDL: %s\n", SDL_GetError()); 
    } 
    SDL_Window* window = SDL_CreateWindow("GAME", 
                                       SDL_WINDOWPOS_CENTERED, 
                                       SDL_WINDOWPOS_CENTERED, 
                                       1000, 1000, 0); 
   SDL_Event e;
    bool quit = false;
    while (!quit){
        while (SDL_PollEvent(&e)){
            if (e.type == SDL_QUIT){
                quit = true;
            }
            // if (e.type == SDL_KEYDOWN){
            //     quit = true;
            // }
            // if (e.type == SDL_MOUSEBUTTONDOWN){
            //     quit = true;
            // }
        }
    }
  

    
    SDL_DestroyWindow(window);
    SDL_Quit();

    return 0; 
} 