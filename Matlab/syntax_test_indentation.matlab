% SYNTAX TEST reindent "Packages/Matlab/Matlab.sublime-syntax"

classdef WeekDays
    enumeration
        Monday, Tuesday, Wednesday, Thursday, Friday
    end
    methods
        function tf = isMeetingDay(obj)
            tf = WeekDays.Tuesday == obj;
        end
    end
end

classdef ToggleButton < handle
    properties
        State = false
    end
    events
        ToggledState
    end
    methods
        function OnStateChange(obj,newState)
            if newState ~= obj.State
                obj.State = newState;
                notify(obj,'ToggledState');
            end
        end
    end
end

function [m,s] = stat3(x)
    arguments
        x (1,:) {mustBeNumeric, mustBeFinite}
    end
    n = length(x);
    m = avg(x,n);
    s = sqrt(sum((x-m).^2/n));
end

if (x >= minVal) && (x <= maxVal)
    disp('Value within specified range.')
elseif (x > maxVal)
    disp('Value exceeds maximum value.')
else
    disp('Value is below minimum value.')
end

for v = 1.0:-0.2:0.0
    disp(v)
end

while 1
    tmp = rand;
    if tmp > limit
        break
    end
    s = s + tmp;
end

parfor i = 1:n
    a(i) = max(abs(eig(rand(A))));
end

try
    a = notaFunction(5,6);
catch
    warning('Problem using function.  Assigning a value of 0.');
    a = 0;
end
