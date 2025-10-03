package com.nt.controller;

import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class RequestPathDataBinding {
	/*
	 * @GetMapping("/data") // public String
	 * showRequestPathData(@RequestParam("sno") int no, // @RequestParam("sname")
	 * String name) { //
	 * System.out.println("RequestPathDataBinding.showRequestPathData()" + no+" "+
	 * name); // //return LVN // return "show_data"; // }
	 */

	/*
	 * @GetMapping("/data") public String showRequestPathData(@RequestParam int sno,
	 * 
	 * @RequestParam String sname) { //if same name define in RequestPath
	 * then @RequestParam("sno") param is optional
	 * System.out.println("RequestPathDataBinding.showRequestPathData()" + sno+" "+
	 * sname); //return LVN return "show_data"; }
	 */
	/*
	 * @GetMapping("/data") public String showRequestPathData(@RequestParam int sno,
	 * 
	 * @RequestParam(required = false) String sname) {
	 * System.out.println("RequestPathDataBinding.showRequestPathData()" + sno + " "
	 * + sname); // return LVN return "show_data"; }
	 */

	/*
	 * @GetMapping("/data") public String
	 * showRequestPathData(@RequestParam(required=false)Integer sno,
	 * 
	 * @RequestParam(defaultValue = "101") String sname) {
	 * //@RequestParam(required=false) it only works for wrapper type data
	 * System.out.println("RequestPathDataBinding.showRequestPathData()" + sno + " "
	 * + sname); // return LVN return "show_data"; }
	 */
	/*
	 * @GetMapping("/data") public String
	 * showRequestPathData(@RequestParam(required=false)Integer sno,
	 * 
	 * @RequestParam(defaultValue = "101") String sname,
	 * 
	 * @RequestParam("addr") String addrs[],
	 * 
	 * @RequestParam("addr") List<String> addrList,
	 * 
	 * @RequestParam("addr") Set<String> addrSet) {
	 * System.out.println("RequestPathDataBinding.showRequestPathData()" + sno + " "
	 * + sname);
	 * System.out.println("Data Array :: "+Arrays.toString(addrs)+"List ::"
	 * +addrList+" Set ::"+addrSet);
	 * 
	 * // return LVN return "show_data"; }
	 */

	@Autowired
	private ServletContext sc;
	@Autowired
	private ServletConfig cg;

	/*
	  @GetMapping("/data")
	  public String showRequestPathData(Map<String, Object>
	  map, HttpSession ses, HttpServletRequest req, HttpServletResponse res) throws Exception
	  {
	  System.out.println("Web Apllication Current Name :: " +sc.getContextPath());
	  System.out.println("Web Application Logical name :: " +cg.getServletName());
	  System.out.println("Request path :: " + req.getServletPath());
	  System.out.println("Session Id :: " + ses.getId()); 
	  // kee all this data intoshared memory
	  map.put("WACN", sc.getContextPath());
	  map.put("WALN", cg.getServletName());
	  map.put("path", req.getServletPath());
	  map.put("sesId", ses.getId());
	  // return LVN
	  return "show_servlet_data";
	  }
	   */   
	
	@GetMapping("/data")
	public void showDirectContentOnBrowser(Map<String, Object>
	  map, HttpSession ses, HttpServletRequest req, HttpServletResponse res)throws Exception {
		//directly communicate with browser without involving view resolver and view component 
		//that usefull in file downloading or software downloading get PrintWriter object 
		PrintWriter pw = res.getWriter();
		//set response content Type
		res.setContentType("text/html");
		//write the output to browser
		pw.println("Request path :: "+req.getServletPath());
		   
	}
}
