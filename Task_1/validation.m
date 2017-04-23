function valid_answer = validation( qout )
%VALIDARTION This function determines if the quaternion constraint is
%satisfied while performing numerical integration.

valid_answer = qout(:,1).^2 + qout(:,2).^2 + qout(:,3).^2 + qout(:,4).^2;

end

