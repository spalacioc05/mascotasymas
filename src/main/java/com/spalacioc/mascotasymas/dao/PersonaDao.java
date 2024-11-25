/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.spalacioc.mascotasymas.dao;

import com.spalacioc.mascotasymas.model.Persona;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author spala
 */

public class PersonaDao {
    public boolean registrarPersona(Persona persona) {
        String sql = "INSERT INTO persona (id, nombres, apellidos, correo, telefono, direccion, fechaNacimiento, clave, rol) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try (Connection conn = ConexionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, persona.getId());
            stmt.setString(2, persona.getNombres());
            stmt.setString(3, persona.getApellidos());
            stmt.setString(4, persona.getCorreo());
            stmt.setString(5, persona.getTelefono());
            stmt.setString(6, persona.getDireccion());
            stmt.setDate(7, new java.sql.Date(persona.getFechaNacimiento().getTime()));
            stmt.setString(8, persona.getClave());
            stmt.setString(9, persona.getRol());
            stmt.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}