<%-- 
    Document   : EditProfilePopUpComponent
    Created on : Jun 2, 2024, 5:13:33 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <!-- Edit profile popup -->
        <div id="editProfilePopup" class="popup">
            <form id="editProfileForm">
                <label for="fullName">Full Name:</label>
                <input type="text" id="fullName" name="fullName" required><br><br>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required><br><br>

                <label for="address">Address:</label>
                <input type="text" id="address" name="address" required><br><br>

                <label for="phoneNumber">Phone Number:</label>
                <input type="text" id="phoneNumber" name="phoneNumber" required><br><br>

                <input type="submit" value="Save">
            </form>
            <!-- Close button -->
            <div id="closeBtn">
                <i class="fas fa-times"></i>
            </div>
        </div>
 