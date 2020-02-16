<script>
$(document).ready(function(){
 $('#super').change(function(){
  var item_type_id = $('#super').val();
  if(item_type_id!= '')
  {
   $.ajax({
    url:"<?php echo base_url(); ?>DropDwn/fetch_mini",
    method:"POST",
    data:{item_type_id:item_type_id},
    success:function(data)
    {
     $('#mini').html(data);
    
    }
   });
  }
  else
  {
   $('#mini').html('<option value="" class="danger" >PLEASE SELECT EITHER OF THE TWO CATEGORIES !!</option>');
   }
 });

});
</script>

<style>
.danger{
color:red;
font-size:23px;
}
</style>
