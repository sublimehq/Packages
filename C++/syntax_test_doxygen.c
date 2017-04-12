// SYNTAX TEST "Packages/C++/C.sublime-syntax"
//
// Note: we use "//" here as our comment token in order to test scopes inside
// comment blocks.
////////////////////////////////////////////////////////////////////////////////

//! \file syntax_test_doxygen.c
//  ^ comment.line.documentation meta.function-call punctuation.definition.keyword
//   ^^^^ comment.line.documentation meta.function-call keyword.other.documentation

// <- - meta.function-call
/* Make sure the above is not a function call anymore. */

/*********************************************
 * This should NOT be a documentation block. *
 *********************************************/
// ^ comment.block - comment.block.documentation

/*************************************//**
 * This should be a documentation block. *
 *****************************************/
// ^ comment.block.documentation

/**
// <- comment.block.documentation punctuation.definition.comment.begin
 *
// ^ comment.block.documentation
 * This is a level 1 header
 * ========================
 * 
 * This is a level 2 header
 * ------------------------
 * 
 * This is NOT a level 1 header
 * ==
 * 
 * This is NOT a level 2 header
 * --
 * 
 * This is a level 1 header
 * ===
 * 
 * This is a level 2 header
 * ---
 * 
 * # This is a level 1 header
 * 
 * ## This is a level 2 header ## <-- These two hashes are optional
 * 
 * ### This is a level 3 header
 * 
 * #### This is a level 4 header
 * 
 * ##### This is a level 5 header
 * 
 * ###### This is a level 6 header

 The extra asterisks on each line are optional.
 They are not necessary.
// ^ comment.block.documentation

 > A famous quote that
 > makes you think.

 *
 * > A famous quote that
 * > makes you think.
 * 
 * - Item 1
 * 
 *   More text for this item.
 *
 * - Item 2
 *   + nested list item.
 *   + another nested item
 * - Item 3
 * 
 * \~ output for all languages.
// ^ comment.block.documentation meta.function-call punctuation.definition.keyword
//  ^ comment.block.documentation meta.function-call keyword.other.documentation
//   ^ comment.block.documentation meta.function-call
//    ^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation
 * \~german Dies ist Deutsch.
// ^ comment.block.documentation meta.function-call punctuation.definition.keyword
//  ^ comment.block.documentation meta.function-call keyword.other.documentation
//   ^^^^^^ comment.block.documentation meta.function-call variable.parameter
//         ^^^^^^^^^^^^^^^^^^^ comment.block.documentation
 * \~english This is English.
 * \~dutch Dit is Nederlands.
 * 
 * @brief      Adds two numbers
// ^ comment.block.documentation punctuation.definition.keyword
//  ^^^^^ comment.block.documentation keyword.other.documentation
//        ^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation
 *
 * @param[in]  x     The first number
// ^ comment.block.documentation punctuation.definition.keyword
//  ^^^^^ comment.block.documentation keyword.other.documentation
//       ^ punctuation.section.brackets.begin
//        ^^ variable.parameter
//          ^ punctuation.section.brackets.end
//           ^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation
 * @param [in]  y     The second number
// ^ comment.block.documentation meta.function-call punctuation.definition.keyword
//  ^^^^^ comment.block.documentation meta.function-call keyword.other.documentation
//       ^ comment.block.documentation meta.function-call
//        ^ comment.block.documentation meta.function-call punctuation.section.brackets.begin
//         ^^ comment.block.documentation meta.function-call variable.parameter
//           ^ comment.block.documentation meta.function-call punctuation.section.brackets.end
 *
 * @return     Returns the sum of the two numbers
 * 
 * \code{.cpp}
// ^ comment.block.documentation punctuation.definition.keyword
//  ^^^^ comment.block.documentation keyword.other.documentation
//      ^ punctuation.section.braces.begin
//       ^^^^ variable.parameter
//           ^ punctuation.section.braces.end
 * 
 * \endcode
// ^ comment.block.documentation punctuation.definition.keyword
//  ^^^^^^^ comment.block.documentation keyword.other.documentation
 * 
 * @detail
 * Inline math \f$ \sum_{n=1}^\infty \frac{1}{n^2} = \frac{\pi^2}{6} \f$ should
//             ^ comment.block.documentation meta.function-call punctuation.definition.keyword
//              ^ comment.block.documentation meta.function-call keyword.other.documentation
//               ^ comment.block.documentation meta.function-call meta.environment.math.inline punctuation.section.block.begin
//                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation meta.environment.math.inline.dollar.latex
//                                                                   ^ comment.block.documentation meta.environment.math.inline.dollar.latex punctuation.definition.keyword
//                                                                    ^ comment.block.documentation meta.environment.math.inline.dollar.latex keyword.other.documentation
//                                                                     ^ comment.block.documentation meta.environment.math.inline.dollar.latex punctuation.section.block.end
 * work fine.
 * 
 * Block math:
   \f[
// ^ comment.block.documentation meta.function-call punctuation.definition.keyword
//  ^ comment.block.documentation meta.function-call keyword.other.documentation
//   ^ comment.block.documentation meta.function-call meta.environment.math punctuation.section.block.begin
        \sum_{n=1}^\infty \frac{1}{n^2} = \frac{\pi^2}{6} 
// <- comment.block.documentation meta.environment.math
   \f]
// ^ comment.block.documentation meta.environment.math punctuation.definition.keyword
//  ^ comment.block.documentation meta.environment.math keyword.other.documentation
//   ^ comment.block.documentation meta.environment.math punctuation.section.block.end
 *
 * Math environment:
   \f{eqnarray*}{
// ^ comment.block.documentation meta.function-call punctuation.definition.keyword
//  ^ comment.block.documentation meta.function-call keyword.other.documentation
//   ^ comment.block.documentation meta.function-call meta.environment.math punctuation.section.block.begin
//    ^^^^^^^^^ comment.block.documentation meta.function-call meta.environment.math variable.parameter
//             ^ comment.block.documentation meta.function-call meta.environment.math punctuation.section.block.end
//              ^ comment.block.documentation meta.function-call meta.environment.math punctuation.section.block.begin

// <- comment.block.documentation meta.environment.math
    
        g &=& \frac{Gm_2}{r^2} \\ 
          &=& \frac{(6.673 \times 10^{-11}\,\mbox{m}^3\,\mbox{kg}^{-1}\,
              \mbox{s}^{-2})(5.9736 \times 10^{24}\,\mbox{kg})}{(6371.01\,
              \mbox{km})^2} \\ 
          &=& 9.82066032\,\mbox{m/s}^2

// <- comment.block.documentation meta.environment.math

   \f}
// ^ comment.block.documentation meta.environment.math punctuation.definition.keyword
//  ^ comment.block.documentation meta.environment.math keyword.other.documentation
//   ^ comment.block.documentation meta.environment.math punctuation.section.block.end
 *
 */
//^ comment.block.documentation punctuation.definition.comment.end
int add(int x, int y)
// <- storage.type.c
// Make sure that the documentation block has ended here.
{
    return x + y;
}

/**
 * @brief complete example
 * 
 * @detail very intricate details with corner cases
 * 
 * @param[in,out] X x
 * @see http://www.google.com
 * @throws a fit when it's angry
 * @note that the sun comes up in the morning
 * @warning beware of pirates
 * \nosubgrouping
 */
typedef struct X
{
    int data; //!< Inline documentation for data
    float var; //!< More docs
} X;

/** \brief Struct to hold user properties.
* \nosubgrouping
*/
struct DLL_API Property
// <- meta.struct.c storage.type.c
{   
    /** Creates a property.
      * \param a  The parent.
      //^ comment.block.documentation meta.function-call punctuation.definition.keyword
      // ^^^^^ comment.block.documentation meta.function-call keyword.other.documentation.doxygen
      * \param b      The data type.
      * \param c      The name. 
      * \param d      The label.
      * \param d      If \c true, bla bla, if \c false, bla bla. 
      //                 ^ comment.block.documentation meta.function-call punctuation.definition.keyword
      //                  ^ comment.block.documentation meta.function-call keyword.other.documentation
      * \param e      If d is \c true, bla bla.  
      */
    int x;
    // ^^ meta.struct.c meta.block.c
    int y;
    // ^^ meta.struct.c meta.block.c
};
