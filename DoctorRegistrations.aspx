<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="DoctorRegistrations.aspx.cs" Inherits="TelemedicsAdminWebApp.DoctorRegistrations" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="min-height:600px;">
   
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1> <span><em class="fa fa-university"></em></span>	Approve Doctor Registrations   </h1>
      <ol class="breadcrumb">
        <li><a href="Dashboard.aspx"><i class="fa fa-home"></i> Home</a></li>
        <li class="active">Doctor Registrations</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">    
		<asp:UpdatePanel ID="UP_Today_Stats" runat="server" UpdateMode="Conditional">
          <ContentTemplate>
                <div class="panel panel-container">

                    <div class="table-responsive">
                      <div><asp:Image ID="imgLoader" runat="server" ImageUrl="~/img/loading.gif" /></div>  
			          <asp:GridView ID="gvRegistrationSummary" width="100%"  runat="server" AutoGenerateColumns="False" 
                            DataKeyNames="DoctorId" AllowSorting="True" AllowPaging="False" OnRowDataBound="gvRegistrationSummary_RowDataBound"
                            HeaderStyle-Font-Bold="true" CssClass=" table cus_table">
                        <Columns>                   
                            <asp:BoundField DataField="DoctorId" HeaderText="Reg Id" SortExpression="DoctorId" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />  
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                            <asp:BoundField DataField="Country" HeaderText="Country"  SortExpression="Country" />
                            <asp:BoundField DataField="Experience" HeaderText="Exp" SortExpression="Experience" />
                            <asp:BoundField DataField="Fecility" HeaderText="Fecility" SortExpression="Fecility" />
                            <asp:BoundField DataField="Speciality" HeaderText="Speciality" SortExpression="Speciality" />
                            <asp:BoundField DataField="MCDNNo" HeaderText="MCDNNo" SortExpression="MCDNNo" />
                            <asp:BoundField DataField="MobileNo" HeaderText="Mobile" SortExpression="MobileNo" />
                            <asp:BoundField DataField="EmailId" HeaderText="Email" SortExpression="EmailId" />
                            <asp:BoundField DataField="FilePath1" HeaderText="Documents" SortExpression="FilePath1" />                            
                            <asp:TemplateField HeaderText="">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkApprove" runat="server" Text="Approve" OnClick="lnkApprove_Click" CommandArgument='<%# Eval("DoctorId") %>'></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>                   
                          <EmptyDataTemplate>
                              No Registrations waiting for approval.
                          </EmptyDataTemplate>
                        </asp:GridView>
                				
		            </div>

                </div>
              <asp:Timer ID="regStatsTimer" Interval="1" OnTick="regStatsTimer_Tick" runat="server" />
            </ContentTemplate>    
	    </asp:UpdatePanel>
		
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</asp:Content>
