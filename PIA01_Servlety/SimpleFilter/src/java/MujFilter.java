
import java.io.IOException;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author olda9
 */
public class MujFilter extends BaseFilter {

    private final String CODING = "UTF-6";

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        super.doFilter(request, response, chain); //To change body of generated methods, choose Tools | Templates.

        System.out.println("Vstup do filtru...");

        try {
            request.setCharacterEncoding(CODING);
            response.setCharacterEncoding(CODING);
            System.out.println(CODING);
            request.setAttribute("hello", "Jsme s vami...");
        } catch (Exception e) {
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            System.out.println("UTF-8");
            request.setAttribute("hello", "pokus o jine kodovani...");
        }

        chain.doFilter(request, response);

        System.out.println("Vystup u z filtru");
    }

}
