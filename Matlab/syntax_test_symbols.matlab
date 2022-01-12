% SYNTAX TEST partial-symbols "Packages/Matlab/Matlab.sublime-syntax"

classdef BasicClass
%        @@@@@@@@@@ definition
    properties
        Value {mustBeNumeric}
    end
    methods
        function obj = BasicClass(val)
%                      @@@@@@@@@@ definition
            if nargin == 1
                obj.Value = val;
            end
        end
        function r = roundOff(obj)
%                    @@@@@@@@ definition
            r = round([obj.Value],2);
        end
        function r = multiplyBy(obj,n)
%                    @@@@@@@@@@ definition
            r = [obj.Value] * n;
        end
        function r = plus(o1,o2)
%                    @@@@ definition
            r = [o1.Value] + [o2.Value];
        end
    end
end
