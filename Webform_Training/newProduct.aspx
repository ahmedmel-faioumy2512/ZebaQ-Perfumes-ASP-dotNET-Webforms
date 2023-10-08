<%@ Page Title="صنف جديد" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="newProduct.aspx.cs" Inherits="Webform_Training.newProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td class="centertext" colspan="3"><strong>صنف جديد</strong></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC0000" ValidationGroup="Save" />
            </td>
        </tr>
        <tr>
            <td>الكود</td>
            <td>
                <asp:TextBox ID="txtProdID" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtProdID" ErrorMessage="الكود مطلوب" ForeColor="#CC0000" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="كود الصنف مستخدم من قبل" ControlToValidate="txtProdID" ForeColor="#CC0000" OnServerValidate="CustomValidator1_ServerValidate" ValidationGroup="Save">*</asp:CustomValidator>
            </td>
        </tr>
        
        <tr>
            <td>الاسم</td>
            <td>
                <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtProductName" ErrorMessage="اسم الصنف مطلوب" ForeColor="#CC0000" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="اسم الصنف موجود من قبل" ControlToValidate="txtProductName" ForeColor="#CC0000" OnServerValidate="CustomValidator2_ServerValidate" ValidationGroup="Save">*</asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td>فئة الصنف</td>
            <td>
                <asp:DropDownList ID="ddCategory" runat="server"></asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>المورد</td>
            <td>
                <asp:DropDownList ID="ddSupplier" runat="server"></asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        
        <tr>
            <td>السعر</td>
            <td>
                <asp:TextBox ID="txtUnitPrice" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                
                <asp:Button ID="btnSave" runat="server" Text="حفظ" class="btn btn-primary" OnClick="btnSave_Click" ValidationGroup="Save"/>
                <asp:Button ID="btnBack" runat="server" Text="إلغاء" class="btn btn-danger" OnClick="btnBack_Click"/>
                
            </td>
        </tr>
    </table>
</asp:Content>
