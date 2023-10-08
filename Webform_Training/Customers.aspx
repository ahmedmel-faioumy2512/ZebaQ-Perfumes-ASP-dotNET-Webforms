<%@ Page Title="العملاء" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="Webform_Training.Customers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <div class="row">
                <a href="newCustomer.aspx" class="btn btn-primary">جديد</a>
            </div>
            <asp:GridView ID="grd" runat="server" Class="table table-striped table-hover" OnRowDataBound="grd_RowDataBound" OnRowDeleting="grd_RowDeleting">
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="CustomerID" DataNavigateUrlFormatString="updateCustomer.aspx?id={0}" HeaderText="تعديل" Text="تعديل" />
                    <asp:ButtonField CommandName="Delete" HeaderText="حذف" ShowHeader="True" Text="حذف" />
                </Columns>
            </asp:GridView>
            
        </asp:View>
        <asp:View ID="View2" runat="server">
            <h3>هل تريد حذف العميل <asp:Label ID="lblName" runat="server" Text=""></asp:Label> ؟</h3>
            <p>
                <asp:Button ID="btnDelete" runat="server" Text="حذف" class="btn btn-success" OnClick="btnDelete_Click"/>
                <asp:Button ID="btnCancel" runat="server" Text="إلغاء" class="btn btn-danger" OnClick="btnCancel_Click"/>
            </p>
            <p>
                <asp:HiddenField ID="hf" runat="server" />
            </p>
        </asp:View>
    </asp:MultiView>
</asp:Content>
