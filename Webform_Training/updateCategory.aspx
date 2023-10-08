<%@ Page Title="تعديل بيانات فئة" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="updateCategory.aspx.cs" Inherits="Webform_Training.updateCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td class="centertext" colspan="3"><strong>تعديل بيانات فئة</strong></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC0000" ValidationGroup="Save" />
            </td>
        </tr>
        <tr>
            <td>الكود</td>
            <td>
                <asp:TextBox ID="txtCatID" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCatID" ErrorMessage="الكود مطلوب" ForeColor="#CC0000" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                
            </td>
        </tr>
        
        <tr>
            <td>اسم الفئة</td>
            <td>
                <asp:TextBox ID="txtCategoryName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCategoryName" ErrorMessage="اسم الفئة مطلوب" ForeColor="#CC0000" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                
            </td>
        </tr>
        <tr>
            <td>الوصف</td>
            <td>
                <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
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
