<?php
 	
	try {
	
		//Read the configuration
		$config = new Phalcon\Config\Adapter\Ini('../app/config/config.ini');
	
	    //Save URL base
	    define("BASE_URL", "http://".$_SERVER['HTTP_HOST'].$config->application->baseUri);
	
	    //Register an autoloader
		$loader = new \Phalcon\Loader();
		$loader->registerDirs(
	    array(
	        $config->application->controllersDir,
	        $config->application->modelsDir,
	    ))->register();
	
	    //Create a DI
	    $di = new Phalcon\DI\FactoryDefault();
		
		//Setup the database service
		$di->set('db', function() use ($config) {
	    	return new \Phalcon\Db\Adapter\Pdo\Mysql(array(
	        	"host" => $config->database->host,
	       		"username" => $config->database->username,
	        	"password" => $config->database->password,
	        	"dbname" => $config->database->dbname
	    	));
		});
		
	
	    //Setup the view component
	    $di->set('view', function() use ($config) {
	        $view = new \Phalcon\Mvc\View();
	        $view->setViewsDir($config->application->viewsDir);
	        return $view;
	    });
	
		//Setup baseURI
	    $di->set('url', function() use ($config) {
	        $url = new \Phalcon\Mvc\Url();
	        $url->setBaseUri($config->application->baseUri);
	        return $url;
	    });
		
		//Start the session the first time a component requests the session service
		$di->set('session', function() {
	    	$session = new Phalcon\Session\Adapter\Files();
	    	$session->start();
	    	return $session;
		});
		
		//Set routes
   		 $di->set('router', function(){
        		$router = new \Phalcon\Mvc\Router();
        		$router->add(
                	'/{controller}/{id:\d+}',
            		array(
                		"action" => "index",
            		)
        		);

        		return $router;
    	});
	
	    //Handle the request
	    $application = new \Phalcon\Mvc\Application($di);
	
	    echo $application->handle()->getContent();
	
	} catch(\Phalcon\Exception $e) {
	     echo "PhalconException: ", $e->getMessage();
	}

?>
