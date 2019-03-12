<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="sidebar" data-background-color="black" data-active-color="danger">

    <!--
		Tip 1: you can change the color of the sidebar's background using: data-background-color="white | black"
		Tip 2: you can change the color of the active button using the data-active-color="primary | info | success | warning | danger"
	-->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="/Shop/admin" class="simple-text">
                   	Admin Management
                </a>
            </div>

            <ul class="nav">
                <li class="active">
                    <a href="/Shop/admin">
                        <i class="ti-panel"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                <li>
                    <a href="/Shop/admin/user/list">
                        <i class="ti-user"></i>
                        <p>User Profile</p>
                    </a>
                </li>
                <li>
                    <a href="/Shop/admin/product/list">
                        <i class="ti-view-list-alt"></i>
                        <p>Table Product</p>
                    </a>
                </li>
                <li>
                    <a href="/Shop/admin/cart-item/list">
                        <i class="ti-view-list-alt"></i>
                        <p>Cart Items</p>
                    </a>
                </li>
                <li>
                    <a href="/Shop/admin/order/list">
                        <i class="ti-bell"></i>
                        <p>Table Order</p>
                    </a>
                </li>
                <li>
                    <a href="/Shop/admin/category/list">
                        <i class="ti-align-center"></i>
                        <p>Category</p>
                    </a>
                </li>
            </ul>
    	</div>
    </div>