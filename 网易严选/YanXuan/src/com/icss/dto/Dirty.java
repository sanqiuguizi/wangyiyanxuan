package com.icss.dto;

public class Dirty {

	private int dirty_id;
	private String word;
	public Dirty() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Dirty(int dirty_id, String word) {
		super();
		this.dirty_id = dirty_id;
		this.word = word;
	}
	public int getDirty_id() {
		return dirty_id;
	}
	public void setDirty_id(int dirty_id) {
		this.dirty_id = dirty_id;
	}
	public String getWord() {
		return word;
	}
	public void setWord(String word) {
		this.word = word;
	}
	@Override
	public String toString() {
		return "dirty [dirty_id=" + dirty_id + ", word=" + word + "]";
	}
	
	
}
