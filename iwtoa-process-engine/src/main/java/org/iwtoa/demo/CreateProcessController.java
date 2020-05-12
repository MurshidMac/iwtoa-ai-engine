/* Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *      http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.iwtoa.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

/**
 * Rest controller to trigger starting a number of random process instances.
 * 
 * @author MurshidHassen
 */
@RestController
public class CreateProcessController {
    
    @Autowired
    private ProcessService processService;

    @GetMapping("/createprocess/{nrOfInstances}")
    public String start(@PathVariable int nrOfInstances) {
    	// Call the execute method
        processService.execute(nrOfInstances);
        return "Process started of " + nrOfInstances + " instances";
    }

}
