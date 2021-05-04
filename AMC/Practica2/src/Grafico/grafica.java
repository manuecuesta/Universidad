package Grafico;

import Automatas.AFD;
import Automatas.AFND;
import Automatas.Lambda;
import com.mxgraph.layout.hierarchical.mxHierarchicalLayout;
import com.mxgraph.model.mxGeometry;
import com.mxgraph.swing.mxGraphComponent;
import com.mxgraph.util.mxConstants;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/**
 *
 * @author Manuel Cuesta Y Jorge Lara
 * @version 1.0
 * 
 */


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

            for (String est : estados) {
                //añadimos los estados a la grafica
                if (automata.getEstadosFinales().contains(est)) {
                    objestados.add(grafo.insertVertex(parent, null, est, 100, 200, 50, 50, "final")); //se le pasa al final la apariencia
                } else if (automata.getEstadoInicial().equals(est)) {
                    objestados.add(grafo.insertVertex(parent, null, est, 100, 200, 50, 50, "inicial"));
                } else {
                    objestados.add(grafo.insertVertex(parent, null, est, 100, 200, 50, 50, "normal"));
                }
            }

            String tr[] = new String[automata.getTransiciones().size()];
            automata.getTransiciones().toArray(tr);

            for (String t : tr) {

                String part[] = t.split(" ");
                grafo.insertEdge(parent, null, "   " + part[1], objestados.get(estados.indexOf(part[0])), objestados.get(estados.indexOf(part[2])), "rounded=1;");

            }


            mxHierarchicalLayout layout = new mxHierarchicalLayout(grafo);
            layout.setIntraCellSpacing(50.0);
            layout.setInterRankCellSpacing(50.0);
            layout.setDisableEdgeStyle(false);
            layout.execute(grafo.getDefaultParent());

        } finally {
            grafo.getModel().endUpdate();
        }

        //ajustamos la grafica a la parte del fram correspondiente
        double ancho = 220 - (grafo.getGraphBounds().getWidth()) / 2;
        double alto = 205 - (grafo.getGraphBounds().getHeight()) / 2;
        grafo.getModel().setGeometry(grafo.getDefaultParent(), new mxGeometry(ancho, alto, 0, 0));

        return new mxGraphComponent(grafo);

    }
    
    public mxGraphComponent simularAFD(AFD automata, Set<String> cjtoEstados, String estadoActivo) throws Exception {
        ArrayList<String> estados = new ArrayList();
        ArrayList<Object> objestados = new ArrayList();
        Grafo grafo = new Grafo();
        grafo = new Grafo();
        Object parent = null;

        estados = new ArrayList<>(cjtoEstados);

        try {
            for (String est : estados) {
                if (automata.getEstadosFinales().contains(est)) {
                    objestados.add(grafo.insertVertex(parent, null, est, 100, 200, 50, 50, "final"));
                } else if (automata.getEstadoInicial().equals(est)) {
                    objestados.add(grafo.insertVertex(parent, null, est, 100, 200, 50, 50, "inicial"));
                } else {
                    objestados.add(grafo.insertVertex(parent, null, est, 100, 200, 50, 50, "normal"));
                }
            }
            try {
                grafo.setCellStyles(mxConstants.STYLE_FILLCOLOR, "green", new Object[]{objestados.get(estados.indexOf(estadoActivo))});
            } catch (Exception ex) {
                throw new Exception("Error: caracter no reconocido!");
            }

            String tr[] = new String[automata.getTransiciones().size()];
            automata.getTransiciones().toArray(tr);

            for (String t : tr) {

                String part[] = t.split(" ");
                grafo.insertEdge(parent, null, "   " + part[1], objestados.get(estados.indexOf(part[0])), objestados.get(estados.indexOf(part[2])), "rounded=1;");

            }

            mxHierarchicalLayout layout = new mxHierarchicalLayout(grafo);
            layout.setInterRankCellSpacing(50.0);
            layout.setIntraCellSpacing(50.0);
            layout.setDisableEdgeStyle(false);
            layout.execute(grafo.getDefaultParent());

        } finally {
            grafo.getModel().endUpdate();
        }
  
        double ancho = 220 - (grafo.getGraphBounds().getWidth()) / 2;
        double alto = 205 - (grafo.getGraphBounds().getHeight()) / 2;
        grafo.getModel().setGeometry(grafo.getDefaultParent(), new mxGeometry(ancho, alto, 0, 0));
        return new mxGraphComponent(grafo);
    }
    


    public mxGraphComponent generaAFND(AFND automata, Set<String> estado) {

        ArrayList<String> estados = new ArrayList();
        ArrayList<Object> objestados = new ArrayList();
        Grafo grafo = new Grafo();
        Object parent = null;
        estados.clear();
        objestados.clear();

        estados = new ArrayList<>(estado);

        try {

            for (String est : estados) {
                if (automata.getfinales().contains(est)) {
                    objestados.add(grafo.insertVertex(parent, null, est, 100, 200, 50, 50, "final"));
                } else if (automata.getiniciales().equals(est)) {
                    objestados.add(grafo.insertVertex(parent, null, est, 100, 200, 50, 50, "inicial"));
                } else {
                    objestados.add(grafo.insertVertex(parent, null, est, 100, 200, 50, 50, "normal"));
                }
            }

            String tr[] = new String[automata.gettrans().size()];
            automata.gettrans().toArray(tr);

            for (String t : tr) {

                String part[] = t.split(" ");
                String destino = "";
                    if(part[2].equals(""))
                        destino = part[3];
                    else
                        destino = part[2];
                grafo.insertEdge(parent, null, "   " + part[1], objestados.get(estados.indexOf(part[0])), objestados.get(estados.indexOf(destino)), "rounded=1;");

            }

            for (Lambda t : automata.gettransLambda()) {

                for (String estadoDestino : t.getDestinos())
                {
                    grafo.insertEdge(parent, null, "L", objestados.get(estados.indexOf(t.getOrigen())), objestados.get(estados.indexOf(estadoDestino)), "rounded=1");
                }
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
 
        double ancho = 220 - (grafo.getGraphBounds().getWidth()) / 2;
        double alto = 205 - (grafo.getGraphBounds().getHeight()) / 2;
        grafo.getModel().setGeometry(grafo.getDefaultParent(), new mxGeometry(ancho, alto, 0, 0));

        return new mxGraphComponent(grafo);

    }
    
    public mxGraphComponent simularAFND(AFND automata, Set<String> estado, HashSet<String> estadosActivos) {

        ArrayList<String> estados = new ArrayList();
        ArrayList<Object> objestados = new ArrayList();
        Grafo grafo = new Grafo();
        Object parent = null;
        estados.clear();
        objestados.clear();

        estados = new ArrayList<>(estado);

        try {
            
            

            for (String est : estados) {
                if (automata.getfinales().contains(est)) {
                    objestados.add(grafo.insertVertex(parent, null, est, 100, 200, 50, 50, "final"));
                } else if (automata.getiniciales().equals(est)) {
                    objestados.add(grafo.insertVertex(parent, null, est, 100, 200, 50, 50, "inicial"));
                } else {
                    objestados.add(grafo.insertVertex(parent, null, est, 100, 200, 50, 50, "normal"));
                }
            }
            
            for (String estadoActivo : estadosActivos) {
                grafo.setCellStyles(mxConstants.STYLE_FILLCOLOR, "green", new Object[]{objestados.get(estados.indexOf(estadoActivo))});
            }
            
            String tr[] = new String[automata.gettrans().size()];
            automata.gettrans().toArray(tr);

            for (String t : tr) {

                String part[] = t.split(" ");
                String destino = "";
                    if(part[2].equals(""))
                        destino = part[3];
                    else
                        destino = part[2];
                grafo.insertEdge(parent, null, "   " + part[1], objestados.get(estados.indexOf(part[0])), objestados.get(estados.indexOf(destino)), "rounded=1;");

            }

            for (Lambda t : automata.gettransLambda()) {

                for (String estadoDestino : t.getDestinos())
                {
                    grafo.insertEdge(parent, null, "L", objestados.get(estados.indexOf(t.getOrigen())), objestados.get(estados.indexOf(estadoDestino)), "rounded=1");
                }
            }

            mxHierarchicalLayout layout = new mxHierarchicalLayout(grafo);
            layout.setIntraCellSpacing(50.0);
            layout.setInterRankCellSpacing(50.0);
            layout.setDisableEdgeStyle(false);
            layout.execute(grafo.getDefaultParent());

        } finally {
            grafo.getModel().endUpdate();
        }
 
        double ancho = 220 - (grafo.getGraphBounds().getWidth()) / 2;
        double alto = 205 - (grafo.getGraphBounds().getHeight()) / 2;
        grafo.getModel().setGeometry(grafo.getDefaultParent(), new mxGeometry(ancho, alto, 0, 0));

        return new mxGraphComponent(grafo);

    }
    


}
