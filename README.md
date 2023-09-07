# Panels Nonlinear Story Example

An example project demonstrating how to create a branching, choose-your-own adventure comic with [Panels](https://github.com/cadin/panels).

## Setup

This project includes the Panels framework as a git submodule. Be sure to properly [initialize the submodule](https://www.w3docs.com/snippets/git/how-to-clone-including-submodules.html) when cloning the repo.

If you're not using git, you can download this code as a ZIP file. In that case you'll also need to download the code from the [Panels repo](https://github.com/cadin/panels) and place it in the `source/libraries/panels/` folder of this template.

## Usage

To create a branching choice in your comic, define multiple options in the `advanceControls` table for your sequence.

Each option can define an `input` trigger, a `target` sequence, and `x` and `y` positions for the button graphics.

## Documentation

Documentation for these new features coming soon:

### [📄 Panels Documentation](//cadin.github.io/panels)

## Examples

This project includes some example sequences to help you get started:

1. **Basic Example**  
   Add two branching options to the end of the sequence.
2. **Anchored Controls**  
   By default, a sequence's advance buttons float above the panels. This example shows how they can be anchored to the scroll position of the last panel.
3. **Hidden Controls**  
   Hide Panel's built in button graphics in order to display your own text or graphics for the user.
4. **Directional Controls**  
   Let the user choose a physical direction to move in.
5. **Custom Functions**  
   Use a custom render function to draw interactive content (like a mini-game). Use the `targetSequenceFunction` to define a target sequence based on any custom-defined criteria.

Look in the `comicData/` folder to find data tables for each sequence.
