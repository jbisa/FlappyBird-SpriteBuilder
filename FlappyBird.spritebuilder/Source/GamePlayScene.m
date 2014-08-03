#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    [self addObstacle];
}

-(void)update:(CCTime)delta
{
    // put update code here
}

// put new methods here

// Method so users can interact with the screen to play game
-(void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    // This gets called EVERY TIME player touches screen
    [character flap];
    
    
}



@end
