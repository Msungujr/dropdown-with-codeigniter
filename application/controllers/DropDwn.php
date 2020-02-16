<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class DropDwn extends CI_Controller {
 
 public function __construct()
 {
  parent::__construct();
  $this->load->model('drop_down');
 }

 function index()
 {
  $data['data'] = $this->drop_down->fetch_super();
  $this->load->view('header', $data);
  $this->load->view('view_3', $data);
  $this->load->view('view_4', $data);
  $this->load->view('footer', $data);
 }

 function fetch_mini()
 {
  if($this->input->post('item_type_id'))
  {
   echo $this->drop_down->fetch_mini($this->input->post('item_type_id'));
  }
 }

 
 
  
}
