package com.project.deal;

import com.project.deal.dao.UserDOMapper;
import com.project.deal.dataobject.UserDO;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.PostConstruct;
import java.util.Date;
import java.util.TimeZone;

@SpringBootApplication(scanBasePackages = {"com.project.deal"})
@RestController
@MapperScan("com.project.deal.dao")
public class DealApplication {

    @Autowired
    private UserDOMapper userDOMapper;

    @RequestMapping("/")
    public String home() {
        UserDO userDO = userDOMapper.selectByPrimaryKey(1);
        if (userDO == null) {
            return "not exist";
        } else {
            return userDO.getName();
        }
    }

    public static void main(String[] args) {
        System.out.println("Hello World");
        SpringApplication.run(DealApplication.class, args);
    }

}
