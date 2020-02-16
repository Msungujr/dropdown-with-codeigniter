<body class="dummy">
 <div class="container box">
  <br />
  <br />
  <br />
  <div class="form-group">
   <select name="super" id="super" class="form-control input-lg">
    <option value="">Select..</option>
    <?php
    foreach($data as $row)
    {
     
        echo '<option value="'.$row->item_type_id.'">'.$row->item_descr.'</option>';

    }
    ?>
   </select>
  </div>
  <br />
  
  <table class="table-responsive" id="mini">
<br />

 <hr />
 </table>

 <hr />
</body>

<style>
    .dummy
    {
background-color:white;
    }
       </style>
</html>
