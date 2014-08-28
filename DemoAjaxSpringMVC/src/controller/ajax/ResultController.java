package controller.ajax;

import java.util.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import entities.*;

@Controller
@RequestMapping(value = "/result")
public class ResultController {

	@RequestMapping(value = "/helloajax", method = RequestMethod.POST)
	@ResponseBody
	public String helloajax() {
		return "Hello Ajax";
	}

	@RequestMapping(value = "/sum/{a}/{b}", method = RequestMethod.POST)
	@ResponseBody
	public String sum(@PathVariable(value = "a") int a,
			@PathVariable(value = "b") int b) {
		return String.valueOf(a + b);
	}

	@RequestMapping(value = "/json", method = RequestMethod.GET)
	@ResponseBody
	public Student json() {
		return new Student("sv01", "Name 1");
	}

	@RequestMapping(value = "/listjson", method = RequestMethod.GET)
	@ResponseBody
	public List<Student> listjson() {
		List<Student> ls = new ArrayList<Student>();
		ls.add(new Student("sv01", "Name 1"));
		ls.add(new Student("sv02", "Name 2"));
		ls.add(new Student("sv03", "Name 3"));
		return ls;
	}

}
