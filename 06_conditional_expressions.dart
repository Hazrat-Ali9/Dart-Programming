
void main() {


	int a = 2;
	int b = 3;

	int smallNumber = a < b ? a : b;
	print("$smallNumber is smaller");

	String name = null;

	String nameToPrint = name ?? "Guest User";
	print(nameToPrint);
}
