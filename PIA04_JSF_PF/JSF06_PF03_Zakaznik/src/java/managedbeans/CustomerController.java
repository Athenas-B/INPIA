
package managedbeans;

import java.io.Serializable;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.event.ActionEvent;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

@ManagedBean
@SessionScoped
public class CustomerController implements Serializable {

    /** Creates a new instance of CustomerController */
    public CustomerController() {
    }

    public void saveCustomer(ActionEvent actionEvent) {
        //... V realne aplikaci bychom chteli data ulozit
        //... V nasem priklade se zobrazuje pouze hlaska
        FacesMessage facesMessage = new FacesMessage("Data byla úspěšně uložena");
        facesMessage.setSeverity(FacesMessage.SEVERITY_INFO);

        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
    }
}
