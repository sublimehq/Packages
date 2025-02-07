// SYNTAX TEST "Packages/C++/C.sublime-syntax"

/////////////////////////////////////////////
// Numbers
/////////////////////////////////////////////

1234567890
0x123456789abcdef
012345670
0b100110

314lUJ 314uLLj 314iLu 314llI 314F 314f
3.14f 314.l 3.14L
314e15 3.14e-15
0xdead.beefp+7f
012345670 0314llU
0b10 0b10iLu

0271828 0b10410 0xbag50 314a123
314Ll 314lul 314iJ 314.ll 314.lf
0x314.1p5af 0b10e20 314e+30llu

/////////////////////////////////////////////
// Operators
/////////////////////////////////////////////

1 + 2 - 3 * 4 / 5 % 6
1 | 2 & 3 ^ 4 >> 5 << 6
1 > 2 >= 3 == 4 != 5 <= 6 < 7
!1 ? -2 : ~3
0 += 1 -= 2 *= 3 /= 4 %= 5 |= 6 &= 7 ^= 8 >>= 9 <<= 10
sizeof(a) alignof(b) _Alignof(c) offsetof(c)
a,b = b.c;
/////////////////////////////////////////////
// Strings
/////////////////////////////////////////////
"abc123" L"abc123" u8"abc123" u"abc123" U"abc123" 'abc123' L'abc123'
"\a\b\f\n\r\t\v\e\E\314\xabc\u3141\U15926535\\\"\'\?\0\9"
'\u\w\x\y\z\/'
"%ms %as %*[, ]"

"314 \
 159"

/////////////////////////////////////////////
// Constants
/////////////////////////////////////////////

true TRUE false FALSE NULL __func__
__FILE__ __LINE__ __DATE__ __TIME__ __STDC__ __STDC_VERSION__ __GNUC__ __clang__ __cplusplus

/////////////////////////////////////////////
// Enclosings
/////////////////////////////////////////////

[a, b, c]
{1, 2, 3}
(6 - 7 == -1 && true)

/////////////////////////////////////////////
// Default Types
/////////////////////////////////////////////

auto void char short int long float double signed unsigned _Complex _Imaginary _Bool
size_t ptrdiff_t nullptr_t max_align_t intmax_t uintmax_t intptr_t uintptr_t
uint8_t uint16_t uint32_t uint64_t int8_t int16_t int32_t int64_t
uint_fast8_t uint_fast16_t uint_fast32_t uint_fast64_t int_fast8_t int_fast16_t int_fast32_t int_fast64_t
uint_least8_t uint_least16_t uint_least32_t uint_least64_t int_least8_t int_least16_t int_least32_t int_least64_t

typeof(a) __typeof__(b) __typeof(c) typeof_unqual(d)

/////////////////////////////////////////////
// Storage Keywords
/////////////////////////////////////////////

register static inline extern register thread_local _Thread_local _Noreturn noreturn
const volatile restrict _Atomic _Alignas(4)


/////////////////////////////////////////////
// Functions
/////////////////////////////////////////////

test(5, 10, 15, 20);
h(f(5) - g(6));

int main(int argc, char const* argv[]) {
    int out = in("abcdefg");
}

int b = main(argc);

static extern int*
test(
    const uint64_t a,
    typeof(b) b
);

/////////////////////////////////////////////
// Control Flow
/////////////////////////////////////////////

void fun(int const a[]) {
    while (true) {
        do {
            for (int i = 0; i < 12; ++i) {
                switch (i)
                {
                case 0:
                    goto exit;
                case 1:
                case 2 + 3:
                    if (a + b < i) {}
                    else if (b == -1) {
                        continue;
                    }
                    break;
                default:
                    continue;
                }
            }
        } while (a > b);
    }

exit:
    return;
}

/////////////////////////////////////////////
// Data Structures
/////////////////////////////////////////////

struct A; enum B; union C;

enum B
{
    kTest1,
    kTest2 = kTest1 + 1,
    kTest3,  
}myEnum;

const volatile struct A
{
    int a1;
    char a3[12];
    void* h5;
    enum B out; };

union MACRO myUnion {
    struct A {
        int f;
    } s1;
    struct B {
        int f2;
    } s2;
    void* ptr;
    int a, *ptr2;
};

int test() {
    union C myunion;
    myunion.s2.f = 20;
}

typedef struct {
    myCustomType* a;
} b;

/////////////////////////////////////////////
// Attributes and Declspec
/////////////////////////////////////////////


__declspec(align(5)) struct Test {
    int a;
    int b;
    int c;
};
void __declspec(dllimport) importedFn() const;
__declspec(property(get=5, put=10)) void runForever();


void on_load() __attribute__((constructor, visibility("hidden"))) {}


