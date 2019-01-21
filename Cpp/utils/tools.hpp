#include <vector>
#include <bitset>
#include <string>

using namespace std;

template<class Tkey,class Tval>class Map
{
public:
	Map();
	Map(Map &&) = default;
	Map(const Map &) = default;
	Map &operator=(Map &&) = default;
	Map &operator=(const Map &) = default;

	Tval& get (int);
	Tval& operator[] (Tkey);

	~Map();



private:
	vector<Tkey> keys;
	vector<Tval> vals;
};

