/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;

import java.util.ArrayList;

/**
 *
 * @author Adrian
 */
public interface OperacionesBD<T> {
    public abstract boolean sql_insert(T t);
    public abstract boolean sql_update(T t);
    public boolean sql_delete(Object id);
    public T sql_selectById(Object id);
    public ArrayList<T> sql_selectAll();
}
