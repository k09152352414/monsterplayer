
/*
 * MainScene.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class Start: SEScene
{
	int w;
	int h;
	int j;
	public static int x;
	public static int y;
	SESprite background;
	SESprite strt;
	
		
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();
		AudioClipManager.prepare("hip");
		AudioClipManager.prepare("loser");
		add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
		rsc.prepare_image("bg", "background", w, h);
		background = add_sprite_for_image(SEImage.for_resource("bg"));
		background.move(0,0);

		rsc.prepare_image("button", "start", 0.2*w, 0.2*h);
		strt = add_sprite_for_image(SEImage.for_resource("button"));
	
		strt.move(0.4*w, 0.4*h);

	
		
		AudioClipManager.play("hip");
		
	}


	public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_press(pi);
		  if(pi.is_inside(0.4*get_scene_width(),0.4*get_scene_height(),get_scene_width(), 0.4*get_scene_height())) {
            switch_scene(new MainScene());
        }
	}

	


	public void cleanup() {
		base.cleanup();
	}
}
