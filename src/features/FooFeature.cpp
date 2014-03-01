#include "testing/lest.hpp"
#include "FooFixture.hpp"

#include "sis_config.hpp"

static const FooFixture fixture;

const lest::test specification[] =
{
    "can foo", []
    {
        Foo foo;
        EXPECT( foo.foo() == 0 );
    },

};

int main() { return lest::run( specification ); }
