<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmBootStrapDemo.aspx.cs" Inherits="MasterPageDemo.frmBootStrapDemo" MasterPageFile="~/MyApp.Master" Title="Bootstrap Details" %>

<asp:Content ID="content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="mt-1 ms-1 mb-1 text-light text-white">
        <div class="row m-sm-1">
            <div class="col-sm-2">
                <asp:Label ID="lblName" runat="server" Text="Name" CssClass="form-label" />
            </div>
            <div class="col-sm-6">
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" />
            </div>
        </div>
        <div class="row m-sm-1">
            <div class="col-sm-2">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="btnSubmit_Click" />
            </div>
            <div class="col-sm-8">
                <asp:Label ID="lblOutput" runat="server" CssClass="form-label p-1"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>