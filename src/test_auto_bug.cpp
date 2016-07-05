#include <vector>
#include <algorithm>

namespace seqan
{
    inline void
    increment(int &n)
    {
        n++;
    }

    inline void
    increments(std::vector<int> & numbers)
    {
        std::for_each(numbers.begin(), numbers.end(),
            [](auto &n)
            {
                increment(n);
            });
    }

}

int main()
{
    std::vector<int> numbers = {1, 2, 3, 4, 5};
    seqan::increments(numbers);

    return 0;
}
