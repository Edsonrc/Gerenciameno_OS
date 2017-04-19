
package br.com.infox.dal;
import java.sql.*;

/**
 *
 * @author EdsonRicardoCzarneski
 */
public class ModuloConexao {
    //Método estabele conexao com banco
    public static Connection conector(){
        java.sql.Connection conexao = null;
        //Chamando driver da biblioteca
        String driver = "com.mysql.jdbc.Driver";
        //Armazenando informações sobre o banco
        String url = "jdbc:mysql://localhost:3306/dbinfox";
        String user = "root";
        String password = "";
        //Estabelecendo a conexao
        try {
            Class.forName(driver);
            conexao = DriverManager.getConnection(url, user, password);
            return conexao;
        } catch (Exception e) {    
            return null;
        }
    }
}
