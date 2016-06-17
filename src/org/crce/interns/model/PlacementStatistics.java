package org.crce.interns.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.SecondaryTable;
import javax.persistence.SecondaryTables;
import javax.persistence.Table;

@Entity
@Table(name = "placement_statistics", catalog = "placement_statistics_schema")
/*@SecondaryTables({	
	@SecondaryTable(name = "job_schema.company", pkJoinColumns = @PrimaryKeyJoinColumn(name = "company_id") ) 
	})*/
public class PlacementStatistics {
	

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)	
	@Column(name = "placment_stats_id")
	private int placmentStatsId;
	
	@Column(name = "company_id")
	private int companyId;
	
	@Column(name = "year")
	private String year;
	
	@Column(name = "branch")
	private String branch;
	
	@Column(name = "no_applied")
	private int noApplied;
	
	@Column(name = "total_no_of_students")
	private int totalNoOfStudents;
	
	@Column(name = "no_joined")
	private int noJoined;
	
	@Column(name = "no_dual_placed")
	private int noDualPlaced;
	
	@Column(name = "created_by")
	private String createdBy;
	
	@Column(name = "created_date")
	private Date createdDate;
	
	@Column(name = "modified_by")
	private String modifiedBy;
	
	@Column(name = "modified_date")
	private Date modifiedDate;

	public int getPlacmentStatsId() {
		return placmentStatsId;
	}

	public void setPlacmentStatsId(int placmentStatsId) {
		this.placmentStatsId = placmentStatsId;
	}

	public int getCompanyId() {
		return companyId;
	}

	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public int getNoApplied() {
		return noApplied;
	}

	public void setNoApplied(int noApplied) {
		this.noApplied = noApplied;
	}

	public int getTotalNoOfStudents() {
		return totalNoOfStudents;
	}

	public void setTotalNoOfStudents(int totalNoOfStudents) {
		this.totalNoOfStudents = totalNoOfStudents;
	}

	public int getNoJoined() {
		return noJoined;
	}

	public void setNoJoined(int noJoined) {
		this.noJoined = noJoined;
	}

	public int getNoDualPlaced() {
		return noDualPlaced;
	}

	public void setNoDualPlaced(int noDualPlaced) {
		this.noDualPlaced = noDualPlaced;
	}

	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public String getModifiedBy() {
		return modifiedBy;
	}

	public void setModifiedBy(String modifiedBy) {
		this.modifiedBy = modifiedBy;
	}

	public Date getModifiedDate() {
		return modifiedDate;
	}

	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}

	
		
}
