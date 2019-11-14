/*
Add if MQ is used
 */

//package com.project.deal.mq;
//
//import org.apache.rocketmq.client.exception.MQClientException;
//import org.apache.rocketmq.client.producer.DefaultMQProducer;
//import org.springframework.beans.factory.annotation.Value;
//import org.springframework.stereotype.Component;
//
//import javax.annotation.PostConstruct;
//
//@Component
//public class MqProducer {
//
//    private DefaultMQProducer producer;
//
//    @Value("mq.nameserver.addr")
//    private String nameAddr;
//
//    @Value("mq.topicname")
//    private String topicName;
//
//    @PostConstruct
//    public void init() throws MQClientException {
//        // 做mq producer的初始化
//        producer = new DefaultMQProducer("producer_group");
//        producer.setNamesrvAddr(nameAddr);
//
//        producer.start();
//
//    }
//}
