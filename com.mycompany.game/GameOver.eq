
/*
 * GameOver
 * Created by Eqela Studio 2.0b7.4
 */

public class GameOver: SEScene
{
	int w;
	int h;
	int j;
	public static int x;
	public static int y;
	SESprite background;

	
		
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w = get_scene_width();
		AudioClipManager.prepare("loser");
		h = get_scene_height();
		AudioClipManager.prepare("hip");
		add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
		rsc.prepare_image("bg2", "bg2", w, h);
		background = add_sprite_for_image(SEImage.for_resource("bg2"));
		background.move(0,0);
	
		
		AudioClipManager.play("loser");
		
		
	}
}