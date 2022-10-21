<?php

namespace App\Models;

class Post
{
		private static 	$blog_posts = [
		[
			"title" => "Judul Post Pertama",
			"slug" => "judul-post-pertama",
			"author" => "Khoiruddina",
			"body" => " Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
					 quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
					 consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
					 cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
					 proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
		],
		[
			"title" => "Judul Post Kedua",
			"slug" => "judul-post-kedua",
			"author" => "Ahmad Khoiruddin",
			"body" => " Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
					 quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
					 consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
					 cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
					 proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
		]
	];

	public static function all()
	{
		return collect(self::$blog_posts);
	}
	public static function find($slug)
	{
		$posts = static::all();
		return $posts->firstWhere('slug', $slug);
	}

}