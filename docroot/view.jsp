<%
/**
 * Copyright (c) 2012 Drew A. Blessing. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
%>

<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />

This is the <b>Sample AUI Validator Taglib</b> portlet.

<div class="form">
<aui:form method='POST' name="fm" id="fm" >
	<aui:layout>
		<aui:column cssClass="aui-w25" >
			<aui:input name="field1" first="<%=true %>" >
				<!-- Example with multiple validators -->
			
		        <!-- Make the field required.  If the field is empty, form will not submit -->
		        <aui:validator name="required" />
		
		        <!-- Only allow digits in the field -->
		        <aui:validator name="digits" />
		
		        <!-- Make sure field value is between 8 and 50 characters in length -->
		        <aui:validator name="range" >
		            [8,50]
		        </aui:validator>
		        
		    </aui:input>
		        
		    <aui:input name="field2" >
		       
		       <!-- 
		       Make sure field 2 is the same as field 1.
		       Useful for a password and password verify field, for example
		       -->
		        <aui:validator name="equalTo">
		           '#<portlet:namespace />field1'
		       </aui:validator>
		
			</aui:input>
		</aui:column>
		<aui:column cssClass="aui-75" >
			<div>Fields 1 and 2 illustrate multiple validators together.</div>
			<div>Field 1: Required field; Only allow digits; Range must be between 8 and 50 digits;</div>
			<div>Field 2: Must be equal to Field 1.</div>
		</aui:column>
	</aui:layout>
	<div class="separator" ><!-- Placeholder --></div>
	<aui:layout>
		<aui:column cssClass="aui-w25">
			<aui:input type="file" name="field3" >
			
				<!-- 
				For use with input type="file"
				Only allow file uploads with this extension. 
				Specify multiple values either comma delimted 'jpg, png', 
				whitespace delimited 'jpg png', or pipe 'jpg|png' delimited.
				Do not include the period before the extension
				-->
				<aui:validator name="acceptFiles">
					'jpg, png'
				</aui:validator>
				
			</aui:input>
		</aui:column>
		<aui:column cssClass="aui-w75" >
			<div>
			Field 3: File upload; Only accept JPG and PNG files; 
			To test validation, select a file to upload and then 
			click "Save" below to submit the form. An invalid
			upload type will then cause a validation error.
			</div>
		</aui:column>
	</aui:layout>
	<div class="separator" ><!-- Placeholder --></div>
	<aui:layout>
		<aui:column cssClass="aui-w25">
			<aui:input name="field4" >
			
				<!-- Only allow alphabetical characters -->
				<aui:validator name="alpha" />
				
			</aui:input>
		</aui:column>
		<aui:column cssClass="aui-w75" >
			<div>Field 4: Only allow alphabetical characters;</div>
		</aui:column>
	</aui:layout>
	<div class="separator" ><!-- Placeholder --></div>
	<aui:layout>
		<aui:column cssClass="aui-w25">
			<aui:input name="field5" >
			
				<!-- Only allow alphanumeric characters/digits -->
				<aui:validator name="alphanum" />
				
			</aui:input>
		</aui:column>
		<aui:column cssClass="aui-w75" >
			<div>Field 5: Only allow alphanumeric characters/digits;</div>
		</aui:column>
	</aui:layout>
	<div class="separator" ><!-- Placeholder --></div>
	<aui:layout>
		<aui:column cssClass="aui-w25">
			<aui:input name="field6" >
			
				<!-- Only allow dates -->
				<aui:validator name="date" />
				
			</aui:input>
		</aui:column>
		<aui:column cssClass="aui-w75" >
			<div>Field 6: Only allow valid dates - mm/dd/yy, mm/dd/yyyy, mm-dd-yy, mm-dd-yyyy, Month dd, yyyy are all valid dates.</div>
		</aui:column>
	</aui:layout>
	<div class="separator" ><!-- Placeholder --></div>
	<aui:layout>
		<aui:column cssClass="aui-w25">
			<aui:input name="field7" >
			
				<!-- Only allow email addresses -->
				<aui:validator name="email" />
				
			</aui:input>
		</aui:column>
		<aui:column cssClass="aui-w75" >
			<div>Field 7: Only allow valid email addresses.</div>
		</aui:column>
	</aui:layout>
	<div class="separator" ><!-- Placeholder --></div>
	<aui:layout>
		<aui:column cssClass="aui-w25">
			<aui:input name="field8" >
				<!-- 
				Setting both of the below validators has 
				the same combined effect of simply setting
				the range validator to the range [10,20]
				-->
			
				<!--  Set minimum number -->
				<aui:validator name="min">
					'10'
				</aui:validator>
				
				<!-- Set maximum number -->
				<aui:validator name="max" >
					'20'
				</aui:validator>
											
			</aui:input>
		</aui:column>
		<aui:column cssClass="aui-w75" >
			<div>Field 8: Allow numbers between 10 and 20. (Using min and max validator instead of range)</div>
		</aui:column>
	</aui:layout>
	<div class="separator" ><!-- Placeholder --></div>
	<aui:layout>
		<aui:column cssClass="aui-w25">
			<aui:input name="field9" >
				<!-- 
				Setting both of the below validators has 
				the same combined effect of simply setting
				the rangeLength validator to the range [5,10]
				-->
			
				<!--  Set minimum length -->
				<aui:validator name="minLength">
					'5'
				</aui:validator>
				
				<!-- Set maximum length -->
				<aui:validator name="maxLength" >
					'10'
				</aui:validator>
											
			</aui:input>
		</aui:column>
		<aui:column cssClass="aui-w75" >
			<div>Field 9: Allow length between 5 and 10. (Using minLength and maxLength validator instead of rangeLength)</div>
		</aui:column>
	</aui:layout>
	<div class="separator" ><!-- Placeholder --></div>
	<aui:layout>
		<aui:column cssClass="aui-w25">
			<aui:input name="field10" >
			
				<!--  Only allow numbers -->
				<aui:validator name="number" />
											
			</aui:input>
		</aui:column>
		<aui:column cssClass="aui-w75" >
			<div>Field 10: Allow all numbers.  Includes numbers like 10.5 and 10,000</div>
		</aui:column>
	</aui:layout>
	<div class="separator" ><!-- Placeholder --></div>
	<aui:layout>
		<aui:column cssClass="aui-w25">
			<aui:input name="field11" >
			
				<!--  Set range of characters allowed. -->
				<aui:validator name="rangeLength" >
					[10,20]
				</aui:validator>
											
			</aui:input>
		</aui:column>
		<aui:column cssClass="aui-w75" >
			<div>Field 11: Allow length to be between 10 and 20 characters.</div>
		</aui:column>
	</aui:layout>
	<div class="separator" ><!-- Placeholder --></div>
	<aui:layout>
		<aui:column cssClass="aui-w25">
			<aui:input name="field12" >
			
				<!--  Set minimum number -->
				<aui:validator name="url" />
											
			</aui:input>
		</aui:column>
		<aui:column cssClass="aui-w75" >
			<div>Field 12: Only allow valid URLs</div>
		</aui:column>
	</aui:layout>
	<div class="separator" ><!-- Placeholder --></div>
	<aui:layout>
		<aui:column cssClass="aui-w25">
			<aui:input name="field13" >
			
				<aui:validator name="custom" errorMessage="value-cannot-be-test">
    				function(val, fieldNode, ruleValue) { return (val != 'test') }
				</aui:validator>
											
			</aui:input>
		</aui:column>
		<aui:column cssClass="aui-w75" >
			<div>Field 13: Custom validator - Value cannot be "test".</div>
		</aui:column>
	</aui:layout>
	
	<aui:button-row><aui:button type="submit" /></aui:button-row>
	
</aui:form>
</div>