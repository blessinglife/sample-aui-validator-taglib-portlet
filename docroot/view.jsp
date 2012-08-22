<%
/**
 * Copyright (c) 2000-2012 Drew A. Blessing. All rights reserved.
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

<portlet:actionURL var="actionURL" name="myAction" />

<div class="form">
<aui:form method='POST' action="<%=actionURL.toString() %>" name="fm" id="fm" enctype="multipart/form-data">
	<aui:layout>
		<aui:column cssClass="aui-w25" >
			<aui:input name="field1" first="<%=true %>" >
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
			<div>Field 3: File upload; Only accept JPG and PNG files;</div>
		</aui:column>
	</aui:layout>
	<aui:button-row><aui:button type="submit" /></aui:button-row>
	
</aui:form>
</div>