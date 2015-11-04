<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends MY_Controller
{
    public function __construct() {
        parent::__construct();
        $this->checklogin() ;
    }
    
    public function index()
    {
     
        $datav = "";
    	$this->load->view('home/index', $datav);
    }


    public function getthana($did)
    {
    	$did = trim($did); 
    	$thanalist=$this->CM->getAllWhere('thana', array('district_id'=> $did)) ; 
    	// echo json_encode($thanalist) ; 
    	$html = "<option value=''>Select a thana</option>";
    	foreach ($thanalist as $key => $value) {
    		 $html.="<option value='{$value['id']}'>{$value['name']}</option>"; 
    	}


    	echo $html ; 

    }
    
    
    public function getjonal($did)
    {
    	$did = trim($did); 
    	$jonallist=$this->CM->getAllWhere('jonal', array('div_id'=> $did)) ; 
    	 echo json_encode($jonallist) ; 
    	 
    }
    
    
    
    public function getcollege($jid)
    {
    	$jid = trim($jid); 
    	$collegelist=$this->CM->getAllWhere('college', array('jonal_id'=> $jid)) ; 
    	 echo json_encode($collegelist) ; 
    	 
    }
    
    
    public function getexecutive($jid)
    {
    	$jid = trim($jid); 
    	$collegelist=$this->CM->getAllWhere('user', array('jonal_id'=> $jid)) ; 
    	 echo json_encode($collegelist) ; 
    	 
    }

    public function getteacher($jid)
    {
        $jid = trim($jid); 
        $teacherlist=$this->CM->getAllWhere('teachers', array('college_id'=> $jid)) ; 
         echo json_encode($teacherlist) ; 
         
    }
    

}


