<%@ Page Title="الاشتراك" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Webform_Training.SignUp" %>
<%@ Register src="ucSignUp.ascx" tagname="ucSignUp" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucSignUp ID="ucSignUp1" runat="server" />
</asp:Content>
