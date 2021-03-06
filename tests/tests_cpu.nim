# Copyright 2017 the Arraymancer contributors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import ../src/arraymancer,
        ./tensor/test_init,
        ./tensor/test_operators_comparison,
        ./tensor/test_accessors,
        ./tensor/test_accessors_slicer,
        ./tensor/test_display,
        ./tensor/test_operators_blas,
        ./tensor/test_math_functions,
        ./tensor/test_higherorder,
        ./tensor/test_aggregate,
        ./tensor/test_shapeshifting,
        ./tensor/test_broadcasting,
        ./tensor/test_ufunc,
        ./tensor/test_filling_data,
        ./tensor/test_optimization,
        ./tensor/test_bugtracker,
        ./nn_primitives/test_nnp_convolution,
        ./nn_primitives/test_nnp_loss,
        ./nn_primitives/test_nnp_maxpool,
        ./autograd/test_gate_blas,
        ./ml/test_metrics

import  ./stability_tests/test_stability_openmp,
        ./end_to_end/examples
