function [a, b] = h2b(blk_handle)
%H2B Returns a full name, split into [parent,blk] portions
%   Detailed explanation goes here
    [a, b] = utility.strip_last_split(...
        getfullname(...
            blk_handle...
        ) , '/');
end

