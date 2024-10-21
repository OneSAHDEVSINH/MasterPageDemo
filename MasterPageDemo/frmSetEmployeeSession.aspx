<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmSetEmployeeSession.aspx.cs" Inherits="MasterPageDemo.frmSetEmployeeSession" Title="Set Employee Session" MasterPageFile="~/MyApp.Master"%>

<asp:Content  runat="server" ContentPlaceHolderID="ContentPlaceHolder1" >
    
    <div class="mt-1 ms-1 mb-1 text-light text-white">
        <div class="row m-sm-1">
            <div class="col-sm-2">
                <asp:Label ID="lblEmpId" runat="server" Text="ID" CssClass="form-label" />
            </div>
            <div class="col-sm-6">
                <asp:TextBox ID="txtEmpId" runat="server" CssClass="form-control" />

            </div>
        </div>
    </div>
    <div class="mt-1 ms-1 mb-1 text-light text-white">
        <div class="row m-sm-1">
            <div class="col-sm-2">
                <asp:Label ID="lblName" runat="server" Text="Name" CssClass="form-label" />
            </div>
            <div class="col-sm-6">
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" />
            </div>
        </div>
    </div>
    <div class="mt-1 ms-1 mb-1 text-light text-white">
        <div class="row m-sm-1">
            <div class="col-sm-2">
                <asp:Label ID="lblEmail" runat="server" Text="Email" CssClass="form-label" />
            </div>
            <div class="col-sm-6">
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" />
            </div>
        </div>
    </div>
    <div class="mt-1 ms-1 mb-1 text-light text-white">
    <div class="row m-sm-1">
        <div class="col-sm-2">
            <asp:Label ID="lblsalary" runat="server" Text="Salary" CssClass="form-label" />
        </div>
        <div class="col-sm-6">
            <asp:TextBox ID="txtSalary" runat="server" CssClass="form-control" />

        </div>
    </div>
</div>
    <div class="row mt-2 ms-2">
        <div class="col col-sm-2 p-1">
            <asp:Button ID="btnSetSession" runat="server" Text="Set-Session"
                CssClass="btn btn-outline-light btn-success" OnClick="btnSetSession_Click1" />
        </div>
        <div class="col col-sm-2 p-1">
            <asp:Button ID="btnGetSession" runat="server" Text="Get Session"
        CssClass="btn btn-outline-light btn-success" OnClick="btnGetSession_Click" />
        </div>
    </div>
</asp:Content>