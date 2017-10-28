<?php

class DashboardController extends \Phalcon\Mvc\Controller {

	function indexAction(){

		if(!$this->session->get('id')) $this->response->redirect('login');

	}

	public function getNameUserLoggedAction(){
		if($this->session->has("name")) echo $this->session->get("name");
	}

	public function saveNewsAction(){

		if( (new News())->save($this->request->getPost(), array('author', 'title', 'content')) ){

			//Callback success
			echo json_encode(['status' => 'save', 'message' => 'Notícia cadastrada com sucesso!']);

		} else {

			//Callback error
			echo json_encode(['status' => 'not-save', 'message' => 'Não foi possível salvar esta notícia!']);
		}

	}

	public function listNewsAction($limit = 0) {

		$news = (($limit != 0) ? (new News())->find(array('limit' => $limit)) : (new News())->find());

		$data = array();
    foreach ($news as $new) {
    		$data[] = array(
        		'id'       => $new->id,
            'title'    => $new->title,
            'author'   => $new->author,
            'content'  => $new->content
        );
    	}

    	echo json_encode($data);
	}

}
