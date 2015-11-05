<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Subject extends CI_Controller 
{
	 

	public $uid;
    public $module;

    public function __construct() {
    parent::__construct();

    $this->load->model('Commons', 'CM') ;  
    $this->module='user';
    $this->uid=$this->session->userdata('uid');
    }

    public function index()
    {
    	$data['subject_list']=$this->CM->getTotalALL('tbl_subject');
       
        
    	$no_rows= $this->CM->getTotalRow('tbl_subject');
        $this->load->library('pagination');
        $config['base_url'] = base_url().'subject/index/';
       
        $config['total_rows'] = $no_rows ;
        $config['per_page'] = 15;
        $config['full_tag_open'] = '<div class=" text-center"><ul class=" list-inline list-unstyled " id="listpagiction">';
        $config['full_tag_close'] = '</ul></div>';
        $config['prev_link'] = '&lt; Prev';
        $config['prev_tag_open'] = '<li class="link_pagination">';
        $config['prev_tag_close'] = '</li>';
        $config['next_link'] = 'Next &gt;';
        $config['next_tag_open'] = '<li class="link_pagination">';
        $config['next_tag_close'] = '</li>';
        $config['cur_tag_open'] = '<li class="active_pagiction"><a href="#">';
        $config['cur_tag_close'] = '</a></li>';
        $config['num_tag_open'] = '<li class="link_pagination">';
        $config['num_tag_close'] = '</li>';
        $config['last_link'] = 'Last';
        $config['first_link'] = 'First';
        $this->pagination->initialize($config);     
        
        $data['subject_list']=$this->CM->getTotalALL('tbl_subject',$this->uri->segment(3), $config['per_page']);
        $this->load->view('subject/index',$data);    
    }

    public function add()
    {
      if( !$this->CM->checkpermission($this->module,'add', $this->uid))
             redirect ('error/accessdeny');
      
       // $data['id'] = $this->CM->getMaxID('user'); 
     
        $data['subject_user']=$this->CM->getAllWhere('user', array('user_type' => '3'));
        
        $data['name'] = "";
        $data['subject_code'] = "";
        //$data['status'] = "";
      
        $this->load->library('form_validation');

        $this->form_validation->set_rules('name', 'required');
        if ($this->form_validation->run() == FALSE)
        {
            $this->load->view('subject/form', $data); 
        }
        else
        {
            
            $datas['subject_name'] = $this->input->post('subject_name'); 
            $datas['subject_code'] = $this->input->post('subject_code'); 
            
            $datas['status'] = 1;
            //$datas['entryby']=$this->session->userdata('uid');       
            

            $insert = $this->CM->insert('tbl_subject',$datas) ; 
            if($insert)
            {
                $msg = "Operation Successfull!!";
                $this->session->set_flashdata('success', $msg);
                redirect('subject'); 
            }
            else 
            {
                $msg = "There is an error, Please try again!!";
                $this->session->set_flashdata('error', $msg);
                $this->load->view('subject/form', $data); 
            }
              redirect('subject','refresh'); 
        }
        
    }

    // Edit Subject 
    public function edit($id)
    {
         if( !$this->CM->checkpermission($this->module,'edit', $this->uid))
             redirect ('error/accessdeny');
        
        $content = $this->CM->getInfo('tbl_subject', $id) ; 
        //$data['division_user']=$this->CM->getAllWhere('user', array('user_type' => '3'));
       
        
        $data['subject_name'] = $content->subject_name;
        $data['subject_code'] = $content->subject_code;
        //$data['status'] = $content->status;
        
        $this->load->library('form_validation');
        $this->form_validation->set_rules( 'subject_name', 'required');
        if ($this->form_validation->run() == FALSE)
        {
                $this->load->view('subject/form', $data); 
        }
        else
        {
            $datas['subject_name'] = $this->input->post('subject_name'); 
            $datas['subject_code'] = $this->input->post('subject_code'); 
            //$datas['status'] = $this->input->post('status');
            //$datas['entryby']=$this->session->userdata('uid');       
      if($this->CM->update('tbl_subject', $datas, $id)){
                    $msg = "Operation Successfull!!";
                    $this->session->set_flashdata('success', $msg);
                    redirect('subject'); 
                }
        }
        
    }

}