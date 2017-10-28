<?php

class LoginController extends \Phalcon\Mvc\Controller {

	function IndexAction(){

 		if($this->session->get('id')) $this->response->redirect('dashboard');

	}

	private function _registerSession($user){
        $this->session->set('id', $user->id);
		$this->session->set('name', $user->name);
  }

	public function LoginAction(){

		if ($this->request->isPost()) {

			$email = $this->request->getPost('email');
            $password = $this->request->getPost('password');

            //$password = sha1($password);

			$user = (new Users())->findFirst(array(
	        	"email = :email: AND password = :password: AND active = 'Y'",
	        	"bind" => array('email' => $email, 'password' => $password)
	        ));

			if($user){

				//registra a sessão do usuário
				$this->_registerSession($user);

				echo json_encode(['status' => 'authorized']);

			} else {
				echo json_encode(['status' => 'not-authorized']);
			}
		}
	}

	public function LogoutAction(){
		$this->session->destroy();
	}

}
