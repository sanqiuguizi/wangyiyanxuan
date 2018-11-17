package com.icss.dao.Impl;

import java.util.List;

import com.icss.dao.GoodsDao;
import com.icss.dto.Goods;
import com.icss.dto.GoodsColor;
import com.icss.dto.GoodsImges;
import com.icss.dto.GoodsSize;
import com.icss.util.DBUtil;

public class GoodsDaoImpl implements GoodsDao {

	@Override
	public List<Goods> findAll(String bigKind,int fRank) {
		if(fRank==0){
			return DBUtil.find("select * from Goods where GoodBigKind=?", new Object[]{bigKind}, Goods.class);
		}else if(fRank==1){
			return DBUtil.find("select * from Goods where GoodBigKind=? order by GoodPrice asc", new Object[]{bigKind}, Goods.class);
		}else if(fRank==2){
			return DBUtil.find("select * from Goods where GoodBigKind=? order by GoodPrice desc", new Object[]{bigKind}, Goods.class);
		}else{
			return DBUtil.find("select * from Goods where GoodBigKind=? order by GoodUpTime desc", new Object[]{bigKind}, Goods.class);
		}
		
	}

	@Override
	public List<Goods> findByKind(String kind,int fRank) {
		if(fRank==0){
			return DBUtil.find("select * from Goods where Goodkind=?", new Object[]{kind}, Goods.class);
		}else if(fRank==1){
			return DBUtil.find("select * from Goods where Goodkind=? order by GoodPrice asc", new Object[]{kind}, Goods.class);
		}else if(fRank==2){
			return DBUtil.find("select * from Goods where Goodkind=? order by GoodPrice desc", new Object[]{kind}, Goods.class);
		}else{
			return DBUtil.find("select * from Goods where Goodkind=? order by GoodUpTime desc", new Object[]{kind}, Goods.class);
		}
	}

	@Override
	public Goods findById(int id) {
		return DBUtil.findOne("select * from Goods where GoodId=?", new Object[]{id}, Goods.class);
	}

	@Override
	public List<GoodsImges> findImgById(int id) {
		return DBUtil.find("select * from goods_imges where GoodId=?", new Object[]{id}, GoodsImges.class);
	}

	@Override
	public List<GoodsColor> findColById(int id) {
		return DBUtil.find("select * from goods_color where GoodId=?", new Object[]{id}, GoodsColor.class);
	}

	@Override
	public List<GoodsSize> findSizeById(int id) {
		return DBUtil.find("select SizePriId,Size,SizePrice from goods_sizetype t1,goods_sizeprice t2 where t1.SizeId=t2.SizeId and t2.GoodId=? ORDER BY SizePrice", new Object[]{id}, GoodsSize.class);
	}

	@Override
	public boolean setGoodStock(int id,int num) {
		return DBUtil.dml("update goods set GoodStock=? where GoodId=?", new Object[]{num,id});
	}

	@Override
	public List<Goods> findByUpTime() {
		return DBUtil.find("select * from goods order by GoodUpTime desc limit 0,12", null, Goods.class);
	}

	@Override
	public List<Goods> findHot() {
		return DBUtil.find("select * from goods where GoodId in(select t1.GoodId from (select GoodId from goods_orderdetail GROUP BY GoodId ORDER BY count(num) desc limit 0,7) t1)", null, Goods.class);
	}

	@Override
	public List<Goods> findAnLi() {
		return DBUtil.find("select * from goods where GoodId in(select t1.GoodId from (select GoodId from shoppingcar GROUP BY GoodId ORDER BY count(num) desc limit 0,7) t1)", null, Goods.class);
	}

	@Override
	public List<Goods> Search(String str,int flag) {
		if(flag==0){
			return DBUtil.find("select * from goods where GoodName like concat('%',?,'%')", new Object[]{str}, Goods.class);
		}else if(flag==1){
			return DBUtil.find("select * from goods where GoodName like concat('%',?,'%') ORDER BY GoodPrice", new Object[]{str}, Goods.class);
		}else if(flag==2){
			return DBUtil.find("select * from goods where GoodName like concat('%',?,'%') ORDER BY GoodPrice desc", new Object[]{str}, Goods.class);
		}else{
			return DBUtil.find("select * from goods where GoodName like concat('%',?,'%') ORDER BY GoodUpTime desc", new Object[]{str}, Goods.class);
		}
	}
	
	
	
	
}
