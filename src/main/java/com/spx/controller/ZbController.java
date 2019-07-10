package com.spx.controller;

import com.spx.easyuiUtil.DataGridDataModel;
import com.spx.entity.Zb;
import com.spx.service.ZbService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value="zb")
public class ZbController extends BaseController{

    @Autowired
    private ZbService zbService;

    @RequestMapping(value="go_center_zb",method = RequestMethod.GET)
    public String go_center_zb(){
        return "zb/zb_center";
    }

    @RequestMapping(value="list",method = RequestMethod.POST)
    @ResponseBody
    public DataGridDataModel<Zb> list(int page, int rows){
        DataGridDataModel<Zb> dataGridDataModel = new DataGridDataModel<Zb>();
        dataGridDataModel.setRows(zbService.queryList(page,rows));
        dataGridDataModel.setTotal(zbService.findTotal());
        return dataGridDataModel;
    }

    @RequestMapping(value="save",method = RequestMethod.POST)
    public void save(Zb zb){
        zbService.insert(zb);
    }

    @RequestMapping(value="findZbById",method = RequestMethod.POST)
    @ResponseBody
    public Zb findZbById(@RequestParam(value="id", required=true) int id){
        return zbService.findZbById(id);
    }

    @RequestMapping(value="edit",method = RequestMethod.POST)
    public void edit(Zb zb){
        zbService.edit(zb);
    }

    @RequestMapping(value="delete",method = RequestMethod.POST)
    public void delete(String zbs){
        JSONArray jsonArray = JSONArray.fromObject(zbs);
        for(int i=0;i<jsonArray.size();i++){
            JSONObject zb = JSONArray.fromObject(zbs).getJSONObject(i);
            zbService.deleteZbById(Integer.parseInt(zb.get("id").toString()));
        }
    }

    @RequestMapping(value="go_zb_diy",method = RequestMethod.GET)
    public String go_zb_diy(HttpSession session){
        session.removeAttribute("likezb");
        List<Zb> allzb = zbService.allzb(null,1);
        Long total = zbService.findTotal();
        Long allPage=0l;
        if(total%5>0){
            allPage = total/5+1;
        }else{
            allPage = total/5;
        }
        int allPage2= new Long(allPage).intValue();
        if(allPage2==0){
            allPage2=1;
        }
        session.setAttribute("currentPage",1);
        session.setAttribute("allzb",allzb);
        session.setAttribute("total",total);
        session.setAttribute("allPage",allPage2);
        return "zb/zb_diy";
    }

    @RequestMapping(value="go_zb_diy2",method = RequestMethod.GET)
    public String go_zb_diy2(int currentPage,HttpSession session){
        session.setAttribute("currentPage",currentPage);
        Zb zb = (Zb)session.getAttribute("likezb");
        List<Zb> allzb = zbService.allzb(zb,currentPage);
        session.setAttribute("allzb",allzb);
        return "zb/zb_diy";
    }

    @RequestMapping(value="go_zb_diy3",method = RequestMethod.POST)
    public String go_zb_diy3(Zb zb, HttpSession session){
        session.setAttribute("likezb",zb);
        List<Zb> allzb = zbService.allzb(zb,1);
        session.setAttribute("allzb",allzb);
        int total = zbService.findTotalLike(zb);
        int allPage=0;
        if(total%5>0){
            allPage = total/5+1;
        }else{
            allPage = total/5;
        }
        if(allPage==0){
            allPage=1;
        }
        session.setAttribute("total",total);
        session.setAttribute("allPage",allPage);
        session.setAttribute("currentPage",1);
        return "zb/zb_diy";
    }

    @ResponseBody
    @RequestMapping(value="addzb",method = RequestMethod.GET)
    public Map addzb(@RequestParam(value="id", required=true) int id, HttpSession session){
        Map map = new HashMap();
        Zb zb = zbService.findZbById(id);
        session.setAttribute("myzb",zb);
        map.put("zbname",zb.getName());
        return map;
    }
}
