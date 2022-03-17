package net.skhu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import net.skhu.dto.Register;

@Mapper
public interface RegisterMapper {
	
	@Select(  " SELECT                "
			+ " r.*,                  "
			+ " s.studentNumber,      "
			+ " s.name studentName,   "
			+ " c.courseName,         "
			+ " c.unit                "
			+ " from register r       "
			+ " JOIN student s        "
			+ " ON r.studentID = s.id "
			+ " JOIN course c         "
			+ " ON r.courseID = c.id  "
			+ " ORDER BY s.studentNumber")
	List<Register> findAll();
}