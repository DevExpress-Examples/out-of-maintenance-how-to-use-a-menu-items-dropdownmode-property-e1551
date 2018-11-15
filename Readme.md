<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Site/Default.aspx) (VB: [Default.aspx.vb](./VB/Site/Default.aspx.vb))
* [Default.aspx.cs](./CS/Site/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Site/Default.aspx.vb))
<!-- default file list end -->
# How to use a menu item's DropDownMode property


<p>This example demonstrates how a root menu item's submenu can work in dropdown mode, and how to associate a command, specified for a submenu item, with its parent root item.<br />
The first root item ('New') has its DropDownMode property set to true. In this mode, the item's submenu cannot be invoked by hovering the mouse over the item. Only a click on the item's dropdown button invokes the submenu.<br />
As implemented in this example, a click on the root menu item 'New' executes the same command (action) as that assigned to its sub-item 'Message'. This behavior is implemented by assigning the same command name - 'Message' - to the Name property of both the 'New' root item and its 'Message' sub-item. Then, in a handler of the menu's client ItemClick event, the clicked item's Name property value is analyzed and the associated action is performed.</p>

<br/>


