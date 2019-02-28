<?php 
$host = explode('?', $_SERVER['REQUEST_URI'])[0]; 
$num=substr_count($host,'/'); 

//название маршрута, переданного ссылкой или формой 
$uri = explode('/', $host)[$num]; 
//-----------------— 

if($uri=='' || $uri=='index' || $uri=='home'){ 
    $response=Controller::startSite(); 
} 
elseif($uri=='detail'){ 
    if(isset($_GET['id'])){ 
        $id=$_GET['id'];// id новости! 
        $response= Controller::detailNews($id); 
    }else{ 
        $response= Controller::error404(); 
} 

} 
elseif($uri=='home'){ 
    $response = Controller::Newslist(); 
} 

elseif($uri=='category'){
    if(isset($_GET['id'])){ 
        $id=$_GET['id'];// id category! 
        $response= Controller::detailCategoryNews($id); 
    }else{ 
        $response= Controller::error404(); 
    }  
}

elseif ($uri == 'contact' )
{   //Просмотр контактов
    $response = controller::contactForm();
}    

elseif ($uri == 'send_contact' )
{   //Просмотр контактов
    $response = controller::contactSend();
} 

    elseif ($uri=='search') {
        if(isset($_GET['text'])){
            $text=$_GET['text'];
            $response= Controller::newsSearch($text);
        }else{
            $response= Controller::error404(); 
        }  
    }
    
    elseif($uri=='register'){
        $response= Controller::registerForm();
        
    }

    elseif ($uri=='answer') {
        $response= Controller::registerAnswer();
    }

else{ 
$response= Controller::error404(); 
}
 














