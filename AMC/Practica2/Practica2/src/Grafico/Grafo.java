/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Grafico;

import com.mxgraph.util.mxConstants;
import com.mxgraph.view.mxGraph;
import java.util.HashMap;
import java.util.Map;

public class Grafo extends mxGraph {

    /**
     * Crea el objeto grafo, que hereda de mxGraph y establece su configuración
     * estética
     */
    public Grafo() {
        super();

        var estilovertice = getStylesheet().getDefaultVertexStyle();
        estilovertice.put(mxConstants.STYLE_SHAPE, mxConstants.SHAPE_ELLIPSE);
        
        Map<String, Object> edgeStyle = new HashMap<String, Object>();
        edgeStyle.put(mxConstants.STYLE_SHAPE, mxConstants.SHAPE_CONNECTOR);
        edgeStyle.put(mxConstants.STYLE_ENDARROW, mxConstants.ARROW_OPEN);
        edgeStyle.put(mxConstants.STYLE_STROKECOLOR, "red");
        edgeStyle.put(mxConstants.STYLE_FONTCOLOR, "#000000");
        stylesheet.setDefaultEdgeStyle(edgeStyle);

        this.setStylesheet(stylesheet);

        this.getModel().beginUpdate();
        this.setCellsLocked(true);
        this.setVertexLabelsMovable(false);
        this.setEdgeLabelsMovable(false);
    }

}