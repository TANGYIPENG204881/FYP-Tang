package com.otsbcs.service;

import com.otsbcs.pojo.Appointment;
import com.otsbcs.pojo.Client;
import com.otsbcs.pojo.Tutor;
import org.apache.ibatis.annotations.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Transactional
public interface ClientService {
    //增加一个客户
    int addClient(Client client);
    //删除
    int deleteClientById(int id);
    //更新
    int updateClient(Client client);
    //查询
    Client queryClientById(int id);
    //查询全部

    List<Client> queryAllClient();


//    List<Client> queryTAP();
//
//    Client insertApp(int tutorId, String clientName);



    Client queryClientByName(String clientName);

    public Client clientLogin(String clientName, String password);

    int clientRegister(Client client);

    List<Appointment> clientApp(String clientName);
}
