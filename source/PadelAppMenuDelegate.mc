using Toybox.WatchUi;
using Toybox.System;

class PadelAppMenuDelegate extends WatchUi.MenuInputDelegate {

    function initialize() {
        MenuInputDelegate.initialize();
    }

    function onMenuItem(item) {
        if (item == :item_1) {
        	WatchUi.pushView(new Rez.Menus.MainMenu(), new PadelAppMenuDelegate(), WatchUi.SLIDE_UP);
        } else if (item == :item_2) {
            System.println("item 2");
        }
    }

}