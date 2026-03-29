package blood.management;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.control.Button;
import javafx.scene.layout.AnchorPane;
import java.io.IOException;

public class Mainpage {

    @FXML
    private Button donor;

    @FXML
    private Button bloodRecipient;

    @FXML
    private Button doctor;

    @FXML
    private Button staff;

    @FXML
    private AnchorPane mainContent;

    @FXML
    public void initialize() {
        // Load Donor section by default
        loadUI("/views/AddbloodSence.fxml");
    }

    @FXML
    private void addDonor() {
        loadUI("/views/AddbloodSence.fxml");
    }

    @FXML
    private void setBloodRecipient() {
        loadUI("/views/bloodRecieversence.fxml");
    }

    @FXML
    private void setDoctor() {
        loadUI("/views/Doctor.fxml");
    }

    @FXML
    private void setStaff() {
        loadUI("/views/Employee.fxml"); // Or Volunteer.fxml if renamed
    }

    @FXML
    private void setAvailableScene() {
        loadUI("/views/AvailableSence.fxml");
    }

    private void loadUI(String fxmlFile) {
        try {
            Parent pane = FXMLLoader.load(getClass().getResource(fxmlFile));
            mainContent.getChildren().clear();
            mainContent.getChildren().add(pane);

            // Set anchors to stretch loaded FXML to fit mainContent
            AnchorPane.setTopAnchor(pane, 0.0);
            AnchorPane.setBottomAnchor(pane, 0.0);
            AnchorPane.setLeftAnchor(pane, 0.0);
            AnchorPane.setRightAnchor(pane, 0.0);

        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
