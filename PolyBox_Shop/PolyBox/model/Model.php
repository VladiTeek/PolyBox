<?php 

class Model { 

    public function getNews($param=null) {  
        $sql='SELECT *' 
        . 'FROM news' ; 
        $db=new db();//соединение с БД 
        $rows=$db->getAll($sql);// foreach 
        return $rows; 
    } 

    public function getdetailNews($id) { 
        $sql='SELECT news.*, category.category ' 
        . 'FROM `news`,category ' 
        . 'WHERE news.idCategory=category.ID_category ' 
        . 'and news.ID_news='.$id; 
        $db=new db(); 
        $row=$db->getOne($sql);//одна строка в результате! по ID_news 
        return $row; 
    } 

    public function getNewslist() { 
        $sql = $sql='SELECT `HeadProduct`, `Image` FROM `product` ORDER by `Date` LIMIT 3 '; 
        //создать экземпляр класса db 
        $db = new db(); 
        //$rows = массив данных 
        $rows = $db->getAll($sql); 
        //--------------------------------------------------------— 
        return $rows; 
    } 

    public function getNewsPicture($id) { 
        $sql='SELECT * FROM `picture` WHERE `idNews`='.$id; 
        $db=new db(); 
        $rows=$db->getAll($sql);//одна строка в результате! по ID_news 
        return $rows; 

    } 

    public function getCategoryList(){
        $sql='SELECT * FROM `category` ORDER BY `category`.`category` ASC';
        //создать экземпляр класса db 
        $db = new db(); 
        //$rows = массив данных 
        $rows = $db->getAll($sql); 
        return $rows; 
    }
    
    public function  getCategoryOne($id){
        $sql='SELECT * FROM `category` WHERE `ID_category`='.$id;
        //создать экземпляр класса db 
        $db = new db(); 
        //$rows = массив данных 
        $row = $db->getOne($sql); 
        return $row; 
    }

    public function getNewsSearch($text){
        $sql='SELECT news.*, category.category FROM `news`, category WHERE news.idCategory=category.ID_category AND (news. `newsText` LIKE "%'.$text.'%" OR news. `title` LIKE "%'.$text.'%") ORDER BY `news`.`date` DESC';
        //создать экземпляр класса db 
        $db = new db(); 
        //$rows = массив данных 
        $rows = $db->getAll($sql);
        //-----------------------------------
        return $rows;
    }

}//class

