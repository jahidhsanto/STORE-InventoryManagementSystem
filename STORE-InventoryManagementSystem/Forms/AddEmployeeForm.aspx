<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddEmployeeForm.aspx.cs" Inherits="STORE_InventoryManagementSystem.Forms.AddEmployeeForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%--d-flex justify-content-center align-items-center vh-100--%>
    <div class="d-flex justify-content-center align-items-center vh-100">
        <!--begin::Input Group-->
        <div class="card card-success card-outline mb-4">
            <!--begin::Header-->
            <div class="card-header">
                <div class="card-title">Add New Employee</div>
            </div>
            <!--end::Header-->
            <!--begin::Body-->
            <div class="card-body">
                <div class="input-group mb-3">
                    <span class="input-group-text" id="basic-addon1">@</span>
                    <asp:TextBox ID="txtEmployeeID" CssClass="form-control" placeholder="Employee ID" runat="server"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmployeeID"
                        ErrorMessage="ID is required." CssClass="text-danger" Display="Dynamic" />
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text" id="basic-addon2">Name</span>
                    <asp:TextBox ID="txtEmployeeName" CssClass="form-control" placeholder="Employee Name" runat="server"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmployeeName"
                        ErrorMessage="Name is required." CssClass="text-danger" Display="Dynamic" />
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text" id="basic-addon3">Department</span>

                    <asp:DropDownList ID="ddlDepartment" CssClass="form-control" runat="server" AutoPostBack="true"
                        OnSelectedIndexChanged="ddlProduct_SelectedIndexChanged">
                        <asp:ListItem Text="Select Department" Value="" />
                        <asp:ListItem Text="NI(Sales)" Value="NI(Sales)" />
                        <asp:ListItem Text="NI" Value="NI" />
                        <asp:ListItem Text="EI" Value="EI" />
                        <asp:ListItem Text="Procurement" Value="Procurement" />
                        <asp:ListItem Text="Store" Value="Store" />
                        <asp:ListItem Text="Accoutns & Finance" Value="Accounts & Finance" />
                        <asp:ListItem Text="Planning & Strategy" Value="P&S" />
                        <asp:ListItem Text="Admin" Value="Admin" />
                        <asp:ListItem Text="HR&D" Value="HR&D" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlDepartment"
                        ErrorMessage="Please select a department." CssClass="text-danger" InitialValue="" Display="Dynamic" />
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text" id="basic-addon4">Zone</span>

                    <asp:DropDownList ID="ddlZone" CssClass="form-control" runat="server" AutoPostBack="true"
                        OnSelectedIndexChanged="ddlProduct_SelectedIndexChanged">
                        <asp:ListItem Text="Select Zone" Value="" />
                        <asp:ListItem Text="Head Office" Value="Head Office" />
                        <asp:ListItem Text="Motijheel" Value="Motijheel" />
                        <asp:ListItem Text="Mohakhali" Value="Mohakhali" />
                        <asp:ListItem Text="Mohammadpur" Value="Mohammadpur" />
                        <asp:ListItem Text="Uttara" Value="Uttara" />
                        <asp:ListItem Text="Rajshahi" Value="Rajshahi" />
                        <asp:ListItem Text="Chandra" Value="Chandra" />
                        <asp:ListItem Text="Chittagong" Value="Chittagong" />
                        <asp:ListItem Text="Gazipur" Value="Gazipur" />
                        <asp:ListItem Text="Nobinagar" Value="Nobinagar" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlZone"
                        ErrorMessage="Please select a department." CssClass="text-danger" InitialValue="" Display="Dynamic" />
                </div>
                <div class="mb-3">
                    <label for="basic-url" class="form-label">Contact number</label>
                    <div class="input-group">
                        <span class="input-group-text">+880</span>
                        <asp:TextBox ID="txtContactNumber" CssClass="form-control" runat="server"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtContactNumber"
                            ErrorMessage="Name is required." CssClass="text-danger" Display="Dynamic" />
                    </div>
                </div>
                 <div class="mb-3">
                     <label for="basic-url" class="form-label">Email address</label>
                     <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Email" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEmail"
                         ErrorMessage="Name is required." CssClass="text-danger" Display="Dynamic" />
                 </div>
            </div>
            <!--end::Body-->
            <!--begin::Footer-->
            <div class="card-footer">
                <asp:Button ID="btnSubmit" CssClass="btn btn-success" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            </div>
            <!--end::Footer-->
        </div>
        <!--end::Input Group-->
    </div>
</asp:Content>