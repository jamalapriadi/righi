<?php 
class Cms569efb205ee43_755129756Class extends \Cms\Classes\PageCode
{
public function onStart(){
		$feature=$this['feature']=Rainlab\Blog\Models\Post::orderBy('id','desc')->first();
		$this['blogPosts']=Rainlab\Blog\Models\Post::where('id','<>',$feature->id)->orderBy('id','desc')->paginate(4);
	}

}
