    
<?php 
  $c = $this->uri->rsegment(1) ; 
  if($this->session->userdata('user_type') == '1') { 
?>
       
            <ul class="sidebar-menu"> 
                <li class="title">  Setup Form </li>
                       
                        
												
                        <li class="<?php if($c=='user')echo "active"  ?>">
                            <a href="<?php echo base_url(); ?>user">
                                <i class="fa fa-user"></i> <span>User</span>
                            </a>
                        </li>         
     
												
                    
                        
                        <li class="<?php if($c=='division')echo "active"  ?>">
                            <a href="<?php echo base_url(); ?>division">
                                <i class="fa fa-sitemap"></i> <span>Division</span>
                            </a>
                        </li>

                        <li class="<?php if($c=='jonal')echo "active"  ?>">
                            <a href="<?php echo base_url(); ?>jonal">
                                <i class="fa fa-share-alt-square"></i> <span>Jonal</span>
                            </a>
                        </li>
   
                        
                        <li class="<?php if($c=='department')echo "active"  ?>">
                            <a href="<?php echo base_url(); ?>department">
                                <i class="fa fa-puzzle-piece"></i> <span>Department</span>
                            </a>
                        </li>
                        
                        <li class="<?php if($c=='college')echo "active"  ?>">
                            <a href="<?php echo base_url(); ?>college">
                                <i class="fa fa-university"></i> <span>College</span>
                            </a>
                        </li>

                        <li class="<?php if($c=='books')echo "active"  ?>">
                            <a href="<?php echo base_url(); ?>books">
                                <i class="fa fa-book"></i> <span>Books</span>
                            </a>
                        </li>

                        <li class="<?php if($c=='teachers')echo "active"  ?>">
                            <a href="<?php echo base_url(); ?>teachers">
                                <i class="fa fa-users"></i> <span>Teachers</span>
                            </a>
                        </li>
            </ul>
    <?php } ?>                   


        <ul class="sidebar-menu"> 
            <li class="title"> Transection  </li>
                        
                        <?php   if($this->session->userdata('user_type') == '1') {  ?>
                            <li class="<?php if($c=='maexecutive')echo "active"  ?>">
                            <a href="<?php echo base_url(); ?>maexecutive">
                                <i class="fa fa-user"></i> <span>Marketing Executive </span>
                            </a>
                        </li>     
                           <li class="<?php if($c=='purchase')echo "active"  ?>">
                            <a href="<?php echo base_url(); ?>purchase/add">
                                <i class="fa fa-truck"></i> <span> Challan  Book  </span>
                            </a>
                        </li>
                        <?php } else { ?>
                        <li class="<?php if($c=='requisition')echo "active"  ?>">
                            <a href="<?php echo base_url(); ?>requisition/add">
                                <i class="fa fa-paper-plane"></i> <span> requisition  </span>
                            </a>
                        </li>
                        
                     
                        
                     
                         
                        <li class="<?php if($c=='distribute')echo "active"  ?>">
                            <a href="<?php echo base_url(); ?>distribute/add">
                                <i class="fa  fa-folder-open-o"></i> <span> Distribute Books  </span>
                            </a>
                        </li>
                         <?php } ?>
                        <li class="<?php if($c=='report')echo "active"  ?>">
                            <a href="<?php echo base_url(); ?>report">
                                <i class="fa fa-bar-chart-o"></i> <span>Reports  </span>
                            </a>
                        </li>
                        </ul>