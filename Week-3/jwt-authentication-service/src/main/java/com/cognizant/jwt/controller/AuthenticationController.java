package com.cognizant.jwt.controller;

import com.cognizant.jwt.model.AuthenticationResponse;
import com.cognizant.jwt.util.JwtUtil;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AuthenticationController {

    private final JwtUtil jwtUtil = new JwtUtil();

    @GetMapping("/authenticate")
    public AuthenticationResponse authenticate() {

        Authentication authentication =
                SecurityContextHolder.getContext().getAuthentication();

        String username = authentication.getName();

        String token = jwtUtil.generateToken(username);

        return new AuthenticationResponse(token);
    }
}