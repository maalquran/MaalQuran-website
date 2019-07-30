<?php
namespace content_api\v6\lms;


class controller
{
	public static function routing()
	{


		if(count(\dash\url::dir()) > 3)
		{
			\content_api\v6::no(404);
		}

		\content_api\v6::check_apikey();

		$subchild = \dash\url::subchild();

		if(!$subchild)
		{
			\content_api\v6::no(404);
		}

		if(in_array($subchild, ['star', 'saveanswer', 'audio']))
		{
			if(!\dash\request::is('post'))
			{
				\content_api\v6::no(400);
			}
		}

		switch ($subchild)
		{
			case 'group':
				$data = self::group();
				break;

			case 'levellist':
				$data = self::levellist();
				break;

			case 'level':
				$data = self::level();
				break;

			case 'userstar':
				$data = self::userstar();
				break;


			case 'star':
				$data = self::star();
				break;

			case 'saveanswer':
				$data = self::saveanswer();
				break;

			case 'audio':
				$data = self::audio();
				break;


			default:
				\content_api\v6::no(404);
				break;
		}

		\content_api\v6::bye($data);
	}


	private static function group()
	{
		$groupList = \lib\app\lm_group::public_list();
		return $groupList;
	}


	private static function levellist()
	{
		$id    = \dash\request::get('id');
		$level = \lib\app\lm_level::public_level_list($id);
		return $level;
	}


	private static function level()
	{
		$id    = \dash\request::get('id');
		$loadLevel = \lib\app\lm_level::public_load_level($id);
		return $loadLevel;
	}


	private static function userstar()
	{
		$id    = \dash\request::get('id');
		$userstar = \lib\app\lm_star::user_level_star($id);
		return $userstar;
	}



	private static function star()
	{
		$post         = [];
		$post['desc'] = \dash\request::post('desc');
		$post['page'] = \dash\request::post('page');
		$post['aya']  = \dash\request::post('aya');
		$post['sura'] = \dash\request::post('sura');
		$post['type'] = \dash\request::post('type');
		$add          = \lib\app\fav::add($post);
		return $add;
	}

	private static function saveanswer()
	{
		$answer = \dash\request::post();
		\lib\app\lm_answer::save_array($answer, \dash\request::get('id'));
		return true;

	}


	private static function audio()
	{
		$file = \dash\app\file::upload_quick('audio');

		if($file)
		{
			\lib\app\lm_audio::add_new($file, \dash\request::get('id'));
		}
		else
		{
			\dash\notif::error(T_("Please upload a file"));
			return false;
		}


	}
}
?>