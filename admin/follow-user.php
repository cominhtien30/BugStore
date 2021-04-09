
<?php
ob_start();
include('includes/header.php'); 
include('includes/navbar.php'); 

?>
<?php 
  $check= session::get('level');
  if($check == '1'){
    header('Location:index.php');
  }

?>
<?php include '../classes/admin.php'?>
<?php 
  // $admin = new admin();
  // $check = Session::get('level');
  // if($_SERVER['REQUEST_METHOD'] == 'POST'  && isset($_POST['registerbtn'])  ){

       

  //       $insertadmin = $admin->insert_Admin($_POST);
  //   }


  //   if(isset($_POST["delete_id"])){
  //   $id = $_POST["delete_id"];
  //       $deladmin = $admin->delete_Admin($id);
  // }
  //  if(isset($_POST["edit_user"])){
  //   $id = $_POST["edit_user"];
  //       $deladmin = $admin->reset_Password($id);
  // }

 ?>
<?php 
  // $check= session::get('level');
  // if($check == '1'){
  //   header('Location:index.php');
  // }

 ?>
<!-- <div class="modal fade" id="addadminprofile" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Thêm Nhân Viên </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
     

    </div>
  </div>
</div> -->

















<div class="container-fluid">

<!-- DataTales Example -->
<div class="card shadow mb-4">
  <div class="card-header py-3">
    <h6 class="m-0 font-weight-bold text-primary">Danh Sách Nhân Viên
            
    </h6>
  </div>

  <div class="card-body">

    <div class="table-responsive">

      <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
        <thead>
          <tr>
            <th> ID </th>
            <th> Username </th>
            <th>Email </th>
            <th>Giờ Vào Ca </th>
            <th>Giờ Ra Ca </th>
          </tr>
        </thead>
        <tbody>
           <?php
           $follow = new admin();
            $show = $follow-> get_follow_staff();
            if($show){
              $i = 0;
              while($result = $show->fetch_assoc()){
                $i++;
            
          ?>
          <tr>
            <td> <?php echo $i; ?> </td>
            <td> <?php echo $result['username']; ?></td>
            <td> <?php echo $result['email']; ?></td>
            <td> <?php echo $result['gio_vao']; ?> </td>
            <td> <?php echo $result['gio_ra']; ?></td>
            
          </tr>
         <?php
          }
            }
            ?>  
        </tbody>
      </table>

    </div>
  </div>
</div>

</div>
<!-- /.container-fluid -->

<?php
include('includes/scripts.php');
include('includes/footer.php');
ob_end_flush();

?>