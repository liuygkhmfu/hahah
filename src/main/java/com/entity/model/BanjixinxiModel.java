package com.entity.model;

import com.entity.BanjixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 班级信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-03-23 18:40:56
 */
public class BanjixinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 班级人数
	 */
	
	private Integer banjirenshu;
		
	/**
	 * 班助账号
	 */
	
	private String banzhuzhanghao;
		
	/**
	 * 班助姓名
	 */
	
	private String banzhuxingming;
		
	/**
	 * 联系方式
	 */
	
	private String lianxifangshi;
		
	/**
	 * 班级封面
	 */
	
	private String banjifengmian;
		
	/**
	 * 班级位置
	 */
	
	private String banjiweizhi;
		
	/**
	 * 班级介绍
	 */
	
	private String banjijieshao;
				
	
	/**
	 * 设置：班级人数
	 */
	 
	public void setBanjirenshu(Integer banjirenshu) {
		this.banjirenshu = banjirenshu;
	}
	
	/**
	 * 获取：班级人数
	 */
	public Integer getBanjirenshu() {
		return banjirenshu;
	}
				
	
	/**
	 * 设置：班助账号
	 */
	 
	public void setBanzhuzhanghao(String banzhuzhanghao) {
		this.banzhuzhanghao = banzhuzhanghao;
	}
	
	/**
	 * 获取：班助账号
	 */
	public String getBanzhuzhanghao() {
		return banzhuzhanghao;
	}
				
	
	/**
	 * 设置：班助姓名
	 */
	 
	public void setBanzhuxingming(String banzhuxingming) {
		this.banzhuxingming = banzhuxingming;
	}
	
	/**
	 * 获取：班助姓名
	 */
	public String getBanzhuxingming() {
		return banzhuxingming;
	}
				
	
	/**
	 * 设置：联系方式
	 */
	 
	public void setLianxifangshi(String lianxifangshi) {
		this.lianxifangshi = lianxifangshi;
	}
	
	/**
	 * 获取：联系方式
	 */
	public String getLianxifangshi() {
		return lianxifangshi;
	}
				
	
	/**
	 * 设置：班级封面
	 */
	 
	public void setBanjifengmian(String banjifengmian) {
		this.banjifengmian = banjifengmian;
	}
	
	/**
	 * 获取：班级封面
	 */
	public String getBanjifengmian() {
		return banjifengmian;
	}
				
	
	/**
	 * 设置：班级位置
	 */
	 
	public void setBanjiweizhi(String banjiweizhi) {
		this.banjiweizhi = banjiweizhi;
	}
	
	/**
	 * 获取：班级位置
	 */
	public String getBanjiweizhi() {
		return banjiweizhi;
	}
				
	
	/**
	 * 设置：班级介绍
	 */
	 
	public void setBanjijieshao(String banjijieshao) {
		this.banjijieshao = banjijieshao;
	}
	
	/**
	 * 获取：班级介绍
	 */
	public String getBanjijieshao() {
		return banjijieshao;
	}
			
}
