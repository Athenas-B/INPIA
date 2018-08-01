/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beany;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.bean.SessionScoped;

/**
 *
 * @author olda9
 */
@ManagedBean
@SessionScoped
public class KalkulatorBean {

    private Double _param1;
    private Double _param2;
    private String _result;

    /**
     * Creates a new instance of KalkulatorBean
     */
    public KalkulatorBean() {
        this._param1 = 0.0;
        this._param2 = 0.0;
    }

    public String add() {
        _result = Double.toString(_param1 + _param2);
        return "suma";
    }

    public String sub() {
        _result = Double.toString(_param1 - _param2);
        return "";
    }

    public String mul() {
        _result = Double.toString(_param1 * _param2);
        return "";
    }

    public String divi() {
        _result = _param2 == 0.0 ? "NaN" : Double.toString(_param1 / _param2);
        return "";
    }

    public Double getParam1() {
        return _param1;
    }

    public void setParam1(Double _param1) {
        this._param1 = _param1;
    }

    public Double getParam2() {
        return _param2;
    }

    public void setParam2(Double _param2) {
        this._param2 = _param2;
    }

    public String getResult() {
        return _result;
    }

    public void setResult(String _result) {
        this._result = _result;
    }

}
