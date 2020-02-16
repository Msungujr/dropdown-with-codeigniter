<?php

class drop_down extends CI_Model
{
 function fetch_super()
 {
  $this->db->order_by("item_descr", "ASC");
  $query = $this->db->get("item_type");
  return $query->result();
 }

 function fetch_mini($item_type_id)
 {
  $this->db->where('item_type_id', $item_type_id);
  $this->db->order_by('item_descr', 'ASC');
  $query = $this->db->get('items');
  $output = '<div value=""></div>';
  foreach($query->result() as $row)
  {
    $output .= '<div class="col-md-3"><div style="border:1px solid; border-color:white; padding:9px; margin-bottom:9px;">'.$row->item_descr.'</div></div>'; 
  }
  return $output;
 }
}

?>
