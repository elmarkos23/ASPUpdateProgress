<%@ Page Title="UpdateProgress" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASPUpdateProgress._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	<asp:UpdatePanel ID="UpdatePanel1" runat="server">
		 <ContentTemplate>
			 <div class="jumbotron">
        <h1>UpdateProgress</h1>
        <p class="lead"><asp:Label ID="Label1" runat="server" Text="Tiempo de Espera..."></asp:Label></p>
				 <asp:Button ID="btnSendMail" runat="server" Text="Enviar Correo" OnClick="btnSendMail_Click" CssClass="btn btn-primary btn-lg"/>
    </div>
    </ContentTemplate>
	</asp:UpdatePanel>
	<asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
		<ProgressTemplate>
			<center>
			<img src="../Image/load.gif" alt="Cargando" width="250" />	
				<p>Enviando...</p>
			</center>
    </ProgressTemplate>
	</asp:UpdateProgress>
  <div class="jumbotron">
	<p>Estado de la pantalla con gif animado</p>	
	</div>
	
</asp:Content>
