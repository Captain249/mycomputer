package com.spx.controller;

import com.spx.easyuiUtil.DataGridDataModel;
import com.spx.entity.Xsq;
import com.spx.service.XsqService;
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
@RequestMapping(value="xsq")
public class XsqController extends BaseController{

    @Autowired
    private XsqService xsqService;

    @RequestMapping(value="go_center_xsq",method = RequestMethod.GET)
    public String go_center_xsq(){
        return "xsq/xsq_center";
    }

    @RequestMapping(value="list",method = RequestMethod.POST)
    @ResponseBody
    public DataGridDataModel<Xsq> list(int page, int rows){
        DataGridDataModel<Xsq> dataGridDataModel = new DataGridDataModel<Xsq>();
        dataGridDataModel.setRows(xsqService.queryList(page,rows));
        dataGridDataModel.setTotal(xsqService.findTotal());
        return dataGridDataModel;
    }

    @RequestMapping(value="save",method = RequestMethod.POST)
    public void save(Xsq xsq){
        xsqService.insert(xsq);
    }

    @RequestMapping(value="findXsqById",method = RequestMethod.POST)
    @ResponseBody
    public Xsq findXsqById(@RequestParam(value="id", required=true) int id){
        return xsqService.findXsqById(id);
    }

    @RequestMapping(value="edit",method = RequestMethod.POST)
    public void edit(Xsq xsq){
        xsqService.edit(xsq);
    }

    @RequestMapping(value="delete",method = RequestMethod.POST)
    public void delete(String xsqs){
        JSONArray jsonArray = JSONArray.fromObject(xsqs);
        for(int i=0;i<jsonArray.size();i++){
            JSONObject xsq = JSONArray.fromObject(xsqs).getJSONObject(i);
            xsqService.deleteXsqById(Integer.parseInt(xsq.get("id").toString()));
        }
    }

    @RequestMapping(value="go_xsq_diy",method = RequestMethod.GET)
    public String go_xsq_diy(HttpSession session){
        session.removeAttribute("likexsq");
        List<Xsq> allxsq = xsqService.allxsq(null,1);
        Long total = xsqService.findTotal();
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
        session.setAttribute("allxsq",allxsq);
        session.setAttribute("total",total);
        session.setAttribute("allPage",allPage2);
        return "xsq/xsq_diy";
    }

    @RequestMapping(value="go_xsq_diy2",method = RequestMethod.GET)
    public String go_xsq_diy2(int currentPage,HttpSession session){
        session.setAttribute("currentPage",currentPage);
        Xsq xsq = (Xsq)session.getAttribute("likexsq");
        List<Xsq> allxsq = xsqService.allxsq(xsq,currentPage);
        session.setAttribute("allxsq",allxsq);
        return "xsq/xsq_diy";
    }

    @RequestMapping(value="go_xsq_diy3",method = RequestMethod.POST)
    public String go_xsq_diy3(Xsq xsq,HttpSession session){
        session.setAttribute("likexsq",xsq);
        List<Xsq> allxsq = xsqService.allxsq(xsq,1);
        session.setAttribute("allxsq",allxsq);
        int total = xsqService.findTotalLike(xsq);
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
        return "xsq/xsq_diy";
    }

    @ResponseBody
    @RequestMapping(value="addxsq",method = RequestMethod.GET)
    public Map addxsq(@RequestParam(value="id", required=true) int id, HttpSession session){
        Map map = new HashMap();
        Xsq xsq = xsqService.findXsqById(id);
        session.setAttribute("myxsq",xsq);
        map.put("xsqname",xsq.getName());
        return map;
    }
}
