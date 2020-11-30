/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModuleAssessment;

import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
/**
 *
 * @author User
 */

public class RunFirst_server {
    private static int PORT_NUM = 2351;
    private static ArrayList<ServerThread> clientThreads = new ArrayList<>();
    private static ExecutorService execute = Executors.newFixedThreadPool(100);

    public static void main(String[] args) throws IOException {
        Socket socket = null;
        ServerSocket server = new ServerSocket(PORT_NUM);   
        JOptionPane.showMessageDialog(null, "Please run the client form and connect","Server waiting for client",2);
        //System.out.println("Server waiting for client");
        while (true) {
            try {
                
                socket = server.accept();
                System.out.println("Accepted Client");
                ServerThread ServerThread = new ServerThread(socket, clientThreads);
                clientThreads.add(ServerThread);
                execute.execute((Runnable) ServerThread);

            } catch (IOException ex) {
                Logger.getLogger(RunFirst_server.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
         public int getPort() {
        return PORT_NUM;
    }

    public ArrayList<ServerThread> getclientThreads() {
        return clientThreads;
    }

    public void setClients(ArrayList<ServerThread> clientThreads) {
        this.clientThreads = clientThreads;
    }
}
    
