<%@ Page Title="الرئيسية" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Webform_Training.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
         

			<div class="display-4 centertext mytitle mb-4 font-weight-bold">الزيـــبق للعطــــور</div>
			
			
			<div class="row justify-content-center align-items-center">
				<div class="col-md-6">
                    <!--<img src="images/home-1.jpg" />-->
					<h3 style="line-height:1.5" class="text-justify text-black-50"> الزيبق للعطور هو براند عطور راقي يقدم أجود وأندر أنواع العطور بالتركيبات الطبيعية والاعشاب المشتقة طبيعيا من الطبيعة دون التدخل الصناعي .</h3>
				</div>
                <div class="col-md-2"></div>
				<div class="col-md-4">
					<img src="images/5.png" class="img-fluid rounded-lg"/>				
				</div>
			</div>
        </div>
       <div class="bg-dark my-5 py-3">
           <div class="container">
               <h2 class="m-3 text-white text-center">فريقنا</h2>
               <div class="row row-cols-1 row-cols-md-3">
                   <div class="col mb-4">
    <div class="card h-100 text-white bg-info">
      <!--<img src="..." class="card-img-top" alt="" />-->
      <div class="card-header">ماجد المهدي</div>
      <div class="card-body">
        <h5 class="card-title mb-4">CEO & Founder</h5>
        <a href="#" target="_blank"><i class="bi bi-facebook text-light mr-2"></i></a>
	    <a href="#" target="_blank"><i class="bi bi-twitter text-light mr-2"></i></a>
	    <a href="#" target="_blank"><i class="bi bi-whatsapp text-light mr-2"></i></a>
        <a href="#" target="_blank"><i class="bi bi-linkedin text-light mr-2 mb-5"></i></a>
      </div>
    </div>
  </div>
  <div class="col mb-4">
    <div class="card h-100 text-white bg-info">
      <!--<img src="..." class="card-img-top" alt="" />-->
        <div class="card-header">هدى محمد</div>      
        <div class="card-body">
        <h5 class="card-title mb-4">Marketing Manager</h5>
        <a href="#" target="_blank"><i class="bi bi-facebook text-light mr-2"></i></a>
	    <a href="#" target="_blank"><i class="bi bi-twitter text-light mr-2"></i></a>
	    <a href="#" target="_blank"><i class="bi bi-whatsapp text-light mr-2"></i></a>
        <a href="#" target="_blank"><i class="bi bi-linkedin text-light mr-2 mb-5"></i></a>
      </div>
    </div>
  </div>
  <div class="col mb-4">
    <div class="card h-100 text-white bg-info">
      <!--<img src="..." class="card-img-top" alt="" />-->
      <div class="card-header">محمد المهدي</div>
      <div class="card-body">
        <h5 class="card-title mb-4">Production Manager</h5>
        <a href="#" target="_blank"><i class="bi bi-facebook text-light mr-2"></i></a>
	    <a href="#" target="_blank"><i class="bi bi-twitter text-light mr-2"></i></a>
	    <a href="#" target="_blank"><i class="bi bi-whatsapp text-light mr-2"></i></a>
        <a href="#" target="_blank"><i class="bi bi-linkedin text-light mr-2 mb-5"></i></a>
      </div>
    </div>
  </div>
  <div class="col mb-4">
    <div class="card h-100 text-white bg-info">
      <!--<img src="..." class="card-img-top" alt="" />-->
      <div class="card-header">شهد المهدي</div>
      <div class="card-body">
        <h5 class="card-title mb-4">HR Manager</h5>
        <a href="#" target="_blank"><i class="bi bi-facebook text-light mr-2"></i></a>
	    <a href="#" target="_blank"><i class="bi bi-twitter text-light mr-2"></i></a>
	    <a href="#" target="_blank"><i class="bi bi-whatsapp text-light mr-2"></i></a>
        <a href="#" target="_blank"><i class="bi bi-linkedin text-light mr-2 mb-5"></i></a>
      </div>
    </div>
  </div>
  <div class="col mb-4">
    <div class="card h-100 text-white bg-info">
      <!--<img src="..." class="card-img-top" alt="" />-->
      <div class="card-header">صلاح بكري</div>
      <div class="card-body">
        <h5 class="card-title mb-4">Perfume Expert</h5>
        <a href="#" target="_blank"><i class="bi bi-facebook text-light mr-2"></i></a>
	    <a href="#" target="_blank"><i class="bi bi-twitter text-light mr-2"></i></a>
	    <a href="#" target="_blank"><i class="bi bi-whatsapp text-light mr-2"></i></a>
        <a href="#" target="_blank"><i class="bi bi-linkedin text-light mr-2 mb-5"></i></a>
      </div>
    </div>
  </div>
  <div class="col mb-4">
    <div class="card h-100 text-white bg-info">
      <!--<img src="..." class="card-img-top" alt="" />-->
      <div class="card-header">ندى مهند</div>
      <div class="card-body">
        <h5 class="card-title mb-4">Perfume Expert</h5>
        <a href="#" target="_blank"><i class="bi bi-facebook text-light mr-2"></i></a>
	    <a href="#" target="_blank"><i class="bi bi-twitter text-light mr-2"></i></a>
	    <a href="#" target="_blank"><i class="bi bi-whatsapp text-light mr-2"></i></a>
        <a href="#" target="_blank"><i class="bi bi-linkedin text-light mr-2 mb-5"></i></a>
      </div>
    </div>
  </div>
               </div>
            
            
        </div>
       </div>
        <div class="container py-4 conForm">
            <h2 class="text-center mb-5">تواصلوا معنا</h2>
        
             <div class="form-group">
                   <label for="exampleInputEmail1" class="mb-2">الاسم كاملاً</label>
                   <input type="text" class="form-control mb-3" />
                   <label for="exampleInputEmail1" class="mb-2">اسم الشركة</label>
                   <input type="text" class="form-control mb-3" />
                   <label for="exampleInputEmail1" class="mb-2">Email address</label>
                   <input type="email" class="form-control mb-3" />
                   <label for="exampleInputEmail1" class="mb-2">رسالتك</label>
                   <textarea rows="5" class="form-control mb-3"></textarea>
                   <button type="submit" class="btn btn-primary w-25">Send</button>
               </div>
            </div>

		
</asp:Content>
