<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ViewProfile.aspx.cs" Inherits="TelemedicsAdminWebApp.ViewProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="min-height:600px;">
   
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1> <span><em class="fa fa-university"></em></span>	Profile  </h1>
      <ol class="breadcrumb">
        <li><a href="Dashboard.aspx"><i class="fa fa-home"></i> Home</a></li>
        <li class="active">Profile</li>
      </ol>
    </section>

    <section class="content">
	    <div class="form-indide">
		<h3></h3>
			<div class="row">
			<div class="col-sm-3">
				<div class="user"><img class="img-responsive" src="img/user.png" alt="user"/></div>
			  </div>
			<div class="col-sm-7">
				<div class="form-group row">
                     <label for="full_name" class="col-md-4 text-md-right">Full Name</label>
                                    <div class="col-md-6">
                                      <p class="form-control-static">Application Manager</p>
                                    </div>
                                </div>
				<div class="form-group row">
                    		 <label for="full_name" class="col-md-4 text-md-right"> Username : </label>
                             <div class="col-md-6">
                                      <p class="form-control-static">appadmin@telemedics.tech</p>
                              </div>
                            </div>
							<div class="form-group row">
                    		 <label for="full_name" class="col-md-4 text-md-right">Password : </label>
                                    <div class="col-md-6">
                                      <p class="form-control-static">*****************</p>
                                    </div>
                                </div>
				
							<div class="form-group row">
                    		 <label for="full_name" class="col-md-4 text-md-right">Location : </label>
                                    <div class="col-md-6">
                                      <p class="form-control-static">Nigeria</p>
                                    </div>
                                </div>							
						    <div class="form-group row">
                    		     <label for="full_name" class="col-md-4 text-md-right">Created On : </label>
                                 <div class="col-md-6">
                                          <p class="form-control-static">2019-05-21 10:32:48</p>
                                  </div>
                                </div>
				
				          <div class="form-group row">
                    		     <label for="full_name" class="col-md-4 text-md-right">UserType : </label>
                                 <div class="col-md-6">
                                          <p class="form-control-static">Administrator</p>
                                  </div>
                                </div>
				        <div class="form-group row">
                    		            <label for="full_name" class="col-md-4 text-md-right">Access Level : </label>
                                        <div class="col-md-6">
                                                <p class="form-control-static">SuperAdmin</p>
                                        </div>
                                    </div>
			
				</div>
			</div>
		
		</div>
		
      
      <!-- /.row -->   
    </section>

            
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</asp:Content>
