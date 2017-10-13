classdef WSEndpointInfo < Ice.EndpointInfo
    % WSEndpointInfo   Summary of WSEndpointInfo
    %
    % Provides access to WebSocket endpoint information.
    %
    % WSEndpointInfo Properties:
    %   resource - The URI configured with the endpoint.

    % Copyright (c) 2003-2017 ZeroC, Inc. All rights reserved.

    methods
        function obj = WSEndpointInfo(secure, underlying, timeout, compress, resource)
            if nargin == 0
                underlying = [];
                timeout = 0;
                compress = false;
                resource = '';
            end
            obj = obj@Ice.EndpointInfo(Ice.WSEndpointType.value, false, secure, underlying, timeout, compress);
            obj.resource = resource;
        end
    end
    properties(SetAccess=private)
        % resource - The URI configured with the endpoint.
        resource char
    end
end
