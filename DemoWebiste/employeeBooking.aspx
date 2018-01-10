<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="employeeBooking.aspx.cs" Inherits="employeeBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container mt-5">
        <h1 class="display-4">Employee Booking Department</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="#eae5e5" BorderColor="White" BorderStyle="None" CssClass="table table-hover" Width="100%">
            <Columns>
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="apartmentNumber" HeaderText="apartmentNumber" SortExpression="apartmentNumber" />
                <asp:BoundField DataField="userEmail" HeaderText="userEmail" SortExpression="userEmail" />
                <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="timefrom" HeaderText="timefrom" SortExpression="timefrom" />
                <asp:BoundField DataField="timeto" HeaderText="timeto" SortExpression="timeto" />
                <asp:BoundField DataField="bookingdetail" HeaderText="bookingdetail" SortExpression="bookingdetail" />
            </Columns>
            <EditRowStyle BackColor="White" />
            <HeaderStyle CssClass="thead-dark" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DemoConnectionString %>" SelectCommand="SELECT * FROM [booking]"></asp:SqlDataSource>
    </div>
    <div class="container mt-5">
        <table class="table table-hover">
                     <thead class="thead-dark">
                        <tr>
                            <th scope="col">Usename</th>
                            <th scope="col">Apartment #</th>
                            <th scope="col">User Email</th>
                            <th scope="col">Category</th>
                            <th scope="col">Date</th>
                            <th scope="col">Time From</th>
                            <th scope="col">Time TO</th>
                            <th scope="col">Details</th>
                            <th scope="col">Status</th>
                            
                        </tr>
                    </thead>
                    <tbody>

        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                
                        <tr>
                            <td><%#Eval("username") %></td>
                            <td><%#Eval("username") %></td>
                            <td><%#Eval("username") %></td>
                            <td>Mark</td>
                            <td>Otto</td>
                            <td>@mdo</td>
                            <td>Mark</td>
                            <td>Otto</td>
                            <td>@mdo</td>
                        </tr>
                    
            </ItemTemplate>
        </asp:Repeater>
                        </tbody>
                </table>
    </div>


</asp:Content>

