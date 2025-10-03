package com.nt.controller;

import java.util.Date;
import java.util.Map;
import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.support.BindingAwareModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RenderingContent {

	/*
	 * @RequestMapping("/") public String showRenderingContent() { //return LVN
	 * return "home"; }
	 */

	/*
	 * @RequestMapping("/welcome") public String
	 * showRenderingContent(Map<String,Object> map) {
	 * System.out.println("Shared Memory name :: "+map.getClass()); //add
	 * data/result to sharedMemory as the model attribute having name-value pair
	 * //that store into object BindingAwareModelMap object map.put("Date",new
	 * Date()); map.put("Age", new Random().nextInt(100)); return "welcome"; }
	 */

	/*
	 * @RequestMapping("/welcome") public Map<String, Object>
	 * showRenderingContent(Map<String,Object> map) {
	 * System.out.println("Shared Memory name :: "+map.getClass()); //add
	 * data/result to sharedMemory as the model attribute having name-value pair
	 * //that store into object BindingAwareModelMap object map.put("Date",new
	 * Date()); map.put("Age", new Random().nextInt(100)); return map; }
	 */

	/*
	 * @RequestMapping("/welcome") public ModelMap showRenderingContent(ModelMap
	 * model) { System.out.println("Shared Memory name :: "+model.getClass()); //add
	 * data/result to sharedMemory as the model attribute having name-value pair
	 * //that store into object BindingAwareModelMap object model.put("Date",new
	 * Date()); model.put("Age", new Random().nextInt(100)); return model; }
	 */

	/*
	 * @RequestMapping("/welcome") public Model showRenderingContent() { Model model
	 * = new BindingAwareModelMap();
	 * System.out.println("Shared Memory name :: "+model.getClass()); //add
	 * data/result to sharedMemory as the model attribute having name-value pair
	 * //that store into object BindingAwareModelMap object
	 * model.addAttribute("Date",new Date()); model.addAttribute("Age", new
	 * Random().nextInt(100)); return model; }
	 */

	/// DATA Forward from source to Destination

	/*
	 * @RequestMapping("/welcome") public String
	 * showRenderingContent(Map<String,Object> map) {
	 * 
	 * System.out.println("RenderingContent.showRenderingContent()");
	 * map.put("Date",new Date()); map.put("Age", new Random().nextInt(100)); return
	 * "forward:report";
	 * 
	 */ 
	    /* url http://localhost:8080/BootMVCProj_02-RenderingContentOnWebBrowser/welcome
	  here showRenderingContent() is communicate with showReport() and display the
	  data from show_report.jsp that contains must be data source data MAP
	  attribute 1 Date :: ${Date}<br> MAP attribute 2 age :: ${Age}<br>
	  
	  destination data <b>Name :: ${name}<br><br> MAP attribute 1 Date ::
	  ${Date}<br>
	       */ 
	 /* 
	 * }
	 * 
	 * @RequestMapping("/report") public String showReport(Map<String,Object> map) {
	 * System.out.println("RenderingContent.showReport()"); map.put("name",
	 * "GAURAV");
	 * 
	 * return "show_report"; }
	 */

	/// DATA Redirect from source to Destination

	@RequestMapping("/welcome")
	public String showRenderingContent(Map<String, Object> map) {

		System.out.println("RenderingContent.showRenderingContent()");
		map.put("Date", new Date());
		map.put("Age", new Random().nextInt(100));
		return "redirect:report?p1=val1&p2=val2"; 

		/*
		 * return "redirect:report";
		 here data is not shared from source to destination coz diff request and response object
		 but if want pass data any how so we use request parameter data or value 
		 return "redirect:report?p1=val1&p2=val2";
		  in show report 
		  <b> additional request param values ::${param.p1}${param.p2}</b>
		  
		  url http://localhost:8080/BootMVCProj_02-RenderingContentOnWebBrowser/welcome
		 */

	}

	@RequestMapping("/report")
	public String showReport(Map<String, Object> map) {
		System.out.println("RenderingContent.showReport()");
		map.put("name", "GAURAV");

		return "show_report";
	}
}
