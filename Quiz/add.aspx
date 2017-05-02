<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="Quiz.add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <title>Add Question</title>
</head>
<body>
    <form id="form1" runat="server">
  <div class="jumbotron"  style="background-color:blueviolet;">
  <div class="container" style="color:white;">
  <center> <h1>Online Quiz...!!</h1></center>
  </div>
   </div>

    <div style="margin-right:30%;margin-left:30%;margin-bottom:20%; font-family:Aparajita;font-size:22px;background-color:blanchedalmond;">
        <hr /> <span class="glyphicon glyphicon-question-sign"></span>
        <asp:Label ID="Label1" runat="server" Text="Question"></asp:Label>
        <textarea id="TextArea1" cols="40" rows="2"></textarea><hr />
        <div style="margin-left:10%;margin-right:10%;">
        <span class="glyphicon glyphicon-info-sign"></span>
        <asp:Label ID="Label2" runat="server" Text="Options"></asp:Label><hr />
        1. <asp:TextBox ID="TextBox1" runat="server" Width="400"></asp:TextBox><hr />
        2. <asp:TextBox ID="TextBox2" runat="server" Width="400"></asp:TextBox><hr />
        3. <asp:TextBox ID="TextBox3" runat="server" Width="400"></asp:TextBox><hr />
        4. <asp:TextBox ID="TextBox4" runat="server" Width="400"></asp:TextBox><hr />
        <span class="glyphicon glyphicon-ok-sign"></span>
        <asp:Label ID="Label3" runat="server" Text="Correct Option"></asp:Label>
             <asp:DropDownList ID="DropDownList1" runat="server">
                 <asp:ListItem>1</asp:ListItem>
                 <asp:ListItem>2</asp:ListItem>
                 <asp:ListItem>3</asp:ListItem>
                 <asp:ListItem>4</asp:ListItem>
            </asp:DropDownList>
             <hr />
        </div>
        <div style="margin-left:30%;margin-right:30%;font-family:'Times New Roman';">
            <asp:Button ID="Button1" runat="server" Text="Add Question" CssClass="btn-success" /><hr />
        </div>
    </div>
    </form>
</body>
</html>
