<?php
namespace content\app;

class controller
{
	public static function routing()
	{
		if(!\dash\url::child())
		{
			\dash\redirect::to(\dash\url::static(). '/app/MaalQuran-v10.apk');
		}
	}
}
?>