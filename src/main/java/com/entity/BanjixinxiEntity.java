package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 班级信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2023-03-23 18:40:56
 */
@TableName("banjixinxi")
public class BanjixinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public BanjixinxiEntity() {
		
	}
	
	public BanjixinxiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 班级名称
	 */
					
	private String banjimingcheng;
	
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
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：班级名称
	 */
	public void setBanjimingcheng(String banjimingcheng) {
		this.banjimingcheng = banjimingcheng;
	}
	/**
	 * 获取：班级名称
	 */
	public String getBanjimingcheng() {
		return banjimingcheng;
	}
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
