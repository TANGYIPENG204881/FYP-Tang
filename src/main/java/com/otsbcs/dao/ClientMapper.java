package com.otsbcs.dao;

import com.otsbcs.pojo.Appointment;
import com.otsbcs.pojo.Client;
import com.otsbcs.pojo.Tutor;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface ClientMapper {
    //增加一个客户
    int addClient(Client client);
    //删除
    int deleteClientById(int id);
    //更新
    int updateClient(Client client);
    //查询
    Client queryClientById(int id);
    //查询全部
    List <Client> queryAllClient();


//    List<Client> queryTAP();
//
//    Client insertApp(@Param("tutorId")int tutorId,@Param("clientName")String clientName);
    //按照名字查询
    Client queryClientByName(@Param("clientName") String clientName);

    //用户登录
    Client clientLogin (@Param("clientName") String clientName,
                      @Param("password") String password);

    int clientRegister(Client client);


    List<Appointment> clientApp(@Param("clientName") String clientName);

}
