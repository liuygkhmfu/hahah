package com.entity.model;

import com.entity.SushefenpeiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 宿舍分配
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-03-23 18:40:56
 */
public class SushefenpeiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 宿舍类型
	 */
	
	private String susheleixing;
		
	/**
	 * 宿舍楼
	 */
	
	private String sushelou;
		
	/**
	 * 房间号
	 */
	
	private String fangjianhao;
		
	/**
	 * 学生账号
	 */
	
	private String xueshengzhanghao;
		
	/**
	 * 学生姓名
	 */
	
	private String xueshengxingming;
		
	/**
	 * 床位号
	 */
	
	private String chuangweihao;
		
	/**
	 * 分配日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date fenpeiriqi;
		
	/**
	 * 备注
	 */
	
	private String beizhu;
		
	/**
	 * 班助账号
	 */
	
	private String banzhuzhanghao;
		
	/**
	 * 班助姓名
	 */
	
	private String banzhuxingming;
				
	
	/**
	 * 设置：宿舍类型
	 */
	 
	public void setSusheleixing(String susheleixing) {
		this.susheleixing = susheleixing;
	}
	
	/**
	 * 获取：宿舍类型
	 */
	public String getSusheleixing() {
		return susheleixing;
	}
				
	
	/**
	 * 设置：宿舍楼
	 */
	 
	public void setSushelou(String sushelou) {
		this.sushelou = sushelou;
	}
	
	/**
	 * 获取：宿舍楼
	 */
	public String getSushelou() {
		return sushelou;
	}
				
	
	/**
	 * 设置：房间号
	 */
	 
	public void setFangjianhao(String fangjianhao) {
		this.fangjianhao = fangjianhao;
	}
	
	/**
	 * 获取：房间号
	 */
	public String getFangjianhao() {
		return fangjianhao;
	}
				
	
	/**
	 * 设置：学生账号
	 */
	 
	public void setXueshengzhanghao(String xueshengzhanghao) {
		this.xueshengzhanghao = xueshengzhanghao;
	}
	
	/**
	 * 获取：学生账号
	 */
	public String getXueshengzhanghao() {
		return xueshengzhanghao;
	}
				
	
	/**
	 * 设置：学生姓名
	 */
	 
	public void setXueshengxingming(String xueshengxingming) {
		this.xueshengxingming = xueshengxingming;
	}
	
	/**
	 * 获取：学生姓名
	 */
	public String getXueshengxingming() {
		return xueshengxingming;
	}
				
	
	/**
	 * 设置：床位号
	 */
	 
	public void setChuangweihao(String chuangweihao) {
		this.chuangweihao = chuangweihao;
	}
	
	/**
	 * 获取：床位号
	 */
	public String getChuangweihao() {
		return chuangweihao;
	}
				
	
	/**
	 * 设置：分配日期
	 */
	 
	public void setFenpeiriqi(Date fenpeiriqi) {
		this.fenpeiriqi = fenpeiriqi;
	}
	
	/**
	 * 获取：分配日期
	 */
	public Date getFenpeiriqi() {
		return fenpeiriqi;
	}
				
	
	/**
	 * 设置：备注
	 */
	 
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	
	/**
	 * 获取：备注
	 */
	public String getBeizhu() {
		return beizhu;
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
			
}
