<?php  
	$filepath = realpath(dirname(__FILE__));
	include_once ("../lib/session.php");
	Session::checkLogin();
	include_once ($filepath.'/../lib/database.php');
	include_once  ($filepath.'/../helpers/format.php');


 ?>


<?php 

	/**
	 * 
	 */
	class adminlogin
	{
		private $db;
		private $fm;

		public function __construct()
		{
			$this->db = new Database();
			$this->fm = new Format();
		}
		public function login_admin($admin_User,$admin_Pass){

			$admin_User = $this->fm->validation($admin_User);
			$admin_Pass = $this->fm->validation($admin_Pass);

			$admin_User = mysqli_real_escape_string($this->db->link, $admin_User);
			$admin_Pass = mysqli_real_escape_string($this->db->link, $admin_Pass);

			$query = "SELECT * FROM tbl_admin WHERE admin_User = '$admin_User' AND admin_Pass = '$admin_Pass' LIMIT 1";
			$result = $this->db->select($query);

			if($result == false){
				$alert = "Tài khoản hoặc mật khẩu không đúng";
				return $alert;
					
			}else{


					
				$value = $result->fetch_assoc();

				Session::set('adminlogin',true);
				Session::set('admin_Id',$value['admin_Id']);
				Session::set('admin_User',$value['admin_User']);
				Session::set('admin_Email',$value['admin_Email']);
				Session::set('Name',$value['admin_Name']);
				Session::set('level',$value['level']);
				$username=Session::get('admin_User');
				$id=Session::get('admin_Id');
				$email=Session::get('admin_Email');
				$s=Session::get('level');

				if($s==1){
					$id_se=session_id();
					date_default_timezone_set('Asia/Ho_Chi_Minh');
					$time=date('d/m/Y H:i:s');
					$query="INSERT INTO tbl_theodoi(username,email, gio_vao,phien_lam ) VALUES ('$username','$email','$time','$id_se')";
					$result = $this->db->insert($query);

				}
				header('Location:index.php');
			}
		}
	
		// public function login_admin($admin_User,$admin_Pass){

		// 	$admin_User = $this->fm->validation($admin_User);
		// 	$admin_Pass = $this->fm->validation($admin_Pass);

		// 	$admin_User = mysqli_real_escape_string($this->db->link, $admin_User);
		// 	$admin_Pass = mysqli_real_escape_string($this->db->link, $admin_Pass);

		// 	$query = "SELECT * FROM tbl_admin WHERE admin_User = '$admin_User' AND admin_Pass = '$admin_Pass' LIMIT 1";
		// 	$result = $this->db->select($query);

		// 	if($result == false){
		// 		$alert = "Tài khoản hoặc mật khẩu không đúng";
		// 		return $alert;
					
		// 	}else{
					
		// 		$value = $result->fetch_assoc();

		// 		Session::set('adminlogin',true);
		// 		Session::set('admin_Id',$value['admin_Id']);
		// 		Session::set('admin_User',$value['admin_User']);
		// 		Session::set('Name',$value['admin_Name']);
		// 		Session::set('level',$value['level']);
		// 		header('Location:index.php');
		// 	}
	}


 ?>