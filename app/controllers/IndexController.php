<?php

Use News;

class IndexController extends \Phalcon\Mvc\Controller {

	public function indexAction(){

		$this->view->year = date("Y");
		
	}

}
