<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="userBooking.aspx.cs" Inherits="userBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container ">

        <div class="container form-container mt-5" id="needs-validation" novalidate>
            <div class="form-group">
                <h2>Welcome to Booking Department</h2>
            </div>
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="validationCustom01">What do you wish to Book?</label>
                    <br />
                    <asp:DropDownList ID="CategoryList" CssClass="form-control" runat="server" required>
                        <asp:ListItem>Parking</asp:ListItem>
                        <asp:ListItem>Party Hall</asp:ListItem>
                        <asp:ListItem>Library</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 mb-3">
                    <label for="validationCustom03">Date</label><br />
                    <input id="date" type="date" value="2018-01-04" min="2018-01-04" runat="server" class="form-control" required />
                    <%--<asp:TextBox ID="date" CssClass="form-control"  runat="server" required></asp:TextBox>--%>
                    <div class="invalid-feedback">
                        Please provide a valid date.
                    </div>
                </div>
                <div class="col-md-3 mb-3">
                    <label for="validationCustom03">(Time) From</label>
                    <input id="timeFrom" type="time" value="" runat="server" class="form-control" required />
                    <%--<asp:TextBox ID="timeFrom"  CssClass="form-control" runat="server" required></asp:TextBox>--%>
                    <div class="invalid-feedback">
                        Please provide a valid time.
                    </div>
                </div>
                <div class="col-md-3 mb-3">
                    <label for="validationCustom03">(Time) To</label>
                    <input id="timeTo" type="time" value="" runat="server" class="form-control" required />
                    <%--<asp:TextBox ID="timeTo"  CssClass="form-control" runat="server" required></asp:TextBox>--%>
                    <div class="invalid-feedback">
                        Please provide a valid time.
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="validationCustom03">Please fill all other detail </label>
                    <textarea class="form-control" id="bookingDetail" runat="server"></textarea>

                </div>
            </div>
            <div class="d-none">

                <asp:Label ID="lblUsername" runat="server" Text=""></asp:Label>
                <asp:Label ID="lblAddress" runat="server" Text=""></asp:Label>
                <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
            </div>

            <asp:Button ID="btnsubmit" runat="server" Text="Book Now" CssClass="btn btn-primary" OnClick="btnsubmit_Click" />
        </div>
        <div class="container mt-5 mb-5">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="#EAE5E5" BorderColor="White" BorderStyle="None" CssClass="table table-hover" Width="100%" >
                <Columns>
                    <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
                    <asp:BoundField DataField="apartmentNumber" HeaderText="Apartment #" SortExpression="apartmentNumber" />
                    <asp:BoundField DataField="userEmail" HeaderText="User Email" SortExpression="userEmail" />
                    <asp:BoundField DataField="category" HeaderText="Category" SortExpression="category" />
                    <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                    <asp:BoundField DataField="timefrom" HeaderText="Time From" SortExpression="timefrom" />
                    <asp:BoundField DataField="timeto" HeaderText="Time To" SortExpression="timeto" />
                    <asp:BoundField DataField="bookingdetail" HeaderText="Bookingdetail" SortExpression="bookingdetail" />
                    <%--<asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />--%>
                   <asp:TemplateField HeaderText="status" ItemStyle-Width="150">
            <ItemTemplate>
                <asp:TextBox ID="txtStatus" runat="server" Text='<%# Eval("status") %>' />
            </ItemTemplate>
        </asp:TemplateField>
                </Columns>
                <HeaderStyle CssClass="thead-dark" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DemoConnectionString %>" SelectCommand="SELECT * FROM [booking]"></asp:SqlDataSource>
            <asp:Button ID="BtnUpdate" runat="server" Text="Update" CssClass="btn btn-primary" OnClick="BtnUpdate_Click" />

        </div>
    </div>




</asp:Content>

