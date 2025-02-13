package org.example.javaeeproject;

public class Spieler {
    private int spielerID;
    private String vorname;
    private String nachname;
    private int age;
    private String nationalitaet;

    public Spieler(int spielerID, String vorname, String nachname, int age, String nationalitaet) {
        this.spielerID = spielerID;
        this.vorname = vorname;
        this.nachname = nachname;
        this.age = age;
        this.nationalitaet = nationalitaet;
    }

    public int getSpielerID() { return spielerID; }
    public String getVorname() { return vorname; }
    public String getNachname() { return nachname; }
    public int getAge() { return age; }
    public String getNationalitaet() { return nationalitaet; }
}
