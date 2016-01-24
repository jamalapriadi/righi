<?php 
class Cms569f02ce09bae_888117233Class extends \Cms\Classes\PageCode
{
public function onEnd()
{
	$this['blog']=Rainlab\Blog\Models\Post::find($this['post']->id);
	$this['artikel']=Rainlab\Blog\Models\Post::where('id','<>',$this['post']->id)->get();
    $this->page->title = $this['post']->title;
}

}
