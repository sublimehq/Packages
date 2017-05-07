// SYNTAX TEST "Packages/C++/C.sublime-syntax"
//
// Note: we use "//" here as our comment token in order to test scopes inside
// comment blocks.
////////////////////////////////////////////////////////////////////////////////


/**
 * @name The basics
 * @{
 */

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

/// \\ \@ \& \# \< \> \% \" \. \:: \-- \---
//  ^^ comment.line.documentation constant.character.escape
//     ^^ comment.line.documentation constant.character.escape
//        ^^ comment.line.documentation constant.character.escape
//           ^^ comment.line.documentation constant.character.escape
//              ^^ comment.line.documentation constant.character.escape
//                 ^^ comment.line.documentation constant.character.escape
//                    ^^ comment.line.documentation constant.character.escape
//                       ^^ comment.line.documentation constant.character.escape
//                          ^^ comment.line.documentation constant.character.escape
//                             ^^^ comment.line.documentation constant.character.escape
//                                 ^^^ comment.line.documentation constant.character.escape
//                                     ^^^^ comment.line.documentation constant.character.escape

/**
 * @}
 */

/**
 * @name Markdown & commands
 * @{
 */

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

  int sum(int a, int b) { return x + y}
//                      ^ - punctuation.section.braces.begin
//                        ^ - variable.parameter
//                                    ^ - punctuation.section.braces.end

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
 * @}
 */

/**
 * @name Structs, classes and methods
 * @{
 */

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
      // ^^^^^ comment.block.documentation meta.function-call keyword.other.documentation
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

struct X
{
    /// <summary>Some a</summary>
//      ^ comment.line.documentation punctuation.definition.tag.begin
//       ^^^^^^^ comment.line.documentation entity.name.tag.begin
//              ^ comment.line.documentation punctuation.definition.tag.end
//               ^^^^^^ comment.line.documentation
//                     ^^ comment.line.documentation punctuation.definition.tag.begin
//                       ^^^^^^^ comment.line.documentation entity.name.tag.end
//                              ^ comment.line.documentation punctuation.definition.tag.end
    int a;
//  ^^^ meta.struct meta.block storage.type
//     ^^ meta.struct meta.block
//      ^ meta.struct meta.block
//       ^ meta.struct meta.block punctuation.terminator

    /// <summary>Some b</summary>
    float b;

    /**
     * <summary>Applies f</summary>
//     ^ comment.block.documentation punctuation.definition.tag.begin
//             ^ comment.block.documentation punctuation.definition.tag.end
     * <param name="x">The x</param>
//            ^^^^ comment.block.documentation entity.other.attribute-name
//                ^ comment.block.documentation punctuation.separator.argument.value
//                 ^^^ comment.block.documentation string.quoted.double
//                    ^ comment.block.documentation punctuation.definition.tag.end
//                          ^^ comment.block.documentation punctuation.definition.tag.begin
//                            ^^^^^ comment.block.documentation entity.name.tag.end
//                                 ^ comment.block.documentation punctuation.definition.tag.end
//                                  ^ comment.block.documentation
     * <param name="a">The a</param>
     * <return>An integer</return>
     * <see cref="member"/>
//     ^ comment.block.documentation punctuation.definition.tag.begin
//      ^^^ comment.block.documentation entity.name.tag.begin
//          ^^^^ comment.block.documentation entity.other.attribute-name
//               ^^^^^^^^ comment.block.documentation string.quoted.double
//                       ^^ comment.block.documentation punctuation.definition.tag.end
     */
    int f(const double x, const float a);
};

/**
 * @}
 */

/**
 * @name Grouping commands
 * @{
 */

//@{
//<- punctuation.definition.comment
//^^ punctuation.section.group.begin

//@}
//<- punctuation.definition.comment
//^^ punctuation.section.group.end

///@{
//<- punctuation.definition.comment
// ^^ punctuation.section.group.begin

///@}
//<- punctuation.definition.comment
// ^^ punctuation.section.group.end

/**@{*/
//<- punctuation.definition.comment.begin
// ^^ punctuation.section.group.begin

/**@}*/
//<- punctuation.definition.comment.begin
// ^^ punctuation.section.group.end

/**
 * @{
// ^^ punctuation.section.group.begin
 */

/**
 * @}
// ^^ punctuation.section.group.end
 */

// @{ hello there! Fooled ya!
// ^ comment.line.double-slash.c - punctuation.section.group
// @} hello there! Fooled ya!
// ^ comment.line.double-slash.c - punctuation.section.group
///@{ hello there! Fooled ya! Still a documentation line though.
// ^ comment.line.documentation - punctuation.section.group
///@} hello there! Fooled ya! Still a documentation line though.
// ^ comment.line.documentation - punctuation.section.group

/**
 * @}
 */

/**
 * @name Various fringe cases
 * @{
 */

/** \brief This template class is used to contain user properties of specific data types.
//  ^ comment.block.documentation meta.function-call punctuation.definition.keyword
//   ^ comment.block.documentation meta.function-call keyword.other.documentation
* \nosubgrouping
*/

///\brief asdf
// ^ comment.line.documentation meta.function-call punctuation.definition.keyword
//  ^ comment.line.documentation meta.function-call keyword.other.documentation
/// \brief asdf
//  ^ comment.line.documentation meta.function-call punctuation.definition.keyword
//   ^ comment.line.documentation meta.function-call keyword.other.documentation

///@brief asdf
// ^ comment.line.documentation meta.function-call punctuation.definition.keyword
//  ^ comment.line.documentation meta.function-call keyword.other.documentation
/// @brief asdf
//  ^ comment.line.documentation meta.function-call punctuation.definition.keyword
//   ^ comment.line.documentation meta.function-call keyword.other.documentation

/**
 * \author john@doe.com
//             ^ comment.block.documentation - meta.function-call - punctuation.definition.keyword
//              ^ comment.block.documentation - meta.function-call - keyword.other.documentation
 * \file syntax_test_doxygen.c
 */

/** FBX event class, derived from FbxEventBase, and it contains a type ID for event. 
* It's a template class. You can derive your own types of even. Such as:
* \code class FbxEventCustom : public FbxEvent<FbxEventCustom> \endcode
//                                            ^ - punctuation.definition.tag.begin
//                                             ^ - entity.name.tag.begin
//                                                           ^ - punctuation.definition.tag.end
*/

/**
 * hmm. text allowed here? @{
 */

/// hmm. text allowed here? @{

/// john@code.com
//      ^ comment.line.documentation - meta.function-call - punctuation.definition.keyword
//       ^ comment.line.documentation - meta.function-call - keyword.other.documentation

// Repeated simple syntax test here in case we forgot to pop somewhere and we
// have a malformed stack.

/// \brief asdf
//  ^ comment.line.documentation meta.function-call punctuation.definition.keyword
//   ^ comment.line.documentation meta.function-call keyword.other.documentation

/**
 * @}
 */
