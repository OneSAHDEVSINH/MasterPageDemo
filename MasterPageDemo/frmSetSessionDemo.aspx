<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmSetSessionDemo.aspx.cs" Inherits="MasterPageDemo.frmSetSessionDemo" Title="Set Session" MasterPageFile="~/MyApp.Master"%>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>
        <div class="row mt-2 ms-2">
            <div class="col-sm-2 p-1">
                <asp:Label ID="lblName" runat="server" Text="Name" AssociatedControlID="txtName" CssClass="form-label" />
            </div>
            <div class="col-sm-5">
                <asp:TextBox ID="txtName" runat="server" CssClass="form-label" />
            </div>
            <div class="col-sm-6">
                <asp:Label ID="lblInfo" runat="server" CssClass="form-label" />
            </div>
        </div>
        <div class="row mt-2 ms-2">
            <div class="col-sm-2 p-1">
                <asp:Button ID="btnSetSession" runat="server" Text="Set Session" CssClass="btn btn-outline-light btn-success" OnClick="btnSetSession_Click" />
            </div>
            <div class="col-sm-3 p-1">
                <asp:Button ID="btnGetSession" runat="server" Text="Get Session" CssClass="btn btn-outline-light btn-success" OnClick="btnGetSession_Click" />
            </div>
        </div>
    </div>
</asp:Content>