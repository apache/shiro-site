The children of this page contain information which is **included in other pages**. This is a library of re-usable information chunks.

If you want to change any of these pages, be aware that:

*   Changing page names is problematic — you will need to change all the {include} and {excerpt-include} macros manually.
*   The content is used in many places — make sure your change is generic enough to fit the contexts in which the pages are used.

To include an excerpt from a page:

```
{excerpt-include:_page name|nopanel=true} 
```

Note that the page titled '_page name' must contain the {excerpt} macro, otherwise the {excerpt-include} will not work.

To include the entire contents of a page"
 
```
{include:page name|nopanel=true} 
```
