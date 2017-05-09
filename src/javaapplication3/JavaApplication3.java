/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication3;

import java.util.*;
import java.util.Hashtable;
import org.jpl7.*;

import org.jpl7.Query;
/**
 *
 * @author sejini
 */
public class JavaApplication3 {

    
    /**
     * @param args the command line arguments
     */
    
    public static void main(String[] args) {
        // TODO code application logic here
    String inputArr, inputFig, inputTime;
    Scanner reader = new Scanner(System.in);
    
    //파일실행 쿼리 날려주기
    String t1 = "consult('testjava.pl')";
    Query q1 = new Query(t1);
    System.out.println(t1 + " " + (q1.hasSolution() ? "succeeded" : "failed"));
    
    //값 입력받기 배열 상태, 피규어 종류 > 후에 메서드에서 넘어오는 값으로 바꿀 예정
    System.out.println("배열상태를 입력해주세요:");
    inputArr = reader.next();
    
    System.out.println("피규어종류를 입력해주세요:");
    inputFig = reader.next(); 
    
    System.out.println("제작시간을 입력해주세요:");
    inputTime = reader.next(); 
    
    String t2 = "result_diagnosis("+inputArr+","+inputFig+",X,Y)";
    Query q2 = new Query(t2);
    
    q2.hasMoreSolutions();
    Map<String, Term> s = q2.nextSolution();
   
    inputArr=inputFig="";
    inputArr += s.get("X");
    inputFig+=s.get("Y");
    System.out.println("X="+inputArr+", Y="+inputFig);
    
    diagnosisCul.startDiagnosis(inputArr, inputFig, inputTime);
    System.out.println("depression : "+diagnosisCul.depression + " , aggression : "+diagnosisCul.aggression+" , inattention : "
            +diagnosisCul.inattention+"");
    diagnosisCul.convertPercent();
    
    System.out.println("depression : "+diagnosisCul.depression + "% , aggression : "+diagnosisCul.aggression+"% , inattention : "
            +diagnosisCul.inattention+"%");
    
    }

}
