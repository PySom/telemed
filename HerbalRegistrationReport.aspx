<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HerbalRegistrationReport.aspx.cs" Inherits="TelemedicsAdminWebApp.HerbalRegistrationReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
 <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="min-height:600px;">
   
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1> <span><em class="fa fa-university"></em></span>	Herbal Professionals Registration Report   </h1>
      <ol class="breadcrumb">
        <li><a href="Dashboard.aspx"><i class="fa fa-home"></i> Home</a></li>
        <li class="active">Herbal Professionals Registration Report</li>
      </ol>
    </section>

    <asp:UpdatePanel ID="Analytic_Stats" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <section class="content">
	            <div class="search_box">
		 	        <div class="form-inline text-center">
			            <div class="form-group">
			                <label for="exampleInputEmail2">Select Duration: </label>
                                <asp:DropDownList ID="cbDaySelect" runat="server" CssClass="form-control">
                                    <asp:ListItem Value="Today" Selected="True">Today</asp:ListItem>
                                    <asp:ListItem Value="Two days">Two days</asp:ListItem>
                                    <asp:ListItem Value="Three days">Three days</asp:ListItem>
                                    <asp:ListItem Value="One week">One week</asp:ListItem>
                                    <asp:ListItem Value="One Month">One Month</asp:ListItem>                                
                                </asp:DropDownList>
			            </div>
                         &nbsp;&nbsp;
                         <div class="form-group">
                             <asp:Button ID="btnDaySearch" Enabled="true" runat="server" Text="Search" OnClick="btnDaySearch_Click" /></div>
		            </div>
			        <div class="row summary_search">			   
				        <div class="text-right"> 
				        <asp:LinkButton CssClass="btn btn-default btn-xs" ID="btnExcelDownload" runat="server" OnClick="btnExcelDownload_Click">
                            <span><i class="fa fa-file-excel-o"></i></span>  Export to Excel</asp:LinkButton>&nbsp;&nbsp;
				        <asp:LinkButton CssClass="btn btn-default btn-xs" ID="btnPdfDownload" runat="server" OnClick="btnPdfDownload_Click">
                            <span><i class="fa fa-file-pdf-o"></i></span>  Export to PDF</asp:LinkButton>				   
				        </div>
			        </div>	   
		            
                  </div>              
	
            </section>

            <!-- Main content -->
            <section class="content">    		       
                <div class="loader"><asp:Image ID="imgLoader" runat="server" ImageUrl="~/img/loading.gif" /></div> 
                <div class="panel panel-container">
                    <div class="table-responsive">                       
			            <asp:GridView ID="gvRegistrationSummary" width="100%"  runat="server" AutoGenerateColumns="False" 
                            DataKeyNames="ProfId" AllowSorting="True" PageSize="20" AllowPaging="False" 
                            HeaderStyle-Font-Bold="true" CssClass=" table cus_table">
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />  
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                            <asp:BoundField DataField="Country" HeaderText="Country"  SortExpression="Country" />                            
                            <asp:BoundField DataField="MobileNo" HeaderText="Mobile" SortExpression="MobileNo" />
                            <asp:BoundField DataField="EmailId" HeaderText="Email" SortExpression="EmailId" /> 
                            <asp:BoundField DataField="AssociationNo" HeaderText="Asc No" SortExpression="AssociationNo" />
                            <asp:BoundField DataField="RegisterDate" HeaderText="RegisterDate" SortExpression="RegisterDate" />
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
                <Triggers>
                    <asp:PostBackTrigger ControlID="btnExcelDownload" />
                    <asp:PostBackTrigger ControlID="btnPdfDownload" />
                </Triggers>   
	        </asp:UpdatePanel>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</asp:Content>
