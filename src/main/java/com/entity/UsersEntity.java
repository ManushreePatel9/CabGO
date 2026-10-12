package com.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "users")
public class UsersEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long userId;

    private String fullName;
    
    @Column(unique = true, nullable = false)
    private String email;
    
    private String password;
    private String contact;
    private String role; // "PASSENGER" or "DRIVER"

    // Getters and Setters
    public Long getUserId() { return userId; }
    public void setUserId(Long userId) { this.userId = userId; }

    public String getFullName() { return fullName; }
    public void setFullName(String fullName) { this.fullName = fullName; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    public String getContact() { return contact; }
    public void setContact(String contact) { this.contact = contact; }

    public String getRole() { return role; }
    public void setRole(String role) { this.role = role; }
}