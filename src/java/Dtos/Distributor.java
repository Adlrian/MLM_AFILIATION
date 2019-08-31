package Dtos;

public class Distributor {

    private int id;
    private String nombre;
    private String apellido;
    private String celular;
    private String DNI;
    private String correo;
    private String direccion;
    private String zip;
    private String username;
    private String password;
    private int parent;
    private int estado;
    private int tipo;
    private int mercado;

    public Distributor(int id, String nombre, String apellido) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
    }

    public Distributor(int id, String nombre, String apellido, String celular, String DNI, String correo, String direccion, String zip, String username, String password, int parent, int estado, int tipo, int mercado) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.celular = celular;
        this.DNI = DNI;
        this.correo = correo;
        this.direccion = direccion;
        this.zip = zip;
        this.username = username;
        this.password = password;
        this.parent = parent;
        this.estado = estado;
        this.tipo = tipo;
        this.mercado = mercado;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getDNI() {
        return DNI;
    }

    public void setDNI(String DNI) {
        this.DNI = DNI;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getParent() {
        return parent;
    }

    public void setParent(int parent) {
        this.parent = parent;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public int getTipo() {
        return tipo;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }

    public int getMercado() {
        return mercado;
    }

    public void setMercado(int mercado) {
        this.mercado = mercado;
    }
    
}
