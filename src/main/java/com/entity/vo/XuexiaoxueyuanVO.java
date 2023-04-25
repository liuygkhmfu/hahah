package com.entity.vo;

import com.entity.XuexiaoxueyuanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 学校学院
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2023-03-23 18:40:56
 */
public class XuexiaoxueyuanVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 学院图片
	 */
	
	private String xueyuantupian;
		
	/**
	 * 学院专业
	 */
	
	private String xueyuanzhuanye;
		
	/**
	 * 负责人
	 */
	
	private String fuzeren;
		
	/**
	 * 联系电话
	 */
	
	private String lianxidianhua;
		
	/**
	 * 学院地址
	 */
	
	private String xueyuandizhi;
		
	/**
	 * 成立日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date chengliriqi;
		
	/**
	 * 学院简介
	 */
	
	private String xueyuanjianjie;
		
	/**
	 * 最近点击时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date clicktime;
		
	/**
	 * 点击次数
	 */
	
	private Integer clicknum;
				
	
	/**
	 * 设置：学院图片
	 */
	 
	public void setXueyuantupian(String xueyuantupian) {
		this.xueyuantupian = xueyuantupian;
	}
	
	/**
	 * 获取：学院图片
	 */
	public String getXueyuantupian() {
		return xueyuantupian;
	}
				
	
	/**
	 * 设置：学院专业
	 */
	 
	public void setXueyuanzhuanye(String xueyuanzhuanye) {
		this.xueyuanzhuanye = xueyuanzhuanye;
	}
	
	/**
	 * 获取：学院专业
	 */
	public String getXueyuanzhuanye() {
		return xueyuanzhuanye;
	}
				
	
	/**
	 * 设置：负责人
	 */
	 
	public void setFuzeren(String fuzeren) {
		this.fuzeren = fuzeren;
	}
	
	/**
	 * 获取：负责人
	 */
	public String getFuzeren() {
		return fuzeren;
	}
				
	
	/**
	 * 设置：联系电话
	 */
	 
	public void setLianxidianhua(String lianxidianhua) {
		this.lianxidianhua = lianxidianhua;
	}
	
	/**
	 * 获取：联系电话
	 */
	public String getLianxidianhua() {
		return lianxidianhua;
	}
				
	
	/**
	 * 设置：学院地址
	 */
	 
	public void setXueyuandizhi(String xueyuandizhi) {
		this.xueyuandizhi = xueyuandizhi;
	}
	
	/**
	 * 获取：学院地址
	 */
	public String getXueyuandizhi() {
		return xueyuandizhi;
	}
				
	
	/**
	 * 设置：成立日期
	 */
	 
	public void setChengliriqi(Date chengliriqi) {
		this.chengliriqi = chengliriqi;
	}
	
	/**
	 * 获取：成立日期
	 */
	public Date getChengliriqi() {
		return chengliriqi;
	}
				
	
	/**
	 * 设置：学院简介
	 */
	 
	public void setXueyuanjianjie(String xueyuanjianjie) {
		this.xueyuanjianjie = xueyuanjianjie;
	}
	
	/**
	 * 获取：学院简介
	 */
	public String getXueyuanjianjie() {
		return xueyuanjianjie;
	}
				
	
	/**
	 * 设置：最近点击时间
	 */
	 
	public void setClicktime(Date clicktime) {
		this.clicktime = clicktime;
	}
	
	/**
	 * 获取：最近点击时间
	 */
	public Date getClicktime() {
		return clicktime;
	}
				
	
	/**
	 * 设置：点击次数
	 */
	 
	public void setClicknum(Integer clicknum) {
		this.clicknum = clicknum;
	}
	
	/**
	 * 获取：点击次数
	 */
	public Integer getClicknum() {
		return clicknum;
	}
			
}
