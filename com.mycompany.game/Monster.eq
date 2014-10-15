
/*
 * Monster
 * Created by Eqela Studio 2.0b7.4
 */

public class Monster: SEEntity
{
	SESprite momo;
	int h;
	int w;
	int mx;
	int my;
	int speed;	

	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		AudioClipManager.prepare("loser");
		w = get_scene_width();
		h = get_scene_height();
		rsc.prepare_image("momo","momo",w*0.1,h*0.15);
		momo = add_sprite_for_image(SEImage.for_resource("momo"));
		momo.move(Math.random(0,w), Math.random(0,h));
		speed = Math.random(1,80)*10;
		}

	public void tick(TimeVal now, double delta) {
		base.tick(now, delta);
		mx = momo.get_x();
		my = momo.get_y();
		momo.move(momo.get_x()+(MainScene.x-momo.get_x())/speed,momo.get_y()+(MainScene.y-momo.get_y())/speed );
		if((mx +0.2*get_scene_width()>= MainScene.x && mx<=MainScene.x) && (my+0.2*get_scene_height() >= MainScene.y&&my<=MainScene.y)) {
			MainScene.collide = true;			
		}
		}
}

