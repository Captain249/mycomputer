package com.spx.controller;

import com.spx.easyuiUtil.DataGridDataModel;
import com.spx.entity.Cpu;
import com.spx.service.CpuService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value="cpu")
public class CpuController extends BaseController{

    @Autowired
    private CpuService cpuService;

    @RequestMapping(value="go_center_cpu",method = RequestMethod.GET)
    public String go_center_cpu(){
        return "cpu/cpu_center";
    }

    @RequestMapping(value="list",method = RequestMethod.POST)
    @ResponseBody
    public DataGridDataModel<Cpu> list(int page,int rows){
        DataGridDataModel<Cpu> dataGridDataModel = new DataGridDataModel<Cpu>();
        dataGridDataModel.setRows(cpuService.queryList(page,rows));
        dataGridDataModel.setTotal(cpuService.findTotal());
        return dataGridDataModel;
    }

    @RequestMapping(value="save",method = RequestMethod.POST)
    public void save(Cpu cpu){
        cpuService.insert(cpu);
    }

    @RequestMapping(value="findCpuById",method = RequestMethod.POST)
    @ResponseBody
    public Cpu findCpuById(@RequestParam(value="id", required=true) int id){
        return cpuService.findCpuById(id);
    }

    @RequestMapping(value="edit",method = RequestMethod.POST)
    public void edit(Cpu cpu){
        cpuService.edit(cpu);
    }

    @RequestMapping(value="delete",method = RequestMethod.POST)
    public void delete(String cpus){
        //JSONObject cpu = JSONArray.fromObject(cpus).getJSONObject(0);
        JSONArray jsonArray = JSONArray.fromObject(cpus);
        for(int i=0;i<jsonArray.size();i++){
            JSONObject cpu = JSONArray.fromObject(cpus).getJSONObject(i);
            cpuService.deleteCpuById(Integer.parseInt(cpu.get("id").toString()));
        }
    }

    @RequestMapping(value="excel_up",method = RequestMethod.POST)
    @ResponseBody
    public Map<String,String> excel_up(MultipartFile file){
        return cpuService.excel_up(file);
    }

    @RequestMapping(value="go_cpu_diy",method = RequestMethod.GET)
    public String go_cpu_diy(HttpSession session){
        session.removeAttribute("likecpu");
        List<Cpu> allcpu = cpuService.allcpu(null,1);
        Long total = cpuService.findTotal();
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
        session.setAttribute("allcpu",allcpu);
        session.setAttribute("total",total);
        session.setAttribute("allPage",allPage2);
        return "cpu/cpu_diy";
    }

    @RequestMapping(value="go_cpu_diy2",method = RequestMethod.GET)
    public String go_cpu_diy2(int currentPage,HttpSession session){
        session.setAttribute("currentPage",currentPage);
        Cpu cpu = (Cpu)session.getAttribute("likecpu");
        List<Cpu> allcpu = cpuService.allcpu(cpu,currentPage);
        session.setAttribute("allcpu",allcpu);
        return "cpu/cpu_diy";
    }

    @RequestMapping(value="go_cpu_diy3",method = RequestMethod.POST)
    public String go_cpu_diy3(Cpu cpu,HttpSession session){
        session.setAttribute("likecpu",cpu);
        List<Cpu> allcpu = cpuService.allcpu(cpu,1);
        session.setAttribute("allcpu",allcpu);
        int total = cpuService.findTotalLike(cpu);
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
        return "cpu/cpu_diy";
    }

    @ResponseBody
    @RequestMapping(value="addcpu",method = RequestMethod.GET)
    public Map addcpu(@RequestParam(value="id", required=true) int id,HttpSession session){
        Map map = new HashMap();
        Cpu cpu = cpuService.findCpuById(id);
        session.setAttribute("mycpu",cpu);
        map.put("cpuname",cpu.getName());
        return map;
    }
}
