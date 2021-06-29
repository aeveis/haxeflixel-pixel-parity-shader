package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxColor;
import openfl.filters.ShaderFilter;

class PlayState extends FlxState
{
	var lou1:FlxSprite;
	var lou2:FlxSprite;
	var lou3:FlxSprite;
	var lou4:FlxSprite;
	var lou5:FlxSprite;
	
	var count:Int = 0;
	
	override public function create()
	{
		super.create();
		
		var sprite = new FlxSprite(FlxG.width * 0.5 - 16, FlxG.height * 0.5 - 16);
		sprite.makeGraphic(32, 32, FlxColor.GREEN);
		sprite.angularVelocity = 20;
		add(sprite);
		
		lou1 = new FlxSprite(FlxG.width * 0.1 - 8, FlxG.height * 0.7 - 8, AssetPaths.lou__png);
		lou1.angularVelocity = 40;
		add(lou1);
		
		lou2 = new FlxSprite(FlxG.width * 0.3 - 8, FlxG.height * 0.7 - 8, AssetPaths.lou__png);
		add(lou2);
		
		lou3 = new FlxSprite(FlxG.width * 0.5 - 8, FlxG.height * 0.7 - 8, AssetPaths.lou__png);
		add(lou3);
		
		lou4 = new FlxSprite(FlxG.width * 0.7 - 8, FlxG.height * 0.7 - 8, AssetPaths.lou__png);
		add(lou4);
		
		lou5 = new FlxSprite(FlxG.width * 0.9 - 8, FlxG.height * 0.7 - 8, AssetPaths.lou__png);
		add(lou5);
		
		FlxG.camera.setFilters([new ShaderFilter(new PixelParityShader(160,90))]);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		if (FlxG.keys.justPressed.SPACE)
		{
			count = (count + 1) % 6;
			lou1.angle = 0;
			lou2.angle = 0;
			lou3.angle = 0;
			lou4.angle = 0;
			lou5.angle = 0;
			lou1.angularVelocity = 0;
			lou2.angularVelocity = 0;
			lou3.angularVelocity = 0;
			lou4.angularVelocity = 0;
			lou5.angularVelocity = 0;
			switch(count)
			{
				case 0:
					lou1.angularVelocity = 40;
				case 1:
					lou2.angularVelocity = 40;
				case 2:
					lou3.angularVelocity = 40;
				case 3:
					lou4.angularVelocity = 40;
				case 4:
					lou5.angularVelocity = 40;
					
			}
		}
	}
}
