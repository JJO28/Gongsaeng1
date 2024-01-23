package kr.co.gongsaeng.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {
	@GetMapping("admin/main")
	public String main() {
		return "admin/main";
	}
	@GetMapping("admin/dashboard")
	public String dashboard() {
		return "admin/dashboard";
	}
	@GetMapping("admin/member")
	public String member() {
		return "admin/member";
	}
	@GetMapping("admin/company")
	public String company() {
		return "admin/company";
	}
	@GetMapping("admin/account")
	public String account() {
		return "admin/account";
	}
	@GetMapping("admin/report")
	public String report() {
		return "admin/report";
	}
	@GetMapping("admin/event")
	public String event() {
		return "admin/event";
	}
	@GetMapping("admin/cs")
	public String cs() {
		return "admin/cs";
	}
	
	//---------------------------
	@GetMapping("admin/dashboard2")
	public String dashboard2() {
		return "admin/dashboard2";
	}
	@GetMapping("admin/typography")
	public String typography() {
		return "admin/typography";
	}
	@GetMapping("admin/upgrade")
	public String upgrade() {
		return "admin/upgrade";
	}
	@GetMapping("admin/icons")
	public String icons() {
		return "admin/icons";
	}
	@GetMapping("admin/notifications")
	public String notifications() {
		return "admin/notifications";
	}
	@GetMapping("admin/tables")
	public String tables() {
		return "admin/tables";
	}
	@GetMapping("admin/user2")
	public String user2() {
		return "admin/user2";
	}
	@GetMapping("admin/map")
	public String map() {
		return "admin/map";
	}
	
	
			
}