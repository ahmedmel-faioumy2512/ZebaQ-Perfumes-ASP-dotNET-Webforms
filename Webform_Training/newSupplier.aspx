<%@ Page Title="مورد جديد" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="newSupplier.aspx.cs" Inherits="Webform_Training.newSupplier" %>
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
            <td class="centertext" colspan="3"><strong>مورد جديد</strong></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC0000" ValidationGroup="Save" />
            </td>
        </tr>
        <tr>
            <td>الكود</td>
            <td>
                <asp:TextBox ID="txtsuppID" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtsuppID" ErrorMessage="الكود مطلوب" ForeColor="#CC0000" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="كود المورد مستخدم من قبل" ControlToValidate="txtsuppID" ForeColor="#CC0000" OnServerValidate="CustomValidator1_ServerValidate" ValidationGroup="Save">*</asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td>الشركة</td>
            <td>
                <asp:TextBox ID="txtCompanyName" runat="server" ></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCompanyName" ErrorMessage="اسم الشركة مطلوب" ForeColor="#CC0000" ValidationGroup="Save">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>الاسم</td>
            <td>
                <asp:TextBox ID="txtContactName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtContactName" ErrorMessage="اسم المورد مطلوب" ForeColor="#CC0000" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="اسم المورد موجود من قبل" ControlToValidate="txtContactName" ForeColor="#CC0000" OnServerValidate="CustomValidator2_ServerValidate" ValidationGroup="Save">*</asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td>اللقب</td>
            <td>
                <asp:TextBox ID="txtContactTitle" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>العنوان</td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">المدينة</td>
            <td class="auto-style1">
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td>الاقليم</td>
            <td>
                <asp:TextBox ID="txtRegion" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>الرقم البريدي</td>
            <td>
                <asp:TextBox ID="txtPostalCod" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>الدولة</td>
            <td>
                <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Phone</td>
            <td>
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>الفاكس</td>
            <td>
                <asp:TextBox ID="txtFax" runat="server"></asp:TextBox>
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
