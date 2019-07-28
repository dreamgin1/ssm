package cn.demo.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.demo.pojo.Student;
import cn.demo.service.StudentService;
import cn.demo.tools.PageUtil;

@Controller
@RequestMapping("/Student")
public class StudentController extends BaseController{
	@Resource
	private StudentService studentService;
	@RequestMapping("/StudentList")
	public String StudentList(@RequestParam (value="totalPageNo",required=false,defaultValue="1")Integer totalPageNo,
			Model model)throws Exception{
		int totalCount = studentService.count();
		PageUtil pageUtil = new PageUtil();
		pageUtil.setPageSize(5);
		pageUtil.setTotalCount(totalCount);
		if(totalPageNo >pageUtil.getTotalPageCount()){
			totalPageNo = pageUtil.getTotalPageCount();
		}else if(totalPageNo <1){
			totalPageNo = 1;
		}			
		pageUtil.setTotalPageNo(totalPageNo);
		List<Student> StudentList = studentService.StudentList(pageUtil);
		model.addAttribute("StudentList",StudentList);
		model.addAttribute("pageUtil",pageUtil);
		return "StudentList";
	}
	@RequestMapping("/SelectStudent")
	public String SelectStudent(Integer id,Model model)throws Exception{
		Student student = studentService.SelectStudent(id);
		model.addAttribute("student",student);
		return "SelectStudent";
	}
	@RequestMapping("/SaveStudent")
	public String SaveStudent()throws Exception{
		return "SaveStudent";
	}
	@RequestMapping("/doSaveStudent")
	public String doSaveStudent(String sname,Date birthday,String gender,String telephone,String email,Integer classid)throws Exception{
		Student student = new Student();
		student.setSname(sname);
		student.setBirthday(birthday);
		student.setGender(gender);
		student.setTelephone(telephone);
		student.setEmail(email);
		student.setClassid(classid);
		studentService.SaveStudent(student);
		return "forward:/Student/StudentList";
	}
	@RequestMapping("/ModifyStudent")
	public String ModifyStudent(Integer id,Model model)throws Exception{
		Student student = studentService.SelectStudent(id);
		model.addAttribute("student",student);
		return "ModifyStudent";
	}
	@RequestMapping("/doModifyStudent")
	public String doModifyStudent(Integer id,String sname,Date birthday,String gender,String telephone,String email,Integer classid)throws Exception{
		Student student = new Student();
		student.setId(id);
		student.setSname(sname);
		student.setBirthday(birthday);
		student.setGender(gender);
		student.setTelephone(telephone);
		student.setEmail(email);
		student.setClassid(classid);
		studentService.ModifyStudent(student);
		return"forward:/Student/StudentList";
	}
	@RequestMapping("/DeleteStudent")
	public String DeleteStudent(Integer id)throws Exception{
		System.out.println("==================================================="+id);
		studentService.DeleteStudent(id);
		return"forward:/Student/StudentList";
	}
	
}
