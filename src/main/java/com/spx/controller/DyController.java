package com.spx.controller;

import com.spx.easyuiUtil.DataGridDataModel;
import com.spx.entity.Dy;
import com.spx.service.DyService;
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
@RequestMapping(value="dy")
public class DyController extends BaseController{

    @Autowired
    private DyService dyService;

    @RequestMapping(value="go_center_dy",method = RequestMethod.GET)
    public String go_center_dy(){
        return "dy/dy_center";
    }

    @RequestMapping(value="list",method = RequestMethod.POST)
    @ResponseBody
    public DataGridDataModel<Dy> list(int page, int rows){
        DataGridDataModel<Dy> dataGridDataModel = new DataGridDataModel<Dy>();
        dataGridDataModel.setRows(dyService.queryList(page,rows));
        dataGridDataModel.setTotal(dyService.findTotal());
        return dataGridDataModel;
    }

    @RequestMapping(value="save",method = RequestMethod.POST)
    public void save(Dy dy){
        dyService.insert(dy);
    }

    @RequestMapping(value="findDyById",method = RequestMethod.POST)
    @ResponseBody
    public Dy findDyById(@RequestParam(value="id", required=true) int id){
        return dyService.findDyById(id);
    }

    @RequestMapping(value="edit",method = RequestMethod.POST)
    public void edit(Dy dy){
        dyService.edit(dy);
    }

    @RequestMapping(value="delete",method = RequestMethod.POST)
    public void delete(String dys){
        JSONArray jsonArray = JSONArray.fromObject(dys);
        for(int i=0;i<jsonArray.size();i++){
            JSONObject dy = JSONArray.fromObject(dys).getJSONObject(i);
            dyService.deleteDyById(Integer.parseInt(dy.get("id").toString()));
        }
    }

    @RequestMapping(value="go_dy_diy",method = RequestMethod.GET)
    public String go_dy_diy(HttpSession session){
        session.removeAttribute("likedy");
        List<Dy> alldy = dyService.alldy(null,1);
        Long total = dyService.findTotal();
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
        session.setAttribute("alldy",alldy);
        session.setAttribute("total",total);
        session.setAttribute("allPage",allPage2);
        return "dy/dy_diy";
    }

    @RequestMapping(value="go_dy_diy2",method = RequestMethod.GET)
    public String go_dy_diy2(int currentPage,HttpSession session){
        session.setAttribute("currentPage",currentPage);
        Dy dy = (Dy)session.getAttribute("likedy");
        List<Dy> alldy = dyService.alldy(dy,currentPage);
        session.setAttribute("alldy",alldy);
        return "dy/dy_diy";
    }

    @RequestMapping(value="go_dy_diy3",method = RequestMethod.POST)
    public String go_dy_diy3(Dy dy, HttpSession session){
        session.setAttribute("likedy",dy);
        List<Dy> alldy = dyService.alldy(dy,1);
        session.setAttribute("alldy",alldy);
        int total = dyService.findTotalLike(dy);
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
        return "dy/dy_diy";
    }

    @ResponseBody
    @RequestMapping(value="adddy",method = RequestMethod.GET)
    public Map adddy(@RequestParam(value="id", required=true) int id, HttpSession session){
        Map map = new HashMap();
        Dy dy = dyService.findDyById(id);
        session.setAttribute("mydy",dy);
        map.put("dyname",dy.getName());
        return map;
    }

}
