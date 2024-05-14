﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Navbar.ascx.cs" Inherits="ASP_WebApp.Navbar" %>

<style>
    * {
        padding: 0;
        margin: 0;
        text-decoration: none;
        list-style: none;
        box-sizing: border-box;
    }

    body {
        font-family: montserrat;
    }

    nav {
        background: #0082e6;
        height: 80px;
        width: 100%;
    }

    label.logo {
        color: white;
        font-size: 35px;
        line-height: 80px;
        padding: 0 100px;
        font-weight: bold;
    }

    nav ul {
        float: right;
        margin-right: 20px;
    }

        nav ul li {
            display: inline-block;
            line-height: 80px;
            margin: 0 5px;
        }

            nav ul li a {
                color: white;
                font-size: 17px;
                padding: 7px 13px;
                border-radius: 3px;
                text-transform: uppercase;
            }

    a.active, a:hover {
        background: #1b9bff;
        transition: .5s;
    }

    .checkbtn {
        font-size: 30px;
        color: white;
        float: right;
        line-height: 80px;
        margin-right: 40px;
        cursor: pointer;
        display: none;
    }

    #check {
        display: none;
    }

    @media (max-width: 952px) {
        label.logo {
            font-size: 30px;
            padding-left: 50px;
        }

        nav ul li a {
            font-size: 16px;
        }
    }

    @media (max-width: 858px) {
        .checkbtn {
            display: block;
        }

        ul {
            position: fixed;
            width: 100%;
            height: 100vh;
            background: #2c3e50;
            top: 80px;
            left: -100%;
            text-align: center;
            transition: all .5s;
        }

        nav ul li {
            display: block;
            margin: 50px 0;
            line-height: 30px;
        }

            nav ul li a {
                font-size: 20px;
            }

        a:hover, a.active {
            background: none;
            color: #0082e6;
        }

        #check:checked ~ ul {
            left: 0;
        }
    }

    section {
        background: url(bg1.jpg) no-repeat;
        background-size: cover;
        height: calc(100vh - 80px);
    }
</style>
<nav>
    <input type="checkbox" id="check">
    <label for="check" class="checkbtn">
        <i class="fas fa-bars"></i>
    </label>
    <label class="logo" onclick="~/Home.aspx">VHaasH</label>
    <ul>
        <li><a class="active" href="~/Home.aspx" runat="server">Home</a></li>
        <li><a href="~/About.aspx" runat="server">About</a></li>
        <li><a href="~/Services.aspx" runat="server">Services</a></li>
        <li><a href="~/Contect.aspx" runat="server">Contact</a></li>
        <li><a href="LogIn.aspx" runat="server"> Login</a></li>
    </ul>
</nav>