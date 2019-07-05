package polymorphism;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

@Component("tv")
public class LgTV implements TV {
	@Autowired
	private Speaker speaker;
	
	public void powerOn() {
		System.out.println("LgTV---power on.");
	}

	public void powerOff() {
		System.out.println("LgTV---power off.");
	}

	public void volumeUp() {
		speaker.volumeUp();
	}

	public void volumeDown() {
		speaker.volumeDown();
	}

}
