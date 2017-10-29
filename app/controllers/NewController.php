<?php

class NewController extends \Phalcon\Mvc\Controller {

	function indexAction($id){

		$this->view->newId = $id;
		$this->view->year = date("Y");
	}

	public function showAction($id){

		$news = (new News())->find("id = ".$id);

		$data = array();
    	foreach ($news as $new) {
        	$data [] = array(
            	'title'    => utf8_encode($new->title),
            	'author'   => $new->author,
            	'content'  => $new->content
        	);
    	}

    	echo json_encode($data);
	}

}

?>
