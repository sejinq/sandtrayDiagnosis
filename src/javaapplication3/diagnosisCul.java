/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication3;

/**
 *
 * @author sejini
 */
public class diagnosisCul {
    public static int depression, aggression, inattention;
    
        public static void init(){
            depression=0; aggression=0; inattention=0;
        }
        public static boolean startDiagnosis(String arrResult, String figResult, String timeResult){
            init();
            if(arrFunc(arrResult)&&figFunc(figResult)&&timeFunc(timeResult)){
                return true;
            }
            else{
                return false;
            }
        }
        public static void convertPercent(){
            float temp = depression+aggression+inattention;
            depression = (int) ((depression/temp)*100);
            aggression = (int) ((aggression/temp)*100);
            inattention = 100 - depression - aggression;
            
        }
        public static boolean timeFunc(String timeResult){
            if(timeResult.equals("slow")){
                depression+=2;
            }
            else if(timeResult.equals("normal")){
                return true;
            }
            else if(timeResult.equals("fast")){
                inattention+=2;
            }
            else{
                System.out.println("error time input : "+timeResult);
                return false;
            }
            return true;
        }
        
        public static boolean figFunc(String figResult){
        if(figResult.equals("Meaningless")){
            return true;
        }
        else if(figResult.equals("single_low_inattention")){
            inattention+=1; 
        }
        else if(figResult.equals("single_high_inattention")){
            inattention+=2;
        }
        else if(figResult.equals("single_low_aggression")){
            aggression+=1;
        }
        else if(figResult.equals("single_high_aggression")){
            aggression+=2; 
        }
        else if(figResult.equals("single_low_depression")){
            depression+=1;
        }
        else if(figResult.equals("single_high_depression")){
            depression+=2;
        }
        else if(figResult.equals("complex_low_depression_low_inattention")){
            inattention+=1; depression+=1;
        }
        else if(figResult.equals("complex_low_depression_high_inattention")){
            inattention+=2; depression+=1;
        }
        else if(figResult.equals("complex_high_depression_low_inattention")){
            inattention+=1; depression+=2;
        }
        else if(figResult.equals("complex_high_depression_high_inattention")){
            inattention+=2; depression+=2;
        }
        else if(figResult.equals("complex_low_aggression_low_inattention")){
            inattention+=1; aggression+=1; 
        }
        else if(figResult.equals("complex_low_aggression_high_inattention")){
            inattention+=2; aggression+=1; 
        }
        else if(figResult.equals("complex_high_aggression_low_inattention")){
            inattention+=1; aggression+=2; 
        }
        else if(figResult.equals("complex_high_aggression_high_inattention")){
            inattention+=2; aggression+=2;
        }
        else if(figResult.equals("complex_low_aggression_low_depression")){
            aggression+=1; depression+=1;
        }
        else if(figResult.equals("complex_low_aggression_high_depression")){
            aggression+=1; depression+=2;
        }
        else if(figResult.equals("complex_high_aggression_low_depression")){
            aggression+=2; depression+=1;
        }
        else if(figResult.equals("complex_high_aggression_high_depression")){
            aggression+=2; depression+=2;
        }
        else if(figResult.equals("complex_low_aggression_low_depression_low_inattention")){
            aggression+=1; depression+=1; inattention+=1;
        }
        else if(figResult.equals("complex_low_aggression_low_depression_high_inattention")){
            aggression+=1; depression+=1; inattention+=2;
        }
        else if(figResult.equals("complex_low_aggression_high_depression_low_inattention")){
            aggression+=1; depression+=2; inattention+=1;
        }
        else if(figResult.equals("complex_high_aggression_low_depression_low_inattention")){
            aggression+=2; depression+=1; inattention+=1;
        }
        else if(figResult.equals("complex_high_aggression_high_depression_low_inattention")){
            aggression+=2; depression+=2; inattention+=1;
        }
        else if(figResult.equals("complex_high_aggression_low_depression_high_inattention")){
            aggression+=2; depression+=1; inattention+=2;
        }
        else if(figResult.equals("complex_low_aggression_high_depression_high_inattention")){
            aggression+=1; depression+=2; inattention+=2;
        }
        else if(figResult.equals("complex_high_aggression_high_depression_high_inattention")){
            aggression+=2; depression+=2; inattention+=2;
        }
        else{
            System.out.println("error fig input : "+figResult);
            return false;
        }
        return true;
    }
    public static boolean arrFunc(String arrResult){
        if(arrResult.equals("single_inattention")){
            inattention+=3;
        }
        else if(arrResult.equals("single_aggression")){
            aggression+=3;
        }
        else if(arrResult.equals("single_depression")){
            depression+=3;
        }
        else if(arrResult.equals("complex_ALL")){
            inattention+=3; aggression+=3; depression+=3;
        }
        else if(arrResult.equals("complex_inattention_aggression")){
            inattention+=3; aggression+=3; 
        }
        else if(arrResult.equals("complex_depression_inattention")){
            inattention+=3; depression+=3;
        }
        else if(arrResult.equals("complex_depression_aggression")){
            aggression+=3; depression+=3;
        }
        else{
            System.out.println("error arr input : "+arrResult);
            return false;
        }
        return true;
    }
}
