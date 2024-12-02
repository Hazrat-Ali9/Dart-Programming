// Expression in Function: 

void main() {

	findPerimeter(4, 2);

	int rectArea = getArea(10, 5);
	print("The area is $rectArea");
}

void findPerimeter(int length, int breadth) => print("The perimeter is ${2 * (length + breadth)}");

int getArea(int length, int breadth) => length * breadth;


