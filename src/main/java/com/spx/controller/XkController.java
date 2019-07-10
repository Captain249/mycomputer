package com.spx.controller;

import com.spx.easyuiUtil.DataGridDataModel;
import com.spx.entity.Xk;
import com.spx.service.XkService;
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
@RequestMapping(value="xk")
public class XkController extends BaseController{

    @Autowired
    private XkService xkService;

    @RequestMapping(value="go_center_xk",method = RequestMethod.GET)
    public String go_center_xk(){
        return "xk/xk_center";
    }

    @RequestMapping(value="list",method = RequestMethod.POST)
    @ResponseBody
    public DataGridDataModel<Xk> list(int page, int rows){
        DataGridDataModel<Xk> dataGridDataModel = new DataGridDataModel<Xk>();
        dataGridDataModel.setRows(xkService.queryList(page,rows));
        dataGridDataModel.setTotal(xkService.findTotal());
        return dataGridDataModel;
    }

    @RequestMapping(value="save",method = RequestMethod.POST)
    public void save(Xk xk){
        xkService.insert(xk);
    }

    @RequestMapping(value="findXkById",method = RequestMethod.POST)
    @ResponseBody
    public Xk findXkById(@RequestParam(value="id", required=true) int id){
        return xkService.findXkById(id);
    }

    @RequestMapping(value="edit",method = RequestMethod.POST)
    public void edit(Xk xk){
        xkService.edit(xk);
    }

    @RequestMapping(value="delete",method = RequestMethod.POST)
    public void delete(String xks){
        JSONArray jsonArray = JSONArray.fromObject(xks);
        for(int i=0;i<jsonArray.size();i++){
            JSONObject xk = JSONArray.fromObject(xks).getJSONObject(i);
            xkService.deleteXkById(Integer.parseInt(xk.get("id").toString()));
        }
    }

    @RequestMapping(value="go_xk_diy",method = RequestMethod.GET)
    public String go_xk_diy(HttpSession session){
        session.removeAttribute("likexk");
        List<Xk> allxk = xkService.allxk(null,1);
        Long total = xkService.findTotal();
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
        session.setAttribute("allxk",allxk);
        session.setAttribute("total",total);
        session.setAttribute("allPage",allPage2);
        return "xk/xk_diy";
    }

    @RequestMapping(value="go_xk_diy2",method = RequestMethod.GET)
    public String go_xk_diy2(int currentPage,HttpSession session){
        session.setAttribute("currentPage",currentPage);
        Xk xk = (Xk)session.getAttribute("likexk");
        List<Xk> allxk = xkService.allxk(xk,currentPage);
        session.setAttribute("allxk",allxk);
        return "xk/xk_diy";
    }

    @RequestMapping(value="go_xk_diy3",method = RequestMethod.POST)
    public String go_xk_diy3(Xk xk, HttpSession session){
        session.setAttribute("likexk",xk);
        List<Xk> allxk = xkService.allxk(xk,1);
        session.setAttribute("allxk",allxk);
        int total = xkService.findTotalLike(xk);
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
        return "xk/xk_diy";
    }

    @ResponseBody
    @RequestMapping(value="addxk",method = RequestMethod.GET)
    public Map addxk(@RequestParam(value="id", required=true) int id, HttpSession session){
        Map map = new HashMap();
        Xk xk = xkService.findXkById(id);
        session.setAttribute("myxk",xk);
        map.put("xkname",xk.getName());
        return map;
    }
    
}
