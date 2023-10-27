package com.jsp.studentservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jsp.student.Student;
import com.jsp.studentdao.StudentDao;

@Component
public class StudentService {
	
	@Autowired
	private StudentDao studentDao;
	
	
	public Student saveStudent(Student student) {
		return studentDao.saveStudent(student);
	}
	
	public boolean deleteStudentById(int id) {
		return studentDao.deleteStudentById(id);
	}
	
	public Student updateStudentById(int id,Student student) {
		Student s=studentDao.getStudentById(id);
		s.setName(student.getName());
		s.setEmail(student.getEmail());
		return studentDao.updateStudentById(s);
	}
	
	public Student getStudentById(int id) {
		return studentDao.getStudentById(id);
	}
	
	public List<Student> getAllStudent(){
		return studentDao.getAllStudent();
	}		

}
