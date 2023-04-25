package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.XuexiaoxueyuanEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.XuexiaoxueyuanVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.XuexiaoxueyuanView;


/**
 * 学校学院
 *
 * @author 
 * @email 
 * @date 2023-03-23 18:40:56
 */
public interface XuexiaoxueyuanService extends IService<XuexiaoxueyuanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XuexiaoxueyuanVO> selectListVO(Wrapper<XuexiaoxueyuanEntity> wrapper);
   	
   	XuexiaoxueyuanVO selectVO(@Param("ew") Wrapper<XuexiaoxueyuanEntity> wrapper);
   	
   	List<XuexiaoxueyuanView> selectListView(Wrapper<XuexiaoxueyuanEntity> wrapper);
   	
   	XuexiaoxueyuanView selectView(@Param("ew") Wrapper<XuexiaoxueyuanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XuexiaoxueyuanEntity> wrapper);
   	

}

