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
                <li class="active"><a href="<?php echo base_url()?>thana">Division</a></li>
                <li class="active"><a href="<?php echo base_url()?>thana/add">Add Division</a></li>
            </ol>
        </section>
    <br/>

    <!-- Start Working area --> 
<div class="col-md-9 main-mid-area"> 
   <?php $this->load->view('common/error_show') ?>
    <h2> Add New Division </h2>
    

    <?php 
    echo form_open('') ; 
    ?>

<div class="row">
    <div class="col-md-6">
        <div class="form-group">
            <label> Division Name </label>
            <?php 
            $form_input = array(
                'name' => 'name',
                'class' =>'form-control ', 
                'value' => $name, 
                'required' => 'required',
                'placeholder'=>'Division Name',
                'size' => '50'
                
            );
            echo form_input($form_input); 
            ?>
        </div>
    </div>
    
    <div class="form-group col-md-6">
    
    <label>Division Head </label>
    <div>
    
        <?php
        
        $duser=array(""=>'Select a Division Head ');
        $class='class="form-control division_head" ';
        foreach($division_user as $user){ 
            $duser[$user['id']]=$user['name'];
            }
         
            echo form_dropdown('division_head',$duser,$division_head,$class);
            
            ?>
      
        
        
    </div>
</div>

    <!-- <div class="col-md-4">
        <label> Publication Status </label><br>
        <label class="radio-inline">
          <input type="radio" name="status" id="inlineRadio1" <?php if ($status==1) {
              echo "checked";
          } ?>  value="1"> Published
        </label>
        <label class="radio-inline">
          <input type="radio" name="status" id="inlineRadio2" <?php if ($status==0) {
            echo  "checked";
          } ?>  value="0"> Unpublished
        </label>
    </div>
 -->
    
    <div class="col-md-2"><br>
        <div class="pull-right"> 

    <?php 
    $form_input = array(
        'name' => 'submit',
        'class' =>'btn btn-lg btn-success ', 
        'value' => 'Add Division'
       
    );

    echo form_submit($form_input); 
    echo form_close() 
    ?> 

   </div> 
    </div>
</div>

<!-- End  Working area --> 
<?php $this->load->view('common/footer') ?>

