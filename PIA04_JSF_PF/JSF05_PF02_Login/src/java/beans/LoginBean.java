package beans;

import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;
import org.primefaces.context.RequestContext;

@ManagedBean
@RequestScoped
public class LoginBean {

    public LoginBean() {
    }

    private String username;
    private String password;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void login(ActionEvent actionEvent) {
        RequestContext context = RequestContext.getCurrentInstance();
        boolean loggedIn = false;

        if (username != null && username.equals("admin") && password != null
                && password.equals("admin")) {
            loggedIn = true;
            FacesMessage msg = new FacesMessage(FacesMessage.SEVERITY_INFO,
                    "Vítejte pane", username + "e");
            //FacesContext.getCurrentInstance().addMessage(null, msg);
            context.showMessageInDialog(msg);
            //context.openDialog("mojejsf");
        } else {
            loggedIn = false;
            FacesMessage msg = new FacesMessage(FacesMessage.SEVERITY_WARN,
                    "Login - Chyba", "Invalidní přihlašovací údaje");
            FacesContext.getCurrentInstance().addMessage(null, msg);
        }
        context.addCallbackParam("loggedIn", loggedIn);

    }
}
