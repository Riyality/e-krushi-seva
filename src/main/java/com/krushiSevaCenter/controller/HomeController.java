package com.krushiSevaCenter.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.krushiSevaCenter.entity.ManuFacture;
import com.krushiSevaCenter.entity.Rack;
import com.krushiSevaCenter.entity.User;
import com.krushiSevaCenter.service.ManuFactureService;
import com.krushiSevaCenter.service.RackService;
import com.krushiSevaCenter.service.UserService;

@Controller
public class HomeController {

    @Autowired
    private RackService service;

    @Autowired
    private ManuFactureService mfrService;

    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String loginPage() {
        return "login/login";
    }

    @PostMapping("/login")
    public String login(@RequestParam("email") String email,
                        @RequestParam("password") String password,
                        HttpServletRequest request,
                        Model model) {
        User user = userService.authenticate(email, password);

        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);

            // Check if session attribute is set and print to console
            User sessionUser = (User) session.getAttribute("user");
            if (sessionUser != null) {
                System.out.println("Session is set for user: " + sessionUser.getEmail());
            } else {
                System.out.println("Session attribute 'user' is not set.");
            }

            if ("superuser".equals(user.getRole())) {
                return "redirect:/home";
            } else {
                return "redirect:/login?error=Unauthorized";
            }
        } else {
            model.addAttribute("errorMessage", "Invalid email or password");
            return "login/login";
        }
    }

    
    @GetMapping("/reset-password")
    public String showResetPasswordPage() {
        return "login/reset-password"; // Return the path to your reset password form
    }

    @PostMapping("/process-reset-password")
    public String processResetPassword(@RequestParam("email") String email,
                                       @RequestParam("newPassword") String newPassword,
                                       @RequestParam("confirmPassword") String confirmPassword,
                                       Model model) {
        // Validate if passwords match
        if (!newPassword.equals(confirmPassword)) {
            model.addAttribute("errorMessage", "Passwords do not match");
            return "login/reset-password"; // Return to the reset password form with error message
        }

        // Retrieve user by email
        User user = userService.findByEmail(email);
        if (user == null) {
            model.addAttribute("errorMessage", "User with this email does not exist");
            return "login/reset-password"; // Return to the reset password form with error message
        }

        // Update user's password and resetToken (if needed)
        user.setPassword(newPassword);
        user.setResetToken(null); // Clear resetToken after password reset (if it was used)

        // Save updated user entity (assuming userService.saveOrUpdate(user) method)
        userService.saveOrUpdate(user);

        return "login/login";
    }

    @GetMapping("/addProductForm")
    public String addProductForm(Model model) {
        List<Rack> rack = service.getAllRack();
        model.addAttribute("racklist", rack);

        List<ManuFacture> shortNames = mfrService.getAllShortNames();
        model.addAttribute("shortnames", shortNames);

        return "products/add";
    }
}
