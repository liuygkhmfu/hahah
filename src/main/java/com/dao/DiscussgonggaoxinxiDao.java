package com.dao;

import com.entity.DiscussgonggaoxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussgonggaoxinxiVO;
import com.entity.view.DiscussgonggaoxinxiView;


/**
 * 公告信息评论表
 * 
 * @author 
 * @email 
 * @date 2023-03-23 18:40:56
 */
public interface DiscussgonggaoxinxiDao extends BaseMapper<DiscussgonggaoxinxiEntity> {
	
	List<DiscussgonggaoxinxiVO> selectListVO(@Param("ew") Wrapper<DiscussgonggaoxinxiEntity> wrapper);
	
	DiscussgonggaoxinxiVO selectVO(@Param("ew") Wrapper<DiscussgonggaoxinxiEntity> wrapper);
	
	List<DiscussgonggaoxinxiView> selectListView(@Param("ew") Wrapper<DiscussgonggaoxinxiEntity> wrapper);

	List<DiscussgonggaoxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussgonggaoxinxiEntity> wrapper);
	
	DiscussgonggaoxinxiView selectView(@Param("ew") Wrapper<DiscussgonggaoxinxiEntity> wrapper);
	

}
