<?php
namespace content\about;


class view
{
	public static function config()
	{
		\dash\data::page_title(T_('About MaalQuran'));
		\dash\data::page_desc(T_('Free Online Project to Share Quran for you'));
	}
}
?>