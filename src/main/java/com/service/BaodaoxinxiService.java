package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.BaodaoxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.BaodaoxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.BaodaoxinxiView;


/**
 * 报到信息
 *
 * @author 
 * @email 
 * @date 2023-03-23 18:40:56
 */
public interface BaodaoxinxiService extends IService<BaodaoxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<BaodaoxinxiVO> selectListVO(Wrapper<BaodaoxinxiEntity> wrapper);
   	
   	BaodaoxinxiVO selectVO(@Param("ew") Wrapper<BaodaoxinxiEntity> wrapper);
   	
   	List<BaodaoxinxiView> selectListView(Wrapper<BaodaoxinxiEntity> wrapper);
   	
   	BaodaoxinxiView selectView(@Param("ew") Wrapper<BaodaoxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<BaodaoxinxiEntity> wrapper);
   	

    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<BaodaoxinxiEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<BaodaoxinxiEntity> wrapper);
    
    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<BaodaoxinxiEntity> wrapper);


    List<Map<String, Object>> xueshengxingmingbaodaozhuangtaiTypeStat(Map<String, Object> params,Wrapper<BaodaoxinxiEntity> wrapper);

}

