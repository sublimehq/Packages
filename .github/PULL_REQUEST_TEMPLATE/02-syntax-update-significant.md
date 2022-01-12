---
name: Large update to Syntax definition
about: I have made significant changes to a `.sublime-syntax` file.
title: '[PackageName] update_summary'
labels: ['significant']
---

- [ ] My commit messages start with the package name in square brackets, e.g. `[XML] `.
- [ ] I have included new or enhanced [syntax tests](https://www.sublimetext.com/docs/syntax.html#testing) to cover the changes.
- [ ] I have included a performance comparison below:

## Performance

<!--
    Run "Tools > Build With... > Syntax Tests - Performance" and put the
    relevant output in the blocks below, both with and without your changes.
-->

### Before changes

```text
Syntax "Packages/PackageName/lang.sublime-syntax" took an average of 10.0ms over 10 runs
Syntax "Packages/PackageName/lang-types.sublime-syntax" took an average of 2.0ms over 10 runs
```

### After changes

```text
Syntax "Packages/PackageName/lang.sublime-syntax" took an average of 10.2ms over 10 runs
Syntax "Packages/PackageName/lang-types.sublime-syntax" took an average of 2.0ms over 10 runs
```
