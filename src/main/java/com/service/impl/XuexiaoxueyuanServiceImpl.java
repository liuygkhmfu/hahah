package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.XuexiaoxueyuanDao;
import com.entity.XuexiaoxueyuanEntity;
import com.service.XuexiaoxueyuanService;
import com.entity.vo.XuexiaoxueyuanVO;
import com.entity.view.XuexiaoxueyuanView;

@Service("xuexiaoxueyuanService")
public class XuexiaoxueyuanServiceImpl extends ServiceImpl<XuexiaoxueyuanDao, XuexiaoxueyuanEntity> implements XuexiaoxueyuanService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XuexiaoxueyuanEntity> page = this.selectPage(
                new Query<XuexiaoxueyuanEntity>(params).getPage(),
                new EntityWrapper<XuexiaoxueyuanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XuexiaoxueyuanEntity> wrapper) {
		  Page<XuexiaoxueyuanView> page =new Query<XuexiaoxueyuanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<XuexiaoxueyuanVO> selectListVO(Wrapper<XuexiaoxueyuanEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public XuexiaoxueyuanVO selectVO(Wrapper<XuexiaoxueyuanEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<XuexiaoxueyuanView> selectListView(Wrapper<XuexiaoxueyuanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XuexiaoxueyuanView selectView(Wrapper<XuexiaoxueyuanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
