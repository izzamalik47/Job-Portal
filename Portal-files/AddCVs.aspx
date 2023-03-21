<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="AddCVs.aspx.cs" Inherits="JOBHANDLER.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container card col-lg-5 col-6 alert-warning mt-4 mb-4">
            <div class="justify-content-center">
                <div class=" col-lg-12 ">
                   
                        <div class=" p-1 m-3">
                            
                                <div class=" w-50">
                                    <h3 class="mb-4">JOBHANDLER</h3>
                                </div>
                             
                        
                            <form  class=" form-group  mb-1" runat="server">
                               <div class="form-group mb-1">
                                 <asp:Label class="label" CssClass="text-black-50" runat="server">OBJECTIVE</asp:Label>
                                
                                
                                    <asp:TextBox class="form-control "  placeholder="OBJECTIVE" ID="txtname" runat="server"></asp:TextBox>
                                 <asp:RequiredFieldValidator ControlToValidate="txtname" runat="server" Text="Please Enter.." ForeColor="Red"></asp:RequiredFieldValidator> 
                               </div>
                                 <div class="form-group mb-1">
                                 <asp:Label class="label" CssClass="text-black-50" runat="server">WORK EXPERIENCE</asp:Label>
                                 
                                    <asp:TextBox class="form-control " placeholder="EXPERIENCE" ID="txtexprience" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="txtexprience" runat="server" Text="Please Enter.." ForeColor="Red"></asp:RequiredFieldValidator>
                                      </div>                    
                                    <asp:Label class="label" CssClass="text-black-50"  runat="server">EDUCATION</asp:Label>
                                
                                    <asp:TextBox class="form-control " placeholder="FSC marks" ID="txtedu" runat="server"></asp:TextBox>
                                <asp:TextBox class="form-control " placeholder="Matric marks" ID="TextBox6" runat="server"></asp:TextBox> 
                                    

                                    <asp:RequiredFieldValidator ControlToValidate="txtedu" runat="server" Text="Please Enter.." ForeColor="Red"></asp:RequiredFieldValidator>

                                <div class="form-group mb-1">
                                    <asp:Label class="label" CssClass="text-black-50"  runat="server">SKILLS</asp:Label>
                                    <asp:TextBox class="form-control"   placeholder="SKILLS"  runat="server" ID="txtskill"></asp:TextBox>
                                   
                                 
                                   <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ControlToValidate="txtskill"  ForeColor="Red"  Text="Please Enter.."></asp:RequiredFieldValidator>

                                </div>
                                 <div class="form-group mb-1">
                                    <asp:Label class="label" CssClass="text-black-50"  runat="server">ACHEIVEMENT</asp:Label>
                                    <asp:TextBox class="form-control"   placeholder="Acheivement"  runat="server" ID="txtacheivement"></asp:TextBox>
                                   
                                 
                                   <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ControlToValidate="txtacheivement"  ForeColor="Red"  Text="Please Enter =.."></asp:RequiredFieldValidator>

                                </div>
                                <div class="form-group mb-1">
                                    <asp:Label class="label" CssClass="text-black-50"  runat="server">PROJECTS</asp:Label>
                                    <asp:TextBox class="form-control"   placeholder="APPS,WEBSITES"  runat="server" ID="txtpro"></asp:TextBox>
                                   
                                 
                                   <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ControlToValidate="txtpro"  ForeColor="Red"  Text="Please Enter.."></asp:RequiredFieldValidator>

                                </div>
                                <div class="form-group mb-1">
                                    <asp:Label class="label" CssClass="text-black-50"  runat="server">INTREST</asp:Label>
                                    <asp:TextBox class="form-control"   placeholder="interests"  runat="server" ID="txtinterest"></asp:TextBox>
                                   
                                 
                                   <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ControlToValidate="txtinterest"  ForeColor="Red"  Text="Please Enter.."></asp:RequiredFieldValidator>

                                </div>
                               
                              
                                 <div class="form-group mb-1">
                                    <asp:Label class="label" CssClass="text-black-50"  runat="server">IMAGE</asp:Label>
                                    <asp:FileUpload ID="proimg" runat="server" />
                                   
                                 
                                   <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="proimg"  ForeColor="Red"  Text="Please Select Image.."></asp:RequiredFieldValidator>
                                     
                                </div>
                               <div class="form-group mb-3">
                                     <asp:Label class=" col-form-label" CssClass="text-black-50"  runat="server">HOBBIES</asp:Label>
                                 <asp:TextBox class="form-control"   placeholder="..."  runat="server" ID="txthobbies"></asp:TextBox>
                                   
                                 
                                   <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8" ControlToValidate="txthobbies"  ForeColor="Red"  Text="Please Enter .."></asp:RequiredFieldValidator>
                                    </div>
                             
                                <div class="form-group mb-3">
                                     <asp:Label class=" col-form-label" CssClass="text-black-50"  runat="server">PERSONAL INFO</asp:Label>
                                 <asp:TextBox class="form-control"   placeholder="DOB" TextMode="Date"  runat="server" ID="txtinfo"></asp:TextBox>
                                     <asp:TextBox class="form-control"   placeholder="Gender"   runat="server" ID="TextBox2"></asp:TextBox>
                                     <asp:TextBox class="form-control"   placeholder="phone#"   runat="server" ID="TextBox3"></asp:TextBox>
                                     <asp:TextBox class="form-control"   placeholder="email"  runat="server" ID="TextBox4"></asp:TextBox>
                                     <asp:TextBox class="form-control"   placeholder="address"   runat="server" ID="TextBox5"></asp:TextBox>
                                   
                                 
                                   <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator9" ControlToValidate="txtinfo"  ForeColor="Red"  Text="Please Enter .."></asp:RequiredFieldValidator>
                                    
                              </div>
                                
                               
                                <div class="form-group">
                                    <asp:Button runat="server" type="submit" class="form-control btn btn-dark rounded px-1" ID="BtnAdd" OnClick="BtnAdd_Click"     Text="Give In"></asp:Button>
                                </div>
                                <div>
                                    <label id="lbl" runat="server"></label>
                                </div>


                               

                            </form>




                        </div>

                       
                    
               
            </div>
            </div>
        </div>
</asp:Content>
