/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModuleAssessment;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author User
 */
public class ServerThread extends Thread {

    private Socket socket = null;
    private BufferedReader read = null;
    private PrintWriter print = null;
    private RunFirst_server server = new RunFirst_server();

    private static ArrayList<ServerThread> client = new ArrayList<>();

    public ServerThread(Socket sockets, ArrayList<ServerThread> Clients) {
        this.socket = sockets;
        this.client = Clients;
        try {
            print = new PrintWriter(socket.getOutputStream(), true);
            read = new BufferedReader(new InputStreamReader(socket.getInputStream()));
        } catch (IOException ex) {
            Logger.getLogger(ServerThread.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void run() {
        String msg = "";
        try {
            while (true) {
                msg = read.readLine();
                sendAll(msg);
                terminate();
            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
        } finally {
            System.out.println("OUR PROGRAM HAS BEENED CLOSED!");
        }
    }

    public void sendAll(String msg){
        for (int i = 0; i < client.size(); i++) {
            client.get(i).print.println(msg);
        }
    }
    
    public void terminate(){
        for (int i = 0; i < client.size(); i++) {
            System.out.println(client.get(i).socket.isClosed());
            if (client.get(i).socket.isClosed() == true) {
                client.remove(i);
            }
            
        }
        server.setClients(client);
        
        for (int i = 0; i < client.size(); i++) {
            System.out.println(client.get(i).socket.getPort());
        }
    }
    
}
