<%@ Page Title="تعديل بيانات صنف" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="updateProduct.aspx.cs" Inherits="Webform_Training.updateProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td class="centertext" colspan="3"><strong>تعديل بيانات صنف</strong></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC0000" ValidationGroup="Save" />
            </td>
        </tr>
        <tr>
            <td>الكود</td>
            <td>
                <asp:TextBox ID="txtProdID" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtProdID" ErrorMessage="الكود مطلوب" ForeColor="#CC0000" ValidationGroup="Save">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>الاسم</td>
            <td>
                <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtProductName" ErrorMessage="اسم الصنف مطلوب" ForeColor="#CC0000" ValidationGroup="Save">*</asp:RequiredFieldValidator>
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
