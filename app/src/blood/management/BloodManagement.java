package blood.management;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class BloodManagement extends Application {

    @Override
    public void start(Stage stage) throws Exception {
        Parent root = FXMLLoader.load(getClass().getResource("/views/Mainpage.fxml"));
        Scene scene = new Scene(root);

        // ✅ Add DarkTheme.css to the scene
        scene.getStylesheets().add(getClass().getResource("/styles/DarkTheme.css").toExternalForm());

        stage.setScene(scene);
        stage.setTitle("Blood Bank Management System");
        stage.show();
    }

    public static void main(String[] args) {
        launch(args);
    }
}
