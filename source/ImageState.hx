package;

import flixel.util.FlxColor;
import flixel.FlxState;
import flixel.FlxG;
import flixel.text.FlxText;

class ImageState extends FlxState
{   
    override public function create()
    {
        var text = new flixel.text.FlxText(0, 300, 0, "Thank you for playing the first version", 32);
        text.setFormat(Paths.font("vcr.ttf"), 32, FlxColor.PURPLE, CENTER, FlxTextBorderStyle.OUTLINE,FlxColor.LIME);
        text.screenCenter(X);
        add(text);

        var text2 = new flixel.text.FlxText(0, 340, 0, "of the Wisebug Mod!", 32);
        text2.setFormat(Paths.font("vcr.ttf"), 32, FlxColor.PURPLE, CENTER, FlxTextBorderStyle.OUTLINE,FlxColor.LIME);
        text2.screenCenter(X);
        add(text2);

        var text3 = new flixel.text.FlxText(0, 390, 0, "PRESS ANY BUTTON TO RETURN TO THE MENU", 22);
        text3.setFormat(Paths.font("vcr.ttf"), 10, FlxColor.PURPLE, CENTER, FlxTextBorderStyle.OUTLINE,FlxColor.LIME);
        text3.screenCenter(X);
        add(text3);

        super.create();
    }

    override public function update(elapsed:Float)
    {
        if (FlxG.keys.pressed.ANY)
        {
            FlxG.switchState(new StoryMenuState());
        }

        super.update(elapsed);
    }
}