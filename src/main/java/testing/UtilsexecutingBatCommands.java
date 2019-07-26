package testing;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

class BatCommandRunner implements Runnable {

    private InputStream outputStream;
    private InputStream errorStream;
    private String executedCommand;
    private int executedPosition;
    
    BatCommandRunner(InputStream outputStream, InputStream errorStream, String executedCommand,int executedPosition) {
        this.outputStream = outputStream;
        this.errorStream = errorStream;
        this.executedCommand=executedCommand;
        this.executedPosition=executedPosition;
        
    }

    private BufferedReader createBufferedReader(InputStream is) {
        return new BufferedReader(new InputStreamReader(is));
    }

    
    public void run() {
        BufferedReader outputStreamReader ;
        String ligne = "";
        
        try {
        	outputStreamReader = createBufferedReader  (outputStream);
            while ((ligne = outputStreamReader.readLine()) != null) {
                System.out.println(ligne);
                System.out.println("Hey Output");
                System.out.println("\n\n\n executedCommand="+executedCommand+"\nexecutedPosition="+executedPosition+"\n\n\n");
            }
            outputStreamReader.close();
        } catch (IOException e) {
           e.printStackTrace();
        }
        
        
        BufferedReader errorStreamReader ;
        ligne = "";
        
        try {
        	errorStreamReader = createBufferedReader (errorStream);
            while ((ligne = errorStreamReader.readLine()) != null) {
                System.out.println(ligne);
                System.out.println("Hey Error");
                System.out.println("\n\n\n executedCommand="+executedCommand+"\nexecutedPosition="+executedPosition+"\n\n\n");
                
            }
          errorStreamReader.close();
        } catch (IOException e) {
          e.printStackTrace();
        }
        
        
    }
}

public class UtilsexecutingBatCommands {

	protected void executeCommandInBatFile(String fileName) throws Exception {
		
		
		UtilsSortingProjects myUtils=new UtilsSortingProjects();
		List<String> batCommandListToExecute=new ArrayList<String>();
		
		batCommandListToExecute.addAll(myUtils.readUrlFromFile(fileName));
		
        Process batCommandProcessExecutor ;
        BatCommandRunner fluxInAndErr  ;
        int exitStatus;
        HttpURLConnect http=new HttpURLConnect() ;
        
		for (int i=0;i<batCommandListToExecute.size();i++) {
		
        try {
        	
        	File batFilesBaseDir=new File(http.getBatDirectory());
        	
            ProcessBuilder batCommandProcessBuilder = new ProcessBuilder("Cmd.exe","/C", 
            batCommandListToExecute.get(i));
            batCommandProcessBuilder.directory(batFilesBaseDir);
            
            System.out.println("Executing BatCommad in Directory:"+batFilesBaseDir.getAbsolutePath());

            System.out.println("Executing Command:\t"+batCommandListToExecute.get(i));
            batCommandProcessExecutor = batCommandProcessBuilder.start();
            fluxInAndErr = new BatCommandRunner(batCommandProcessExecutor.getInputStream(),batCommandProcessExecutor.getErrorStream(),batCommandListToExecute.get(i),i);
            new Thread(fluxInAndErr ).start();
            batCommandProcessExecutor.waitFor();
            exitStatus=batCommandProcessExecutor.exitValue();
            System.out.println("Exist Code for the Project:"+batCommandListToExecute.get(i)+"\t =="+exitStatus);
            batCommandProcessExecutor.destroy();

        } catch (IOException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        
		} 
        
	}  
}
	
