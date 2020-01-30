<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="SearchAppointments.aspx.cs" Inherits="TelemedicsAdminWebApp.SearchAppointments" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="min-height:600px;">
   
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1> <span><em class="fa fa-university"></em></span>	Search Appointments   </h1>
      <ol class="breadcrumb">
        <li><a href="Dashboard.aspx"><i class="fa fa-home"></i> Home</a></li>
        <li class="active">Search Appointments</li>
      </ol>
    </section>

    <asp:UpdatePanel ID="Analytic_Stats" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <section class="content">
	            <div class="search_box">
		 	        <div class="form-inline text-center">
                         <div class="col-sm-3">
			            <div class="form-group">
			                <label for="cbDaySelect">Select Duration: </label>
                                <asp:DropDownList ID="cbDaySelect" runat="server" CssClass="form-control">
                                    <asp:ListItem Value="Today" Selected="True">Today</asp:ListItem>
                                    <asp:ListItem Value="Two days">Two days</asp:ListItem>
                                    <asp:ListItem Value="Three days">Three days</asp:ListItem>
                                    <asp:ListItem Value="One week">One week</asp:ListItem>
                                    <asp:ListItem Value="One Month">One Month</asp:ListItem>                                
                                </asp:DropDownList>
			            </div>                         
                        </div>
                         <div class="col-sm-3">
                         <div class="form-group">
					        <label for="cbStatusSelect">Select Status: </label>
                            <asp:DropDownList ID="cbStatusSelect" runat="server" CssClass="form-control">
                                <asp:ListItem Value="BOOKED" Selected="True">BOOKED</asp:ListItem>
                                <asp:ListItem Value="COMPLETED">COMPLETED</asp:ListItem>
                                <asp:ListItem Value="PENDING">PENDING</asp:ListItem>
                                <asp:ListItem Value="REJECTED">REJECTED</asp:ListItem>
                                <asp:ListItem Value="WAITING">WAITING</asp:ListItem>                                
                            </asp:DropDownList>
				        </div>
                        </div>
                         <div class="col-sm-3">
                         <div class="form-group">
                             <asp:Button ID="btnDaySearch" Enabled="true" runat="server" Text="Search Appointments" OnClick="btnDaySearch_Click" /></div>
                         </div>
		            </div>

                  </div>              
	
            </section>

            <!-- Main content -->
            <section class="content">    		       
                <div class="loader"><asp:Image ID="imgLoader" runat="server" ImageUrl="~/img/loading.gif" /></div> 
                <div class="panel panel-container">
                    <div class="table-responsive">                       
			            <asp:GridView ID="gvAppointmentSummary" width="100%"  runat="server" AutoGenerateColumns="False" 
                            DataKeyNames="AppointId" AllowSorting="True" PageSize="20" AllowPaging="False" 
                            HeaderStyle-Font-Bold="true" CssClass=" table cus_table">
                        <Columns>
                            <asp:BoundField DataField="PatientName" HeaderText="Patient" SortExpression="PatientName" />
                            <asp:BoundField DataField="PatientLocation" HeaderText="Patient Location" SortExpression="PatientLocation" />
                            <asp:BoundField DataField="DoctorName" HeaderText="Doctor" SortExpression="DoctorName" />  
                            <asp:BoundField DataField="DoctorLocation" HeaderText="DoctorLocation" SortExpression="DoctorLocation" />
                            <asp:BoundField DataField="Speciality" HeaderText="Speciality" SortExpression="Speciality" />
                            <asp:BoundField DataField="ScheduleDate" HeaderText="Schedule Date"  SortExpression="ScheduleDate" />
                            <asp:BoundField DataField="ScheduleStatus" HeaderText="Schedule Status" SortExpression="ScheduleStatus" />
                            <asp:BoundField DataField="RequestDate" HeaderText="Request Date" SortExpression="RequestDate" />                          
                        </Columns>                   
                            <EmptyDataTemplate>
                                No Registrations available.
                            </EmptyDataTemplate>
                        </asp:GridView>
                				
		            </div>

                    </div>
                    <asp:Timer ID="regStatsTimer" Interval="1" OnTick="regStatsTimer_Tick" runat="server" />                
		
              <!-- /.row -->
            </section>
            </ContentTemplate> 
	        </asp:UpdatePanel>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</asp:Content>
