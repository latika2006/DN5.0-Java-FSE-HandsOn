package com.cognizant.jwt.util;

import java.nio.charset.StandardCharsets;
import java.security.Key;
import java.util.Date;

import javax.crypto.SecretKey;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.security.Keys;

public class JwtUtil {

    // Secret key (must be at least 32 characters for HS256)
    private static final String SECRET =
            "mysecretkeymysecretkeymysecretkey123";

    private static final SecretKey KEY =
            Keys.hmacShaKeyFor(SECRET.getBytes(StandardCharsets.UTF_8));

    public String generateToken(String username) {

        return Jwts.builder()
                .subject(username)
                .issuedAt(new Date())
                .expiration(new Date(System.currentTimeMillis() + 20 * 60 * 1000))
                .signWith(KEY)
                .compact();
    }
}