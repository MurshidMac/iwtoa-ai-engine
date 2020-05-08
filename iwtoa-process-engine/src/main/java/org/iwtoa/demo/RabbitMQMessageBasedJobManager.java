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

import org.flowable.engine.impl.asyncexecutor.message.AbstractMessageBasedJobManager;
import org.flowable.job.api.JobInfo;
import org.springframework.amqp.rabbit.core.RabbitTemplate;

/**
 * @author Murshid Hassen
 */
public class RabbitMQMessageBasedJobManager extends AbstractMessageBasedJobManager {

    private RabbitTemplate rabbitTemplate;
    
    @Override
    protected void sendMessage(JobInfo job) {
        rabbitTemplate.convertAndSend("flowable-exchange", "flowable-history-jobs", job.getId());
    }

    public RabbitTemplate getRabbitTemplate() {
        return rabbitTemplate;
    }

    public void setRabbitTemplate(RabbitTemplate rabbitTemplate) {
        this.rabbitTemplate = rabbitTemplate;
    }
    
}
