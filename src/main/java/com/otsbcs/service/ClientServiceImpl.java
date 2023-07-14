package com.otsbcs.service;
import com.otsbcs.dao.ClientMapper;
import com.otsbcs.pojo.Appointment;
import com.otsbcs.pojo.Client;
import com.otsbcs.pojo.Tutor;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class ClientServiceImpl implements ClientService {

    //service调dao，组合dao层
@Resource
    private ClientMapper clientMapper;

    public void setClientMapper(ClientMapper clientMapper) {
        this.clientMapper = clientMapper;
    }

    public int addClient(Client client) {
        return clientMapper.addClient(client);
    }

    public int deleteClientById(int id) {
        return clientMapper.deleteClientById(id);
    }

    public int updateClient(Client client) {
        System.out.println("ClientServiceImpl: updateClient=>"+client);
        return clientMapper.updateClient(client);
    }

    public Client queryClientById(int id) {
        return clientMapper.queryClientById(id);
    }

    public List<Client> queryAllClient() {
        return clientMapper.queryAllClient();
    }

//    public List<Client> queryTAP(){
//        return clientMapper.queryTAP();
//    }
//
//    public Client insertApp(int tutorId, String clientName){
//        return clientMapper.insertApp(tutorId,clientName);
//    }


    public Client queryClientByName(String clientName) {
        return clientMapper.queryClientByName(clientName);
    }

    public Client clientLogin(String clientName, String password) {
        return clientMapper.clientLogin(clientName, password);
    }

    public int clientRegister(Client client) {
        Client exitClient = clientMapper.queryClientByName(client.getClientName());
        if (exitClient != null) {
            throw new RuntimeException("Learner Name already exit,Please try another name");
        } else {
            return clientMapper.clientRegister(client);
        }
    }


    public List<Appointment> clientApp(String clientName){
        return clientMapper.clientApp(clientName);
    }
}


