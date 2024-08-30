// SYNTAX TEST reindent-unchanged "Packages/Markdown/Markdown.sublime-syntax"

```js
export default {
    default: 'value',
    case() {
        const map1 = {
            default: 'value'
        }
        const list1 = [
            default
        ]

        if (foo == true)
            return 1
        else if (bar == true)
            return 2
        else
            return 3

        switch (map1) {
        case null:
            return 0
        default:
            const map2 = {
                default: 'value'
            }
            const list2 = [
                default,
                () => {
                    switch (map2) {
                    default:
                        return 0
                    case null:
                        return 1
                    }
                }
            ]
        }
    }
}
```
