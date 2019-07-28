package cn.demo.dao;
/**
 * 持久化层
 * @author ASUS
 *
 */

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.demo.pojo.Student;
import cn.demo.tools.PageUtil;

public interface StudentMapper {
	public List<Student> StudentList(@Param("pageUtil")PageUtil pageUtil)throws Exception;
	public Student SelectStudent(Integer id)throws Exception;
	public int SaveStudent(Student student)throws Exception;
	public int ModifyStudent(Student student)throws Exception;
	public int DeleteStudent(Integer id)throws Exception;
	public int count()throws Exception;
}
