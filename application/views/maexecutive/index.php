<?php
$this->load->view('common/css_link');
$this->load->view('common/header');
$this->load->view('common/sidebar');
//$this->load->view('common/control_panel');
?> 

    <!-- Right side column. Contains the navbar and content of the page -->
    <aside class="right-side">
        <!-- Content Header (Page header) -->
        <section class="content-header" style="margin-top:-10px!important;">
            <h1>
                Dashboard
                <small>Control panel</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="<?php echo base_url()?>home"><i class="fa fa-home"></i> Home</a></li>
                <li class="active"><a href="<?php echo base_url()?>user">User</a></li>
            </ol>
        </section>
    <br/>

    
    


<!-- Start Working area --> 
<div class="col-md-12 main-mid-area"> 
    <h3> Marketing Executive List </h3>
   <?php $this->load->view('common/error_show') ?>
   
    <div class="searchbar " >
    <div class="col-md-8"  >
    </div>
        
        <div class="pull-right"> 
          <a href="<?php echo base_url()?>maexecutive/add" class="btn btn-info pull-right" > <i class="fa fa-plus-square gap">  </i> Add User</a> 
        </div>
        <div class="clearfix"></div>
   </div> 
    
    <div>
        
            <table class="table table-bordered table-hover ">
                <tr>
                     <th id="action_btn_align">SL</th>
                    <th id="action_btn_align">Name</th>
                    <th id="action_btn_align">Address</th>
                    <th id="action_btn_align">Phone</th>
                    <th id="action_btn_align">Email</th>
                    <th id="action_btn_align">Division</th>
                    <th id="action_btn_align">Jonal </th>
                    <th id="action_btn_align">Action</th>
                   
                 </tr>
           
                             
                 
                 <?php 
               //  var_dump($company_list) ; 
                 foreach ($user_list as $user){
                 ?>
                 
                 
              <tr id="action_btn_align">
                  <td> <?php echo $user['id'] ?></td>
                  <td> <?php echo $user['name'] ?></td>
                  <td> <?php echo $user['address'] ?></td>
                  <td> <?php echo $user['phone'] ?></td>
                  <td> <?php echo $user['email'] ?></td>
                  <td> <?php echo $division = $this->CM->getInfo('division', $user['division_id'])->name ?></td>
                  <td> <?php echo $jonal = $this->CM->getInfo('jonal', $user['jonal_id'])->name ?></td>
                   
                  <td>     
                            <a class="btn btn-primary btn-flat" href="<?php echo base_url(); ?>maexecutive/edit/<?php echo $user['id'] ?>"><i class="fa fa-pencil-square-o" ></i> Edit </a>
                           
                            <a class="btn btn-danger btn-flat "  onclick="return confirm('Are you sure want to delete');" href="<?php echo base_url(); ?>user/delete/<?php echo $user['id'] ?>"><i class="fa fa-minus-circle"></i> Delete</a>
                         </div>
                    </td>     
               </tr>
              <?php } ?>
                    
             </table> 
</div>

    <div>         
    <?php echo $this->pagination->create_links();

    ?>  
    </div>

<!-- End  Working area --> 
<?php $this->load->view('common/footer') ?>