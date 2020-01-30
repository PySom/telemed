<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="TelemedicsAdminWebApp.Dashboard" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

       <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="min-height:600px;">
   
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1> <span><em class="fa fa-university"></em></span>	Dashboard   </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-home"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">    
        <asp:UpdatePanel ID="UP_Today_Stats" runat="server" UpdateMode="Conditional">
          <ContentTemplate>
              <div class="loader"><asp:Image ID="imgLoader1" runat="server" ImageUrl="~/img/loading.gif" /></div>
		<div class="panel panel-container">
			<div class="row">
				<div class="col-xs-6 col-md-3 col-lg-3">
					<div class="panel panel-teal panel-widget border-right">
						<div class="row "><em class="fa fa-xl fa-users color-orange"></em>
							<div class="large"><asp:Label ID="lbl_Patients_Today_Count" runat="server" Text="0"></asp:Label> </div>
							<div class="text-muted">Patients</div>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-md-3 col-lg-3 ">
					<div class="panel panel-blue panel-widget border-right">
						<div class="row "><em class="fa fa-xl fa-users color-blue"></em>
							<div class="large"><asp:Label ID="lbl_Doctors_Today_Count" runat="server" Text="0"></asp:Label></div>
							<div class="text-muted">Doctors</div>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-md-3 col-lg-3 ">
					<div class="panel panel-orange panel-widget border-right">
						<div class="row "><em class="fa fa-xl fa-users color-teal"></em>
							<div class="large"><asp:Label ID="lbl_Herbals_Today_Count" runat="server" Text="0"></asp:Label></div>
							<div class="text-muted">Herbal Professionals</div>
						</div>
					</div>
				</div>
                <div class="col-xs-6 col-md-3 col-lg-3 ">
					<div class="panel panel-orange panel-widget border-right">
						<div class="row "><em class="fa fa-xl fa-users color-teal"></em>
							<div class="large"><asp:Label ID="lbl_Appoints_Today_Count" runat="server" Text="0"></asp:Label></div>
							<div class="text-muted">Appointments</div>
						</div>
					</div>
				</div>
			</div><!--/.row-->
		</div>
        <asp:Timer ID="todayStatsTimer" Interval="1" OnTick="todayStatsTimer_Tick" runat="server" />
              </ContentTemplate>    
		   </asp:UpdatePanel>
      <!-- /.row -->
    </section>

    <section class="content">
        <asp:UpdatePanel ID="UP_Summary_Stats" runat="server" UpdateMode="Conditional">            
          <ContentTemplate>
              <div class="loader"><asp:Image ID="imgLoader2" runat="server" ImageUrl="~/img/loading.gif" /></div>
        <div class="row">
		<div class="card">
			<div class="card-header">
				<h3 class="title">Registrations</h3>
				<!--<p class="category">New employees on 15th September, 2016</p>-->
			</div>
			<div class="col-lg-4 col-md-4">
			<div class="card-content table-responsive">
				<table class="table table-hover">
					<thead class="text-warning">
						<tr><th colspan="3">This Month's Summary</th>
												
					</tr></thead>
					<tbody>
						<tr>
							<td>PATIENTS</td>
							<td><asp:Label ID="lbl_Patients_Month_Count" runat="server" Text="0"></asp:Label></td>
													
						</tr>
						<tr>
							<td>DOCTORS</td>
							<td><asp:Label ID="lbl_Doctors_Month_Count" runat="server" Text="0"></asp:Label></td>
													
						</tr>
						<tr>
							<td>HERBAL PROFESSIONALS</td>
							<td><asp:Label ID="lbl_Herbals_Month_Count" runat="server" Text="0"></asp:Label></td>
													
						</tr>
                        <tr>
							<td>APPOINTMENTS</td>
							<td><asp:Label ID="lbl_Appoints_Month_Count" runat="server" Text="0"></asp:Label></td>
													
						</tr>
												
					</tbody>
				</table>
			</div>									</div>
			<div class="col-lg-4 col-md-4">
			<div class="card-content table-responsive">
				<table class="table table-hover">
					<thead class="text-warning">
						<tr><th colspan="3">This Week's Summary</th>
												
					</tr></thead>
					<tbody>
						<tr>
							<td>PATIENTS</td>
							<td><asp:Label ID="lbl_Patients_Week_Count" runat="server" Text="0"></asp:Label></td>													
						</tr>
						<tr>
							<td>DOCTORS</td>
							<td><asp:Label ID="lbl_Doctors_Week_Count" runat="server" Text="0"></asp:Label></td>
													
						</tr>
						<tr>
							<td>HERBAL PROFESSIONALS</td>
							<td><asp:Label ID="lbl_Herbals_Week_Count" runat="server" Text="0"></asp:Label></td>
													
						</tr>
                        <tr>
							<td>APPOINTMENTS</td>
							<td><asp:Label ID="lbl_Appoints_Week_Count" runat="server" Text="0"></asp:Label></td>
													
						</tr>
												
					</tbody>
				</table>
			</div>
			</div>
			<div class="col-lg-4 col-md-4">
			<div class="card-content table-responsive">
				<table class="table table-hover">
					<thead class="text-warning">
						<tr><th colspan="3">Today's Summary</th>
												
					</tr></thead>
					<tbody>
						<tr>
							<td>PATIENTS   </td>
							<td><asp:Label ID="lbl_Patients_Day_Count" runat="server" Text="0"></asp:Label></td>
													
						</tr>
						<tr>
							<td>DOCTORS</td>
							<td><asp:Label ID="lbl_Doctors_Day_Count" runat="server" Text="0"></asp:Label></td>
													
						</tr>
						<tr>
							<td>HERBAL PROFESSIONALS</td>
							<td><asp:Label ID="lbl_Herbals_Day_Count" runat="server" Text="0"></asp:Label></td>
                            
						</tr>
                        <tr>
							<td>APPOINTMENTS</td>
							<td><asp:Label ID="lbl_Appoints_Day_Count" runat="server" Text="0"></asp:Label></td>
													
						</tr>
												
					</tbody>
				</table>
			</div>
			</div>
        </div>
        </div>           
              <asp:Timer ID="summaryStatsTimer" Interval="1" OnTick="summaryStatsTimer_Tick" runat="server" />
            </ContentTemplate>    
	    </asp:UpdatePanel>
    </section>

    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</asp:Content>
