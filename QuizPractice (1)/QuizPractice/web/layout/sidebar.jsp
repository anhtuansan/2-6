<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%String contextPath = request.getContextPath();%>
<div class="side-bar">
    <div id="close-btn">
        <i class="fas fa-times"></i>
    </div>
    <c:if test="${sessionScope.user != null}">
        <div class="profile">
            <img src="<%=contextPath%>/${sessionScope.user.profileImg}" class="image" alt="">
            <h3 class="name">${sessionScope.user.fullName}</h3>
            <p class="role">student</p>
            <button id="viewProfileBtn" class="option-btn">View Profile</button>
        </div>
    </c:if>

    <nav class="navbar">
        <a href="<%=contextPath%>/home"><i class="fas fa-home"></i><span>Home</span></a>
        <a href="<%=contextPath%>/subject"><i class="fas fa-graduation-cap"></i><span>Subjects</span></a>
        <a href="<%=contextPath%>/blog"><i class="fas fa-newspaper"></i><span>Posts</span></a>
    </nav>
</div>

<!-- Edit profile popup -->
<div id="editProfilePopup" class="popup1">
    <div class="popup-content1">
        <h2>User Profile</h2> <!-- Added title -->
        <form id="editProfileForm">
            <div class="left-side">
                <!-- Full Name input -->
                <div class="form-group">
                    <label for="fullName">Full Name:</label>
                    <input type="text" id="fullName" name="fullName" required>
                </div>

                <!-- Email input -->
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" readonly required>
                </div>

                <!-- Change Password link -->
                <a href="<%=contextPath%>/change-password" id="changePassword">Change Password</a><br><br>

                <!-- Address input -->
                <div class="form-group">
                    <label for="address">Address:</label>
                    <input type="text" id="address" name="address" required>
                </div>
                
                 <!-- Gender input -->
                <div class="form-group">
                    <label for="gender">Gender</label>
                    <input type="text" id="gender" name="gender" required>
                </div>

                <!-- Phone Number input -->
                <div class="form-group">
                    <label for="phoneNumber">Phone Number:</label>
                    <input type="text" id="phoneNumber" name="phoneNumber" required>
                </div>
            </div>

            <div class="right-side">
                <!-- Avatar image -->
                <div class="avatar-container">
                    <img src="images/anhgt_1.jpg" alt="Avatar" class="avatar-image">
                </div>

                <!-- Upload button -->
                <div class="form-group">
                    <input type="file" id="avatarUpload" accept="image/*">
                    <!--<label for="avatarUpload" class="upload-btn">Upload Avatar</label>-->
                </div>
            </div>

            <!-- Buttons -->
            <div class="button-group">
                <input type="submit" value="Save Changes" id="saveChanges">
                <input type="reset" value="Reset" id="resetForm">
            </div>
        </form>
        <!-- Close button -->
        <div id="closeBtn">
            <i class="fas fa-times"></i>
        </div>
    </div>
</div>




<script>
    document.addEventListener("DOMContentLoaded", function () {
        var viewProfileBtn = document.getElementById("viewProfileBtn");
        var editProfilePopup = document.getElementById("editProfilePopup");
        var closeBtn = document.getElementById("closeBtn");

        // Function to show the popup
        function showPopup() {
            editProfilePopup.style.display = "block";
        }

        // Function to close the popup
        function closePopup() {
            editProfilePopup.style.display = "none";
        }

        // Event listener for the view profile button
        viewProfileBtn.addEventListener("click", function (event) {
            event.preventDefault();
            showPopup();
        });

        // Event listener for the close button
        closeBtn.addEventListener("click", function () {
            closePopup();
        });

        // Close the popup when clicking outside of it
        window.addEventListener("click", function (event) {
            if (event.target == editProfilePopup) {
                closePopup();
            }
        });

        // Prevent form submission
        var editProfileForm = document.getElementById("editProfileForm");
        editProfileForm.addEventListener("submit", function (event) {
            event.preventDefault();
            // Add code to handle form submission (e.g., send data to server)
        });
    });
</script>