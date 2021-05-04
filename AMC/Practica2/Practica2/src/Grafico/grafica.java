/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Grafico;

import Automatas.AFD;
import com.mxgraph.layout.hierarchical.mxHierarchicalLayout;
import com.mxgraph.model.mxGeometry;
import com.mxgraph.swing.mxGraphComponent;
import java.util.ArrayList;
import java.util.Set;

public class grafica {

    public mxGraphComponent generaAFD(AFD automata, Set<String> estado) {

        ArrayList<String> estados = new ArrayList();
        ArrayList<Object> objestados = new ArrayList();
        Grafo grafo = new Grafo();
        Object parent = null;
        estados.clear();
        objestados.clear();

        estados = new ArrayList<>(estado);
        
        try {

            //Añadir estados
            for (String est : estados) {
                if (automata.getEstadosFinales().contains(estado)) {
                    objestados.add(grafo.insertVertex(parent, null, est, 100, 200, 50, 50));
                } else if (automata.getEstadoInicial().equals(estado)) {
                    objestados.add(grafo.insertVertex(parent, null, est, 100, 200, 50, 50));
                } else {
                    objestados.add(grafo.insertVertex(parent, null, est, 100, 200, 50, 50));
                }
            }

           //añadir transiciones
           
           String tr[] = new String[automata.getTransiciones().size()];
           automata.getTransiciones().toArray(tr);
           
           for (String t : tr) {
               
               String part[] = t.split(" ");
               grafo.insertEdge(parent, null, "   " + part[1], objestados.get(estados.indexOf(part[0])), objestados.get(estados.indexOf(part[2])), "rounded=1;");
                
            }
           

            //estetica
            mxHierarchicalLayout layout = new mxHierarchicalLayout(grafo);
            layout.setIntraCellSpacing(50.0);
            layout.setInterRankCellSpacing(50.0);   
            layout.setDisableEdgeStyle(false);
            layout.execute(grafo.getDefaultParent());

        } finally {
            grafo.getModel().endUpdate();
        }

        //Posicion en ventana     
        double ancho=220 - (grafo.getGraphBounds().getWidth()) / 2;
        double alto=205 - (grafo.getGraphBounds().getHeight()) / 2;
        grafo.getModel().setGeometry(grafo.getDefaultParent(), new mxGeometry(ancho, alto, 0, 0));

        return new mxGraphComponent(grafo);

    }

}
