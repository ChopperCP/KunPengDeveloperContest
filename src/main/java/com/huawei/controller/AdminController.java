package com.huawei.controller;

import com.huawei.bean.Record;
import com.huawei.service.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    @Qualifier("RecordServiceImpl")
    private RecordService recordService;

    @RequestMapping("/allRecord")
    public String adminindex(Model model) {
        List<Record> records = recordService.queryFullRecord();
        model.addAttribute("allrecord", records);
        return "index";
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
        if ("root".equals(username) && "123456".equals(password)) {
            session.setAttribute("username", username);
            return "redirect:/admin/allRecord";
        } else return "redirect:/index.jsp";
    }
}
