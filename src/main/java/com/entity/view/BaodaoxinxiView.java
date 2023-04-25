package com.entity.view;

import com.entity.BaodaoxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 报到信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-03-23 18:40:56
 */
@TableName("baodaoxinxi")
public class BaodaoxinxiView  extends BaodaoxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public BaodaoxinxiView(){
	}
 
 	public BaodaoxinxiView(BaodaoxinxiEntity baodaoxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, baodaoxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
