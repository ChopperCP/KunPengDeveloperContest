package com.huawei.controller;

import com.huawei.Utils.PropertiesConfig;
import com.huawei.bean.Port;
import com.huawei.bean.Record;
import com.huawei.bean.User;
import com.huawei.service.PortService;
import com.huawei.service.RecordService;
import com.huawei.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    @Qualifier("RecordServiceImpl")
    private RecordService recordService;

    @Autowired
    @Qualifier("PortServiceImpl")
    private PortService portService;

    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;


    @RequestMapping("/allRecord")
    public String adminindex(Model model) {
        String rootPath = AdminController.class.getClassLoader().getResource("/admin.properties").getPath();
        String password_true = PropertiesConfig.readData(rootPath, "password");
        if ("Admin@9000".equals(password_true)) return "updatePassword";
        List<Record> records = recordService.queryFullRecord();
        model.addAttribute("allrecord", records);
        return "allRecord";
    }

    @RequestMapping("/toupdateRecord")
    public String toupateRecord(int record_id, Model model) {
        Record record = recordService.queryoneFullRecord(record_id);
        model.addAttribute("record", record);
        return "updateRecord";
    }

    @RequestMapping("/updateRecord")
    public String updateRecord(Record record) {
        System.out.println(">>>>>>>>>" + record);
        recordService.updateRecord(record);
        return "redirect:/admin/allRecord";
    }

    @RequestMapping("/login")
    public String login(HttpSession session, String username, String password) {
        String rootPath = AdminController.class.getClassLoader().getResource("/admin.properties").getPath();
        String username_true = PropertiesConfig.readData(rootPath, "username");
        String password_true = PropertiesConfig.readData(rootPath, "password");
        System.out.println(username_true + "  " + password_true);
        System.out.println(username + "  " + password);

        if (username_true.equals(username) && password_true.equals(password)) {
            session.setAttribute("username", username);
            session.setAttribute("password", password);
            return "redirect:/admin/allRecord";
        } else return "redirect:/index.jsp";
    }

    @RequestMapping("/toupdatePassword")
    public String updatePassword() {
        return "updatePassword";
    }

    @RequestMapping("/updatePassword")
    public String updatePassword(String password, HttpSession session) {
        if (password == null) return "redirect:/admin/allRecord";
        String rootPath = AdminController.class.getClassLoader().getResource("/admin.properties").getPath();
        PropertiesConfig.writeData(rootPath, "password", password);
        session.removeAttribute("username");
        return "redirect:/admin/allRecord";
    }

    @RequestMapping("/allPort")
    public String allPort(Model model) {

        List<Port> ports = portService.quertAllPort();
        System.out.println(ports);
        model.addAttribute("list", ports);
        return "/allPort";
    }

    @RequestMapping("/toaddPort")
    public String toaddPort() {
        return "/addPort";
    }

    @RequestMapping("/addPort")
    public String addPort(Port port) {
        String s = UUID.randomUUID().toString();
        s = s.substring(0, 8) + s.substring(9, 13) + s.substring(14, 18) + s.substring(19, 23) + s.substring(24);
        port.setPort_QR_str_in("IN_" + s);
        s = UUID.randomUUID().toString();
        s = s.substring(0, 8) + s.substring(9, 13) + s.substring(14, 18) + s.substring(19, 23) + s.substring(24);
        port.setPort_QR_str_out("OUT_" + s);
        portService.addPort(port);
        return "redirect:/admin/allPort";
    }

    @RequestMapping("/toupdatePort")
    public String updatePort(int port_id, Model model) {
        Port port = portService.queryPortById(port_id);
        model.addAttribute("port", port);
        return "/updatePort";
    }

    @RequestMapping("/updatePort")
    public String updatePort(Port port) {
        portService.updatePort(port);
        return "redirect:/admin/allPort";
    }

    @RequestMapping("/deletePort")
    public String updatePort(int port_id) {
        portService.deletePort(port_id);
        return "redirect:/admin/allPort";
    }

    @RequestMapping("/randomUUID")
    @ResponseBody
    public String randomUUID() {
        String s = UUID.randomUUID().toString();
        s = s.substring(0, 8) + s.substring(9, 13) + s.substring(14, 18) + s.substring(19, 23) + s.substring(24);
        System.out.println(s);
        return s;
    }

    @RequestMapping("/allUser")
    public String allUser(Model model) {
        List<User> users = userService.queryalluser();
        model.addAttribute("list", users);
        return "allUser";
    }

    @RequestMapping("/queryuserByname")
    public String queryuserByname(Model model, String real_name) {
        List<User> users = userService.queryuserByname(real_name);
        model.addAttribute("list", users);
        return "allUser";
    }

    @RequestMapping("/toupdateUser")
    public String toupdateuser(String wechat_id, Model model) {
        User user = userService.queryUserBywechatid(wechat_id);
        model.addAttribute("user", user);
        return "updateUser";
    }

    @RequestMapping("/updateUser")
    public String updateuser(User user) {
        userService.updateUser(user);
        return "allUser";
    }


}
