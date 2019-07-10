package com.spx.controller;

import com.spx.easyuiUtil.DataGridDataModel;
import com.spx.entity.Yp;
import com.spx.service.YpService;
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
@RequestMapping(value="yp")
public class YpController extends BaseController{

    @Autowired
    private YpService ypService;

    @RequestMapping(value="go_center_yp",method = RequestMethod.GET)
    public String go_center_yp(){
        return "yp/yp_center";
    }

    @RequestMapping(value="list",method = RequestMethod.POST)
    @ResponseBody
    public DataGridDataModel<Yp> list(int page, int rows){
        DataGridDataModel<Yp> dataGridDataModel = new DataGridDataModel<Yp>();
        dataGridDataModel.setRows(ypService.queryList(page,rows));
        dataGridDataModel.setTotal(ypService.findTotal());
        return dataGridDataModel;
    }

    @RequestMapping(value="save",method = RequestMethod.POST)
    public void save(Yp yp){
        ypService.insert(yp);
    }

    @RequestMapping(value="findYpById",method = RequestMethod.POST)
    @ResponseBody
    public Yp findYpById(@RequestParam(value="id", required=true) int id){
        return ypService.findYpById(id);
    }

    @RequestMapping(value="edit",method = RequestMethod.POST)
    public void edit(Yp yp){
        ypService.edit(yp);
    }

    @RequestMapping(value="delete",method = RequestMethod.POST)
    public void delete(String yps){
        JSONArray jsonArray = JSONArray.fromObject(yps);
        for(int i=0;i<jsonArray.size();i++){
            JSONObject yp = JSONArray.fromObject(yps).getJSONObject(i);
            ypService.deleteYpById(Integer.parseInt(yp.get("id").toString()));
        }
    }

    @RequestMapping(value="go_yp_diy",method = RequestMethod.GET)
    public String go_yp_diy(HttpSession session){
        session.removeAttribute("likeyp");
        List<Yp> allyp = ypService.allyp(null,1);
        Long total = ypService.findTotal();
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
        session.setAttribute("allyp",allyp);
        session.setAttribute("total",total);
        session.setAttribute("allPage",allPage2);
        return "yp/yp_diy";
    }

    @RequestMapping(value="go_yp_diy2",method = RequestMethod.GET)
    public String go_yp_diy2(int currentPage,HttpSession session){
        session.setAttribute("currentPage",currentPage);
        Yp yp = (Yp)session.getAttribute("likeyp");
        List<Yp> allyp = ypService.allyp(yp,currentPage);
        session.setAttribute("allyp",allyp);
        return "yp/yp_diy";
    }

    @RequestMapping(value="go_yp_diy3",method = RequestMethod.POST)
    public String go_yp_diy3(Yp yp, HttpSession session){
        session.setAttribute("likeyp",yp);
        List<Yp> allyp = ypService.allyp(yp,1);
        session.setAttribute("allyp",allyp);
        int total = ypService.findTotalLike(yp);
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
        return "yp/yp_diy";
    }

    @ResponseBody
    @RequestMapping(value="addyp",method = RequestMethod.GET)
    public Map addyp(@RequestParam(value="id", required=true) int id, HttpSession session){
        Map map = new HashMap();
        Yp yp = ypService.findYpById(id);
        session.setAttribute("myyp",yp);
        map.put("ypname",yp.getName());
        return map;
    }
}
