// SYNTAX TEST reindent-unchanged "Packages/C++/C++.sublime-syntax"

class HelloWorld;
class HelloWorldA : HelloWorld {

public:

protected:

private:
}

class HelloWorldB : HelloWorld {

    int m_attr1;
    int m_attr2;

public:
    HelloWorldB();
    ~HelloWorldB();

protected:
    int getAttr1() { return this->m_attr1; }
    int getAttr2() {
        return this->m_attr1;
    }

    void setAttr1(int val) { this->m_attr1 = val; }
    void setAttr2(int val)
    {
        this->m_attr2 = val;
    }

private:
    bool m_flag;
}

/**
 * @brief      This class describes a hello world b.
 */

class HelloWorldC : HelloWorld {

    int m_attr1;    // comment
    int m_attr2;    // comment

public:
    /**
     * @brief      Constructs a new instance.
     */
    HelloWorldC();
    /**
     * @brief      Destroys the object.
     */
    ~HelloWorldC();

protected: // not for everybody

    /**
     * @brief      Gets the attribute 1.
     *
     * @return     The attribute 1.
     */
    int getAttr1() /**/ { /**/ return /**/ this->m_attr1; /**/ } /**/ // comment
    /**
     * @brief      Gets the attribute 2.
     *
     * @return     The attribute 2.
     */
    int getAttr2() /**/ { /**/ // comment
        // comment
        return this->m_attr1; // comment
    }

    void setAttr1(int val) { this->m_attr1 = val; }
    void setAttr2(int val)
    {
        this->m_attr2 = val;
    }

private: // my private stuff
    // comment
    bool m_flag;
}
