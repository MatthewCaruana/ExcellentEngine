#pragma once

#include <iostream>

namespace Maths {
	namespace Vector {
		class Vector
		{
		public:
			float magnitude;
			float direction;

			float i, j, k;
		};

		Vector add(Vector a, Vector b);
		Vector subtract(Vector a, Vector b);
		void print(Vector vector);
	}
}