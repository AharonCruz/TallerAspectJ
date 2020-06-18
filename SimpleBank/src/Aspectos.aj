import java.util.Calendar;

import com.bank.Archivos;

public aspect Aspectos {
	
	pointcut callLogDep() : call(* moneyMakeTransaction(..));
	after() : callLogDep(){
		Calendar calendar = Calendar.getInstance();
		Archivos.guardar("Deposito|" + calendar.getTime().toString());
	}
	pointcut callLogRetiro() : call(* moneyWithdrawal(..));
	after() : callLogRetiro(){
		Calendar calendar = Calendar.getInstance();
		Archivos.guardar("Retiro|" + calendar.getTime().toString());
	}
	
}
