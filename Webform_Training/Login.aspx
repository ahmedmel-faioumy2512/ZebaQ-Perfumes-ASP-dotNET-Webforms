<%@ Page Title="تسجيل الدخول" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Webform_Training.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
      <div class="col-md-12">
         <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC0000" Font-Bold="True" />
      </div>
     </div>
    <div class="row">
    <div class="col-md-8">
        <div class="row txtrow">
            <div class="col-md-3">اسم المستخدم</div>
            <div class="col-md-9">
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="اسم المستخدم مطلوب" ForeColor="#CC0000" Font-Bold="True" ValidationGroup="OK">*</asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row txtrow">
            <div class="col-md-3">كلمة المرور</div>
            <div class="col-md-9">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="كلمة المرور مطلوبة" ForeColor="#CC0000" Font-Bold="True" ValidationGroup="OK">*</asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row txtrow">
            <div class="col-md-12">
                <asp:CheckBox ID="chbRmember" runat="server" Text="تذكرني"  />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#CC0000"></asp:Label>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-md-12">
                <asp:Button ID="btnLogin" runat="server" Text="تسجيل دخول" Class="btn btn-success" ValidationGroup="OK" OnClick="btnLogin_Click1" />
                <asp:Button ID="Button1" runat="server" Text="إلغاء" Class="btn btn-danger" OnClick="Button1_Click1" />
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <i class="bi bi-box-arrow-in-right font-weight-bold" style="font-size:200px; color:#907eb2"></i>
       <!-- <img src="images/login.png" class="img-fluid"/>-->
    </div>
</div>
</asp:Content>
