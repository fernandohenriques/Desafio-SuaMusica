<?php

class SignupController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {

    }

    public function registerAction()
    {

        $user = new Users();

        //Store and check for errors
        $success = $user->save($this->request->getPost(), array('name', 'email', 'password', 'active'));

        if ($success) {
          		
          	//Callback success
			echo json_encode(['status' => 'save', 'message' => 'Usuário criado com sucesso (ainda pendente de ativação)!']);
			
        } else {
        	
			//Callback error
			echo json_encode(['status' => 'not-save', 'message' => 'Não foi possível criar o usuário!']);
        }

    }

}
