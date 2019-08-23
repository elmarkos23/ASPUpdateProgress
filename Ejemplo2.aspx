<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ejemplo2.aspx.cs" Inherits="ASPUpdateProgress.Ejemplo2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<asp:UpdatePanel ID="PanelPrincipal" runat="server">
	 <ContentTemplate>
			 <div class="jumbotron">
        <h1>Ejemplo 2</h1>
        <p class="lead"><asp:Label ID="Label1" runat="server" Text="Tiempo de Espera..."></asp:Label></p>
				 <asp:Button ID="btnSendMail" runat="server" Text="Enviar Correo" OnClick="btnSendMail_Click" CssClass="btn btn-primary btn-lg"/>
    </div>
    </ContentTemplate>
	</asp:UpdatePanel>
		<asp:UpdateProgress ID="UpdateProgress2" runat="server" AssociatedUpdatePanelID="PanelPrincipal">
		<ProgressTemplate>
			<div class="miload">
				<div class="loadimagen">
			<img src="../Image/load.gif" alt="Cargando" width="250" />
				<center><p>Cargando...</p></center>
					</div>
			</div>
    </ProgressTemplate>
	</asp:UpdateProgress>
</asp:Content>
