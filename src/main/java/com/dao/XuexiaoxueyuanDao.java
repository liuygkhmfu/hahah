package com.dao;

import com.entity.XuexiaoxueyuanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XuexiaoxueyuanVO;
import com.entity.view.XuexiaoxueyuanView;


/**
 * 学校学院
 * 
 * @author 
 * @email 
 * @date 2023-03-23 18:40:56
 */
public interface XuexiaoxueyuanDao extends BaseMapper<XuexiaoxueyuanEntity> {
	
	List<XuexiaoxueyuanVO> selectListVO(@Param("ew") Wrapper<XuexiaoxueyuanEntity> wrapper);
	
	XuexiaoxueyuanVO selectVO(@Param("ew") Wrapper<XuexiaoxueyuanEntity> wrapper);
	
	List<XuexiaoxueyuanView> selectListView(@Param("ew") Wrapper<XuexiaoxueyuanEntity> wrapper);

	List<XuexiaoxueyuanView> selectListView(Pagination page,@Param("ew") Wrapper<XuexiaoxueyuanEntity> wrapper);
	
	XuexiaoxueyuanView selectView(@Param("ew") Wrapper<XuexiaoxueyuanEntity> wrapper);
	

}
