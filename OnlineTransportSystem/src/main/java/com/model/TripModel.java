 package com.model;

public class TripModel {
	private int tripID;
	private String pid;
	private String bookingDate;
	private String vehicleType;
	private String pickupLoc;
	private String dropoffLoc;
	private String startDate;
	private String endDate;
	private String notes;
	private String price;
	private String status;
	
	public TripModel(int tripID, String pid, String bookingDate, String vehicleType, String pickupLoc, String dropoffLoc,
			String startDate, String endDate, String notes, String price, String status) {
		super();
		this.tripID = tripID;
		this.pid = pid;
		this.bookingDate = bookingDate;
		this.vehicleType = vehicleType;
		this.pickupLoc = pickupLoc;
		this.dropoffLoc = dropoffLoc;
		this.startDate = startDate;
		this.endDate = endDate;
		this.notes = notes;
		this.price = price;
		this.status = status;
	}

	public int getTripID() {
		return tripID;
	}

	public void setTripID(int tripID) {
		this.tripID = tripID;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getBookingDate() {
		return bookingDate;
	}

	public void setBookingDate(String bookingDate) {
		this.bookingDate = bookingDate;
	}

	public String getVehicleType() {
		return vehicleType;
	}

	public void setVehicleType(String vehicleType) {
		this.vehicleType = vehicleType;
	}

	public String getPickupLoc() {
		return pickupLoc;
	}

	public void setPickupLoc(String pickupLoc) {
		this.pickupLoc = pickupLoc;
	}

	public String getDropoffLoc() {
		return dropoffLoc;
	}

	public void setDropoffLoc(String dropoffLoc) {
		this.dropoffLoc = dropoffLoc;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
	

}
