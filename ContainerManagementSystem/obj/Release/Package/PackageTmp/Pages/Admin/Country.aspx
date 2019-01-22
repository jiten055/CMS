<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Country.aspx.cs" Inherits="ContainerManagementSystem.Pages.Admin.Country" %>

<asp:Content ContentPlaceHolderID="title" runat="server">
    Country
</asp:Content>
<asp:Content ContentPlaceHolderID="container" runat="server">
    <div class="row">
        <div class="col-sm-12">
            <h1 class="text-center">Add Country</h1>
            <asp:Literal runat="server" ID="information"></asp:Literal>
            <div class="row">
                <div class="col-sm-4">
                    <div class="form-group">
                        <div class="row">
                            <div class="col-sm-6" style="padding-top: 8px">
                                <label for="title">Country</label>
                            </div>
                            <div class="col-sm-6">
                                <asp:TextBox ID="countryTxtbox" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="countryTxtbox" Text="Title Required" CssClass="text-danger" runat="server" ErrorMessage="Title Required"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="row">
                        <div class="col-sm-3" style="padding-top: 8px">
                            <label for="title">Continent</label>
                        </div>
                        <div class="col-sm-9">
                            <asp:DropDownList ID="ContinentList" runat="server" CssClass="form-control"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="ContinentList" Text="Title Required" CssClass="text-danger" runat="server" ErrorMessage="Title Required"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <asp:Button ID="AddCountry" runat="server" Text="Add Country" CssClass="btn btn-custom" OnClick="AddCountry_Click" />
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">

                    <asp:Repeater ID="rptTable" runat="server">
                        <HeaderTemplate>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Country</th>
                                        <th>Continent</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("country") %></td>
                                <td><%# Eval("continent") %></td>
                                <td><a href="Country.aspx?id=<%# Eval("continent") %>" class="btn btn-custom">Edit</a></td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </tbody>
                        </table>
                        </FooterTemplate>
                    </asp:Repeater>

                </div>
            </div>
        </div>
    </div>
</asp:Content>

