package org.blackmine.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "organizations")
public class Organization extends BaseEntity{

	/**
	 * 
	 */
	private static final long serialVersionUID = 4075912492260130604L;
	private String name;
	@Column(name="description")
	@NotEmpty
	private String desc;
	private float  lat;
	private float  lng;
	@Column(name="name",unique=true)
	@NotEmpty
	public String getName() {
		return name;
	}
	public String getDesc() {
		return desc;
	}
	public float getLat() {
		return lat;
	}
	public float getLng() {
		return lng;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public void setLat(float lat) {
		this.lat = lat;
	}
	public void setLng(float lng) {
		this.lng = lng;
	}
	
	
	public boolean equals(Object object)
	{
		if (super.equals(object)){
			if ( ! (object instanceof Organization)){
				return false;
			}
			return true;
		}
		return false;
	}

}
