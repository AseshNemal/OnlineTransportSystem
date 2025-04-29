package com.model;


public class Ride implements Comparable<Ride> {
	private int rid;
	private String date;
	private String time;
	private String cLocation;
	private String disLocation;
	private String feedback;
	private int totDistance;
	private String ridefee;
	private int passengerID;
	private int driverid;
	
	public Ride(int rid, String date, String time, String cLocation, String disLocation, String feedback,
			int totDistance, String ridefee, int passengerID, int driverid) {
		super();
		this.rid = rid;
		this.date = date;
		this.time = time;
		this.cLocation = cLocation;
		this.disLocation = disLocation;
		this.feedback = feedback;
		this.totDistance = totDistance;
		this.ridefee = ridefee;
		this.passengerID = passengerID;
		this.driverid = driverid;
	}

	public int getRid() {
		return rid;
	}

	public String getDate() {
		return date;
	}

	public String getTime() {
		return time;
	}

	public String getcLocation() {
		return cLocation;
	}

	public String getDisLocation() {
		return disLocation;
	}

	public String getFeedback() {
		return feedback;
	}

	public int getTotDistance() {
		return totDistance;
	}

	public String getRidefee() {
		return ridefee;
	}

	public int getPassengerID() {
		return passengerID;
	}

	public int getDriverid() {
		return driverid;
	}
	
	
	public int compareTo(Ride other) {
        return  other.rid - this.rid;
    }
	
	public String toString() {
        return "Employee [ID: " + rid + ", Name: " + date + ", Hours: " + time + cLocation + disLocation+ feedback + totDistance + ridefee + passengerID + driverid;
    }

	
	
}
