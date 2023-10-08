<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucSignUp.ascx.cs" Inherits="Webform_Training.ucSignUp" %>

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
            <div class="col-md-3">تأكيد كلمة المرور</div>
            <div class="col-md-9">
                <asp:TextBox ID="txtConfirme" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtConfirme" ErrorMessage="تأكيد كلمة المرور مطلوبة" ForeColor="#CC0000" Font-Bold="True" ValidationGroup="OK">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirme" ErrorMessage="كلمة المرور غير متطابقة" Font-Bold="True" ForeColor="#CC0000" ValidationGroup="OK">*</asp:CompareValidator>
            </div>
        </div>
        <div class="row txtrow">
            <div class="col-md-3">العنـوان</div>
            <div class="col-md-9">
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row txtrow">
            <div class="col-md-3">Phone</div>
            <div class="col-md-9">
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row txtrow">
            <div class="col-md-3">Email</div>
            <div class="col-md-9">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="صيغة الايميل غير صحيحة" Font-Bold="True" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="OK">*</asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="row mt-4">
            <div class="col-md-12">
                <asp:Button ID="btnSignUp" runat="server" Text="الاشتراك" Class="btn btn-success" ValidationGroup="OK" OnClick="btnSignUp_Click" />
                <asp:Button ID="Button1" runat="server" Text="إلغاء" Class="btn btn-danger" OnClick="Button1_Click" />
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <i class="bi bi-box-arrow-in-right font-weight-bold" style="font-size:200px; color:#907eb2"></i>
        <!--<img src="images/login.png" class="img-fluid"/>-->
    </div>
</div>