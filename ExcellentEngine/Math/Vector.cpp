#include "Vector.h"

namespace Maths {
	namespace Vector{
		Vector add(Vector a, Vector b) {
			Vector result;
			result.i = a.i + b.i;
			result.j = a.j + b.j;
			result.k = a.k + b.k;

			return result;
		}

		Vector subtract(Vector a, Vector b) {
			Vector result;
			result.i = a.i - b.i;
			result.j = a.j - b.j;
			result.k = a.k - b.k;

			return result;
		}

		void print(Vector a) {
			std::cout << a.i << "I; " << a.j << "J;" << a.k << "K;" << std::endl;
		}
	}
}