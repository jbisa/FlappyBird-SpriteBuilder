#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    [self addObstacle];
    timeSinceObstacle = 0.0f;
    
    
}

// This method automatically gets called 60 times per second
-(void)update:(CCTime)delta
{
    // Increment the time since last obstacle was added
    timeSinceObstacle += delta; // delta is ~1/60th of a second
    
    // Check to see if 2 seconds have passed
    if (timeSinceObstacle > 2.0f) {
        // Add a new obstacle
        [self addObstacle];
        
        // Now, reset the timer
        timeSinceObstacle = 0.0f;
    }
    
}

// put new methods here

// Method so users can interact with the screen to play game
-(void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    // This gets called EVERY TIME player touches screen
    [character flap];
    
    
}



@end
