package com.spx.controller;

import com.spx.easyuiUtil.DataGridDataModel;
import com.spx.entity.Nc;
import com.spx.service.NcService;
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
@RequestMapping(value="nc")
public class NcController extends BaseController{

    @Autowired
    private NcService ncService;

    @RequestMapping(value="go_center_nc",method = RequestMethod.GET)
    public String go_center_nc(){
        return "nc/nc_center";
    }

    @RequestMapping(value="list",method = RequestMethod.POST)
    @ResponseBody
    public DataGridDataModel<Nc> list(int page, int rows){
        DataGridDataModel<Nc> dataGridDataModel = new DataGridDataModel<Nc>();
        dataGridDataModel.setRows(ncService.queryList(page,rows));
        dataGridDataModel.setTotal(ncService.findTotal());
        return dataGridDataModel;
    }

    @RequestMapping(value="save",method = RequestMethod.POST)
    public void save(Nc nc){
        ncService.insert(nc);
    }

    @RequestMapping(value="findNcById",method = RequestMethod.POST)
    @ResponseBody
    public Nc findNcById(@RequestParam(value="id", required=true) int id){
        return ncService.findNcById(id);
    }

    @RequestMapping(value="edit",method = RequestMethod.POST)
    public void edit(Nc nc){
        ncService.edit(nc);
    }

    @RequestMapping(value="delete",method = RequestMethod.POST)
    public void delete(String ncs){
        JSONArray jsonArray = JSONArray.fromObject(ncs);
        for(int i=0;i<jsonArray.size();i++){
            JSONObject nc = JSONArray.fromObject(ncs).getJSONObject(i);
            ncService.deleteNcById(Integer.parseInt(nc.get("id").toString()));
        }
    }

    @RequestMapping(value="go_nc_diy",method = RequestMethod.GET)
    public String go_nc_diy(HttpSession session){
        session.removeAttribute("likenc");
        List<Nc> allnc = ncService.allnc(null,1);
        Long total = ncService.findTotal();
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
        session.setAttribute("allnc",allnc);
        session.setAttribute("total",total);
        session.setAttribute("allPage",allPage2);
        return "nc/nc_diy";
    }

    @RequestMapping(value="go_nc_diy2",method = RequestMethod.GET)
    public String go_nc_diy2(int currentPage,HttpSession session){
        session.setAttribute("currentPage",currentPage);
        Nc nc = (Nc)session.getAttribute("likenc");
        List<Nc> allnc = ncService.allnc(nc,currentPage);
        session.setAttribute("allnc",allnc);
        return "nc/nc_diy";
    }

    @RequestMapping(value="go_nc_diy3",method = RequestMethod.POST)
    public String go_nc_diy3(Nc nc, HttpSession session){
        session.setAttribute("likenc",nc);
        List<Nc> allnc = ncService.allnc(nc,1);
        session.setAttribute("allnc",allnc);
        int total = ncService.findTotalLike(nc);
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
        return "nc/nc_diy";
    }

    @ResponseBody
    @RequestMapping(value="addnc",method = RequestMethod.GET)
    public Map addnc(@RequestParam(value="id", required=true) int id, HttpSession session){
        Map map = new HashMap();
        Nc nc = ncService.findNcById(id);
        session.setAttribute("mync",nc);
        map.put("ncname",nc.getName());
        return map;
    }

}
