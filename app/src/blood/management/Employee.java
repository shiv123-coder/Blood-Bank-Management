package blood.management;

import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;

public class Employee {
    private final StringProperty eid;
    private final StringProperty name;
    private final StringProperty contact;

    public Employee(String eid, String name, String contact) {
        this.eid = new SimpleStringProperty(eid);
        this.name = new SimpleStringProperty(name);
        this.contact = new SimpleStringProperty(contact);
    }

    public String getEid() {
        return eid.get();
    }

    public StringProperty eidProperty() {
        return eid;
    }

    public String getName() {
        return name.get();
    }

    public StringProperty nameProperty() {
        return name;
    }

    public String getContact() {
        return contact.get();
    }

    public StringProperty contactProperty() {
        return contact;
    }
}
