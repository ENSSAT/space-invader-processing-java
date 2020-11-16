
abstract class Drawable{
	abstract void draw();
}


class Entity extends Drawable{
	// coordinates of the hitbox
	int x0, y0, x1, y1;
	PImage sprite;
	Scene scene;
	
	Entity(Scene scene, int x, int y, int size, PImage sprite) {
		this.scene = scene;
		this.scene.add(this);
		
		int half = int(size / 2);
		this.x0 = x - half;
		this.y0 = y - half;
		this.x1 = x + half;
		this.y1 = x + half;
		
		this.sprite = sprite;
		this.sprite.resize(size, size);
	}
	
	void move(int dx, int dy) {
		this.x0 += dx;
		this.x1 += dx;
		this.y0 += dy;
		this.y1 += dy;
	}
	
	boolean contains(int x, int y) {
		return this.x0 <= x && this.x1 >= x && this.y0 <= y && this.y1 >= y;
	}
	
	void draw() {
		image(this.sprite, this.x0, this.y0);
	}
}


class Player extends Entity{
	Player(Scene scene) {
		super(
			scene,
			int(scene.width / 2), 
			scene.height - int(scene.getPlayerSize() / 2),
			scene.getPlayerSize(),
			loadImage("player.png")
			);
	}
	
	
}