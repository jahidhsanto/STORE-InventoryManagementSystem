<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="STORE_InventoryManagementSystem.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>

        <div style="display: flex; align-items: center;">
            <!-- Image on the left -->
            <img src="\images\jahidhsanto.jpg" alt="Jahid Hassan Santo" style="width: 200px; margin-right: 20px; object-fit: cover;" />

            <!-- Contact Info on the right -->
            <div>
                <div>
                    <strong>Name:</strong> Jahid Hassan Santo
                </div>
                <div>
                    <strong>Designation:</strong> Business Analyst
                </div>
                <div>
                    <strong>Department:</strong> Planning & Strategy
                </div>
                <div>
                    <strong>Company:</strong> Creative Engineers Ltd.
                </div>

                <div>
                    <strong>Contact number:</strong> +880 1878 959101
                </div>

                <div>
                    <strong>Address:</strong>
                    <address>
                        Dhaka<br />
                        Bangladesh
                    </address>
                </div>

                <div>
                    <strong>Support:</strong> <a href="mailto:jahidhsanto@gmail.com.com">jahidhsanto@gmail.com</a><br />
                </div>
            </div>
        </div>
    </main>
</asp:Content>
