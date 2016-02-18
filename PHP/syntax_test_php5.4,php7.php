// SYNTAX TEST "Packages/PHP/PHP Source.sublime-syntax"
<?php
trait A
// ^ storage.type.trait.php
{

}

class B
{
    use X,
    Y,
//  ^ support.other.namespace.use.php
    Z {
        X::method1 as another1;
        //         ^ support.trait.method.use-as.php
        //            ^ meta.function.php
        Y::method2 insteadof X;
        //         ^ support.trait.method.insteadof.php
        //                   ^ support.class.php
        X::method2 as another2;
        //         ^ support.trait.method.use-as.php
        //            ^ meta.function.php
    } protected $pro1;
    // ^ storage.modifier.php

    public function abc(callable $var,          int $var2,          string $var3)
    //                  ^ storage.type.php
    //                                          ^ storage.type.php
    //                                                              ^ storage.type.php
    {
        echo B::class;
        //      ^ constant.class.php
    }
}