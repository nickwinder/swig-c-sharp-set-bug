%module Set
%{
#include "cSharpIntSet.hpp"
%}

%include "std_set.i"

%include "cSharpIntSet.hpp"

namespace std {
    %template(set_int) set<int>;
};
