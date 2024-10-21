<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmCookies.aspx.cs" MasterPageFile="~/MyApp.Master" Title="Cookies" Inherits="MasterPageDemo.frmCookies" %>

<asp:Content ID="content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="mt-1 ms-1 mb-1 text-dark">
        <div class="row m-sm-1">
            <div class="col-sm-3">
                <asp:Label ID="lblWriteCookie" runat="server" Text="Write" CssClass="form-label" />
            </div>
            <div class="col-sm-5">
                <asp:TextBox ID="txtWriteCookie" runat="server" CssClass="form-control" />
            </div>
        </div>
        <div class="row m-sm-1">
            <div class="col-sm-3">
                <asp:Button ID="btnWriteCookie" Text="Write-Cookie" CssClass="btn btn-success" runat="server" OnClick="btnWriteCookie_Click" />
            </div>
            <div class="col-sm-5">
                <asp:Label ID="lblMessage" runat="server" CssClass="form-label" />
            </div>
        </div>
        <div class="row m-sm-1">
            <div class="col-sm-3">
                <asp:Button ID="btnRead" Text="Read" runat="server" OnClick="btnRead_Click" CssClass="btn btn-success" />
            </div>
            <div class="col-sm-5">
                <asp:TextBox ID="txtReadCookie" runat="server" CssClass="form-control disabled" Enabled="false" />
            </div>
        </div>
    </div>
    <hr />
    <asp:Panel runat="server" CssClass="m-2" GroupingText="Multi-Valued Cookies">
        <div class="row m-sm-1">
            <div class="col-sm-3">
                <asp:Label ID="lblName" runat="server" Text="Name" CssClass="form-label" />
            </div>
            <div class="col-sm-5">
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Name" />
            </div>
        </div>
        <div class="row m-sm-1">
            <div class="col-sm-3">
                <asp:Label ID="lblAge" runat="server" Text="Age" CssClass="form-label" />
            </div>
            <div class="col-sm-5">
                <asp:TextBox ID="txtAge" runat="server" CssClass="form-control" TextMode="Number" />
            </div>
        </div>
        <div class="row m-sm-1">
            <div class="col-sm-3">
                <asp:Button ID="btnWriteMultiValue" Text="Write-MultiValue" CssClass="btn btn-success" runat="server" OnClick="btnWriteMultiValue_Click" />
            </div>
            <div class="col-sm-3">
                <asp:Button ID="btnReadMultiValue" Text="Read-MultiValue" runat="server" OnClick="btnReadMultiValue_Click" CssClass="btn btn-success" />
            </div>
        </div>
    </asp:Panel>
</asp:Content>