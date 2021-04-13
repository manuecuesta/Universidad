package Grafico;

import com.mxgraph.util.mxConstants;
import com.mxgraph.view.mxGraph;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;


/**
 *
 * @author Manuel Cuesta Y Jorge Lara
 * @version 1.0
 * 
 */

public class Grafo extends mxGraph {

public Grafo() {
        super();

        //Apariencia para los estados
        Hashtable<String, Object> estiloEstado = new Hashtable<>();
        estiloEstado.put(mxConstants.STYLE_SHAPE, mxConstants.SHAPE_ELLIPSE);

        //Apariencia para el estado final
        Hashtable<String, Object> estiloEFinal = new Hashtable<String, Object>();
        estiloEFinal.put(mxConstants.STYLE_SHAPE, mxConstants.SHAPE_DOUBLE_ELLIPSE);
        estiloEFinal.put(mxConstants.STYLE_FILLCOLOR, "white");

        //apariencia para el estado inicial
        Hashtable<String, Object> estiloEInicial = new Hashtable<String, Object>();
        estiloEInicial.put(mxConstants.STYLE_SHAPE, mxConstants.SHAPE_DOUBLE_ELLIPSE);
        estiloEInicial.put(mxConstants.STYLE_FILLCOLOR, "orange");

        //apariencia de las uniones
        Map<String, Object> edgeStyle = new HashMap<>();
        edgeStyle.put(mxConstants.STYLE_SHAPE, mxConstants.SHAPE_CONNECTOR);
        edgeStyle.put(mxConstants.STYLE_ENDARROW, mxConstants.ARROW_OPEN);
        edgeStyle.put(mxConstants.STYLE_STROKECOLOR, "red");
        edgeStyle.put(mxConstants.STYLE_FONTCOLOR, "#000000");
        
        //añadimos las apariencias
        stylesheet.setDefaultEdgeStyle(edgeStyle);

        stylesheet.putCellStyle("final", estiloEFinal);
        stylesheet.putCellStyle("normal", estiloEstado);
        stylesheet.putCellStyle("inicial", estiloEInicial);

        this.setStylesheet(stylesheet);
        
        //actualizamos la parte grafica
        this.getModel().beginUpdate();
        this.setCellsLocked(true);
        this.setVertexLabelsMovable(false);
        this.setEdgeLabelsMovable(false);
    }

}