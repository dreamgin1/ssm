package cn.demo.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.demo.dao.StudentMapper;
import cn.demo.pojo.Student;
import cn.demo.tools.PageUtil;
@Service("studentService")
public class StudentServiceImpl implements StudentService{
	@Resource
	private StudentMapper studentMapper;
	@Override
	public List<Student> StudentList(PageUtil pageUtil) throws Exception {
		// TODO Auto-generated method stub
		return studentMapper.StudentList(pageUtil);
	}

	@Override
	public Student SelectStudent(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return studentMapper.SelectStudent(id);
	}

	@Override
	public int SaveStudent(Student student) throws Exception {
		// TODO Auto-generated method stub
		return studentMapper.SaveStudent(student);
	}

	@Override
	public int ModifyStudent(Student student) throws Exception {
		// TODO Auto-generated method stub
		return studentMapper.ModifyStudent(student);
	}

	@Override
	public int DeleteStudent(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return studentMapper.DeleteStudent(id);
	}

	@Override
	public int count() throws Exception {
		// TODO Auto-generated method stub
		return studentMapper.count();
	}

}
