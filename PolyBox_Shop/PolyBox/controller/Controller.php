<?php 

class Controller { 

    public function startSite($param=null) { 
        $rows= Model::getNews(); 
          $rowsC=Model::getNewslist();
        include_once 'view/main.php'; 
    } 

    public function detailNews($id) { 
        $row= Model::getDetailNews($id); 
        $rows= Model::getNewsPicture($id); 
        include_once 'view/detailNews.php'; 
    }

    public function contactForm()
    {
        include_once ('view/contact.php');
    }
    
    public function contactSend()
    {  
        include_once ('view/send_contact.php');
    }
    
    public function newsSearch($text){
        $rowsC=Model::getCategoryList();
        $rows= Model::getNewsSearch($text);   
        include_once('view/Newslist.php');     
    }

    public function Newslist(){ 
        $rows=Model::getNewslist(); 
        include_once('view/main.php'); 
    } 

    public function detailCategoryNews($id){
        $category=Model::getCategoryOne($id); 
        $rowsC=Model::getCategoryList();  
        $rows=Model::getCategoryNews($id);
        include_once('view/Newslist.php');   
    }

    public function registerForm(){
        include_once 'view/registerForm.php';
    }
    
    public function  registerAnswer(){
        $result= ModelRegister::registerUser();
        include_once 'view/registerAnswer.php';
    }

    public function error404(){ 
        include_once 'view/error_404.php'; 
    }

}//class
    
