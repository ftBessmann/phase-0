**1. How can you use Chrome's DevTools inspector to help you format or position elements?**

Chrome's DevTools inspector is a useful editing tool of web-pages. One can see the structure of the page in HTML and formatting and positioning of the elements in CSS, make tracked and reversible changes and see the result on the page at once. It simplifies the coding process because all the changes are visualized on the screen.

**2. How can you resize elements on the DOM using CSS?**

Every element on a page is a block. To resize an element one should find the element in the tree, click on the element, access the Styles pane and change height/width of the element. Redefining the position of the elements can also influence their size. There's also a resize property that can be used.

**3. What are the differences between absolute, fixed, static, and relative positioning?**

Static is the default for every single page element. It just means that the element will flow into the page as it normally would. It is used to forcefully remove some positioning that got applied to an element outside of developer's control.

Absolute positioning allows you to place any page element exactly where you want it. The positioning attributes top, left bottom and right set the location of the element relative to the next parent element with relative/absolute positioning, or the page itself. An element with this type of positioning is not affected by other elements and it doesn't affect other elements.

Fixed positioning means that the element is positioned relative to the viewport, or the browser window itself. The viewport doesn't change when the window is scrolled, so a fixed positioned element will stay right where it is when the page is scrolled.

Relative positioning means is "relative to itself". If you set position: relative; on an element and some other positioning attributes (top, left, bottom or right), it will shift it's position relatively to the place where it would NORMALLY be. It also allows to set a z-index value on that element. The element will appear on top of any other statically positioned element. And any element that is a child of the relatively positioned element can be absolutely positioned within that block.

**4. Which did you find easiest to use? Which was most difficult?**

In my opinion, the easiest to use is fixed positioning. The most difficult to deal with is relative positioning.

**5. What are the differences between margin, border, and padding?**

A border is like a frame of the element. A padding is the space between the content and the border while a margin is the space outside the border. Padding separates the content of an element from the border. The margin separates one element from the other.

**6. What was your impression of this challenge overall? (love, hate, and why?)**

I found the challenge to be illustrative and practical. It helped to deeper understand the differences between properties and their interconnectedness.

![Task 1](/chrome-devtools/imgs/devchrome1.png)
![Task 2](/chrome-devtools/imgs/devchrome2.png)
![Task 3](/chrome-devtools/imgs/devchrome3.png)
![Task 4](/chrome-devtools/imgs/devchrome4.png)
![Task 5](/chrome-devtools/imgs/devchrome5.png)
![Task 6](/chrome-devtools/imgs/devchrome6.png)
![Task 7](/chrome-devtools/imgs/devchrome7.png)
![Task 8](/chrome-devtools/imgs/devchrome8.png)
![Task 9](/chrome-devtools/imgs/devchrome9.png)