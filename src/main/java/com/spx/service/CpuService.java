package com.spx.service;

import com.spx.dao.BaseDao;
import com.spx.dao.CpuDao;
import com.spx.entity.Cpu;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.DEFAULT)
@Service
public class CpuService extends BaseService<Cpu>{

    @Autowired
    private CpuDao cpuDao;

    @Override
    protected BaseDao<Cpu> getBaseDao() {
        return cpuDao;
    }

    public Long findTotal(){
        return cpuDao.findTotal();
    }

    public void insert(Cpu cpu){
        cpuDao.insert(cpu);
    }

    public Cpu findCpuById(int id){
        return cpuDao.selectById(id);
    }

    public void edit(Cpu cpu){
        cpuDao.update(cpu);
    }

    public void deleteCpuById(int id){
        cpuDao.deleteById(id);
    }

    public Map<String,String> excel_up(MultipartFile file){
        String orgName = file.getOriginalFilename();//获取上传文件的原名
        String keywords = "";
        String code = "0";
        try {
            Workbook wb = getWorkbook(orgName,file.getInputStream());
            Sheet sheet = wb.getSheetAt(0);//获取第一个工作sheet
            for(int x=1;x<sheet.getPhysicalNumberOfRows();x++){ //返回物理定义的行数（不是工作表中的行数）x=0就从第一行开始
                Row row = sheet.getRow(x);
                if(row == null){
                    continue;
                }
                Cell name_cell = row.getCell(0);
                Cell price_cell = row.getCell(1);
                Cell cc_cell = row.getCell(2);
                Cell zp_cell = row.getCell(3);
                Cell dtjspl_cell = row.getCell(4);
                Cell sjhc_cell = row.getCell(5);
                Cell hxsl_cell = row.getCell(6);
                Cell fs_cell = row.getCell(7);
                Cell ms_cell = row.getCell(8);
                Cell more_cell = row.getCell(9);

                String name = "";
                int price=0;
                String cc="";
                String zp="";
                String dtjspl="";
                String sjhc="";
                String hxsl="";
                int fs=0;
                String ms="";
                String more="";

                name = getVal(name_cell);
                price = Integer.parseInt(getVal(price_cell).replace(".0",""));
                cc = getVal(cc_cell);
                zp = getVal(zp_cell);
                dtjspl = getVal(dtjspl_cell);
                sjhc = getVal(sjhc_cell);
                hxsl = getVal(hxsl_cell);
                fs =  Integer.parseInt(getVal(fs_cell).replace(".0",""));
                ms = getVal(ms_cell);
                more = getVal(more_cell);

                Cpu cpu = new Cpu();
                cpu.setName(name);
                cpu.setPrice(price);
                cpu.setCc(cc);
                cpu.setZp(zp);
                cpu.setDtjspl(dtjspl);
                cpu.setSjhc(sjhc);
                cpu.setHxsl(hxsl);
                cpu.setFs(fs);
                cpu.setMs(ms);
                cpu.setMore(more);

                insert(cpu);
            }
            keywords = "文件读取完毕";
            code = "1";
        } catch (IOException e) {
            keywords = "文件读取失败";
            code = "-1";
            e.printStackTrace();
        }
        Map<String,String> tips = new HashMap<String, String>();
        tips.put("code",code);
        tips.put("text",keywords);
        return tips;
    }
    private Workbook getWorkbook(String name, InputStream in) throws IOException {
        if(name.endsWith(".xls")){
            return new HSSFWorkbook(in);//HSSFWorkbook:是操作Excel2003以前（包括2003）的版本，扩展名是.xls
        }
        return new XSSFWorkbook(in);//XSSFWorkbook:是操作Excel2007的版本，扩展名是.xlsx
    }

    private String getVal(Cell cell){
        String result="";
        switch(cell.getCellType()){
            case Cell.CELL_TYPE_STRING:
                result = ""+cell.getRichStringCellValue().getString();
                break;
            case Cell.CELL_TYPE_NUMERIC:
                result = ""+cell.getNumericCellValue();
                break;
            case Cell.CELL_TYPE_BOOLEAN:
                result = ""+cell.getBooleanCellValue();
                break;
            case Cell.CELL_TYPE_FORMULA:
                result = ""+cell.getCellFormula();
                break;
            default:
                break;
        }
        return result;
    }

    public List<Cpu> allcpu(Cpu cpu,int currentPage){
        if(currentPage==0){
            currentPage=1;
        }
        currentPage -=1;
        currentPage *=5;
        List<Cpu> allcpu = cpuDao.allcpu(cpu,currentPage);
        return allcpu;
    }

    public int findTotalLike(Cpu cpu){
        return cpuDao.findTotalLike(cpu);
    }
}
