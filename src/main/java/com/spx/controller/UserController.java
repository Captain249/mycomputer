package com.spx.controller;

import com.spx.entity.*;
import com.spx.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController extends BaseController {

    @Autowired
    private UserService userService;
    @Autowired
    private CpuService cpuService;
    @Autowired
    private DyService dyService;
    @Autowired
    private NcService ncService;
    @Autowired
    private XkService xkService;
    @Autowired
    private XsqService xsqService;
    @Autowired
    private YpService ypService;
    @Autowired
    private ZbService zbService;

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String loginCheck(User formuser, HttpSession session) {
        session.removeAttribute("mycpu");
        session.removeAttribute("mydy");
        session.removeAttribute("mync");
        session.removeAttribute("myxk");
        session.removeAttribute("myxsq");
        session.removeAttribute("myyp");
        session.removeAttribute("myzb");
        User user = userService.loginCheck(formuser);
        if(user!=null&&user.getRole().equals("管理员")){
            session.setAttribute("user",user);
            return "redirect:home";
        }else if(user!=null&&user.getRole().equals("普通用户")){
            session.setAttribute("user",user);
            return "redirect:myDiy";
        }
        return "login";
    }

    @RequestMapping( value="tologin", method = RequestMethod.GET)
    public String tologin() {
        return "login";
    }

    @RequestMapping(value = "home",method = RequestMethod.GET)
    public String home(HttpSession session) {
        User user = (User) session.getAttribute("user");
        if(user != null){
            return "home";
        }else{
            return "login";
        }
    }

    @RequestMapping( value="myDiy", method = RequestMethod.GET)
    public String myDiy() {
        return "diy/myDiy";
    }



    @ResponseBody
    @RequestMapping( value="savecomputer", method = RequestMethod.GET)
    public Map savecomputer(HttpSession session) {

        Map map = new HashMap();
        String msg = "";
        User user = (User)session.getAttribute("user");
        Cpu cpu = (Cpu)session.getAttribute("mycpu");
        Dy dy  = (Dy)session.getAttribute("mydy");
        Nc nc = (Nc)session.getAttribute("mync");
        Xk xk = (Xk)session.getAttribute("myxk");
        Xsq xsq = (Xsq)session.getAttribute("myxsq");
        Yp yp = (Yp)session.getAttribute("myyp");
        Zb zb = (Zb)session.getAttribute("myzb");

        Computer computer = new Computer();
        int money = 0;
        computer.setUserid(user.getId());
        if(cpu!=null){
            computer.setCpuid(cpu.getId());
            money += cpu.getPrice();
        }
        if(dy!=null){
            computer.setDyid(dy.getId());
            money += dy.getPrice();
        }
        if(nc!=null){
            computer.setNcid(nc.getId());
            money += nc.getPrice();
        }
        if(xk!=null){
            computer.setXkid(xk.getId());
            money += xk.getPrice();
        }
        if(yp!=null){
            computer.setYpid(yp.getId());
            money += yp.getPrice();
        }
        if(xsq!=null){
            computer.setXsqid(xsq.getId());
            money += xsq.getPrice();
        }
        if(zb!=null){
            computer.setZbid(zb.getId());
            money += zb.getPrice();
        }
        computer.setFs(money);
        if(cpu!=null&&dy!=null&&nc!=null&&xk!=null&&yp!=null&&zb!=null){
            if(cpu.getCc().equals(zb.getCc())){
                if(zb.getNclx().contains(nc.getLx())){
                    if(zb.getFs()>=(Integer.parseInt(nc.getRl().substring(0,nc.getRl().length()-2)))){
                        if(zb.getMs().contains(nc.getZp())){
                            if(zb.getMore().contains(yp.getJklx())){
                                userService.savecomputer(computer);
                                msg += "保存成功！";
                            }else{
                                msg += "主板的存储接口与硬盘的接口类型不匹配。";
                            }
                        }else{
                            msg += "主板的内存描述与内存的主频不匹配。";
                        }
                    }else{
                        msg += "主板的最大内存容量与内存的最大内存容量不匹配。";
                    }
                }else{
                    msg += "主板的内存类型与内存类型不匹配。";
                }
            }else{
                msg += "主板的cpu插槽与cpu插槽类型不匹配。";
            }
        }
        map.put("msg",msg);
        return map;
    }

    @ResponseBody
    @RequestMapping( value="clearcomputer", method = RequestMethod.GET)
    public String clearcomputer(HttpSession session) {
        session.removeAttribute("mycpu");
        session.removeAttribute("mydy");
        session.removeAttribute("mync");
        session.removeAttribute("myxk");
        session.removeAttribute("myxsq");
        session.removeAttribute("myyp");
        session.removeAttribute("myzb");
        return "ok";
    }

    @RequestMapping( value="myComputer", method = RequestMethod.GET)
    public String myComputer(HttpSession session) {
        User user = (User)session.getAttribute("user");
        List<Computer> myComputer = userService.myComputer(user.getId());
        List<MyComputer> mycomputers = new ArrayList<MyComputer>();
        for(Computer computer:myComputer){
            Cpu cpu = cpuService.findCpuById(computer.getCpuid());
            Dy dy = dyService.findDyById(computer.getDyid());
            Nc nc = ncService.findNcById(computer.getNcid());
            Xk xk = xkService.findXkById(computer.getXkid());
            Xsq xsq = xsqService.findXsqById(computer.getXsqid());
            Yp yp = ypService.findYpById(computer.getYpid());
            Zb zb = zbService.findZbById(computer.getZbid());
            int price = cpu.getPrice()+dy.getPrice()+nc.getPrice()+xk.getPrice()+xsq.getPrice()+yp.getPrice()+zb.getPrice();
            MyComputer cpt = new MyComputer();
            cpt.setId(computer.getId());
            cpt.setCpu(cpu.getName());
            cpt.setCpuPrice(cpu.getPrice());
            cpt.setDy(dy.getName());
            cpt.setDyPrice(dy.getPrice());
            cpt.setNc(nc.getName());
            cpt.setNcPrice(nc.getPrice());
            cpt.setXk(xk.getName());
            cpt.setXkPrice(xk.getPrice());
            cpt.setXsq(xsq.getName());
            cpt.setXsqPrice(xsq.getPrice());
            cpt.setYp(yp.getName());
            cpt.setYpPrice(yp.getPrice());
            cpt.setZb(zb.getName());
            cpt.setZbPrice(zb.getPrice());
            cpt.setPrice(price);
            mycomputers.add(cpt);
        }
        session.setAttribute("myComputer",mycomputers);
        return "diy/myComputer";
    }

    @ResponseBody
    @RequestMapping( value="delete2", method = RequestMethod.POST)
    public String delete2(@RequestParam(value="id", required=true) int id,HttpSession session){
        User user = (User)session.getAttribute("user");
        userService.deleteCpt(id,user.getId());
        return "ok";
    }

    @ResponseBody
    @RequestMapping( value="savemy", method = RequestMethod.POST)
    public String savemy(@RequestParam(value="id", required=true) int id,HttpSession session){
        User user = (User)session.getAttribute("user");
        Computer cpt = userService.findCptById(id);
        cpt.setUserid(user.getId());
        Computer cpt2 = new Computer();
        cpt2.setUserid(cpt.getUserid());
        cpt2.setFs(cpt.getFs());
        cpt2.setZbid(cpt.getZbid());
        cpt2.setXsqid(cpt.getXsqid());
        cpt2.setYpid(cpt.getYpid());
        cpt2.setXkid(cpt.getXkid());
        cpt2.setNcid(cpt.getNcid());
        cpt2.setCpuid(cpt.getCpuid());
        cpt2.setDyid(cpt.getDyid());
        userService.savecomputer(cpt2);
        return "ok";
    }

    @RequestMapping( value="tuijian", method = RequestMethod.GET)
    public String tuijian(HttpSession session) {

        List<Computer> myComputer = userService.myComputer(1);
        List<MyComputer> mycomputers = new ArrayList<MyComputer>();
        for(Computer computer:myComputer){
            Cpu cpu = cpuService.findCpuById(computer.getCpuid());
            Dy dy = dyService.findDyById(computer.getDyid());
            Nc nc = ncService.findNcById(computer.getNcid());
            Xk xk = xkService.findXkById(computer.getXkid());
            Xsq xsq = xsqService.findXsqById(computer.getXsqid());
            Yp yp = ypService.findYpById(computer.getYpid());
            Zb zb = zbService.findZbById(computer.getZbid());
            int price = cpu.getPrice()+dy.getPrice()+nc.getPrice()+xk.getPrice()+xsq.getPrice()+yp.getPrice()+zb.getPrice();
            MyComputer cpt = new MyComputer();
            cpt.setId(computer.getId());
            cpt.setCpu(cpu.getName());
            cpt.setCpuPrice(cpu.getPrice());
            cpt.setDy(dy.getName());
            cpt.setDyPrice(dy.getPrice());
            cpt.setNc(nc.getName());
            cpt.setNcPrice(nc.getPrice());
            cpt.setXk(xk.getName());
            cpt.setXkPrice(xk.getPrice());
            cpt.setXsq(xsq.getName());
            cpt.setXsqPrice(xsq.getPrice());
            cpt.setYp(yp.getName());
            cpt.setYpPrice(yp.getPrice());
            cpt.setZb(zb.getName());
            cpt.setZbPrice(zb.getPrice());
            cpt.setPrice(price);
            mycomputers.add(cpt);
        }
        session.setAttribute("tuijian",mycomputers);

        return "diy/tuijian";
    }

}
