---
title: ZoomInput
parent: zoommaps
grand_parent: toolbox
---

# ZoomInput


## `public class ZoomInput implements EventHandler<InputEvent>`

Nimmt Systeminput bzgl. der Koordinaten entgegen und verarbeitet sie zu rawInput (int[2]).

## `@Override public void handle(InputEvent event)`

Nimmt Systeminput bei Klicken der Maustasten entgegen.

## `private void handleClick(MouseEvent mouseEvent)`

handlet clicks.

 * **Parameters:** `mouseEvent` —

## `public void handleScroll(ScrollEvent scrollEvent)`

handlet scrolls.

 * **Parameters:** `scrollEvent` —
